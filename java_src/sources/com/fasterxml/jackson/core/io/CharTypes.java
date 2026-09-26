package com.fasterxml.jackson.core.io;

import java.util.Arrays;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes10.dex */
public final class CharTypes {
    private static final byte[] HEX_BYTES;
    private static final char[] HEX_CHARS;
    static final int[] sHexValues;
    static final int[] sInputCodes;
    static final int[] sInputCodesComment;
    static final int[] sInputCodesJsNames;
    static final int[] sInputCodesUTF8;
    static final int[] sInputCodesUtf8JsNames;
    static final int[] sInputCodesWS;
    static final int[] sOutputEscapes128;

    public static int[] get7BitOutputEscapes() {
        return sOutputEscapes128;
    }

    public static int[] getInputCodeComment() {
        return sInputCodesComment;
    }

    public static int[] getInputCodeLatin1() {
        return sInputCodes;
    }

    public static int[] getInputCodeLatin1JsNames() {
        return sInputCodesJsNames;
    }

    public static int[] getInputCodeUtf8() {
        return sInputCodesUTF8;
    }

    public static int[] getInputCodeUtf8JsNames() {
        return sInputCodesUtf8JsNames;
    }

    public static int[] getInputCodeWS() {
        return sInputCodesWS;
    }

    static {
        int i10;
        char[] charArray = "0123456789ABCDEF".toCharArray();
        HEX_CHARS = charArray;
        int length = charArray.length;
        HEX_BYTES = new byte[length];
        for (int i11 = 0; i11 < length; i11++) {
            HEX_BYTES[i11] = (byte) HEX_CHARS[i11];
        }
        int[] iArr = new int[256];
        for (int i12 = 0; i12 < 32; i12++) {
            iArr[i12] = -1;
        }
        iArr[34] = 1;
        iArr[92] = 1;
        sInputCodes = iArr;
        int length2 = iArr.length;
        int[] iArr2 = new int[length2];
        System.arraycopy(iArr, 0, iArr2, 0, length2);
        for (int i13 = 128; i13 < 256; i13++) {
            if ((i13 & 224) == 192) {
                i10 = 2;
            } else if ((i13 & 240) == 224) {
                i10 = 3;
            } else {
                i10 = (i13 & 248) == 240 ? 4 : -1;
            }
            iArr2[i13] = i10;
        }
        sInputCodesUTF8 = iArr2;
        int[] iArr3 = new int[256];
        Arrays.fill(iArr3, -1);
        for (int i14 = 33; i14 < 256; i14++) {
            if (Character.isJavaIdentifierPart((char) i14)) {
                iArr3[i14] = 0;
            }
        }
        iArr3[64] = 0;
        iArr3[35] = 0;
        iArr3[42] = 0;
        iArr3[45] = 0;
        iArr3[43] = 0;
        sInputCodesJsNames = iArr3;
        int[] iArr4 = new int[256];
        System.arraycopy(iArr3, 0, iArr4, 0, 256);
        Arrays.fill(iArr4, 128, 128, 0);
        sInputCodesUtf8JsNames = iArr4;
        int[] iArr5 = new int[256];
        int[] iArr6 = sInputCodesUTF8;
        System.arraycopy(iArr6, 128, iArr5, 128, 128);
        Arrays.fill(iArr5, 0, 32, -1);
        iArr5[9] = 0;
        iArr5[10] = 10;
        iArr5[13] = 13;
        iArr5[42] = 42;
        sInputCodesComment = iArr5;
        int[] iArr7 = new int[256];
        System.arraycopy(iArr6, 128, iArr7, 128, 128);
        Arrays.fill(iArr7, 0, 32, -1);
        iArr7[32] = 1;
        iArr7[9] = 1;
        iArr7[10] = 10;
        iArr7[13] = 13;
        iArr7[47] = 47;
        iArr7[35] = 35;
        sInputCodesWS = iArr7;
        int[] iArr8 = new int[128];
        for (int i15 = 0; i15 < 32; i15++) {
            iArr8[i15] = -1;
        }
        iArr8[34] = 34;
        iArr8[92] = 92;
        iArr8[8] = 98;
        iArr8[9] = 116;
        iArr8[12] = 102;
        iArr8[10] = 110;
        iArr8[13] = 114;
        sOutputEscapes128 = iArr8;
        int[] iArr9 = new int[128];
        sHexValues = iArr9;
        Arrays.fill(iArr9, -1);
        for (int i16 = 0; i16 < 10; i16++) {
            sHexValues[i16 + 48] = i16;
        }
        for (int i17 = 0; i17 < 6; i17++) {
            int[] iArr10 = sHexValues;
            int i18 = i17 + 10;
            iArr10[i17 + 97] = i18;
            iArr10[i17 + 65] = i18;
        }
    }

    public static void appendQuoted(StringBuilder sb, String str) {
        int[] iArr = sOutputEscapes128;
        int length = iArr.length;
        int length2 = str.length();
        for (int i10 = 0; i10 < length2; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt >= length || iArr[cCharAt] == 0) {
                sb.append(cCharAt);
            } else {
                sb.append(b.STRING_ESC);
                int i11 = iArr[cCharAt];
                if (i11 < 0) {
                    sb.append(b.UNICODE_ESC);
                    sb.append('0');
                    sb.append('0');
                    char[] cArr = HEX_CHARS;
                    sb.append(cArr[cCharAt >> 4]);
                    sb.append(cArr[cCharAt & 15]);
                } else {
                    sb.append((char) i11);
                }
            }
        }
    }

    public static int charToHex(int i10) {
        if (i10 > 127) {
            return -1;
        }
        return sHexValues[i10];
    }

    public static byte[] copyHexBytes() {
        return (byte[]) HEX_BYTES.clone();
    }

    public static char[] copyHexChars() {
        return (char[]) HEX_CHARS.clone();
    }
}
