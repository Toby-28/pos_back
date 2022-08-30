import { Injectable } from '@nestjs/common';
import { UserService } from '../user/user.service';
import { LoginAuthDto } from './dto/login-auth.dto';
import { RegisterAuthDTO } from './dto/register-auth.dto';
import * as bcrypt from 'bcrypt';
import { JwtService } from '@nestjs/jwt';

// Custom Function
async function hashData(data: RegisterAuthDTO) {
  data.password = await bcrypt.hash(data.password, 10);

  return data;
}

@Injectable()
export class AuthService {
  constructor(
    private readonly userService: UserService,
    private readonly jwtService: JwtService,
  ) {}

  async login(data: LoginAuthDto) {
    const user = await this.userService.findOne(data.phone);
    if (!user) {
      return { message: 'User Not Found!' };
    }

    const same = await bcrypt.compare(data.password, user.password);
    if (!same) {
      return { message: 'Password Do Not Macth!' };
    }
    const token = this.jwtService.sign(user);

    return { token };
  }

  async register(data: RegisterAuthDTO) {
    let user = await this.userService.findOne(data.phone);
    if (user) {
      return { message: 'User is Exist!' };
    }

    data = await hashData(data);
    user = await this.userService.create(data);
    const { password, ...result } = user;

    return result;
  }
}
