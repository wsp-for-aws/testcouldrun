import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { User } from './user.entity';

@Injectable()
export class UserService {
    constructor(@InjectRepository(User) private usersRepository: Repository<User>){
        // console.log(this.findAll())
        this.create({
            name:'test',
            password:'test',
            email:'test'
        })
    }

    findAll(): Promise<User[]>{
        const obj_res = this.usersRepository.find()
        return obj_res
    }

    async create(user): Promise<User[]>{
        const obj_res = await this.usersRepository.save(user)
        console.log(obj_res)
        return obj_res
    }
}
