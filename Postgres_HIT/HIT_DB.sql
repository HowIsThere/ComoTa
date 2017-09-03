PGDMP                          u            HIT    9.5.8    9.6.4 *    l           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            m           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            n           1262    16592    HIT    DATABASE     �   CREATE DATABASE "HIT" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE "HIT";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            o           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            p           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12355    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            q           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16644 	   avaliacao    TABLE     �   CREATE TABLE avaliacao (
    comentario character varying(256),
    id_avaliacao integer NOT NULL,
    nota integer,
    id_lugar integer,
    id_pessoa integer
);
    DROP TABLE public.avaliacao;
       public         postgres    false    6            �            1259    16618 	   categoria    TABLE     �   CREATE TABLE categoria (
    descricao character varying(256),
    id_categoria integer NOT NULL,
    nome_categoria character varying(256),
    id_imagem integer,
    id_pessoa integer
);
    DROP TABLE public.categoria;
       public         postgres    false    6            �            1259    16598 
   cometarios    TABLE     �   CREATE TABLE cometarios (
    id_comentario integer NOT NULL,
    texto character varying(256),
    id_postagem integer,
    id_pessoa integer
);
    DROP TABLE public.cometarios;
       public         postgres    false    6            �            1259    16608    imagem    TABLE     �   CREATE TABLE imagem (
    id_imagem integer NOT NULL,
    link character varying(256),
    id_postagem integer,
    id_lugar integer
);
    DROP TABLE public.imagem;
       public         postgres    false    6            �            1259    16631    lugar    TABLE     �   CREATE TABLE lugar (
    nome_lugar character varying(256),
    lat real,
    long real,
    id_lugar integer NOT NULL,
    descricao character varying(256),
    id_pessoa integer,
    id_categoria integer
);
    DROP TABLE public.lugar;
       public         postgres    false    6            �            1259    16654    pessoa    TABLE     �  CREATE TABLE pessoa (
    email character varying(255),
    colaboracao integer,
    nome_pessoa character varying(255),
    autenticidade integer,
    senha character varying(20),
    login character varying(20),
    bairro character varying(100),
    cidade character varying(100),
    estado character varying(100),
    rua character varying(100),
    numero character varying(5),
    cep character varying(8),
    ativo character(1),
    id_pessoa integer NOT NULL,
    id_imagem integer
);
    DROP TABLE public.pessoa;
       public         postgres    false    6            �            1259    16603    postagem    TABLE     �   CREATE TABLE postagem (
    postagem character varying(256),
    data date,
    id_postagem integer NOT NULL,
    id_lugar integer,
    id_pessoa integer
);
    DROP TABLE public.postagem;
       public         postgres    false    6            h          0    16644 	   avaliacao 
   TABLE DATA               Q   COPY avaliacao (comentario, id_avaliacao, nota, id_lugar, id_pessoa) FROM stdin;
    public       postgres    false    186   p2       f          0    16618 	   categoria 
   TABLE DATA               [   COPY categoria (descricao, id_categoria, nome_categoria, id_imagem, id_pessoa) FROM stdin;
    public       postgres    false    184   #3       c          0    16598 
   cometarios 
   TABLE DATA               K   COPY cometarios (id_comentario, texto, id_postagem, id_pessoa) FROM stdin;
    public       postgres    false    181   G4       e          0    16608    imagem 
   TABLE DATA               A   COPY imagem (id_imagem, link, id_postagem, id_lugar) FROM stdin;
    public       postgres    false    183   �4       g          0    16631    lugar 
   TABLE DATA               ]   COPY lugar (nome_lugar, lat, long, id_lugar, descricao, id_pessoa, id_categoria) FROM stdin;
    public       postgres    false    185   �5       i          0    16654    pessoa 
   TABLE DATA               �   COPY pessoa (email, colaboracao, nome_pessoa, autenticidade, senha, login, bairro, cidade, estado, rua, numero, cep, ativo, id_pessoa, id_imagem) FROM stdin;
    public       postgres    false    187   ~7       d          0    16603    postagem 
   TABLE DATA               M   COPY postagem (postagem, data, id_postagem, id_lugar, id_pessoa) FROM stdin;
    public       postgres    false    182   A9       �           2606    16648    avaliacao avaliacao_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY avaliacao
    ADD CONSTRAINT avaliacao_pkey PRIMARY KEY (id_avaliacao);
 B   ALTER TABLE ONLY public.avaliacao DROP CONSTRAINT avaliacao_pkey;
       public         postgres    false    186    186            �           2606    16625    categoria categoria_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public         postgres    false    184    184            �           2606    16602    cometarios cometarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY cometarios
    ADD CONSTRAINT cometarios_pkey PRIMARY KEY (id_comentario);
 D   ALTER TABLE ONLY public.cometarios DROP CONSTRAINT cometarios_pkey;
       public         postgres    false    181    181            �           2606    16612    imagem imagem_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY imagem
    ADD CONSTRAINT imagem_pkey PRIMARY KEY (id_imagem);
 <   ALTER TABLE ONLY public.imagem DROP CONSTRAINT imagem_pkey;
       public         postgres    false    183    183            �           2606    16638    lugar lugar_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY lugar
    ADD CONSTRAINT lugar_pkey PRIMARY KEY (id_lugar);
 :   ALTER TABLE ONLY public.lugar DROP CONSTRAINT lugar_pkey;
       public         postgres    false    185    185            �           2606    16661    pessoa pessoa_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pessoa_pkey PRIMARY KEY (id_pessoa);
 <   ALTER TABLE ONLY public.pessoa DROP CONSTRAINT pessoa_pkey;
       public         postgres    false    187    187            �           2606    16607    postagem postagem_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY postagem
    ADD CONSTRAINT postagem_pkey PRIMARY KEY (id_postagem);
 @   ALTER TABLE ONLY public.postagem DROP CONSTRAINT postagem_pkey;
       public         postgres    false    182    182            �           2606    16649 !   avaliacao avaliacao_id_lugar_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY avaliacao
    ADD CONSTRAINT avaliacao_id_lugar_fkey FOREIGN KEY (id_lugar) REFERENCES lugar(id_lugar);
 K   ALTER TABLE ONLY public.avaliacao DROP CONSTRAINT avaliacao_id_lugar_fkey;
       public       postgres    false    185    186    2015            �           2606    16702 "   avaliacao avaliacao_id_pessoa_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY avaliacao
    ADD CONSTRAINT avaliacao_id_pessoa_fkey FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa);
 L   ALTER TABLE ONLY public.avaliacao DROP CONSTRAINT avaliacao_id_pessoa_fkey;
       public       postgres    false    187    2019    186            �           2606    16626 "   categoria categoria_id_imagem_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY categoria
    ADD CONSTRAINT categoria_id_imagem_fkey FOREIGN KEY (id_imagem) REFERENCES imagem(id_imagem);
 L   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_id_imagem_fkey;
       public       postgres    false    183    184    2011            �           2606    16692 "   categoria categoria_id_pessoa_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY categoria
    ADD CONSTRAINT categoria_id_pessoa_fkey FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa);
 L   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_id_pessoa_fkey;
       public       postgres    false    184    187    2019            �           2606    16672 $   cometarios cometarios_id_pessoa_fkey    FK CONSTRAINT        ALTER TABLE ONLY cometarios
    ADD CONSTRAINT cometarios_id_pessoa_fkey FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa);
 N   ALTER TABLE ONLY public.cometarios DROP CONSTRAINT cometarios_id_pessoa_fkey;
       public       postgres    false    187    181    2019            �           2606    16667 &   cometarios cometarios_id_postagem_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY cometarios
    ADD CONSTRAINT cometarios_id_postagem_fkey FOREIGN KEY (id_postagem) REFERENCES postagem(id_postagem);
 P   ALTER TABLE ONLY public.cometarios DROP CONSTRAINT cometarios_id_postagem_fkey;
       public       postgres    false    2009    181    182            �           2606    16687    imagem imagem_id_lugar_fkey    FK CONSTRAINT     s   ALTER TABLE ONLY imagem
    ADD CONSTRAINT imagem_id_lugar_fkey FOREIGN KEY (id_lugar) REFERENCES lugar(id_lugar);
 E   ALTER TABLE ONLY public.imagem DROP CONSTRAINT imagem_id_lugar_fkey;
       public       postgres    false    2015    183    185            �           2606    16613    imagem imagem_id_postagem_fkey    FK CONSTRAINT        ALTER TABLE ONLY imagem
    ADD CONSTRAINT imagem_id_postagem_fkey FOREIGN KEY (id_postagem) REFERENCES postagem(id_postagem);
 H   ALTER TABLE ONLY public.imagem DROP CONSTRAINT imagem_id_postagem_fkey;
       public       postgres    false    182    2009    183            �           2606    16639    lugar lugar_id_categoria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY lugar
    ADD CONSTRAINT lugar_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);
 G   ALTER TABLE ONLY public.lugar DROP CONSTRAINT lugar_id_categoria_fkey;
       public       postgres    false    2013    184    185            �           2606    16697    lugar lugar_id_pessoa_fkey    FK CONSTRAINT     u   ALTER TABLE ONLY lugar
    ADD CONSTRAINT lugar_id_pessoa_fkey FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa);
 D   ALTER TABLE ONLY public.lugar DROP CONSTRAINT lugar_id_pessoa_fkey;
       public       postgres    false    2019    185    187            �           2606    16662    pessoa pessoa_id_imagem_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pessoa_id_imagem_fkey FOREIGN KEY (id_imagem) REFERENCES imagem(id_imagem);
 F   ALTER TABLE ONLY public.pessoa DROP CONSTRAINT pessoa_id_imagem_fkey;
       public       postgres    false    183    187    2011            �           2606    16677    postagem postagem_id_lugar_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY postagem
    ADD CONSTRAINT postagem_id_lugar_fkey FOREIGN KEY (id_lugar) REFERENCES lugar(id_lugar);
 I   ALTER TABLE ONLY public.postagem DROP CONSTRAINT postagem_id_lugar_fkey;
       public       postgres    false    2015    182    185            �           2606    16682     postagem postagem_id_pessoa_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY postagem
    ADD CONSTRAINT postagem_id_pessoa_fkey FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa);
 J   ALTER TABLE ONLY public.postagem DROP CONSTRAINT postagem_id_pessoa_fkey;
       public       postgres    false    2019    187    182            h   �   x�]�=�0Fg��^!�O���ŴVj���$]�G�b����=�BBi�;�;�%fB�E#f=���V��V-,��
��im,��t�x�b����#j	��eR��8�9�#�s�-����Z� ��o�����2��pu�w���;���r"�Y��=.ι/�C�      f     x�u�1N�0Ek�s�(R��V�!���6g�k�x�c'ס�������ɒ��￙=�$��_&��c	A(&�s�`h	"����z|'�Lm�����u�(� d�KnB(�˚PJ��tT��_p	�len̫�CskN/Ş���6�����#��Z�Q_n�ı2w�8�E[6�p�A��h9o�����uK]`�\*m��<��j'l�'�����\G�H�5*����	�<l��%W�@
���#=d�&���3z{aO���SU��ޒ�      c   X   x�3�LI��/JT�M-��EENcNK.Cβ��T�Liqfr�Bai�B��
E�9�y)�
�Y�:
���ŉ@��g�i����� ���      e     x�]�Mk�0����'~����-���N�VIbw�h������$�(��ی=� ΃Z�Q�����0R.2F!x��0'�z��(��qCe�JqD�J�%ϋ��.�g�^�7�Ш�Oq�V��H�����=nB�x�m�͂ǯ��d7)*�xAK������y;ڻ� ��C�5�Z�⤌u�	�F�y��9�F�E�F�V����N����uj� �"���w2V��t�R���{A���i���3�n��R%�!��:3c�'��/X��      g   �  x���=n�@���)�6vf�K�MXA �܌��ń"�%�"�I���X��J�abE�>�7oV�n���������k~q����-i��:����9i���Ip�!&x�X�?>���_�y($�ͬ��٠ ������!�N%%i�A_A,�v�cJ<L��MX��$PW�����}A�@�f�q����A��M�܈OB�f�"I>X0��'�YlX,��e��4Z�C0��<زX���,�*^w�P��it������"��K���ju�Ǵ�i͛N��h�|�ДF�vIj@	o�3�k�A�����!գ'=z:��L5�ߧ�J��y�9(s�rYDF�j�����^<s*�`�)���< ���h. l���z��Q|�����c�dϹ�h.�?�d��۪�����Z      i   �  x���Mn�0 ��p
���B`W��-�Fz*RV�L�m��2!�z���hmP�d���aH�V#�t}ƫu�˶	{f�ӕ��x�@�k�K����MA��E�-�G��&��� @FTY�o����ݐ`�!�Y���5��)	i��m��3vekJE���1�>Mщ���p[���yꭆ�>}�����ڝ!��b:TTZݝ��Q�h�� �)Ŋ!��E�%�Ɯ�^C񟪵Q�iO��\����S��'sV�%V��*�?=�L�L�N@��А�-@�����w�E*�dNm��/j��d�������^�b�R7B�]�H�q�x���qE��=���䰍�P�:����8��b�B�ϐa���ּ��0G�-v�j���ђXl2�X9�ڕ�Z�����p>��aHyy�s�v 2��ɏ<��OKBTb      d   �   x�U�A�0�������\��u3���N���x/&jb����c���S`��D��,؋/
0���P�4h�:%r��x��B�af$�J���(ܳ�d��@��(1�`������uAp�o�Z0j�0�xE~�D�}���9}p���O�~ZC�.;��M|B�     