import { Routes, RouterModule } from '@angular/router';

import { WelcomeComponent } from '../componentes/welcome/welcome.component';
import { RegisterComponent } from '../componentes/register/register.component';
import { LoginComponent } from '../componentes/login/login.component';
import { HomeComponent } from '../componentes/home/home.component';

const app_routes: Routes = [
{path: '',component: WelcomeComponent},
{path: 'register',component: RegisterComponent},
{path: 'login',component: LoginComponent},
{path: 'home',component: HomeComponent},
];


export const AppRouting=RouterModule.forRoot(app_routes);