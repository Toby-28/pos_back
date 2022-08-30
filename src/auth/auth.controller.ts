import { Controller, Post, Body } from '@nestjs/common';
import { AuthService } from './auth.service';
import { LoginAuthDto } from './dto/login-auth.dto';
import { RegisterAuthDTO } from './dto/register-auth.dto';

@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('login')
  login(@Body() body: LoginAuthDto) {
    body.phone = +body.phone;
    return this.authService.login(body);
  }

  @Post('register')
  register(@Body() body: RegisterAuthDTO) {
    body.phone = +body.phone;
    return this.authService.register(body);
  }
}
