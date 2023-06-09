#!/bin/sh

# Display usage
cpack_usage()
{
  cat <<EOF
Usage: $0 [options]
Options: [defaults in brackets after descriptions]
  --help            print this message
  --version         print cmake installer version
  --prefix=dir      directory in which to install
  --include-subdir  include the Tutorial-1.0-Darwin subdirectory
  --exclude-subdir  exclude the Tutorial-1.0-Darwin subdirectory
  --skip-license    accept license
EOF
  exit 1
}

cpack_echo_exit()
{
  echo $1
  exit 1
}

# Display version
cpack_version()
{
  echo "Tutorial Installer Version: 1.0, Copyright (c) Humanity"
}

# Helper function to fix windows paths.
cpack_fix_slashes ()
{
  echo "$1" | sed 's/\\/\//g'
}

interactive=TRUE
cpack_skip_license=FALSE
cpack_include_subdir=""
for a in "$@"; do
  if echo $a | grep "^--prefix=" > /dev/null 2> /dev/null; then
    cpack_prefix_dir=`echo $a | sed "s/^--prefix=//"`
    cpack_prefix_dir=`cpack_fix_slashes "${cpack_prefix_dir}"`
  fi
  if echo $a | grep "^--help" > /dev/null 2> /dev/null; then
    cpack_usage
  fi
  if echo $a | grep "^--version" > /dev/null 2> /dev/null; then
    cpack_version
    exit 2
  fi
  if echo $a | grep "^--include-subdir" > /dev/null 2> /dev/null; then
    cpack_include_subdir=TRUE
  fi
  if echo $a | grep "^--exclude-subdir" > /dev/null 2> /dev/null; then
    cpack_include_subdir=FALSE
  fi
  if echo $a | grep "^--skip-license" > /dev/null 2> /dev/null; then
    cpack_skip_license=TRUE
  fi
done

if [ "x${cpack_include_subdir}x" != "xx" -o "x${cpack_skip_license}x" = "xTRUEx" ]
then
  interactive=FALSE
fi

cpack_version
echo "This is a self-extracting archive."
toplevel="`pwd`"
if [ "x${cpack_prefix_dir}x" != "xx" ]
then
  toplevel="${cpack_prefix_dir}"
fi

echo "The archive will be extracted to: ${toplevel}"

if [ "x${interactive}x" = "xTRUEx" ]
then
  echo ""
  echo "If you want to stop extracting, please press <ctrl-C>."

  if [ "x${cpack_skip_license}x" != "xTRUEx" ]
  then
    more << '____cpack__here_doc____'
This is the open source License.txt file introduced in
CMake/Tutorial/Step9...

____cpack__here_doc____
    echo
    while true
      do
        echo "Do you accept the license? [yn]: "
        read line leftover
        case ${line} in
          y* | Y*)
            cpack_license_accepted=TRUE
            break;;
          n* | N* | q* | Q* | e* | E*)
            echo "License not accepted. Exiting ..."
            exit 1;;
        esac
      done
  fi

  if [ "x${cpack_include_subdir}x" = "xx" ]
  then
    echo "By default the Tutorial will be installed in:"
    echo "  \"${toplevel}/Tutorial-1.0-Darwin\""
    echo "Do you want to include the subdirectory Tutorial-1.0-Darwin?"
    echo "Saying no will install in: \"${toplevel}\" [Yn]: "
    read line leftover
    cpack_include_subdir=TRUE
    case ${line} in
      n* | N*)
        cpack_include_subdir=FALSE
    esac
  fi
fi

if [ "x${cpack_include_subdir}x" = "xTRUEx" ]
then
  toplevel="${toplevel}/Tutorial-1.0-Darwin"
  mkdir -p "${toplevel}"
fi
echo
echo "Using target directory: ${toplevel}"
echo "Extracting, please wait..."
echo ""

# take the archive portion of this file and pipe it to tar
# the NUMERIC parameter in this command should be one more
# than the number of lines in this header file
# there are tails which don't understand the "-n" argument, e.g. on SunOS
# OTOH there are tails which complain when not using the "-n" argument (e.g. GNU)
# so at first try to tail some file to see if tail fails if used with "-n"
# if so, don't use "-n"
use_new_tail_syntax="-n"
tail $use_new_tail_syntax +1 "$0" > /dev/null 2> /dev/null || use_new_tail_syntax=""

extractor="pax -r"
command -v pax > /dev/null 2> /dev/null || extractor="tar xf -"

tail $use_new_tail_syntax +152 "$0" | gunzip | (cd "${toplevel}" && ${extractor}) || cpack_echo_exit "Problem unpacking the Tutorial-1.0-Darwin"

echo "Unpacking finished successfully"

exit 0
#-----------------------------------------------------------
#      Start of TAR.GZ file
#-----------------------------------------------------------;
� ��ld �}xTյ�>s&��$BH���L��('&�<{����$fBf�Ql�_�>zm���֟z�5�b?_�Z�>���*���_���ֶI����ҫϗi3�}�:�3'3C��s������Y{���^{�9�l��޵d�!//���Ȣ�b���F��

l%�b���
l�6b)�i�(������{�.��wo�rP��!�GE�ƿ�5�kq�=3�F��/(,��Qq	�aqI	��͔@Z����/���/�	h� a.��I�<ҾTɿ�&�\]��jWՎ��yh���5P>�U;kcԗt�N�ɲp�Ɗ��u[�܌1ڠ�k$�ZR����z\~�g�Vc�����G�7:����j�{����͌�!%�d������q�k������ւ�7��y�����YC�	�k����:e������k�D��v�§���\�ؾ��q�tv��"Z&S���ӘI\~A2�G��d�%�\��v�\���br8��^���vj�D���[7o�RU�Y�}�N�>�~oaX ��Z��r0�
��!G6f!t�M����d���4G�1�B(�� ��m�2z���H���V�Z��~��~����|�����7��D`��+?x`w>�c}�J����	w���r�J����v��N�?L�\#�@p�x���]��/Ք�+ƕ���p�[s+VQ����mV%�T�� ��o	)J4a8p���8p���8p���8p���8p���W-�����ASO���LȻ�r)� !%^�$��9��:rNs��;�S��?�ӣ�6I�@ȼ�)�-�Â ��C$O@�KKɺ�?A|)i�1���~����<���w�/��s��6B��<���u�������Z�z]篱��P>�@���V@�J�$)���I�n�O�����'�3`"a*'���
-��:�G�:���Y��2/-m^��sH�y/�m���<M�-��ϣK�����9$,!����A�$�=�T����qg�(�?�#���7
e�=��	zL#!��p�<�@�Ї�-�-�ǐH^ �C�:|�������|��p�>�i=�/��������(�l��ڡ8�����DHy�\h���Kۤ:\B��f:�A�7F_��/�<Ї^�ZG+7���Šԡvu�#{���:A�ocz�G��ӱ�Hz)�(���I1�Ӳ��ff+��Cm_fC�@֭�zS��0)���~MG	�_Z��c�0�=\LBFL�q��b�#m��������e��ʿeX+�~�����f�a`�J�F;e큾�D��[��t�����}�P�0]]�v�%.�~#+b�*Mu���*��M瘎_�SU�C~��fkf��B����-����e�A6��Q[�?j���y�6i�2"�9�6�V�N�����Ot,~�~���R:.`�cڭ�n����Q���S*�kT�+�M���[��=f4��)�PN���l|�Ž~�e�c-�C}������A�!�����!�O��.:�m�N�)�Y��cm2^g�X�AH;�ه�'@�0gO�Sl��cB��CP��4?m	���ڶ0��\�#���՗��|��킱�Ҿ/f6L���a1�E��l���`}�Џ��S7��5�E��A��=͋e�0��b�Z�Z$��O{$)R�-���I��_�	e��E`�U���6H;qs��ۉ���P���O0��@'�sB��M0VP~�$�V�s+|�����m�fI��:21=QQY���ht��R��Xd:��W�m6��E���rD���@�EB��w���Z�;��K�E�s�*!�i(�*�?��K����������#��>(�~�D־��1�4f��D��
�?c��/�;:�龁�I"��������"r��CE�	�t�Q�rd �>�� d�׷$�s4��D�\�ͻ�2�L5�%���z:'�qh=*!���(Gu0'�����e&��ȞOdv�]�S��%���Q��蓗"�2��ɘAzA��`��{>���{�����9�<�[cOlQ�[N)�n�s�gho4k�c�ߕ.a�Q�^���ޤ���୴�]{h��qoC}yW����?�*�~x���!e����+S|���H�����f�d��U��ۊ1��ypl#�?�������'����}t�4����7)�9��8j�k��9#P�l��>9��!���������؆)2���b���6ck�p���7]���p|�H�N�,=���!��J)����'i�Җ�i�.u�_��vh������̼��'E·aU^um{>B�V�Wd����zf�4�հ���^j��z���l�kϦ���=|Sg�Ke\��>�ԉg�p��/?��DdM"�A��`?K�Q�~bD;�P7� 6c�a�dM<U�������k�4�lM�zM�M|�&�F��ċ5�u��-����M����.M|�&^��7h��h�-,>:*\C>-~(��i A�����ڄ���Bn�!h�5l"�)�xF$ϊ�����Ή�4��*��0�|�@N��,���^-�r�����,'���|���w������7��Y��ۺ���Bj�\��V{�����,��s�-P�e	@f�^>K���lip{������n��r��iuYH�o_sk��m^-���C�3OS��@��"�{Q�}�M"�*I��='�oF�e	��׳����{�<0�[ٔpf!u���|k#�j;�:���b��Eᐑ]FbH&"�����/����)č0)�3㻀�R������ /L%���F��4b8(�o�%�����p�}�n �gؙ�bb�q�d�&�f�)�S�!NG<�l��3_�x⹈�!��|�/D|�E�#�bl'8p���8p���8p���8p���8p���8p���8p���8p����W.l�^�����b���x�տn�������� �f~����D���_���*Iz��)x�+Yb����8p���8p���8p���8p���8p���8p���8p���8p�ʃB5�7!,� h�4����a,��3 _����I��+"���@�>��D8a���,ID��$���$|.�Nf"�C��]3	�S���� �a8���"�wz�s{����u��]۶�
d�V��9�WY��%7��@Վm5yr��Y�-V����z��U��
@��J.˴�M�9�bw��U6�k������ͮ*�;A���!!�b���h����Ж�Y��hq{7;�����U�Vf���|-4��X���kߴ1�7u�*m�*(`L|��e��KUAsk��q�Պ<���I�W�wy-�Wتv�ȓ�>��z�U��T�^~�,��dZ���Zd�k���pũO灬o�V�͓��jJ��-5��֊
>m����L����?�sV��B�Oʸ���R9蜄���r������� ĝ��lW��y�n'��hj���b��㲷Tݣ���7O\'�Z��b�M��n��k�h{���.׻�^z�hR�\T@5���Mnv��}^���_>�G���(NY&0����������p�d����]~B�q.͂�k��AՈ�3~";	1�{H�1C6�3�TL�ä�A4>[�="ßg��w��}M����h��&�,��]�@�2��>��K:D��Z{��E�"龛I{;-�}��M�w~*.��3.t._��p���յ�3��[�z޼����倖/�5V��Q�[a!�ډs-[g�� ҿGzu>�oLf�&��"}���E�4���"���"F?��n�?F�0�#H?��R3�O"݈t�W�^^���FoEz�mH�!�ҩ��6�0ڏ�B���]����nB���@zQ:���ޅ�Y��� ҃H�/et�,F�~�g�F�M�=���@z�e��,c�CH;�>��a��~��L��:O�ۑ~�SHw#�)�z��z3�g]��y�0:�MHې�C��f���g@d�M�������-C�һ�6���#����E���
�G�3#��o��n+�Q��S�qA�u/{�ё��[:�cm3D�����am��f}RG����hz��>���������萎NM�����5:�2)Z�0�	L%�N��<:��	�	Y̏�	z��� ��P�6!���M6C���ih�V6l��"�m�6-t���W�1�;�i� Na�4~%���W[}g�d��i��vI��Ǩ�@�}z�tU�Z|�V��W\U}�pXUS�6���JoU��n���9�G$�2?���v��v0�Q��*M-ö�[d7(\�T����Oה�ԅFF�
��m�d��1���5��tL�	�����u�1.P4N��n�'v�K��������15QJaV�`Б��(f�{��=9b�p��h�=�Esd��*�`�1����L�Q�ǖ��+t�������i�B��ȭ�Ƿ�������0��-�'�\�dp�U5E��к���t5�[=e���ƪ�r��k��0��-[��(;롰����(f�s�UU�k������v=?�D����7e������E�A<�&(OtC[�6h�v�D1�Tջ{���tp�=��a3m)��G�:e9���N'�Fdh�@�uW4�	m���ߕ�}pFq��qb���=>o�tr��B�|gBj:�)���bj��YX��n�b�9��H�l{,D}�a����E}c��ۤ� ������^��vc�sl�JP��-���[����رS�Z#�wz��R++�ܺGu.R0A�>���L���o������L�"��ƥ�K)�RP<.��F"�ߦ�b("c�-̓4�-%#�����d���g�ۗ,�N&�j[��ࠡU�[����ť��?}D������e�?X��ƒO+�>��C'������>����kؾ3i���|��^{t�wV����_���CA�`��ʛ~Vqae�=�k���s4��_�r���/�}1T��/>�w.}��kG�;�g�����~���З���HG����~qc������~��w}�5�]�x��ڟj��?z2��������Ў�]���������+�N;��j���n�m+������]��{l��D�7����ֽ��~wך��^�h{���|�o��7�<��y���lYn|��W�����Ml࿖��:<�N�ڙl#//���Ȣ�b���F��

l%�b���
JJ
��h&�R�<c��q�=n���7v9(�А��#��"����@�m�^G�����4Mk������_`S��VX�_\T�_\ˀ%oZ��_��w�Za����H���)�J�ᲀ:�սN����n�^p���o��_Rd+���/�������v�%��8�aomq9-�fe�ؽNp(�[|-�DR�9]n�+� v��o��(�}��-A��۠@^���5U�w�Q^����+w����(Lb�g������ :�����m#��/(���ǿ��0����K��[M��.���ϳ��������V�_f��� �e��XZ
�JKYɺTY^Ss��U�Yj�鶴��ʐ&�uf�l���Bq#��
ߏ����50���!�nE�����bdx�g��!NOb���">�xQ2�5��F�+�w����f�?@\����#�>���#^���6ĭ��F|��t��B�q{:���������;��=���!S{��
>���C�+�tcB��_�z���ՁixwbJF����J|G5�'���"Ō��0=�?M�9����2���W�-���e������zˌ��6�����/�|E^=�Ȼi|�>��~&���T���k�q^v{ɞB��0�����Ϗ�ܲ��ֶƧ�K��?~�����8��n�d��򯃐��d<<5��3�hڄ!������'˵U;k����GY�͇@�ڵ�d٣xOil~*3��BDM}��]ؗ:��!��r�����lb L\8�h�����1�)䧾<Q�-�x~�"t�|��&�OeF����<8��}�!o����F�ԋ	�a�ՁA�`I�ӡw��#@qV�M^D�v�����ਭ܅@a6���Vh^=ăQQ�{�o��.1g�K�G̖����GuR"P���]9#; N�2H�b!ӛM,�����.
XY%����o<�(ӡ�#�H!�YJH'�O���qZ/��e��1��+���;���R\ ��W����]t8��Ȑª�gP^ʃRX�\�Y
B ��sL$L�!�2=�K���C@/]X�Mr�ٴ^,y��cr�4�Gߗ��I� �����Z��P�Q�<>X������G� 0��p�AG��`	uw��A	ӤPP$��4�{P�BC"ya�����[{�>��A�=�
�	}�z&Z�
�,�21�M��S)����DHy�\h�A�	�6�����U���S�� |S��A��11g�xG��1�O�	ү�G�lı��J'�4N�,�v�����\J�
�[!���o�aRR��}���h����Ð�hp�򙠒F�J���o�om�������qdX�2��z?�+�>ʀ�̑B+�PRD_���\��5L�%#볞�1��N��D�.q�p�Y�L::J���o,Yq>�68>��͠��vLB`�Z�j-�64f�{� ��}���Ho+`'��N����':�?m?�YV)��cڭ�n����Q���SU���&�Gܭ���	�F�t(G?]�Ƨ[��\<��r�>�7��8�u���2�_�1\0�^���rV��X����_��v��KN�a�)��<Sl�Dpγ�>��\���y��ma|۹`G`�)h3`�0�zi{����}1�a5�D/ȹ��l���`}�Џ8q��5�%����yO�b���\�7�ߤeߗ��O��G�"���bl�|��N���-���/4�9z��,27�}�iy��	���$zN�|�	�
��X�Z~ჯ�D梶_��P�_�������,�n�m���U��H��c��xhC_�j���"�7��P���}|g.Ȯ�{�wT�E�^L��H�P	�� �^��r&�O���8uQ�]k�R��e����uS����z-�;:��@��b����Xv��"A�N7J?��>�� 2�H(IG+����7����2՘�����H�_�'��c�v7ѵ�R�ٿ�̎��T݈��D�h2k+�V'c�9z�R��4��S���B����n�=a�E�n�9�t���?��[\{�8�������.�?M����J[ڵG-��Q}y��j�ԉ�n0��)>2��L�eK�/#Y:�Ƿ�-�#�YRV��z�i
�Fhn�2�3�݆�Ax� 'ƧD��<+�ΊF��9q��N��Q��2��^6�/�i�!v���,���^-�r�$��YNR)�:�]���u/<��ņ�?8����݀�s�����#A���x�cO�R���}{U��VAS�hW2r3G���w)/T).X>K���li��������v����겐
8���,����Bh�z�R���g5]=W���W�����q���)+9���7����ԯÔ,�'s�Ob�d�����h
�����7�vƩ�1i�Q�����S��0}��Y���;1?7N~�Y#�e|�'1�6N}������������"�c��8��M��K����"�ͩ��0?�~�1�4N~7���w/�?����OV���ϻH~%�c�"�+��면����x�}�s��`>��|#~�uH'�!��0����1?��|����G�,���s�[�ҕ�}<�2��P�򛟵-]���Z�XJWtb]���-d]���d=	�]��4�~!ks�r��5��A� �w~�|�!ĵ��O���Te�Y�<�����2�"���n"�'E��Ț�F���]Y?6+wY�^E� |=-8��7+cn}Ӥ�[d�3)wYO�]Y%z��`8�Z�p�&+�'YO%3�<����j��pf�r�u$�ᗒXz�9�� ^F�c�Y��T���.52���F�>%k�Q��zAdtPT�<�Y���%�YQ���� �����W^/*k���Ayf`}֠��k��sͣ�1(�<Y��{����@�r��iA��z�R*/�o �*(�-{61��RP�غ^Pl�Z*(w�n-d��<�����b�[-ߜ%(�Ky2���4[�2|3�`���7�yC�h'L����愕>Ҡ*kf�f�|��obx����J� &���J���� d� ��+�q�v�u�wb�j�'a�1A< "?�]���!�[����q;�:�bb�x@�����#�C,!� ��̒�	ꇠ~�C܅�),w˵czb	�1A��0IgGv����҆��F����q��4���T���s���>����S�q���]H�����u��H�~�(m{n�HF�<J'�=����M�n����{�p=�������hu=�/FF�������;1_��A�������J����Ia�������~�ElO]�V��_�����=�W��W�����fb���)�הV�ςF���kӐ?�縙�}��d-���o�lV^=�c}u��+���~un����|u��%����?��1Z���O�?~9��S��ǑV�'�g1Z�/�{:���!�у�_=�ܝ�h��҅�������OF�O�O�L,_���n����3㯞����Oc��L̆T{Ѥ9�6���$�N1���R��-���i�t���Y�<�I��+u�=��?G�ޛ�Ѵ��߯k�yF4�g]{�����d���.�k�����]�q)�^��r_��O�M�	�*<3o�O�)	*O������4_�vY.����/���ŢyԊq�㌿-8=�/_�ۂ1�_���I8��'������s���6]�E�1o=�Խ�W�ܸo�O�S�".�#�K���R�{��� �����y]��|p)�L���Ir�}�p�}�1����*��`��]�v��ҥO��S3����ۢ�E��x���_�WP�d��vOI/P����mM�B�T�Fb_�M�ߊ��y��{ /˗�8p��!�?|��< 8 