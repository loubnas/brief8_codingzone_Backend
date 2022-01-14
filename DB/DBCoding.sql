PGDMP     6                     z           DBCoding    14.1    14.1 B    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    24884    DBCoding    DATABASE     g   CREATE DATABASE "DBCoding" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_Morocco.1252';
    DROP DATABASE "DBCoding";
                postgres    false            �            1259    24885    question    TABLE     (  CREATE TABLE public.question (
    content character varying NOT NULL,
    reponse1 character varying,
    reponse2 character varying,
    reponse3 character varying,
    reponse4 character varying,
    duration bigint,
    score bigint,
    trueanswer bigint,
    id_question bigint NOT NULL
);
    DROP TABLE public.question;
       public         heap    postgres    false            �            1259    24890    question_idqst_seq    SEQUENCE     {   CREATE SEQUENCE public.question_idqst_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.question_idqst_seq;
       public          postgres    false    209            9           0    0    question_idqst_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.question_idqst_seq OWNED BY public.question.id_question;
          public          postgres    false    210            �            1259    24891    staff    TABLE     �   CREATE TABLE public.staff (
    id_staff bigint NOT NULL,
    firstname_staff character varying(10) NOT NULL,
    lastname_staff character varying(10) NOT NULL,
    email character varying(20) NOT NULL,
    password character varying(20) NOT NULL
);
    DROP TABLE public.staff;
       public         heap    postgres    false            �            1259    24894    staff_id_staff_seq    SEQUENCE     {   CREATE SEQUENCE public.staff_id_staff_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.staff_id_staff_seq;
       public          postgres    false    211            :           0    0    staff_id_staff_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.staff_id_staff_seq OWNED BY public.staff.id_staff;
          public          postgres    false    212            �            1259    24895    student    TABLE     �   CREATE TABLE public.student (
    id_student bigint NOT NULL,
    firstname_student character varying(10) NOT NULL,
    lastname_student character varying(10) NOT NULL,
    email character varying(30) NOT NULL
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    24898    student _id_student _seq    SEQUENCE     �   CREATE SEQUENCE public."student _id_student _seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."student _id_student _seq";
       public          postgres    false    213            ;           0    0    student _id_student _seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."student _id_student _seq" OWNED BY public.student.id_student;
          public          postgres    false    214            �            1259    24899    test    TABLE     �   CREATE TABLE public.test (
    id_test bigint NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    id_staff bigint
);
    DROP TABLE public.test;
       public         heap    postgres    false            �            1259    24904    testStudentAnswer    TABLE     �   CREATE TABLE public."testStudentAnswer" (
    id bigint NOT NULL,
    id_student bigint NOT NULL,
    id_test bigint NOT NULL,
    id_question bigint NOT NULL
);
 '   DROP TABLE public."testStudentAnswer";
       public         heap    postgres    false            �            1259    24907    testStudentAnswer_id_seq    SEQUENCE     �   CREATE SEQUENCE public."testStudentAnswer_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."testStudentAnswer_id_seq";
       public          postgres    false    216            <           0    0    testStudentAnswer_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."testStudentAnswer_id_seq" OWNED BY public."testStudentAnswer".id;
          public          postgres    false    217            �            1259    24908    test_id_test_seq    SEQUENCE     y   CREATE SEQUENCE public.test_id_test_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.test_id_test_seq;
       public          postgres    false    215            =           0    0    test_id_test_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.test_id_test_seq OWNED BY public.test.id_test;
          public          postgres    false    218            �            1259    24909    test_question    TABLE     �   CREATE TABLE public.test_question (
    id_testquestion bigint NOT NULL,
    id_test bigint NOT NULL,
    id_question bigint NOT NULL
);
 !   DROP TABLE public.test_question;
       public         heap    postgres    false            �            1259    24912    test_question_id_question_seq    SEQUENCE     �   CREATE SEQUENCE public.test_question_id_question_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.test_question_id_question_seq;
       public          postgres    false    219            >           0    0    test_question_id_question_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.test_question_id_question_seq OWNED BY public.test_question.id_question;
          public          postgres    false    220            �            1259    24913    test_question_id_test_seq    SEQUENCE     �   CREATE SEQUENCE public.test_question_id_test_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.test_question_id_test_seq;
       public          postgres    false    219            ?           0    0    test_question_id_test_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.test_question_id_test_seq OWNED BY public.test_question.id_test;
          public          postgres    false    221            �            1259    24914 !   test_question_id_testquestion_seq    SEQUENCE     �   CREATE SEQUENCE public.test_question_id_testquestion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.test_question_id_testquestion_seq;
       public          postgres    false    219            @           0    0 !   test_question_id_testquestion_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.test_question_id_testquestion_seq OWNED BY public.test_question.id_testquestion;
          public          postgres    false    222            �            1259    24915    test_student    TABLE     �   CREATE TABLE public.test_student (
    "id_testStudent" bigint NOT NULL,
    id_test bigint NOT NULL,
    id_student bigint NOT NULL,
    date date NOT NULL,
    code character varying(10) NOT NULL
);
     DROP TABLE public.test_student;
       public         heap    postgres    false            �            1259    24918    test_student_id_testStudent_seq    SEQUENCE     �   CREATE SEQUENCE public."test_student_id_testStudent_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."test_student_id_testStudent_seq";
       public          postgres    false    223            A           0    0    test_student_id_testStudent_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."test_student_id_testStudent_seq" OWNED BY public.test_student."id_testStudent";
          public          postgres    false    224            |           2604    24919    question id_question    DEFAULT     v   ALTER TABLE ONLY public.question ALTER COLUMN id_question SET DEFAULT nextval('public.question_idqst_seq'::regclass);
 C   ALTER TABLE public.question ALTER COLUMN id_question DROP DEFAULT;
       public          postgres    false    210    209            }           2604    24920    staff id_staff    DEFAULT     p   ALTER TABLE ONLY public.staff ALTER COLUMN id_staff SET DEFAULT nextval('public.staff_id_staff_seq'::regclass);
 =   ALTER TABLE public.staff ALTER COLUMN id_staff DROP DEFAULT;
       public          postgres    false    212    211            ~           2604    24921    student id_student    DEFAULT     |   ALTER TABLE ONLY public.student ALTER COLUMN id_student SET DEFAULT nextval('public."student _id_student _seq"'::regclass);
 A   ALTER TABLE public.student ALTER COLUMN id_student DROP DEFAULT;
       public          postgres    false    214    213                       2604    24922    test id_test    DEFAULT     l   ALTER TABLE ONLY public.test ALTER COLUMN id_test SET DEFAULT nextval('public.test_id_test_seq'::regclass);
 ;   ALTER TABLE public.test ALTER COLUMN id_test DROP DEFAULT;
       public          postgres    false    218    215            �           2604    24923    testStudentAnswer id    DEFAULT     �   ALTER TABLE ONLY public."testStudentAnswer" ALTER COLUMN id SET DEFAULT nextval('public."testStudentAnswer_id_seq"'::regclass);
 E   ALTER TABLE public."testStudentAnswer" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    24924    test_question id_testquestion    DEFAULT     �   ALTER TABLE ONLY public.test_question ALTER COLUMN id_testquestion SET DEFAULT nextval('public.test_question_id_testquestion_seq'::regclass);
 L   ALTER TABLE public.test_question ALTER COLUMN id_testquestion DROP DEFAULT;
       public          postgres    false    222    219            �           2604    24925    test_question id_test    DEFAULT     ~   ALTER TABLE ONLY public.test_question ALTER COLUMN id_test SET DEFAULT nextval('public.test_question_id_test_seq'::regclass);
 D   ALTER TABLE public.test_question ALTER COLUMN id_test DROP DEFAULT;
       public          postgres    false    221    219            �           2604    24926    test_question id_question    DEFAULT     �   ALTER TABLE ONLY public.test_question ALTER COLUMN id_question SET DEFAULT nextval('public.test_question_id_question_seq'::regclass);
 H   ALTER TABLE public.test_question ALTER COLUMN id_question DROP DEFAULT;
       public          postgres    false    220    219            �           2604    24927    test_student id_testStudent    DEFAULT     �   ALTER TABLE ONLY public.test_student ALTER COLUMN "id_testStudent" SET DEFAULT nextval('public."test_student_id_testStudent_seq"'::regclass);
 L   ALTER TABLE public.test_student ALTER COLUMN "id_testStudent" DROP DEFAULT;
       public          postgres    false    224    223            #          0    24885    question 
   TABLE DATA           }   COPY public.question (content, reponse1, reponse2, reponse3, reponse4, duration, score, trueanswer, id_question) FROM stdin;
    public          postgres    false    209   �K       %          0    24891    staff 
   TABLE DATA           [   COPY public.staff (id_staff, firstname_staff, lastname_staff, email, password) FROM stdin;
    public          postgres    false    211   �L       '          0    24895    student 
   TABLE DATA           Y   COPY public.student (id_student, firstname_student, lastname_student, email) FROM stdin;
    public          postgres    false    213   �L       )          0    24899    test 
   TABLE DATA           D   COPY public.test (id_test, name, description, id_staff) FROM stdin;
    public          postgres    false    215   SM       *          0    24904    testStudentAnswer 
   TABLE DATA           S   COPY public."testStudentAnswer" (id, id_student, id_test, id_question) FROM stdin;
    public          postgres    false    216   �M       -          0    24909    test_question 
   TABLE DATA           N   COPY public.test_question (id_testquestion, id_test, id_question) FROM stdin;
    public          postgres    false    219   �M       1          0    24915    test_student 
   TABLE DATA           Y   COPY public.test_student ("id_testStudent", id_test, id_student, date, code) FROM stdin;
    public          postgres    false    223   (N       B           0    0    question_idqst_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.question_idqst_seq', 14, true);
          public          postgres    false    210            C           0    0    staff_id_staff_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.staff_id_staff_seq', 2, true);
          public          postgres    false    212            D           0    0    student _id_student _seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."student _id_student _seq"', 3, true);
          public          postgres    false    214            E           0    0    testStudentAnswer_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."testStudentAnswer_id_seq"', 1, false);
          public          postgres    false    217            F           0    0    test_id_test_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.test_id_test_seq', 14, true);
          public          postgres    false    218            G           0    0    test_question_id_question_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.test_question_id_question_seq', 1, false);
          public          postgres    false    220            H           0    0    test_question_id_test_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.test_question_id_test_seq', 1, false);
          public          postgres    false    221            I           0    0 !   test_question_id_testquestion_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.test_question_id_testquestion_seq', 38, true);
          public          postgres    false    222            J           0    0    test_student_id_testStudent_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."test_student_id_testStudent_seq"', 1, false);
          public          postgres    false    224            �           2606    24929    question question _pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.question
    ADD CONSTRAINT "question _pkey" PRIMARY KEY (id_question);
 C   ALTER TABLE ONLY public.question DROP CONSTRAINT "question _pkey";
       public            postgres    false    209            �           2606    24931    staff staff_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (id_staff);
 :   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
       public            postgres    false    211            �           2606    24933    student student _pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.student
    ADD CONSTRAINT "student _pkey" PRIMARY KEY (id_student);
 A   ALTER TABLE ONLY public.student DROP CONSTRAINT "student _pkey";
       public            postgres    false    213            �           2606    24935 (   testStudentAnswer testStudentAnswer_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."testStudentAnswer"
    ADD CONSTRAINT "testStudentAnswer_pkey" PRIMARY KEY (id_student);
 V   ALTER TABLE ONLY public."testStudentAnswer" DROP CONSTRAINT "testStudentAnswer_pkey";
       public            postgres    false    216            �           2606    24937    test test_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id_test);
 8   ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
       public            postgres    false    215            �           2606    24939     test_question test_question_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.test_question
    ADD CONSTRAINT test_question_pkey PRIMARY KEY (id_testquestion);
 J   ALTER TABLE ONLY public.test_question DROP CONSTRAINT test_question_pkey;
       public            postgres    false    219            �           2606    24941    test_student test_student_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT test_student_pkey PRIMARY KEY ("id_testStudent");
 H   ALTER TABLE ONLY public.test_student DROP CONSTRAINT test_student_pkey;
       public            postgres    false    223            �           1259    24942    fki_id_staff    INDEX     A   CREATE INDEX fki_id_staff ON public.test USING btree (id_staff);
     DROP INDEX public.fki_id_staff;
       public            postgres    false    215            �           2606    24943    test id_staff    FK CONSTRAINT     }   ALTER TABLE ONLY public.test
    ADD CONSTRAINT id_staff FOREIGN KEY (id_staff) REFERENCES public.staff(id_staff) NOT VALID;
 7   ALTER TABLE ONLY public.test DROP CONSTRAINT id_staff;
       public          postgres    false    3208    215    211            �           2606    24948    test_student id_student    FK CONSTRAINT     �   ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT id_student FOREIGN KEY (id_student) REFERENCES public.student(id_student);
 A   ALTER TABLE ONLY public.test_student DROP CONSTRAINT id_student;
       public          postgres    false    223    3210    213            �           2606    24953    test_student id_test    FK CONSTRAINT     w   ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT id_test FOREIGN KEY (id_test) REFERENCES public.test(id_test);
 >   ALTER TABLE ONLY public.test_student DROP CONSTRAINT id_test;
       public          postgres    false    3213    215    223            �           2606    24958    test_question id_test    FK CONSTRAINT     �   ALTER TABLE ONLY public.test_question
    ADD CONSTRAINT id_test FOREIGN KEY (id_test) REFERENCES public.test(id_test) ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.test_question DROP CONSTRAINT id_test;
       public          postgres    false    215    219    3213            #   �   x�E���@��٧�������,�
�0��f�H�\�	J��˝�)&�����,��4�h��O.����<p�C��ȑ(�⚪|���G$6�V3к�!�����>(��2x�M��e����a��203�u+N+��k�a���z����ڽ*�$�/��9{      %   ,   x�3�LL���C&�s3s���s!|.#��Ĵ4�W� P�[      '   _   x�3���/M�K�,�/-.΄� CSK��������\.#��䌢�4ΌĢ�ܪD(�37GRj̙��4"/�35'����ЃI!������ �Z0�      )   L   x�3��
Vq�`�i�eh�Y�Z\���X�b��d8 )6�̇� �s�T!�: )5�o��=... j6?�      *      x������ � �      -   L   x����0���0Ee9�0��J��4�c�`���Qr�Y���MX���rP�	�RPG6䗾aEvx�N|�z��      1      x������ � �     