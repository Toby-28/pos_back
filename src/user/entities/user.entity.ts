import { User } from "@prisma/client";

export class UserEntity implements User {
  id: number;
  name: string;
  phone: number;
  password: string;
}
