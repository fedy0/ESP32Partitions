#!/bin/bash

#
# Author: Francs Ilechukwu.
# Credits: Elochukwu Ifediora C.
#

echo ""
echo "Self Extracting Installer"
echo ""

# Create Temporary Directory.
TMPDIR=`mktemp -d /tmp/self_extract.XXXXXX`

# Get Archive start point.
ARCHIVE=$(awk '/^__ARCHIVE_BELOW__/ {print NR + 1; exit 0; }' "${0}")

# Extract into temporary directory.
tail -n+${ARCHIVE} "${0}" | tar zx -C ${TMPDIR}

CDIR=`pwd`

# Go to the Temporary Directory.
cd $TMPDIR

echo "Running Installer"

# Execute Installer Script.
CScript install.vbs

# Go Back to PWD.
cd $CDIR

# Delete the Temporary Directory.
rm -rf $TMPDIR

read -n1 -r -p "Press any Key to Continue..."

# Exit Script... Anything below '__ARCHIVE_BELOW__' is gibberish and binary and
# the interpreter could really suffer from food poisining if it eats it.
exit 0

__ARCHIVE_BELOW__
� ��VZ �}�$E�h���Q`�'<������ -ΧZ�t�ў�Ȯ��N���&3�?;o�,�>���"<XqvE�<\\\�Ϫ��ǣ�\��V��woDdfDdDVVu7�k�r�:3��7n�{#�����f�����:V�)���������s�@��[(������z;z�z{z{z��}OO�ƞ��bqO��F�6׬��c��l��Ƽ7��X�ʚ�Q��2��-�e����K����\4Zr���ů�ܚέN�Q�j�E�Z�ѺU���6�R�\/�پ#u ߶ѝ��a�H��t~�]�F=ߪ�oA����wӷ�ښN� Q������v���;N��=<���w���6�vg�t�L!	yJ�����^��3�f,�qļG[n�f#C���c��al�@�ʋ�a��Y  ��f��(U+#Src$�؊��5���S_�ctJ��_j��.�����ջ�A�|}1*V�90B5��ũ�+�oA��z>��w�
�@%���N��#��B��i��
�E�?q�O�_=ˌ#���l,l�������U��l<S�S5�f������7N]��~���-�3����NR֟EżL�3T0�YϜ�Lo
>�̪Յ�ʶV�q�_Nݪ�CPt�3[���*!%o.��x��K=t �tf2��75��4X7#�����ƚN�ae����C߁݂W�k[�>��T1=���4��\�i�S���bѮ�~�����T��C;���c����y�nOMyŒӨ�`���2|���!��� �z�/�T�Ѐ���@�ڰ���̊] cn�K�5�9.T���0<�AJ���Q��J��|��g �k�i@�yF�q�<�`Ϊ@���1�tބ���Q"��Q����h�d�%0�`t'ݼ��Puיvͪ��8�J٘R,�0]k�QA�SN���Ci�p����OAC�~õ�zí;|NfG���!��k!��	�o�SiTk�9��`�p`}�l�X�vTe'��Å�]���5���	dN4��b������2`<e����$�Ug�*��?���Y#e�-���x�I�ner��JwF�$D$��16�]�s�����hp�Ā��6��F�AoD�J&��7*�N7�ꂥ���[e��r�/<��r��:�L1¯Xɛu� �,��!̘^���Aׂ!^SPz&j�D�Ԛ��ǀ<�>�fy���F�q��?���Ջ�,ׂ�2f��d��[QB(_��g�Ήu
0����j�i�:6��5=�tk��$�Δz��K�F&������^2.f�5L��"Q�A��Ac����A��kj����3��ޘ(u�h���>%���Mٮ����qN;���wA�/��>� UzN!ŀ��v��4���!D�q����``ЃQt������u�����`$�*h'(���i�?��v�1>�2�^�U8��Q�h�*�i�������٪6n.d2f����_d����}�;aи�4�1%Q(Su;�Y]�����44�Ec�l�z���J2t&�e�l����]�����da��^Ŝ�jz0C&3�.P�0����_��'6���Y���t+���&H���jTx>]d��5�9�Qq����Y5]"xt�L�,��lT|lgZC�3��f^�A�0���V�fy�C���$�8)�T���fs����h�"�&du�Y�M�~�L���@�q⧛�E���������엄0��$�Q!����幹rTr-�-V �N�uf���}��gp>	�N���p�$�t�Q+��<�J� ����T��c$��<楞HdʣH0#3ؿ�A��ed�J4@�
j�腿ذ4������~NU�i�[��������lv
ڼs�.ó�����]]8#�B':��������&G�*J�� E�'c���mcr�*]�݃�G}z�B��Q�s�I�����BX�mNV�!V�C���=��H$�l��c���z� ������1o��3��#�ڴk�Y��@Y�)Z~�Gn��|O��{[,��b����X~�P��=N���kt�l�Y�Q��/vQ)hLq�Z��PY�:B����ӼW�b�l��S1.d�)S�L(kN-N?]*��k(M�(�p�DsͲ���}Pk�gZU��INW>��C����m�ћ6���؞O�n�-'^O��*V�<`�,b`�2cj�(7�<�\����v0�U�"��>�~��&��l��A퀞@��m��P�Ϻt�B�<�bMBs�G�p���@y����w�bO�GɩVQË�Hˊ��"��bi�x>��:I�5.,�v�Y�Fm��'s>]?�t�t�eE�O_.���C�*����g����:#�]�6)�.����t�
�.jl��X�L���Q�� ����~�j]�9��
�J�,%�q������lEKWQN�)I�(��,q� r��w�g���a�(��������&�mL��%V��敪���H�V�H�����ʊ2���VxƩ�q�抵�E\�y6�D�\r-+��8o|"r���@O�.S�^�&���t@~����4�a-�Rl+���ӄ
z�ԝP����"�jK�4s
���yI{6+dt�)#�Ǉ*q����U������v|ߪ+δ�l\!�K�R�#������T�8D\�V���L�`��	:յ�M�&�÷(MXNB9GYǑݽq�v�l��0����h���)&���<.7�ƍc��/H�5L�ƀ��[��㛠�VJqR�I!-�L?_wJ�PVͺZ m�X��0�6q�o�e��BQ��o�i�B�t��ِsㅉ�L�WfB�N9���m�t�ܿ�{�}�F�Y����ZS�D�5+Eu�Ԙ�V�a�T:6#�5�LK���q�ϖx�XcH�+a"A�L��ux\!T
��*�Wh�$S2��Y����`��:���=$�,D��(,�rX;�yY��+D [���n�d���(�,b�N!��]��;Ƶ�Y��D��-��8���ši�}��%����mi
�؄)ZxE��@�SF���	'`l�Q�x�^����\l<���٢�aF�V��d�4��A�yWgr��,\U�a��Ͷ�z_o�4kz
���c1���93�j|ﾉ�ӪɶB�q�'����#�ii�q<���Z�[�m��(%�m�cW���dt�]=��F�6��K����kZ~��/�Y�ol�k&�(�Xl�0�aZ�8i�pC��͵� #�J��#@�"�=Ǫ�e�3�% �&��/C1���|^Îa�����w�#��V&^5#��'�E�:�2��c;��$�'�ePnt�Q���pHR:�mP<��M���g��H�����Zp$�\�,7�u2���נ��H$�.��0³B��ݞU��I��k�sY���"��B鍶̶�����״ lr��=۱�E1g�7@����L(����(8�I�M���2X=no(K�N|Q\�=� �u��&��k��?5�ˉ�5��@䈀8���w�Plb!�ڔ��l�4. 8��i�}��w_h�#4bWH�G%S(7���j�J+�9u��-�}���l%�fh�P�2f؎P_A%�qD"���M���M�V�D[y}1jTk�q�������"��ɂ..:&�`� ��҉hy��������E��%��Lؐ͸{��z6xo��5���l�9v�%_z�|�b ��@���T`ى�?�/��i1�m���b"�mM��.�;�udt��s��j�H5�i��"���toN#(�I4���M�	Ȃ�m��^�=u�� ,��3�@���k�I����Ä}Ȟ���Ȅ��Ǆ`�S%u��iQ�b"w��8�x��4H���x�����*��	��+Fi�����1���7�SN��IK 8���b8 ������$!~<�b�)IQ������A��/�=g��,�+(�[]	ꪺ5Z/I>瀮�g�Fػ�o��F������n)�Dg�0k���o�2Lv���y�X=����X�f,2��-\�@�C�]?__4��� �/<�6EO�OZP��F	詚�lH�qHiyӣ�~|$hp C�F|���p$��EU��/�l� �J��z#��$k�r�1#���V����x�%"|43��F	|2_��F�s�3��BS�
��0��پ�%_��r]�͒P[��;�ƷHF��l��+���tk�i��Ys�:1
�2dk��o��G�]�<6�Ha��]��� `�xB�n�]�� $j��-
�E"%�CqRX�l{����J7�/��j:���)�&j~��dݺ|c{�����cjFU�҈s�T�Cƴ"��ɫ�`:!䢋�&��6lz�ccl#[��.w��&�6-�k�t�l�6��or�+:k-j��jx$<�Tx�cڞ%�AsW�C A��M��]����J��&Y3�B�i�i�u�]w43
���x�<�7�qpdX��[@J�-Z4�9�ԣ���,���ۥ>]F���l'l߱�����B��+�	��?�M�Ę��4)E��=�&�	2u�a�帛��������������B!�K��h!AIX���;L;�-Ly$��#��|$�*4T^0q�rł���K��O�Y*9.���(�T����rJC
'��y�|�nZ�8��V��b��3��H���2���G�g-#
}��Ș#�2*&�M�a�Pt�26�␨�eg,��I�4�6:$�sZM�	5�-c��Gz4\��
�[լ�g�_���Z�j� ��F!n��G�D�x��u��M�vLi�>)�S����I9"���x�d���)$�q}�,�x��}�F��.�� .*;�e�������D���Ժ~_e����Kf-,���}�lg���qM?�8āҭ�0	A?���K^kD���!N��W2�a?�ޝ���L1�Ä*���u�=���sK�]P��׀�M��0}�`d-�ҟL���4 �=�D=���18ڝ'�	��Hj��%*7at����11��31�3����#���F��J  ���"���&�+�5T�	e5��!.:���Hf
��w���Oo�5jsq��IN^!-ȟ4`���P�%� m� 4�}�L�Y�<XD�e����or�q���˪�$�/̀>%@�v��+�G�u��(�ø��#�Y9���%��a!J,"}�A��GTI]����AL� '�i�TK�΢d�0��|7�sʍ�$G�9`��G�2��[��gU�U�����N�7�$����ye�>�n��ԉ6�k���}��i�*t:/;�c�҉|lb���⁲	iFD�R.��sT��f~t��	;�$P�$�KNf p��f�KYhIַ{���#���5;W�_�<-����|�-a4a��l��=@����k@��w���T�Z<��K�F��a��n�R7�`_q�}N�����	]0hq�ޢ�A�:"h�1�W�R@J�:�>��r�(�����6�y�e��&5:ӌ�L����Q4c.����X�3X���L�,�KKK�L\���*���U��&��`��3���M�9���h��ͬ�䶀`~{1�%J�4}�j#��s���芤�����]����#����%�0U����j@�Ԭ�C����J�ě�hl�y��4=>j�"P�ڵ15c3[��#���n��je��)a�G`��yW:��V�ov��i>����q��-����q��.�L�sX��>��y�ĐrU y[�߹�rZ�t�b�j-8�T��:@��:��;Y޾�eP?S���X:I��j)��7��ɵ������:�}�07Il-͆����j�E�no�y-Xڴ��W�N���3.p�ζԶ,-�T��h{d�����Kzsz%"��kw��[�Ժ&��.o�&�]w&��A xH���NѮL&�%����,
4);�������$+��*7��Z
�q�'Ͷ���6"�p�5�������l_.Tu�4�����"I�,�n"�a�^)m�l6 �r�>BC����Ф��LQ7�w����)@
�I�K�`����:e�r��3�ʧƤ��nY
w�l[�*��*�Hw	W�Vm/��j���4��aAA�B[�Yf���,����j1/;�"�[�j�_��y,���H����%��@wi�2��LU��Ȥ��
c�~Q�����o�6�%��M$`� rM�a����W�p�{A�7)��.08'b�<ͭk�[��ց³+e�� ��RU�a:Ax[�fap2*�c�0D�\g��#m��l��|�u���'�I�#i)掕㶸�S��D�N@�ېQ��5�Q��+[.^Aw��,F�*���my꼞��3H�?�n�-�0�/L�I�M@��D&8�I�0�i\4ލe��ЧU3���C_��Kê�Z���g�5R?���*CJ)��w#�80��������U��l*��~�P|�?x$��"i�7]��K�ˎ;'�,�VƩ?�����f����gw<�<�<a�(���臼|i_"�dT;+i8��,��+v�����z�,�>B
��iݴ�i/�@D�vK"�p�/���o6K�Dڥm�P�No2��1�Ԭ�7�cfl۲	#�y�$��Tc��@TF��Z���\��xE�J�M����.�U/Q�(@��M��'�ў�3�[ό�Q�3ȕ3TU�v�{9�1ژ<��C����LY��z�Ɓ��ϩ�I��K��!
78AD��P[�f��q�I��Hry��Ykl�#"\v�!�t���L��/*��{��/=�s0_�u/�I���0ke^�? VӭN�ꏥk�9��� [�R$o��Oڐ�i/��N
ֈ�еG>��o�>�#Ƽ%v��9�D}c��+�� ��l�9�aH}s�B����k�)�L}S����fh��6!�O�8��u�
�m�`J�!F�P�6�l�h�4Z@v:]�4k�N������cK��kW��������jOo����� ��jG[�����H������jSGiE��w�g+)��x�Z,�%y���h%��>�5g��DU��=eG��c$��p�⹭�d��G{���I��hRe�5���-�h����y�]V���}g�n�rg��0L�I5��O�21�9|��ŕ[<_�e�_"^٥ݕ[�]��lSZ�oh��� Ip���X��p�e�V�p�5!)�̔A��av�xS���I���e?�0�i�-kQ`<��b1d�O��a*e
�(>��S���Ƚ*�"�(LK�S$�#�1ށ	l���� yT2�2*�
� !���Ѧ����N�wۨ�%Iw�`���o��mZ��'��=�Aqϒ/�Q$�o�Qt-�kI�]�� �;	�'�W��5��� �ʻ�X7T�evG�P�K����RU-<�(�������*�6�
�&��b�	�ѕPv�,l�p�iD:{̄��,P��4IW�0���`N�l.�%#�Q�&�0���.<�6'�QK3�&��e�I+�`j?9�D��HR)�MzB8r"��@4N��&��,
4L�>R��Qs�J����Gz��s�ڴ?�LƂg��lrє�h���-����k4Jw�D�4�N�Tt×&��(�S�ĢA���p+����ز��i���]�.[�!�PE�N�+�B�d��Ӧ���|MDD���Ȑ�T����+��5�\�{��'3�1k4i��!�S6��g���/ Y��/Vq���PPQ�ݮ�;�+�ݑ��dਲ਼K_y�뮘)�$φ0����G�x	��q��TGm��Wm��)���a�Ȕ�t�D��$��T�T���+�����i�ҢF�Ŭ�1�)N؜�_o�	WL�ʙ��v�1���Z�w[�U-�g_����2�ݻ�ܲi�V�ԕ|]C��+84�g��_��� n�w���'B
�����¤E��W^GX�^���S�<�����-��wR�Ɲ�T�����^�xm�BeK״�����r���n�%Wڷ{��L��n���0��5g��6��b����@̮ڛ����1ze�
=�I��,J��n��KF�^����d���q���v ��9���� �8��*͜�T�<��J^���G�L�I���a��R���h����b�n���$�
lW�H٩�Y.i�|�9�
�B�P�p�AD��E𯫊lp�/�3`yѧ`~�|�������ET@\�rz��K�+n]7�=��?)�1&���̈́�TD�,c #�4@�,]������R�xA�b�a��J#�ŧ��	�!�W)�A��˕b#su �I���5H��HXY��n�����ɋ�[�s�
r���4���V#�v��^S�O�i	B�Gv��ŧ?B�����\�E�̦���7�����J�#�j����ʁ?9I9\^ꦩJ��3T5-��iA��
JR?����\���tx��C�{I ��*\	-#=���ˬ:�i濣�����kӁ�O���IYh!w��_e۬8�ģ�ed�4&���݊�C��_r]��V`���f�U�<�\m��F�D�d�����zQ��׍q@�<Qِ4�0҂�ܰ<:��K�۞I�����+V��P`l�y��I�; ������7�N\9!ϙEmA9Q���H5a�\\/-�F�GO[i3׈�+%�ʢ�!#6�^[�T/��e������s�`rAY�[Y����c�KB�%5�Bz)iU�OF)	>�`� _A����億�4��r�q��h�\T�/����}?8o���i(1 ��R}Ht!������
#E�s��e�Iϩ4|+���4폢�e�쌯	�]�L�Ѕ:w{���=cØ�vDLb.f ���x���A�$!��hc2�Isd��x��F��Ŵ��S|���'��lN]|��7M<"��S֦��ۃ�:k���!�6)�Η�%v�;&2FK�����WC����ve�FĲ$�Y(��,\\��B�$HK �&5��DJ}#0>x����+�t+0_3̚"�P��t��Osa�����*�Rkt)�Z��Na�"%��?�APf�jC���B����l$�
��	�/�*M(���I��tI�+<aۢ�j�^��t�V��¡�V�X1M_aԑ���C��a��*�����x��f:4�[5y�����Z�$v�˘k��r�҄^&s�@��S�ހ���Ue'�j-p/��m������H��$�N.r7Ԭ�k "��M�`C�~�������"�5�F����'��U}G��kƋ�˓����ҋ�)�����~�~�GH��}"�v�����xƌ��n��J�Y9��&�^e�_���3>�MYxm���9�5��pX�k�|���w����B��0H�q��a�*�{2�z��XY�'����ҺtG՞c�^1Ō��ֲ��4]���֯/1vR���h%uU[�
q����W�Vi�wIWiݿ`�.�8��dO���م%(�``T�R���p�q���LU��� (���S@�Y�r��fp?Q���۶	�G�y%�g���?㔣��X�������w2��['�ӈs�������
���tBk���b�D��UӮ������1e�l�� ���i63<���}�H�s������|���$C�L69��i\�s�bR�.9����I�ḥN�Z�Ne�Q������^��h��0�M�*��)�Y���3�l�hVƉ��Rn�?�
�k����փ��
�u�?�+��
H�B���+20x�}��"�	f4�6P���7�x:k���V�2���� ؞��m
�q�ܫ}]�E7��qUt�M�2Ax�O�z")�Ժ�џ�	C�0Y�]���R)�\�L�q�hX:���G6����h/��.'촍�������
��B������p�@GO_o��@oOo?�������a���� '�5�pBj%�{6PHϮWr(���].��Ў�;JNu��ֽO���;�랹�T��>Ҽ��%o�x�1U~^�k��t�׿���ξ�7_��'���%_����ۿ��O��M/����ϻ᠓;�����ye�vđŎ-�o:������|zظ����=��{������n<�؏�������Aw�q�ؚ���t���S�BFq�G㏈��b�GI?�fC��f|�����C::�zXGG�c����)UL��:��Qڶ3���_�Ҷ���?����We�8��[/�8���z=��Ͼs��÷g�~��m�ݯ�ś������c~���w��_3>y�G��y����o������������|�����������m�>�Ծ�_t�E?��ǥ�}��Wf&&^��Ǯw����������7�<�ݗ������ޚ;'>|�#W��t��ʏ����m��Ѿ�o8���';��g�W���p�)G_�����9��+�=�����gvm{���{N�z��I��KW�\|ӿ�]������0>q���n��c��{�ǯ��z�cW�︣^�����~ˆ�6>|w��;��G�V�<����O~������?��]��CW=v��K��k�}f�	?z�����[���߿�ÿ=�+;��v�O���z�G�z���ᵽ��Zg��G�;��+O�}�5������..�����靕S?�w���u?X����/=��O�w?�T�-'�q�>r��o���?�?���[/��S�]��ƃ���o:���cߓ�?�ȋ������Ï�����}�F��]����������w�_�����{O���7_~�_~~왿��{�~{��s�Gf=��/?y��co��	���wW6�������+~x���?�����uz��kO���^���{޶���׻?������߽��W~�//�|�������������������7�����ܰ�]�'�ۧ�7�ڷ�t�[~~J�)��1w����أ�����M�>5���?w��;.3�����׎y���{d�����u������{�m�����s���u�9r����̓�l�>����W_{�#?����~|����͆=�L=~���|E�9G��گ���#����ك����ÿ��������=�/�}}�U����K�����&:�}�/�rm�G|�����[w\��n��O�\=��u�]����|ߞ[J����sN��u�[�O�����u�\x䎳����G_hU\w��/;�%[�����v�o��{�K_|�����������'�{�����o�������O����/����_y�5#w��3��Q���}����߸�;'��ꇾqH�s�uޯ�숛�7�᳌�׽{�I<��O}�ǷO�����O���������+���:�Gl���/~ױ���j�����O�������ȇ��u�{��.�<��ޯ<��GN����6���=/������.<�KG餫.��ȇn���+n����^}��/~�Φ�~��M�/�p��z���H�BĝorZ v� �v�L�J�:5�5:�z���	p5J�P��9d�;�2�Ў��oֱ��>�����>�����>�����>�����>�����>�����>�����>��������  