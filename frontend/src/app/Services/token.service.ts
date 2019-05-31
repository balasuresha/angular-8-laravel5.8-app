import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class TokenService {

  /* Checking the matching URLs with token values */
  private iss = {
    login: 'http://localhost:8000/api/login',
    signup: 'http://localhost:8000/api/signup'
  }

  constructor() { }

  handle(token){
    this.set(token);
    //console.log(this.isValid());
  }

  set(token){
    localStorage.setItem('token',token);
  }

  get(){
    return localStorage.getItem('token');
  }

  remove(){
    localStorage.removeItem('token');
  }

  isValid(){
    const token = this.get();
    if(token){
      const payload = this.payload(token);
      if(payload){
        //return (payload.iss === 'http://localhost:8000/api/login') ? true : false;
        return Object.values(this.iss).indexOf(payload.iss) > -1 ? true : false;
      }
    }
    return false;
  }

/* Here we are spliting the token because, we are extracting the needed value */
  payload(token){
    const payload = token.split('.')[1];
    return this.decode(payload);
  }

  decode(payload) {
    //console.log(JSON.parse(atob(payload)));
    // {
    //   iss: "http://localhost:8000/api/login", iat: 1559306386, exp: 1559309986, nbf: 1559306386, jti: "8uOzasSEXZgCHIx3", …}
    //   exp: 1559309986
    //   iat: 1559306386
    //   iss: "http://localhost:8000/api/login"
    //   jti: "8uOzasSEXZgCHIx3"
    //   nbf: 1559306386
    //   prv: "87e0af1ef9fd15812fdec97153a14e0b047546aa"
    //   sub: 6
    // }

    return JSON.parse(atob(payload));
  }

  loggedIn(){
    return this.isValid();
  }
}
