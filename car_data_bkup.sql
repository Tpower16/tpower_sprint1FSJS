PGDMP     (                    z            car_data    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    41887    car_data    DATABASE     S   CREATE DATABASE car_data WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE car_data;
                postgres    false            �            1259    41889    car_data    TABLE     �   CREATE TABLE public.car_data (
    id integer NOT NULL,
    car_make character varying(60) NOT NULL,
    car_model character varying(60) NOT NULL,
    car_model_year character varying(4) NOT NULL
);
    DROP TABLE public.car_data;
       public         heap    postgres    false            �            1259    41888    car_data_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.car_data_id_seq;
       public          postgres    false    210            �           0    0    car_data_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.car_data_id_seq OWNED BY public.car_data.id;
          public          postgres    false    209            f           2604    41892    car_data id    DEFAULT     j   ALTER TABLE ONLY public.car_data ALTER COLUMN id SET DEFAULT nextval('public.car_data_id_seq'::regclass);
 :   ALTER TABLE public.car_data ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �          0    41889    car_data 
   TABLE DATA           K   COPY public.car_data (id, car_make, car_model, car_model_year) FROM stdin;
    public          postgres    false    210   �
       �           0    0    car_data_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.car_data_id_seq', 1, false);
          public          postgres    false    209            h           2606    41894    car_data car_data_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.car_data
    ADD CONSTRAINT car_data_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.car_data DROP CONSTRAINT car_data_pkey;
       public            postgres    false    210            �      x��Z�r�Ȓ]�_���<��\J�v�m]�W��M���A�Ԧ�hb>��؜De�-OD�����|�<�Y��/�e-���e%-�q��g�U�9��x�z+a]6��bm�CV���|���K�>r,7I�U`m����<�WbZ���I֮|j�#�YEݦ*+
�?���樬��V�u]VG��Pe��̾�v�rk���We���Z��\e��\׺+�ZɃu���g��r��Y��
��q�rKz�ҷ�������)�>c'{�7��]0����[��N��Wnȟ��~���|��I�k�+7f�$���x����J'U��(�CM�rW�ß���n�3}�<W�mN�,��a���1���,$�,��S]�VV�*�{��2��םY�� ݩ�#mdq��U�NZd��B�f���sY�B��ͪ��.�'I����9r�r������K���ZY�ѻ��w�q]eY���ܕ �V��sf%0pk=�-�e�'+!�/�����/�(���G��$EvR'�,����(ϭ����u8D3φ�1�폷���Ы����*����w���n�>��汩e�O�ƍ�JΎ���eV���>�sy:�J��wDm'ߟxO�?��"�_��@���O�ɦ7���"�|�~��/���E^�W����n��#AKYg�=x�ZUʼ��@�ɜ<�ž���x|>-�p�.F�AJ�WS*���U��ʿ�^�RA`仮hO�m�*�/��gc�o�iX	��Z�<,�Vg�=<��[�C{E�C���<�ӳ����i�]분_Yk��:<BϺΪJV�
]�N�	W�J�d ��a���[z�B���v<�N�Y[3�ηm���E	��>�Y����<����w���
�%�m�&��,{����O��_�B `�8ȣ6���\�� �*-]�u�v�3��^�	�u�h/�|�[~<���*��IYUj�` ��}��4Q���ĺ��]�F�(������=�	~�ͧq�.��ϫ�H@`�ටOie�m{,��7�SGj,/v ��쮜ꀟq�}��!�W��)\��������U=�ڐq��Sx��)��X�:�Σ���Ϫx�ӷ�sT�N�v�;GT}�ě��.�`�J��'$�K�I� �E��{V4���$���8X%CC�9�_%����o�:�U=5����A[%���>PsU��݃~��8���z���o�4ʑ�:�	����f�#x�K��L}#�yz˲�-�I\���kUe�
����	�2���JG��:��~T0�s�G�~���e�Εx	|j�.�)��RUH�d����u_E e�c�h�R-�/���k�*%�?��ԋIE�U���jWkQ��"��ٱ,_\wR��� ��v��%�3CA��Ⱥ�ʷ��3�D���Z�,R)6ԲAP-m���Zǩ�5N���?t�� Y#X�:۷��J���Y��e��KƇ�2���q��g�ьsA�`\c\�:\t���?lv�J��8"�*��k��Tp^aB�3%�3���������F�=(آ��-��3!�
���g��}KS6�`\���ĊÃ�R$�t���NkUU�"�*``�H�͑5K?#_iσ�ga��Ӄ&,.���CZ~~�L��Ү�~��pT�w�����Ovk?�E3�[���Ui�d9�$F6���%���;@Q��0!7X"٢�'��ۅ�E;k���*�o�	�/�����b`\Q���Z�a̲o<� bS-����J�=���.10�(X�`٩V���k@��UsxaK5}U�]�a�>{o�X���v.���S(٠$��<v p�����n]S�&�ڋ��FUUY�w�������ZB-0��Y�����o�W]P�����36ddz��GsJ	��2�ج��^�\�gF�x��M:�\�%Y�%p4�iS�
���ux��֫4��iG�8J�,�Y:�a��&7^�������bbo����V��u�p;`[pVHl����qL�/z��5/���<��,�3����dPW{��r_�M��7Ie�^;þN��?�v�@�ڼ��ujs�ե�����dZk�
���>��=>b�T�f����ǲzz��\���?9R� >�b� {\��yS+�����M�4�=�zk�5p�a�ݔ�wx���]R���a*����c���;�y�zЖ�@��iJ�V�d�7�Sw������[+��_�x�~h�IK��w�$Q<�.���M��"0�I��?\���i�E����SSeo���8��u�%d-Q����:b���w��Q_�m���d��g
�k_8���ѩ���+��=�Ù�֖�k�Flt�-�7�1��yj�ʽz������:l,/�Eo*�d��-��\cJy\�z�o�˪B���%3O�&Օo�y_�\R��c�P���uU�Nߕ�m7-�������k���L�˳|2O$�!��q�ZE�g�-*;�>'�21���|�K����f��%t;G}3�ֳ����q��=?k�����-������z��<?�r:I���C���6k��`Z�YE=�_�6
�@,50��<0�l��b�غg7�p6����3gu/����?+IeZ��':z���OnG�Z�3��J��2�?u�B��V�L�<���R?�3�lvP2g�߰+��U�5�v��k?P,���v����{�j����@�Z<�C2�̤���?z�h�-�Q�W_����"���4�?o�����f�T�r�Yx/嫴�n:���yU�QP4*O�3&�^d���lq�Lbg��E��L?�K\���x�7�`�XL�Dtx�&��~�*Ӵ��[�o������6');{{�H�+[3^�븧�[�����d��?g�3�}�_(쏊)�@��'3��akSls�v=�q���'L�T��ț�~��+%\MoM���ޛѴ�����X�����Ѡ�2��qk��-͠a
x�.�M	H�~�m+j��p&c�����:�x��o�h&6�i��o�Rlx1n�퐟# _)t��?��Y҆��؃�֟@B��{��}�e�C�$�u�m43��!A�����ye^lc�
"\Z����f����g��A������v��*�h�y�vm4�ƌ���պ��sC>˅V���t�UY�3�m��["X�[�봱!�]���Q�ɛ&,�#\ʡ�3m�+������:��d�ɝ�o��b���õ^��L�Bx��&�۶�'Q��MF�2H���v�@o��2�t �&�=ǌ��نF����J~�ӹF��,����hf��>e���<��#����f ϓ��|���^����M5i����oM�/^؃�FZ�$�b~����cƆ�����ް灒� ġ��#=�m�����B�TK�RA����}���Ţ���:��x�2/Y�I�1_�uǣ��J!۴���^I��"v���zP���#n
8�FV��:m:��=���z��Ѿ*�7�fD|0N�O�Iv]�$@�.��y��$�P�zL�j�.O�Dȳ��^�7�6az$���k�H�H����C��#.O����`]��V>�'��l�$
�$Nu7~���h9�)�������`�&⮦J#
,��GƱ���Riib�4��: 30|E�TI�w���f��MS�ی��lآqGBx��9[��9ޱs�,]��N��ټ�6��LG C���ĺPԢ�q����Fp�A� P���J�Sjw�Gc�ó�L�Z$�|:���;���Z��w��(��E|�[���E��1C��K��.�8�ȇۘ��agp/�K߉f3x�D�{������ɼ��34�%����Y�)6҆�2���l��>�Ao�g4��x�S�5M����Pj=�;#��
F>X��n�Dn��: d�"�q�P���&4��no̰���fw����F# ���&�ݨ��x�.��k[O��m�=�CX����V�H�� �O�M�IB�Q���G�b
�A���OIjuw3��u7h��b�����^������	��x���__,�7��]�L3������iB�� �  ?H�d���|��=,��?n���f[��ǆA���}WZGLG�.�}!L��Rd���J�|���U:��$�s��B	���d}?��[n�!���}�>f���umlm�Qk�40h1Si�pֶ���`�`Z����$����}Z'��x��W�I�x�Le��{=�� ^�N���d��%���#�poS�������~l���EoG�qv�O<�m��Zbc5rfq�9�M��Z2+��k}̸��>h�/�?�u��u���1�(\��J�#�m�֨���G|�9�ފ�Ɵ%R������(��r�3�ο���݃�Zg{�pm�`�G��I����{Ɯ�t؁_�g�*�ĭd?6-���~t�Z���i�<1�>/{��;��d��oL��2���[��I���������#�����'.��d��#�����3~�I2��6�V��d��Y�K������ E���     