import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'ХУШНУДБЕК зовут!';
  }

  async sync(): Promise<object> {
    return { message: 'Synchronization successfully EXECUTED!' };
  }
}
