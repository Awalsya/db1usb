PGDMP     +    $                z            retail    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16611    retail    DATABASE     f   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE retail;
                postgres    false            ?            1259    16617    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(20) NOT NULL,
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16632 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tgl_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16622    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30) NOT NULL,
    jk character(14),
    alamat character varying(50)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16612    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30) NOT NULL,
    no_telp character(13),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    16627 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    16617    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    210   ?                 0    16632 
   pembayaran 
   TABLE DATA           Y   COPY public.pembayaran (id_pembayaran, tgl_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    213   g                 0    16622    pembeli 
   TABLE DATA           G   COPY public.pembeli (id_pembeli, nama_pembeli, jk, alamat) FROM stdin;
    public          postgres    false    211   -                 0    16612    supplier 
   TABLE DATA           O   COPY public.supplier (id_supplier, nama_supplier, no_telp, alamat) FROM stdin;
    public          postgres    false    209   0                 0    16627 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    212   ?       n           2606    16621    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    210            t           2606    16636    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    213            p           2606    16626    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    211            l           2606    16616    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    209            r           2606    16631    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    212            w           2606    16647    transaksi fk_barang_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    3182    212    210            v           2606    16642    transaksi fk_pembeli_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_pembeli_transaksi FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_pembeli_transaksi;
       public          postgres    false    3184    212    211            u           2606    16637    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    210    209    3180            x           2606    16652 "   pembayaran fk_transaksi_pembayaran    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT fk_transaksi_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT fk_transaksi_pembayaran;
       public          postgres    false    212    3186    213               ?   x?5?K?!D??S?#???]?????ߴ??F$6Ϣ\??&??ف?o"?H??\??#x?=`??ظ'f??Z~!l0q?S??L?a~W̐?{?B?c[.+?ɝ?&??{.	?po?'??m?m??3OV??u???Z?Ŵ?}Iv=?R-?,?D????u????I?%??ͥ??`O?FzhV??\uE??fZ?oT?????>ESL~         ?   x?E?ۍ D??6<T?????;?ͮ1ќ?a?d????^!?pP)?K??u+??saQ??u?Qy?O??z???N??V???o??<X%?=T?݁v?o}?R?_Fɥ1&A?c"???8??????WJ>^?oxg?{mS ?T %?o}?S!?7PuL??4>s?,a>aO???>a??} ,=?         ?   x?}??N?0E뙯??}9@?T???%N???D?G??=?V?H?p??3wf???78??`?AN?>?/????y??,ԇC?????t?F??????)!?>R?(?̈F????<?	=kM??:{E?k??{??ЃI??l?EV?#?cZ???<?ls??AFJ??3vC|???fG#?e;??D??ڱ/}f[?7?5?h0ѕ4?????$????q?SYR??͉??I?????f?|}         X  x?U??n?@E??W????73,%?c M?t3cl???{C]tÆ?3?ޗ?ѡ??|?6M?"ZicSX?qe?o??*`???m?!?hӘ????_?C@??./??????"?????/???)?!??ri??X=c?????9??y?9??$0@?????{*@nW+
e?3k??dAf?FE???w????w?%F3?r?#?V???2???g?
0/??Ri4R5????_oPR?Im?Ʒ?M@??؟??!OD?|f??yxB???yy(h?y?D͢??£?ab??U??Ch#ie#1x~l??a?cx??@E??_?LW?a?,?j?P
P?+?7????????~?         ?   x?]?;n?0D??)r?K?K??"?*?????ր?7#???PV%???߯???1&)&?x????o?/??????J̧??aݞ?Nb?9??=#???Y????^MX"??r??n?@???碹لM?l&T?em?`???&??gd;??#?rY4.?Ӕ?E???َ?U;63?!OG????/;ܑmJ???^o??q???i?     