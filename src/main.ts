import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { PrismaService } from './prisma/prisma.service';

const port = process.env.POS_BACK_PORT || 3001;

async function bootstrap() {
  const app = await NestFactory.create(AppModule, {
    logger: ['error'],
    cors: true,
  });
  app
    .listen(port)
    .then(() => {
      console.log(`\nPOS_BACK@${port}\n`);
    })
    .catch((error) => {
      console.log(error);
    });

  const prismaService = app.get(PrismaService);
  await prismaService.enableShutdownHooks(app);
}

bootstrap();
