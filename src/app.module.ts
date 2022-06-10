import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { User } from './user/user.entity';
import { UserModule } from './user/user.module';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      // type:'mysql',
      // host:'103.27.201.25',
      // port:3306,
      // username:'gadgetst_admin',
      // password:'@Gadgetstory2019',
      // database:'gadgetst_repair-system',
      // entities:[User],
      // synchronize: true
    }),
    UserModule
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}