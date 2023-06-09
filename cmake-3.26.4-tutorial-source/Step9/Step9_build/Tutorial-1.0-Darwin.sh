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
� ~�ld �}xTյ�>s&��$BHB% ��QNL" y$�"'��I2:̄�DQl�_�>zm���֟z�5�b?_�Z�>���*���_���ֶI����ҫϗi3�}�:�3'3!�G�����k�����k����s6��Z2Ð��WRT$�����B�${aaA��$�^R,����D*�i�(�����x=n��w�rP��a>؏(��@=�mk���qxg��q��^�WPX������ƿ����Hy3%�����˿��tB7A��p!�-U󯁰	��T�o��U�c�X�ڡ|rM�Om���8�eC��0$c�����Ō��l�_n�(m��5�6=�(�`k} !�w�3~��QZ�ϊ�ң��N�}��n*AG�������!#���x|�	�k������փ�7���Am���UG�������s)_�??+�������ɓ*����r�b���M6؉�h�L�~�_g&	���(}?�Q��r�2�r�%����rF���۩������ܺyۖ��͚�{r�2�{�a����Bh)��Ä+@���ؘ-���!�����*B�hy�Ɛ
�q�>�6+c����t>�m���z�׺��01���g���id�O7�����w�c=֧Y��Yj\՝p���0�� �����>m7�P����$�5*��ׯ���<�j�R]yѵbL���A��57c�Cy��b�W"M�Ka	�/�����&8p���8p���8p���8p���8p��ኅ��9h鎼.tX	y�Z.�C$�ƫ >��_{=�Tg{Ωcb�PW�rʚB��~zt�&3)�ן!��DeH����qH{q)Y��'�/%m;������u��xێ�x`��F�㔇����c �5~���U���5��ʇ�=] �
h_-�$�;_'}�"	�I���_ۻ�u�-$B���U��Hg{�pg���"k��Z�ť��:~i4�y���u�i�r�9�a)�A�b�!Qx�?��C%����=(��������:�����s��F�L䠩;�N:@�Ci$z
Y�G��������� s��@G���U~#픏�� ��� �g���06�9X�e�YX;���W>�w�)��m;6�~i�T�K���Lg�=�c���K'�E���c����6����:Ԯ��g�z�'H�-L��h�>:�I�C�k:)�qZ�ج�l%��t���l����rO���V!%��د��a�K�w����GB�I،i4��]��c�/�۞�6w��R�עk垏�v>{��=����I��[�j��=�W�(�u�YCÐ.�Y��������k�;�%C]�gE�R��.?5�^�=C��3��`~��ȏ�c��W�(Y������� �f�;j��D�XgC0o�&��\F2���
��1���b�Љ�%C�B��}�UJ����tL�tc��u���=ڸ}LuJ�{��{�	��w�y��Fm���<5ʉ�6���O��7�/�x,��}�o5�����1(3y]�_�2��qh��Eg��ר?E9�Qw�M��L+7 i�?�������	�o����~L��`>b�~�槡-�����A�ƶ�v�ޓ��2�c�O=��]0V6���̆i���?,��(�<�M؟샪oq��~�&��ζ�_?Hؼ�y�l���\S|_��O��8�Ig�$E����>4I���+;�,�6_U�in�a����f����(�	��q���$vN���
�X�j!vnE��M��Au���,9�GG��'��A*�`�������@�T�Lǃz��͎�~�>x�\1�(ןAy��y� ��V��b��[�b乁t���4�G��Fϋ'�8��������Σ��9(�~�D׾��Q��f��D��
�?���/�;:�龁�I"��ݱ�����r��CU��t���� ����t�oIH��ֻ�ȹ�[w�e�oYj�KH��tN��ǡ��������8vg,g6�����{>�ٱ~N��F��/ $FG�##O\�|ꜿ� c�9zBr��4��S�6�B����n���E�n9�t������ş��-Э=t��~W���G�{�P���{���*���ږ~����ý��	���|���E�n ���>2��L�eK�/#Y����Z%��,)�^1�gNk���F�w|���#Oh�5]���5`��=��~Uor�3(Gq̼��s����U��=1��!���������F(2}�Drd�~{�ѵwX8�b��.��t8�HdU�G��]�� ��O������^
9��i�.u�_y�vhݑ����̺��'EχM^mm{>B���We�#���zf�4�Ո���^j��z���l��Ȧ�b�=|CG�Ke\��>�Ёg�H��/?��DeM"W�@�wa?K�Q�~bX?�P7�6c�a�d]<U���������t�l]�Z]�:]|�.�F��ŋu�u��M�����]����.]|�.^��7��w��-,>2"\E> -~ ��a"!���ɑڅ벬�LBn�)d�1m"�I�|F$ψ�����Ή�t�����0�z�DN����,���^-�r�����,��	���n	x�>��!���u�|����-���-��:Z�R������	HP�-!3���_����6K�Kr�$���8��=o�["�}ͭA��x� �RY O?E�g/���EA<��7�~�l&�j���̾��%TB�[�
P���ﹳ��0o"dS>��e��~p�M��tp�m��TS����Cf"t���?xX��6G ��Z�'7ä|�J�� �K!B3lhN��0�2,Lr�҈�4l���	R:sӉ�$�P�D$�gؙmbb�q�d��V�)�S�!NG<�l��3_�x⹈�!��|�/D|�E�#�bl#8p���8p���8p���8p���8p���8p���8p���8p����W.l�^ߺ���|��ɸ���n������x�CA���X�O�rߵ�{U��fAS�hg�̊Y��$88p���8p���8p���8p���8p���8p���8p���8p��	B5�7 ,� ��t�Ƹ�a4��3� _����I&�D*"���D�^��D8a��]�$"�]�|��d9�L��&+�!����D�)Dxރ0�BL�S	Q��}�z|.e�;к���m[j��b/������5�VNw�jǶ�<%���+��J�#�.nt�J�=j.˴۝M�%�����Uv�{�����}��*�g��nø���n_c���z�S_*d�8�@���k���V�+VAZ��K���Є�b��)�}��l��媴Ǫ��1��c_|.Uͭ�*�%W+j��&�^q����Wa��QS�L�����T�&SIox���Sh1�3�nQ���n�ӝ�>����Z�6O���)Q���*z+*t�a@�	n��;9�z.���U�c-?)㪪�KY�s2�<��':��
��w�{��\���x\��w���o��EN���Ru�.��<q�8k�F���5�2�}�#��)������)�cg���j	�(����z��)���Cp,�SV�L"y�������o	�H2�Jv��� !��&��ڦwP5��L����.B���o̐��4S{�4�9c���A�(�白��]$m_��>�v��J��B��.z�D���i���#�"Us����&�E�t�I̤�����3Ӧ�;?�g�����N_�~}�������^=o^min�r@��Z	�K�(�gmĵ����t��#�:���'3z�G�>\��"}i���H�F�����!�鏐>��0ҏ#����H7"B�e��3:9��[�^��� �6ҩ����0:��B���]����nB�s�GzQ:�{�ޅ�Y����H�/et�,F�~�g�B������@z�e��,c�H��>��a��~��L��:O�ې~�SHw!�	�z��z#�g]��y71:�MHۑ�C��f���g@d�����m��-C�һ�����!����E���
�K�3���o��.�Q��S�1A�&m/{��ѭ��#m7����!mc�f}�@���Xz����@?j��5п1�a��K/1�kteR�~a�J̝�hy0t��	0��"�"2B90R�
�-6B 3!� l�p+��������V�E�ۂmJt�����1�;�i� Na�4v%V��W]}g�d��i��vI紱Ǩ�@�}z�tU�\|��(/����jప�<+*��͕�����2	�s�S�0��`7;\���<`F%r�4�۪omP<�pURͷ3?]SJ�Q�*Hַ�M�fGU�+��C�q�&LsGc��i,TƸ@��6x���u/E�����v���Ee(�Y�AG�ߥ����k#�z����W��W�)��E͑u$���A�FM{��;�F�-[�®��:�v2�"����. ����w �v���l��s-R��5W�)z?@�*����h���W	:�j�al�U��\��j�l}k�⪇�w��b�M��WU�S]�|]ϟl����H����}Sk�'�jk}^�$�m���6��c���@]U����}�M�=�W�4l�-�kⱻNE	���E��-P�A�MiBۡ*�w�f?�Q�-	��X�d����8�\�P�)ߙ���a�?��o��Zfh5xZ��m��<+R��QCX���y�D����>�=H�%�A.��������]��)t�`�s����Uj�ةw���;=�n�U�cn�c:-8N�>���L���o������L�"��Ƥ�I)�RP<&��N��ߦ�b*"��-̓4�-%&3�����䀰�g��%I'Y����[p�Ъ����a�����>$�W}����β��/^p}�'��U{���?���|C��_���6mߙ4��K�����>��;�����/d����s�oC�?�����.�����>|�/i9����v�?�����;��k�գ�]��fh�S[?^Yp������x��s����Z����Y?�ŏ;?�ϋ�,Z��b�O5��=�y���mo�Px�[�k������?����?��Ly%{�L�?����p���o�>��v���K+��u���ٹ楲���أ�r۶����c��v�O�,���������{'6�_K����V�{�L����WRT$�����B�${aaA��$�^R,����T4�Bi�
��D�^������kh��#��"���m�`�-�>g����4Mk�����qƿ������8���ƿ��)oZ�H _��w�[a����\���!�r��Km�k{�
����8��b�?ߎ��^l���Ğg���ˀ�k�`�[r�����vI�fu�>�� 
R��E�L$u�����	�7�`�y�6��[����ؼ
�E�^S��v�m嵛���<�����ޏ¥��
�y|��e ��?���1��/(��ǿ������/��w�8�nJ]f_��'�������8?��@����²�l,����RV�.UQ���q[e�-R���U�U҄��l�M�^(nD��\������&����]��"í��F��Kf�� ~�/���$�K�-Ⳉ%3\��)ĿB|����!�oe�}��)�=�kSnG��UioC܊�)���Og������1o]���_I��OۣΙ}2�7.�C��?���O7&�[����0��
�:0�NL���T�y\��&�tz_���w����I?���7U����r�%u�LrŽ����2#������K0_�W�'�n��O䵟I�k8�7���}��G_����h/��??��I��ٹe����5~�\�˿��t|�O����t�'�˿Bn�k����\�Ϙbi�d,����h=E���Y;��4k�eY7QkӗS��=����i|�H�2u�͆va_�t�ކ0��E~^�/d�>��0q����+�k�G�'����D]f�|c�9��ұ�]@~��>�[�(+�L�4�V�ᆲ�R�_:��.&���WQ�%�N��U�~� a�Y�B4}h!��r ����z���C�[�y��!��B_��y�tt�9Ý�2l��CO]�EH�@�~D�v���8��� ��L_6�١]2��j�K�xtQ.�CSG��?����gq9L�^
9�vw�*@��<j;����Cqh��c]I��~zt��$Ʒ?C�h�Ay)"���qUf92 �.�鷐�-rD��f/��g�ta}6�ud�z��2����(c_��&��B ��##h9�CUG��p�`E7辣WT�y����#�0�9Ci$�ծ�,$J��!�����Q���~�#o���O;�#tG*H�1<@�Yh}(+lx/r����-��v(N��ʇ�!�r�mm'D�>�2W�7�Oq,_�M�&�/�Ĝ����CǠ?�'H��-޿�v#�+��8-ۿLP��%�r�>�r�u+�n�ܓ2�m�UHI�>�a{D[�����A�#���g�j��uC�����2b�S��&�a-ʰV��h��0��j G����IQ}a{��N�s]b�M�ͬ�F���;ͻ����;�%C]�g�����{T��d�y�8��P��f7�:n�1	����ku��i0�ШM�졂�i�e�2pts m����;9.f�h_2�,��ܧY�t\����i�nL����W��G���N5��W@���nq��zk�&h�Sӡ�lxd�.qo�_h�XF�A�P�:��@ֽC��X�2��qh��z���Y��cm2^g�@��O?(�?:�����L�Q�9����
�sihK`g�~ж��m���������|��Q^6���̆�4�= �~ʳ	���}P�-N@?���c�ٖ@����=͋g��s�x~��U}_��?�|��I��3j���!�}��:��6_U_hfs�<ĭYdnn�J��0�ǙLo���9a��+(?`a���E�����~͒�Q~qt4haz�:����e�kk�NW��n e��E����e�͎�i�a��r�ކ)���;sAvm݃��Z/Z�b��@:Kp]y��ŕs�D�hIPuյ~/�k�`ƨM�]7u{ ʋ��b���s���|.�o�?�g��n+�I3�F�G��KpD�	'h5r����r��[���B}=���WF�ɸ����Mt��T=E�o"��1{M7��|!1:���J�6ȘAz@��P��s>��󔻍����9�<�[swlQ��@N)�.'���:���+���~����!���*���ږ~��ʩ|4_���=�xc7�C�T��[���%̗�,��M�[��d��Uƶ�~�Bφ�څ벬�LBn�)d�1���I�|F$ψ�����xN���SbdD���'��L�&r�t��F~8K0�WB�\:Ʌ�r��T��Ni6|�o��Ow~����d���_7`�����<� �b}���'E���_���*I~��)t�3�Y�\o������_jr{��8�J�D,�8��=o�["p�m�/XI��� Z��48��`�Y@K���c�����	�0g��j<E��E���������0%�������/�b��F������/`�����]	�{-:���?����w�2~����>A�,���;1?7A~�U'�4����_��>I����������"�c����I��O����"�����ga~"�4c~i��.�O4>�\$�͟�4�ɟw��J���E�W�דi����Y��M�?��h�c���5�!�|�P�Ø�h�_��D��	�'���Ի{lϦ�6l�LW���>��C��o~���}?�j�r����t�n!��t�� �I��"�����ٚ�ԻTm� �x_���s5�ӈ!�MUʴU��s�Vx.��UǶ� ��wټ)�]F�\���Ī����U���v�**�kiy���Us���"[�E���vҢ��&�{�h� Ù�F ��ޟd;����x��{���
�����I��$�_Lb靀� >x��gaDS������Vhf������l�f��%���!Q]�lgE&7���gD��'���v^	x���A�S&������{����5��Ǥ��d[oR�}���/ m�ML��(�I�K����x��������JA5b�zA�I[��ޝ�����0?��Qn��1KP��.dx�96i��e�F��^��o����F�0�� �6�H�������ʿ��=2��+YBL���� �F��~v�Wr/�N�m����z�XO�t	1A�/"?ĝ���!�K�	�~�G܉�qb��� ��>�N�m��ˈ%�x�Y�A��A~�;?��`�6L�C,#���
�tvt�K�O(m}n����I��YNe0z	>'�F:��^>m���ޅ��kAZ[7~���������Fg���t��s�o�����K���� ���������bf��?����z�������z�������k��Fk��˘��7_����1im?�9ʯ�?��|m�}�k��-vo����yMim�,Ha��߾:�c�[)��O�"���v�f��@�������W�&�����X*����[ҩ<���cO����`�����?m?im�}���⿧3Z��=h���ȝ����/�(���GZ[��df����������f1Z�o\�2�����X�4���lH��,�)a�NO?Gb��!?)��#%��b�_�K��5���X�� �c��s���K������g��6��ް)�N6�+��v8�u�_��?.��+�U�+�5����;�W�g��i� e������4�@?��})EM�J��FN�bQ��jŹ�q����ח/�m�8�/�D�$��[�x�~B�r&���p����ݸ�O�^��}n·�����?��ĥ��{)߽L�{�/����y]��|p)�L���Ir�}�p�}�1����
��`��]�v��2�O��S3�����b�E��x����^�WP�f��vOM/P����mM�J�5�N�_�M�ߊ��y��{ ��/�9p����8�� �y�� 8 