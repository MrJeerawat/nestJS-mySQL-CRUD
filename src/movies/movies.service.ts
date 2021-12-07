import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { DeleteResult, Repository, UpdateResult } from 'typeorm';
import { Movie } from './movies';
@Injectable()
export class MoviesService {

    constructor(@InjectRepository(Movie) private movieRepo:Repository<Movie>){

    }

  createMovie(movie: Movie): Promise<Movie> {
    try {
      return this.movieRepo.save(movie);
    } catch (error) {
      return error;
    }
    
  }

  readMovies(): Promise<Movie[]> {
    return this.movieRepo.find();
  }

  readMovie(id: number): Promise<Movie> {
    return this.movieRepo.findOne(id);
  }

  updateMovie(id:number,newMovie: Movie): Promise<UpdateResult> {
    if(newMovie){
      console.log(newMovie);
    }else{
      console.log('no movie');
    }
    return  this.movieRepo.update(id, newMovie);
  }

  deleteMovie(id: number):Promise<DeleteResult> {
    return this.movieRepo.delete(id)
  }
}
