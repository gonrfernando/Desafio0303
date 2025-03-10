PGDMP      /                }            institution    17.2    17.2 [    ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            `           1262    18061    institution    DATABASE     �   CREATE DATABASE institution WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE institution;
                     postgres    false            �            1259    18102    areas    TABLE     a   CREATE TABLE public.areas (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.areas;
       public         heap r       postgres    false            �            1259    18101    areas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.areas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.areas_id_seq;
       public               postgres    false    228            a           0    0    areas_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.areas_id_seq OWNED BY public.areas.id;
          public               postgres    false    227            �            1259    18095    courses    TABLE     �   CREATE TABLE public.courses (
    id integer NOT NULL,
    teacher_id integer NOT NULL,
    subject_id integer NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL
);
    DROP TABLE public.courses;
       public         heap r       postgres    false            �            1259    18094    courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courses_id_seq;
       public               postgres    false    226            b           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
          public               postgres    false    225            �            1259    18109    enrolls    TABLE     �   CREATE TABLE public.enrolls (
    id integer NOT NULL,
    student_id integer NOT NULL,
    course_id integer NOT NULL,
    period1 real NOT NULL,
    period2 real NOT NULL,
    period3 real NOT NULL
);
    DROP TABLE public.enrolls;
       public         heap r       postgres    false            �            1259    18108    enrolls_id_seq    SEQUENCE     �   CREATE SEQUENCE public.enrolls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.enrolls_id_seq;
       public               postgres    false    230            c           0    0    enrolls_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.enrolls_id_seq OWNED BY public.enrolls.id;
          public               postgres    false    229            �            1259    18116    inscriptions    TABLE     �   CREATE TABLE public.inscriptions (
    id integer NOT NULL,
    student_id integer NOT NULL,
    program_id integer NOT NULL,
    semester integer NOT NULL,
    date date NOT NULL,
    payment_date date NOT NULL,
    program_progress real NOT NULL
);
     DROP TABLE public.inscriptions;
       public         heap r       postgres    false            �            1259    18115    inscriptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.inscriptions_id_seq;
       public               postgres    false    232            d           0    0    inscriptions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.inscriptions_id_seq OWNED BY public.inscriptions.id;
          public               postgres    false    231            �            1259    18123    program_contents    TABLE     �   CREATE TABLE public.program_contents (
    id integer NOT NULL,
    program_id integer NOT NULL,
    subject_id integer NOT NULL
);
 $   DROP TABLE public.program_contents;
       public         heap r       postgres    false            �            1259    18122    program_contents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.program_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.program_contents_id_seq;
       public               postgres    false    234            e           0    0    program_contents_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.program_contents_id_seq OWNED BY public.program_contents.id;
          public               postgres    false    233            �            1259    18070    programs    TABLE     }   CREATE TABLE public.programs (
    id integer NOT NULL,
    area_id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.programs;
       public         heap r       postgres    false            �            1259    18069    programs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.programs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.programs_id_seq;
       public               postgres    false    220            f           0    0    programs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.programs_id_seq OWNED BY public.programs.id;
          public               postgres    false    219            �            1259    18198    roles    TABLE     \   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.roles;
       public         heap r       postgres    false            �            1259    18197    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public               postgres    false    238            g           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public               postgres    false    237            �            1259    18063    students    TABLE     �  CREATE TABLE public.students (
    id integer NOT NULL,
    reigstration_number character varying(10) NOT NULL,
    names character varying(100) NOT NULL,
    last_names character varying(100) NOT NULL,
    birth_date date NOT NULL,
    email character varying(60) NOT NULL,
    phone character varying(15) NOT NULL,
    state character varying(50) NOT NULL,
    inscription_id integer NOT NULL
);
    DROP TABLE public.students;
       public         heap r       postgres    false            �            1259    18062    students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public               postgres    false    218            h           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public               postgres    false    217            �            1259    18079    subjects    TABLE     �   CREATE TABLE public.subjects (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    credits real NOT NULL,
    description character varying NOT NULL,
    area_id integer NOT NULL
);
    DROP TABLE public.subjects;
       public         heap r       postgres    false            �            1259    18078    subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.subjects_id_seq;
       public               postgres    false    222            i           0    0    subjects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;
          public               postgres    false    221            �            1259    18088    teachers    TABLE       CREATE TABLE public.teachers (
    id integer NOT NULL,
    area_id integer NOT NULL,
    payroll_number integer NOT NULL,
    names character varying(100) NOT NULL,
    last_names character varying(150) NOT NULL,
    email character varying(100) NOT NULL
);
    DROP TABLE public.teachers;
       public         heap r       postgres    false            �            1259    18087    teachers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.teachers_id_seq;
       public               postgres    false    224            j           0    0    teachers_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;
          public               postgres    false    223            �            1259    18189    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying NOT NULL,
    password character varying(255) NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    18188    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    236            k           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    235            �           2604    18105    areas id    DEFAULT     d   ALTER TABLE ONLY public.areas ALTER COLUMN id SET DEFAULT nextval('public.areas_id_seq'::regclass);
 7   ALTER TABLE public.areas ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    228    228            �           2604    18098 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    226    226            �           2604    18112 
   enrolls id    DEFAULT     h   ALTER TABLE ONLY public.enrolls ALTER COLUMN id SET DEFAULT nextval('public.enrolls_id_seq'::regclass);
 9   ALTER TABLE public.enrolls ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    230    229    230            �           2604    18119    inscriptions id    DEFAULT     r   ALTER TABLE ONLY public.inscriptions ALTER COLUMN id SET DEFAULT nextval('public.inscriptions_id_seq'::regclass);
 >   ALTER TABLE public.inscriptions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    232    231    232            �           2604    18126    program_contents id    DEFAULT     z   ALTER TABLE ONLY public.program_contents ALTER COLUMN id SET DEFAULT nextval('public.program_contents_id_seq'::regclass);
 B   ALTER TABLE public.program_contents ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    233    234    234            �           2604    18073    programs id    DEFAULT     j   ALTER TABLE ONLY public.programs ALTER COLUMN id SET DEFAULT nextval('public.programs_id_seq'::regclass);
 :   ALTER TABLE public.programs ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            �           2604    18201    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    237    238    238            �           2604    18066    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �           2604    18082    subjects id    DEFAULT     j   ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);
 :   ALTER TABLE public.subjects ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221    222            �           2604    18091    teachers id    DEFAULT     j   ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);
 :   ALTER TABLE public.teachers ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    223    224    224            �           2604    18192    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    236    235    236            P          0    18102    areas 
   TABLE DATA           )   COPY public.areas (id, name) FROM stdin;
    public               postgres    false    228   .g       N          0    18095    courses 
   TABLE DATA           S   COPY public.courses (id, teacher_id, subject_id, start_time, end_time) FROM stdin;
    public               postgres    false    226   Kg       R          0    18109    enrolls 
   TABLE DATA           W   COPY public.enrolls (id, student_id, course_id, period1, period2, period3) FROM stdin;
    public               postgres    false    230   hg       T          0    18116    inscriptions 
   TABLE DATA           r   COPY public.inscriptions (id, student_id, program_id, semester, date, payment_date, program_progress) FROM stdin;
    public               postgres    false    232   �g       V          0    18123    program_contents 
   TABLE DATA           F   COPY public.program_contents (id, program_id, subject_id) FROM stdin;
    public               postgres    false    234   �g       H          0    18070    programs 
   TABLE DATA           5   COPY public.programs (id, area_id, name) FROM stdin;
    public               postgres    false    220   �g       Z          0    18198    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public               postgres    false    238   �g       F          0    18063    students 
   TABLE DATA              COPY public.students (id, reigstration_number, names, last_names, birth_date, email, phone, state, inscription_id) FROM stdin;
    public               postgres    false    218   h       J          0    18079    subjects 
   TABLE DATA           K   COPY public.subjects (id, name, credits, description, area_id) FROM stdin;
    public               postgres    false    222   :h       L          0    18088    teachers 
   TABLE DATA           Y   COPY public.teachers (id, area_id, payroll_number, names, last_names, email) FROM stdin;
    public               postgres    false    224   Wh       X          0    18189    users 
   TABLE DATA           @   COPY public.users (id, username, password, role_id) FROM stdin;
    public               postgres    false    236   th       l           0    0    areas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.areas_id_seq', 1, false);
          public               postgres    false    227            m           0    0    courses_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.courses_id_seq', 1, false);
          public               postgres    false    225            n           0    0    enrolls_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.enrolls_id_seq', 1, false);
          public               postgres    false    229            o           0    0    inscriptions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.inscriptions_id_seq', 1, false);
          public               postgres    false    231            p           0    0    program_contents_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.program_contents_id_seq', 1, false);
          public               postgres    false    233            q           0    0    programs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.programs_id_seq', 1, false);
          public               postgres    false    219            r           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public               postgres    false    237            s           0    0    students_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.students_id_seq', 1, false);
          public               postgres    false    217            t           0    0    subjects_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.subjects_id_seq', 1, false);
          public               postgres    false    221            u           0    0    teachers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.teachers_id_seq', 1, false);
          public               postgres    false    223            v           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public               postgres    false    235            �           2606    18107    areas areas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.areas DROP CONSTRAINT areas_pkey;
       public                 postgres    false    228            �           2606    18100    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public                 postgres    false    226            �           2606    18114    enrolls enrolls_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.enrolls
    ADD CONSTRAINT enrolls_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.enrolls DROP CONSTRAINT enrolls_pkey;
       public                 postgres    false    230            �           2606    18121    inscriptions inscriptions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.inscriptions
    ADD CONSTRAINT inscriptions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.inscriptions DROP CONSTRAINT inscriptions_pkey;
       public                 postgres    false    232            �           2606    18128 &   program_contents program_contents_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.program_contents
    ADD CONSTRAINT program_contents_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.program_contents DROP CONSTRAINT program_contents_pkey;
       public                 postgres    false    234            �           2606    18077    programs programs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.programs
    ADD CONSTRAINT programs_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.programs DROP CONSTRAINT programs_pkey;
       public                 postgres    false    220            �           2606    18205    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public                 postgres    false    238            �           2606    18068    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public                 postgres    false    218            �           2606    18086    subjects subjects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public                 postgres    false    222            �           2606    18093    teachers teachers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.teachers DROP CONSTRAINT teachers_pkey;
       public                 postgres    false    224            �           2606    18196    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    236            �           2606    18129    programs area_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.programs
    ADD CONSTRAINT area_fk FOREIGN KEY (area_id) REFERENCES public.areas(id) NOT VALID;
 :   ALTER TABLE ONLY public.programs DROP CONSTRAINT area_fk;
       public               postgres    false    228    220    4767            �           2606    18134    subjects area_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT area_fk FOREIGN KEY (area_id) REFERENCES public.areas(id) NOT VALID;
 :   ALTER TABLE ONLY public.subjects DROP CONSTRAINT area_fk;
       public               postgres    false    222    4767    228            �           2606    18154    enrolls course_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.enrolls
    ADD CONSTRAINT course_fk FOREIGN KEY (course_id) REFERENCES public.courses(id) NOT VALID;
 ;   ALTER TABLE ONLY public.enrolls DROP CONSTRAINT course_fk;
       public               postgres    false    230    4765    226            �           2606    18164    inscriptions program_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscriptions
    ADD CONSTRAINT program_fk FOREIGN KEY (program_id) REFERENCES public.programs(id) NOT VALID;
 A   ALTER TABLE ONLY public.inscriptions DROP CONSTRAINT program_fk;
       public               postgres    false    232    4759    220            �           2606    18169    program_contents program_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.program_contents
    ADD CONSTRAINT program_fk FOREIGN KEY (program_id) REFERENCES public.programs(id) NOT VALID;
 E   ALTER TABLE ONLY public.program_contents DROP CONSTRAINT program_fk;
       public               postgres    false    220    4759    234            �           2606    18149    enrolls student_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrolls
    ADD CONSTRAINT student_fk FOREIGN KEY (student_id) REFERENCES public.students(id) NOT VALID;
 <   ALTER TABLE ONLY public.enrolls DROP CONSTRAINT student_fk;
       public               postgres    false    230    4757    218            �           2606    18144    courses subject_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT subject_fk FOREIGN KEY (subject_id) REFERENCES public.subjects(id) NOT VALID;
 <   ALTER TABLE ONLY public.courses DROP CONSTRAINT subject_fk;
       public               postgres    false    222    4761    226            �           2606    18174    program_contents subject_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.program_contents
    ADD CONSTRAINT subject_fk FOREIGN KEY (subject_id) REFERENCES public.subjects(id) NOT VALID;
 E   ALTER TABLE ONLY public.program_contents DROP CONSTRAINT subject_fk;
       public               postgres    false    234    222    4761            �           2606    18159    inscriptions sutdent_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscriptions
    ADD CONSTRAINT sutdent_fk FOREIGN KEY (student_id) REFERENCES public.students(id) NOT VALID;
 A   ALTER TABLE ONLY public.inscriptions DROP CONSTRAINT sutdent_fk;
       public               postgres    false    232    218    4757            �           2606    18139    courses teacher_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT teacher_fk FOREIGN KEY (teacher_id) REFERENCES public.teachers(id) NOT VALID;
 <   ALTER TABLE ONLY public.courses DROP CONSTRAINT teacher_fk;
       public               postgres    false    224    4763    226            P      x������ � �      N      x������ � �      R      x������ � �      T      x������ � �      V      x������ � �      H      x������ � �      Z   1   x�3�LL����,.)J,�/�2�,IML�H-�2�,.)MI�+����� #��      F      x������ � �      J      x������ � �      L      x������ � �      X      x�3�42460402E0��b���� @<N     