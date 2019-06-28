PGDMP                          w            Cliente    11.3    11.3 B    ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            `           1262    16499    Cliente    DATABASE     �   CREATE DATABASE "Cliente" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE "Cliente";
             postgres    false            �            1259    18283    Comunidades    TABLE     V   CREATE TABLE public."Comunidades" (
    nombre text NOT NULL,
    descripcion text
);
 !   DROP TABLE public."Comunidades";
       public         postgres    false            �            1259    18338    Comunidades_Usuarios    TABLE     �   CREATE TABLE public."Comunidades_Usuarios" (
    "id_Comunidad_Usuario" integer NOT NULL,
    "nicknameUsuario_FK" text NOT NULL,
    "nombreComunidad_FK" text NOT NULL
);
 *   DROP TABLE public."Comunidades_Usuarios";
       public         postgres    false            �            1259    18336 -   Comunidades_Usuarios_id_Comunidad_Usuario_seq    SEQUENCE     �   CREATE SEQUENCE public."Comunidades_Usuarios_id_Comunidad_Usuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."Comunidades_Usuarios_id_Comunidad_Usuario_seq";
       public       postgres    false    204            a           0    0 -   Comunidades_Usuarios_id_Comunidad_Usuario_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Comunidades_Usuarios_id_Comunidad_Usuario_seq" OWNED BY public."Comunidades_Usuarios"."id_Comunidad_Usuario";
            public       postgres    false    203            �            1259    18317    Eventos    TABLE       CREATE TABLE public."Eventos" (
    "id_Evento" integer NOT NULL,
    nombre text NOT NULL,
    descripcion text,
    fecha text NOT NULL,
    hora text NOT NULL,
    lugar text NOT NULL,
    "nicknameCreador_FK" text NOT NULL,
    "nombreComunidad_FK" text NOT NULL
);
    DROP TABLE public."Eventos";
       public         postgres    false            �            1259    18315    Eventos_id_Evento_seq    SEQUENCE     �   CREATE SEQUENCE public."Eventos_id_Evento_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Eventos_id_Evento_seq";
       public       postgres    false    202            b           0    0    Eventos_id_Evento_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Eventos_id_Evento_seq" OWNED BY public."Eventos"."id_Evento";
            public       postgres    false    201            �            1259    18293    Mensajes_Privados    TABLE     i   CREATE TABLE public."Mensajes_Privados" (
    "id_Message" integer NOT NULL,
    "Body" text NOT NULL
);
 '   DROP TABLE public."Mensajes_Privados";
       public         postgres    false            �            1259    18291     Mensajes_Privados_id_Message_seq    SEQUENCE     �   CREATE SEQUENCE public."Mensajes_Privados_id_Message_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."Mensajes_Privados_id_Message_seq";
       public       postgres    false    199            c           0    0     Mensajes_Privados_id_Message_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."Mensajes_Privados_id_Message_seq" OWNED BY public."Mensajes_Privados"."id_Message";
            public       postgres    false    198            �            1259    18385    Notificaciones    TABLE     �   CREATE TABLE public."Notificaciones" (
    "id_Notificacion" integer NOT NULL,
    nombre text NOT NULL,
    descripcion text,
    "idEvento_FK" integer NOT NULL
);
 $   DROP TABLE public."Notificaciones";
       public         postgres    false            �            1259    18401    Notificaciones_Usuarios    TABLE     �   CREATE TABLE public."Notificaciones_Usuarios" (
    "id_Notificacion_Usuario" integer NOT NULL,
    leida boolean NOT NULL,
    "idNotificacion_FK" integer NOT NULL,
    "nicknameUsuario_FK" text NOT NULL
);
 -   DROP TABLE public."Notificaciones_Usuarios";
       public         postgres    false            �            1259    18399 3   Notificaciones_Usuarios_id_Notificacion_Usuario_seq    SEQUENCE     �   CREATE SEQUENCE public."Notificaciones_Usuarios_id_Notificacion_Usuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public."Notificaciones_Usuarios_id_Notificacion_Usuario_seq";
       public       postgres    false    210            d           0    0 3   Notificaciones_Usuarios_id_Notificacion_Usuario_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Notificaciones_Usuarios_id_Notificacion_Usuario_seq" OWNED BY public."Notificaciones_Usuarios"."id_Notificacion_Usuario";
            public       postgres    false    209            �            1259    18383 "   Notificaciones_id_Notificacion_seq    SEQUENCE     �   CREATE SEQUENCE public."Notificaciones_id_Notificacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."Notificaciones_id_Notificacion_seq";
       public       postgres    false    208            e           0    0 "   Notificaciones_id_Notificacion_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."Notificaciones_id_Notificacion_seq" OWNED BY public."Notificaciones"."id_Notificacion";
            public       postgres    false    207            �            1259    18275    Salas    TABLE     P   CREATE TABLE public."Salas" (
    nombre text NOT NULL,
    descripcion text
);
    DROP TABLE public."Salas";
       public         postgres    false            �            1259    18302    Usuarios    TABLE     �   CREATE TABLE public."Usuarios" (
    nickname text NOT NULL,
    nombre text NOT NULL,
    password text NOT NULL,
    estado boolean NOT NULL,
    "nombre_sala_FK" text NOT NULL
);
    DROP TABLE public."Usuarios";
       public         postgres    false            �            1259    18359    Usuarios_MensajesPrivados    TABLE     �   CREATE TABLE public."Usuarios_MensajesPrivados" (
    "id_Usuario_MensajeP" integer NOT NULL,
    "nicknameEmisor_FK" text NOT NULL,
    "nicknameReceptor_FK" text NOT NULL,
    "idMensaje_FK" integer NOT NULL
);
 /   DROP TABLE public."Usuarios_MensajesPrivados";
       public         postgres    false            �            1259    18357 1   Usuarios_MensajesPrivados_id_Usuario_MensajeP_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuarios_MensajesPrivados_id_Usuario_MensajeP_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public."Usuarios_MensajesPrivados_id_Usuario_MensajeP_seq";
       public       postgres    false    206            f           0    0 1   Usuarios_MensajesPrivados_id_Usuario_MensajeP_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Usuarios_MensajesPrivados_id_Usuario_MensajeP_seq" OWNED BY public."Usuarios_MensajesPrivados"."id_Usuario_MensajeP";
            public       postgres    false    205            �
           2604    18341 )   Comunidades_Usuarios id_Comunidad_Usuario    DEFAULT     �   ALTER TABLE ONLY public."Comunidades_Usuarios" ALTER COLUMN "id_Comunidad_Usuario" SET DEFAULT nextval('public."Comunidades_Usuarios_id_Comunidad_Usuario_seq"'::regclass);
 \   ALTER TABLE public."Comunidades_Usuarios" ALTER COLUMN "id_Comunidad_Usuario" DROP DEFAULT;
       public       postgres    false    203    204    204            �
           2604    18320    Eventos id_Evento    DEFAULT     |   ALTER TABLE ONLY public."Eventos" ALTER COLUMN "id_Evento" SET DEFAULT nextval('public."Eventos_id_Evento_seq"'::regclass);
 D   ALTER TABLE public."Eventos" ALTER COLUMN "id_Evento" DROP DEFAULT;
       public       postgres    false    202    201    202            �
           2604    18296    Mensajes_Privados id_Message    DEFAULT     �   ALTER TABLE ONLY public."Mensajes_Privados" ALTER COLUMN "id_Message" SET DEFAULT nextval('public."Mensajes_Privados_id_Message_seq"'::regclass);
 O   ALTER TABLE public."Mensajes_Privados" ALTER COLUMN "id_Message" DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    18388    Notificaciones id_Notificacion    DEFAULT     �   ALTER TABLE ONLY public."Notificaciones" ALTER COLUMN "id_Notificacion" SET DEFAULT nextval('public."Notificaciones_id_Notificacion_seq"'::regclass);
 Q   ALTER TABLE public."Notificaciones" ALTER COLUMN "id_Notificacion" DROP DEFAULT;
       public       postgres    false    208    207    208            �
           2604    18404 /   Notificaciones_Usuarios id_Notificacion_Usuario    DEFAULT     �   ALTER TABLE ONLY public."Notificaciones_Usuarios" ALTER COLUMN "id_Notificacion_Usuario" SET DEFAULT nextval('public."Notificaciones_Usuarios_id_Notificacion_Usuario_seq"'::regclass);
 b   ALTER TABLE public."Notificaciones_Usuarios" ALTER COLUMN "id_Notificacion_Usuario" DROP DEFAULT;
       public       postgres    false    210    209    210            �
           2604    18362 -   Usuarios_MensajesPrivados id_Usuario_MensajeP    DEFAULT     �   ALTER TABLE ONLY public."Usuarios_MensajesPrivados" ALTER COLUMN "id_Usuario_MensajeP" SET DEFAULT nextval('public."Usuarios_MensajesPrivados_id_Usuario_MensajeP_seq"'::regclass);
 `   ALTER TABLE public."Usuarios_MensajesPrivados" ALTER COLUMN "id_Usuario_MensajeP" DROP DEFAULT;
       public       postgres    false    205    206    206            M          0    18283    Comunidades 
   TABLE DATA               <   COPY public."Comunidades" (nombre, descripcion) FROM stdin;
    public       postgres    false    197   Y       T          0    18338    Comunidades_Usuarios 
   TABLE DATA               t   COPY public."Comunidades_Usuarios" ("id_Comunidad_Usuario", "nicknameUsuario_FK", "nombreComunidad_FK") FROM stdin;
    public       postgres    false    204   .Y       R          0    18317    Eventos 
   TABLE DATA               �   COPY public."Eventos" ("id_Evento", nombre, descripcion, fecha, hora, lugar, "nicknameCreador_FK", "nombreComunidad_FK") FROM stdin;
    public       postgres    false    202   KY       O          0    18293    Mensajes_Privados 
   TABLE DATA               C   COPY public."Mensajes_Privados" ("id_Message", "Body") FROM stdin;
    public       postgres    false    199   hY       X          0    18385    Notificaciones 
   TABLE DATA               a   COPY public."Notificaciones" ("id_Notificacion", nombre, descripcion, "idEvento_FK") FROM stdin;
    public       postgres    false    208   �Y       Z          0    18401    Notificaciones_Usuarios 
   TABLE DATA               �   COPY public."Notificaciones_Usuarios" ("id_Notificacion_Usuario", leida, "idNotificacion_FK", "nicknameUsuario_FK") FROM stdin;
    public       postgres    false    210   �Y       L          0    18275    Salas 
   TABLE DATA               6   COPY public."Salas" (nombre, descripcion) FROM stdin;
    public       postgres    false    196   �Y       P          0    18302    Usuarios 
   TABLE DATA               Z   COPY public."Usuarios" (nickname, nombre, password, estado, "nombre_sala_FK") FROM stdin;
    public       postgres    false    200   Z       V          0    18359    Usuarios_MensajesPrivados 
   TABLE DATA               �   COPY public."Usuarios_MensajesPrivados" ("id_Usuario_MensajeP", "nicknameEmisor_FK", "nicknameReceptor_FK", "idMensaje_FK") FROM stdin;
    public       postgres    false    206   fZ       g           0    0 -   Comunidades_Usuarios_id_Comunidad_Usuario_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."Comunidades_Usuarios_id_Comunidad_Usuario_seq"', 1, false);
            public       postgres    false    203            h           0    0    Eventos_id_Evento_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Eventos_id_Evento_seq"', 1, false);
            public       postgres    false    201            i           0    0     Mensajes_Privados_id_Message_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Mensajes_Privados_id_Message_seq"', 1, false);
            public       postgres    false    198            j           0    0 3   Notificaciones_Usuarios_id_Notificacion_Usuario_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public."Notificaciones_Usuarios_id_Notificacion_Usuario_seq"', 1, false);
            public       postgres    false    209            k           0    0 "   Notificaciones_id_Notificacion_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."Notificaciones_id_Notificacion_seq"', 1, false);
            public       postgres    false    207            l           0    0 1   Usuarios_MensajesPrivados_id_Usuario_MensajeP_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."Usuarios_MensajesPrivados_id_Usuario_MensajeP_seq"', 1, false);
            public       postgres    false    205            �
           2606    18346 .   Comunidades_Usuarios Comunidades_Usuarios_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Comunidades_Usuarios"
    ADD CONSTRAINT "Comunidades_Usuarios_pkey" PRIMARY KEY ("id_Comunidad_Usuario");
 \   ALTER TABLE ONLY public."Comunidades_Usuarios" DROP CONSTRAINT "Comunidades_Usuarios_pkey";
       public         postgres    false    204            �
           2606    18290    Comunidades Comunidades_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Comunidades"
    ADD CONSTRAINT "Comunidades_pkey" PRIMARY KEY (nombre);
 J   ALTER TABLE ONLY public."Comunidades" DROP CONSTRAINT "Comunidades_pkey";
       public         postgres    false    197            �
           2606    18325    Eventos Eventos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Eventos"
    ADD CONSTRAINT "Eventos_pkey" PRIMARY KEY ("id_Evento");
 B   ALTER TABLE ONLY public."Eventos" DROP CONSTRAINT "Eventos_pkey";
       public         postgres    false    202            �
           2606    18301 (   Mensajes_Privados Mensajes_Privados_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."Mensajes_Privados"
    ADD CONSTRAINT "Mensajes_Privados_pkey" PRIMARY KEY ("id_Message");
 V   ALTER TABLE ONLY public."Mensajes_Privados" DROP CONSTRAINT "Mensajes_Privados_pkey";
       public         postgres    false    199            �
           2606    18409 4   Notificaciones_Usuarios Notificaciones_Usuarios_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Notificaciones_Usuarios"
    ADD CONSTRAINT "Notificaciones_Usuarios_pkey" PRIMARY KEY ("id_Notificacion_Usuario");
 b   ALTER TABLE ONLY public."Notificaciones_Usuarios" DROP CONSTRAINT "Notificaciones_Usuarios_pkey";
       public         postgres    false    210            �
           2606    18393 "   Notificaciones Notificaciones_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."Notificaciones"
    ADD CONSTRAINT "Notificaciones_pkey" PRIMARY KEY ("id_Notificacion");
 P   ALTER TABLE ONLY public."Notificaciones" DROP CONSTRAINT "Notificaciones_pkey";
       public         postgres    false    208            �
           2606    18282    Salas Salas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Salas"
    ADD CONSTRAINT "Salas_pkey" PRIMARY KEY (nombre);
 >   ALTER TABLE ONLY public."Salas" DROP CONSTRAINT "Salas_pkey";
       public         postgres    false    196            �
           2606    18367 8   Usuarios_MensajesPrivados Usuarios_MensajesPrivados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Usuarios_MensajesPrivados"
    ADD CONSTRAINT "Usuarios_MensajesPrivados_pkey" PRIMARY KEY ("id_Usuario_MensajeP");
 f   ALTER TABLE ONLY public."Usuarios_MensajesPrivados" DROP CONSTRAINT "Usuarios_MensajesPrivados_pkey";
       public         postgres    false    206            �
           2606    18309    Usuarios Usuarios_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY (nickname);
 D   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_pkey";
       public         postgres    false    200            �
           2606    18347 A   Comunidades_Usuarios Comunidades_Usuarios_nicknameUsuario_FK_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Comunidades_Usuarios"
    ADD CONSTRAINT "Comunidades_Usuarios_nicknameUsuario_FK_fkey" FOREIGN KEY ("nicknameUsuario_FK") REFERENCES public."Usuarios"(nickname);
 o   ALTER TABLE ONLY public."Comunidades_Usuarios" DROP CONSTRAINT "Comunidades_Usuarios_nicknameUsuario_FK_fkey";
       public       postgres    false    204    200    2749            �
           2606    18352 A   Comunidades_Usuarios Comunidades_Usuarios_nombreComunidad_FK_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Comunidades_Usuarios"
    ADD CONSTRAINT "Comunidades_Usuarios_nombreComunidad_FK_fkey" FOREIGN KEY ("nombreComunidad_FK") REFERENCES public."Comunidades"(nombre);
 o   ALTER TABLE ONLY public."Comunidades_Usuarios" DROP CONSTRAINT "Comunidades_Usuarios_nombreComunidad_FK_fkey";
       public       postgres    false    197    204    2745            �
           2606    18326 '   Eventos Eventos_nicknameCreador_FK_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Eventos"
    ADD CONSTRAINT "Eventos_nicknameCreador_FK_fkey" FOREIGN KEY ("nicknameCreador_FK") REFERENCES public."Usuarios"(nickname);
 U   ALTER TABLE ONLY public."Eventos" DROP CONSTRAINT "Eventos_nicknameCreador_FK_fkey";
       public       postgres    false    2749    202    200            �
           2606    18331 '   Eventos Eventos_nombreComunidad_FK_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Eventos"
    ADD CONSTRAINT "Eventos_nombreComunidad_FK_fkey" FOREIGN KEY ("nombreComunidad_FK") REFERENCES public."Comunidades"(nombre);
 U   ALTER TABLE ONLY public."Eventos" DROP CONSTRAINT "Eventos_nombreComunidad_FK_fkey";
       public       postgres    false    202    2745    197            �
           2606    18410 F   Notificaciones_Usuarios Notificaciones_Usuarios_idNotificacion_FK_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Notificaciones_Usuarios"
    ADD CONSTRAINT "Notificaciones_Usuarios_idNotificacion_FK_fkey" FOREIGN KEY ("idNotificacion_FK") REFERENCES public."Notificaciones"("id_Notificacion");
 t   ALTER TABLE ONLY public."Notificaciones_Usuarios" DROP CONSTRAINT "Notificaciones_Usuarios_idNotificacion_FK_fkey";
       public       postgres    false    2757    208    210            �
           2606    18415 G   Notificaciones_Usuarios Notificaciones_Usuarios_nicknameUsuario_FK_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Notificaciones_Usuarios"
    ADD CONSTRAINT "Notificaciones_Usuarios_nicknameUsuario_FK_fkey" FOREIGN KEY ("nicknameUsuario_FK") REFERENCES public."Usuarios"(nickname);
 u   ALTER TABLE ONLY public."Notificaciones_Usuarios" DROP CONSTRAINT "Notificaciones_Usuarios_nicknameUsuario_FK_fkey";
       public       postgres    false    210    200    2749            �
           2606    18394 .   Notificaciones Notificaciones_idEvento_FK_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Notificaciones"
    ADD CONSTRAINT "Notificaciones_idEvento_FK_fkey" FOREIGN KEY ("idEvento_FK") REFERENCES public."Eventos"("id_Evento");
 \   ALTER TABLE ONLY public."Notificaciones" DROP CONSTRAINT "Notificaciones_idEvento_FK_fkey";
       public       postgres    false    2751    202    208            �
           2606    18378 E   Usuarios_MensajesPrivados Usuarios_MensajesPrivados_idMensaje_FK_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuarios_MensajesPrivados"
    ADD CONSTRAINT "Usuarios_MensajesPrivados_idMensaje_FK_fkey" FOREIGN KEY ("idMensaje_FK") REFERENCES public."Mensajes_Privados"("id_Message");
 s   ALTER TABLE ONLY public."Usuarios_MensajesPrivados" DROP CONSTRAINT "Usuarios_MensajesPrivados_idMensaje_FK_fkey";
       public       postgres    false    206    2747    199            �
           2606    18368 J   Usuarios_MensajesPrivados Usuarios_MensajesPrivados_nicknameEmisor_FK_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuarios_MensajesPrivados"
    ADD CONSTRAINT "Usuarios_MensajesPrivados_nicknameEmisor_FK_fkey" FOREIGN KEY ("nicknameEmisor_FK") REFERENCES public."Usuarios"(nickname);
 x   ALTER TABLE ONLY public."Usuarios_MensajesPrivados" DROP CONSTRAINT "Usuarios_MensajesPrivados_nicknameEmisor_FK_fkey";
       public       postgres    false    2749    200    206            �
           2606    18373 L   Usuarios_MensajesPrivados Usuarios_MensajesPrivados_nicknameReceptor_FK_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuarios_MensajesPrivados"
    ADD CONSTRAINT "Usuarios_MensajesPrivados_nicknameReceptor_FK_fkey" FOREIGN KEY ("nicknameReceptor_FK") REFERENCES public."Usuarios"(nickname);
 z   ALTER TABLE ONLY public."Usuarios_MensajesPrivados" DROP CONSTRAINT "Usuarios_MensajesPrivados_nicknameReceptor_FK_fkey";
       public       postgres    false    206    2749    200            �
           2606    18310 %   Usuarios Usuarios_nombre_sala_FK_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_nombre_sala_FK_fkey" FOREIGN KEY ("nombre_sala_FK") REFERENCES public."Salas"(nombre);
 S   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_nombre_sala_FK_fkey";
       public       postgres    false    2743    196    200            M      x������ � �      T      x������ � �      R      x������ � �      O      x������ � �      X      x������ � �      Z      x������ � �      L   >   x�N�IT0�S
�E
)�i��%�z\`1#��)c��1)��	)S��)�T� ٰ*M      P   I   x�+J�KI��I��)�,NI�,H-HM/J��J-��L�N�IT0��KM.I,*(-"��(�hZ&VE%0E1z\\\ �(w      V      x������ � �     