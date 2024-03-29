import { Component, OnInit } from '@angular/core';
import { AuthService } from 'src/app/services/auth.service';
import { ChatService } from 'src/app/services/chat.service';
import { Router } from '@angular/router';
import { RefreshService } from 'src/app/services/refresh.service';

@Component({
  selector: 'app-salas',
  templateUrl: './salas.component.html',
  styleUrls: ['./salas.component.css']
})
export class SalasComponent implements OnInit {

  rooms = [
    {name:"Sala1", messages: []},
    {name:"Sala2", messages: []},
    {name:"Sala3", messages: []},
    {name:"Sala4", messages: []},
    {name:"Sala5", messages: []}
  ];

  roomSelcted:any = this.rooms[0];
  //messages:string[] = [];
  identidad:any;
  envio: { nickname: any; cuerpo: any; sala:any;};
  mensaje: string;

  constructor(private _Auth:AuthService, private _Router:Router, private _chatService:ChatService, private _Refresh:RefreshService) { }

  ngOnInit() {
    this.identidad = this._Auth.getIdentity();
    //this._chatService.joinSala(this.roomSelcted.name);
    this._chatService.getMessages().subscribe((mensaje:any)=>{
      console.log(mensaje);
      let sala = parseInt(mensaje.sala[mensaje.sala.length - 1]) - 1;
      console.log("sala", sala);
      this.rooms[sala].messages.push(mensaje);
    })
  }

  refres(){
    this._Refresh.refresh(this.identidad)
    .then(respuesta=>{
      console.log(respuesta);
      this._Auth.setIdentity(respuesta);
      this.envio = {nickname:this.identidad['nickname'], cuerpo:this.mensaje, sala:this.roomSelcted.name};
      this._chatService.sendMessage(this.envio);
      this.mensaje = '';
    })
    .catch(error=>{
      console.log(error);
      let errorhandler = error.json();
      if(errorhandler['id'] == '1'){
      this._Auth.logOut();
      this._Router.navigate(['/login']);
      }
    });
  }

  sendMessage(){
    this.refres();
  }

  selectRoom(room:any){
    //this._chatService.leaveSala(this.roomSelcted.name);
    this.roomSelcted=room;
    console.log(this.roomSelcted);
    //this._chatService.joinSala(this.roomSelcted.name);
  }

}
