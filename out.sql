PGDMP         	                z           lifetracker    14.3    14.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24792    lifetracker    DATABASE     o   CREATE DATABASE lifetracker WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE lifetracker;
                postgres    false            �            1259    24810 	   nutrition    TABLE     +  CREATE TABLE public.nutrition (
    id integer NOT NULL,
    name text NOT NULL,
    category text NOT NULL,
    calories integer NOT NULL,
    quantity integer NOT NULL,
    image_url text NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.nutrition;
       public         heap    postgres    false            �            1259    24809    nutrition_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nutrition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.nutrition_id_seq;
       public          postgres    false    212                       0    0    nutrition_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.nutrition_id_seq OWNED BY public.nutrition.id;
          public          postgres    false    211            �            1259    24794    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    password text NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    email text NOT NULL,
    username text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT users_email_check CHECK ((POSITION(('@'::text) IN (email)) > 1))
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24793    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    210                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    209            e           2604    24813    nutrition id    DEFAULT     l   ALTER TABLE ONLY public.nutrition ALTER COLUMN id SET DEFAULT nextval('public.nutrition_id_seq'::regclass);
 ;   ALTER TABLE public.nutrition ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            a           2604    24797    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �          0    24810 	   nutrition 
   TABLE DATA           k   COPY public.nutrition (id, name, category, calories, quantity, image_url, user_id, created_at) FROM stdin;
    public          postgres    false    212   �       �          0    24794    users 
   TABLE DATA           m   COPY public.users (id, password, first_name, last_name, email, username, created_at, updated_at) FROM stdin;
    public          postgres    false    210   '                  0    0    nutrition_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.nutrition_id_seq', 26, true);
          public          postgres    false    211                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 12, true);
          public          postgres    false    209            n           2606    24818    nutrition nutrition_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.nutrition
    ADD CONSTRAINT nutrition_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.nutrition DROP CONSTRAINT nutrition_pkey;
       public            postgres    false    212            h           2606    24806    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    210            j           2606    24804    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210            l           2606    24808    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    210            o           2606    24819     nutrition nutrition_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.nutrition
    ADD CONSTRAINT nutrition_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.nutrition DROP CONSTRAINT nutrition_user_id_fkey;
       public          postgres    false    212    210    3178            �   j  x�Ֆ]o�6���_���N$�!)R�"��.-�dsWl��@�K�dq"7�~�Β9ۮZ̆m@�i=��z��,��f������wIxXH@��&F_r.�ܳy7,�"���g�?}�Yvo>�������������/��ކ����Ų�r!�w��K!r�ޟ�K A��	�	8Y*,�d��R�T�ӵ�ˈ���	�aGq�ٰX�膫f��r�zXE��|���Z�,�����s%NT����g��/�c�JK�R����j鎮���}�s���⭫Ʈ�r!�v�B�����0w�8ԟ/��Zj����܂�ܒ��K�P�B��T�s�����\H���.L�ܲ�W��W1��
R\���:{�S�W/��RHf(�y
p߫q��p/218d}���j�V.�ؼnӳ�sV�g���՗�;x����Z��~��P���x�ɱo'�S1�LQ�I3��`�R�f�<EJ�����"��\���=����pS3��ml�a�����}��z=v�݁W������1:�h����խw�0��:��7C](��Uj[P-� h�jROC=�C;��j7�c��':t�U)�!*�M
2Y���s ��C},��ԳDl�E���)A����z�!�T��!�mMY(tN����������@��$�v�� �i}`��+��]�ݰ&�+��U.�#rP�\����%#�`g	{�4ۉ��R5h-a�}WzlP��1�#&U��v�.Ȩt
����ql)�E)��QB�(�~������'T�X�H� Eا�����~fLS���odK�%Hr,a�IQf�!�HOz�!HEO�̸��`���m��F����h.�ߕ��)c���;�z�"��*�e!���i�'�K�      �   �  x�}�[��8���W�C���'���Լ F���~pN{z� ���V��W�&4��x4��MTa����M7��$��^@�l�ӂ�oWY��8���q�G*�t�X�[J�e5�?����/�@���_���F2e� Ǵ��c�L�U5���~�\�izFA;��_锪Μ������}��t{��(剔��$
�t�_}��H�8�����D�n��|�`��%	S�<z�|9k��Ұ�������k=���%.�k^�=��/#X�a�c�lǰ2�Jc��'^�e�A]��z@u(�f��x���E��+��[��������O
^��%@A���:��?*T�e]IG���r�Y��dC�Q����O���d.��w�iD���;��{� s�� (rB�E�Hl��,�����5�b:)A��ؾK��ݢю�a�)�+��Q�
L�.�yn���o���w0��� GC$H=)tL&�̓�ʪ�d�n��O�2�.4��Ď1�0��<8wF�3�s�e{DO�;Ix6$j��$pH�H���{�r�9�r�d��O��⏣;�yMv!����N�гgUhy��D���%ރX���О /�R�EJ�t?+7��gCB���,:D���0Nӵ����X)󨬚d��01�q$��F��iY���O/��=�adF�9hZB�c�4�(%^J۳~��hq^�h�Sȫ��Nk�eC
,L�e���}�6�A���U-Vy����p$#N� �ۋ�����^�޼�\p֪\��VW��ԔN�����(Z��(��Xe��0���溿{�p�Q��J�9V`{,��}�*z"�|O���z<>0|�A!�ޗ2}�U�P�Gm���Lv�͉�n>@D�?���Q�{,�o@��?�9�X     