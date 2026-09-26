package com.google.common.base;

/* JADX INFO: loaded from: classes10.dex */
public final class c {
    public static final byte ACK = 6;
    public static final byte BEL = 7;
    public static final byte BS = 8;
    public static final byte CAN = 24;
    private static final char CASE_MASK = ' ';
    public static final byte CR = 13;
    public static final byte DC1 = 17;
    public static final byte DC2 = 18;
    public static final byte DC3 = 19;
    public static final byte DC4 = 20;
    public static final byte DEL = 127;
    public static final byte DLE = 16;
    public static final byte EM = 25;
    public static final byte ENQ = 5;
    public static final byte EOT = 4;
    public static final byte ESC = 27;
    public static final byte ETB = 23;
    public static final byte ETX = 3;
    public static final byte FF = 12;
    public static final byte FS = 28;
    public static final byte GS = 29;
    public static final byte HT = 9;
    public static final byte LF = 10;
    public static final char MAX = 127;
    public static final char MIN = 0;
    public static final byte NAK = 21;
    public static final byte NL = 10;
    public static final byte NUL = 0;
    public static final byte RS = 30;
    public static final byte SI = 15;
    public static final byte SO = 14;
    public static final byte SOH = 1;
    public static final byte SP = 32;
    public static final byte SPACE = 32;
    public static final byte STX = 2;
    public static final byte SUB = 26;
    public static final byte SYN = 22;
    public static final byte US = 31;
    public static final byte VT = 11;
    public static final byte XOFF = 19;
    public static final byte XON = 17;

    private static int b(char c7) {
        return (char) ((c7 | CASE_MASK) - 97);
    }

    public static boolean c(char c7) {
        return c7 >= 'a' && c7 <= 'z';
    }

    public static boolean d(char c7) {
        return c7 >= 'A' && c7 <= 'Z';
    }

    public static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        int iB;
        int length = charSequence.length();
        if (charSequence == charSequence2) {
            return true;
        }
        if (length != charSequence2.length()) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = charSequence.charAt(i10);
            char cCharAt2 = charSequence2.charAt(i10);
            if (cCharAt != cCharAt2 && ((iB = b(cCharAt)) >= 26 || iB != b(cCharAt2))) {
                return false;
            }
        }
        return true;
    }

    public static String e(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            if (d(str.charAt(i10))) {
                char[] charArray = str.toCharArray();
                while (i10 < length) {
                    char c7 = charArray[i10];
                    if (d(c7)) {
                        charArray[i10] = (char) (c7 ^ CASE_MASK);
                    }
                    i10++;
                }
                return String.valueOf(charArray);
            }
            i10++;
        }
        return str;
    }

    public static String f(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            if (c(str.charAt(i10))) {
                char[] charArray = str.toCharArray();
                while (i10 < length) {
                    char c7 = charArray[i10];
                    if (c(c7)) {
                        charArray[i10] = (char) (c7 ^ CASE_MASK);
                    }
                    i10++;
                }
                return String.valueOf(charArray);
            }
            i10++;
        }
        return str;
    }
}
