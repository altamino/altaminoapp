package com.google.zxing.oned;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class d extends o {
    private static final int CODE_CODE_A = 101;
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_A = 101;
    private static final int CODE_FNC_4_B = 100;
    private static final int CODE_START_A = 103;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final char ESCAPE_FNC_1 = 241;
    private static final char ESCAPE_FNC_2 = 242;
    private static final char ESCAPE_FNC_3 = 243;
    private static final char ESCAPE_FNC_4 = 244;

    private enum a {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    @Override // com.google.zxing.oned.o, com.google.zxing.g
    public g5.b a(String str, com.google.zxing.a aVar, int i10, int i11, Map<com.google.zxing.c, ?> map) throws com.google.zxing.h {
        if (aVar == com.google.zxing.a.CODE_128) {
            return super.a(str, aVar, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_128, but got ".concat(String.valueOf(aVar)));
    }

    private static int f(CharSequence charSequence, int i10, int i11) {
        a aVarG;
        a aVarG2;
        char cCharAt;
        a aVarG3 = g(charSequence, i10);
        a aVar = a.ONE_DIGIT;
        if (aVarG3 == aVar) {
            return 100;
        }
        a aVar2 = a.UNCODABLE;
        if (aVarG3 == aVar2) {
            if (i10 >= charSequence.length() || ((cCharAt = charSequence.charAt(i10)) >= ' ' && (i11 != 101 || cCharAt >= '`'))) {
                return 100;
            }
            return 101;
        }
        if (i11 == 99) {
            return 99;
        }
        if (i11 == 100) {
            a aVar3 = a.FNC_1;
            if (aVarG3 == aVar3 || (aVarG = g(charSequence, i10 + 2)) == aVar2 || aVarG == aVar) {
                return 100;
            }
            if (aVarG == aVar3) {
                if (g(charSequence, i10 + 3) != a.TWO_DIGITS) {
                    return 100;
                }
                return 99;
            }
            int i12 = i10 + 4;
            while (true) {
                aVarG2 = g(charSequence, i12);
                if (aVarG2 != a.TWO_DIGITS) {
                    break;
                }
                i12 += 2;
            }
            if (aVarG2 == a.ONE_DIGIT) {
                return 100;
            }
            return 99;
        }
        if (aVarG3 == a.FNC_1) {
            aVarG3 = g(charSequence, i10 + 1);
        }
        if (aVarG3 != a.TWO_DIGITS) {
            return 100;
        }
        return 99;
    }

    private static a g(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        if (i10 >= length) {
            return a.UNCODABLE;
        }
        char cCharAt = charSequence.charAt(i10);
        if (cCharAt == 241) {
            return a.FNC_1;
        }
        if (cCharAt >= '0' && cCharAt <= '9') {
            int i11 = i10 + 1;
            if (i11 >= length) {
                return a.ONE_DIGIT;
            }
            char cCharAt2 = charSequence.charAt(i11);
            if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                return a.TWO_DIGITS;
            }
            return a.ONE_DIGIT;
        }
        return a.UNCODABLE;
    }

    @Override // com.google.zxing.oned.o
    public boolean[] c(String str) {
        int length = str.length();
        if (length > 0 && length <= 80) {
            int iB = 0;
            for (int i10 = 0; i10 < length; i10++) {
                char cCharAt = str.charAt(i10);
                switch (cCharAt) {
                    case 241:
                    case 242:
                    case 243:
                    case 244:
                        break;
                    default:
                        if (cCharAt > 127) {
                            throw new IllegalArgumentException("Bad character in input: ".concat(String.valueOf(cCharAt)));
                        }
                        break;
                        break;
                }
            }
            ArrayList<int[]> arrayList = new ArrayList();
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 1;
            while (true) {
                int i15 = 103;
                if (i11 < length) {
                    int iF = f(str, i11, i13);
                    int iCharAt = 100;
                    if (iF == i13) {
                        switch (str.charAt(i11)) {
                            case 241:
                                iCharAt = 102;
                                break;
                            case 242:
                                iCharAt = 97;
                                break;
                            case 243:
                                iCharAt = 96;
                                break;
                            case 244:
                                if (i13 == 101) {
                                    iCharAt = 101;
                                }
                                break;
                            default:
                                if (i13 != 100) {
                                    if (i13 != 101) {
                                        iCharAt = Integer.parseInt(str.substring(i11, i11 + 2));
                                        i11++;
                                    } else {
                                        char cCharAt2 = str.charAt(i11);
                                        iCharAt = cCharAt2 - ' ';
                                        if (iCharAt < 0) {
                                            iCharAt = cCharAt2 + '@';
                                        }
                                    }
                                } else {
                                    iCharAt = str.charAt(i11) - ' ';
                                }
                                break;
                        }
                        i11++;
                    } else {
                        if (i13 == 0) {
                            if (iF != 100) {
                                if (iF != 101) {
                                    i15 = 105;
                                }
                            } else {
                                i15 = 104;
                            }
                        } else {
                            i15 = iF;
                        }
                        iCharAt = i15;
                        i13 = iF;
                    }
                    arrayList.add(c.CODE_PATTERNS[iCharAt]);
                    i12 += iCharAt * i14;
                    if (i11 != 0) {
                        i14++;
                    }
                } else {
                    int[][] iArr = c.CODE_PATTERNS;
                    arrayList.add(iArr[i12 % 103]);
                    arrayList.add(iArr[106]);
                    int i16 = 0;
                    for (int[] iArr2 : arrayList) {
                        for (int i17 : iArr2) {
                            i16 += i17;
                        }
                    }
                    boolean[] zArr = new boolean[i16];
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        iB += o.b(zArr, iB, (int[]) it.next(), true);
                    }
                    return zArr;
                }
            }
        } else {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got ".concat(String.valueOf(length)));
        }
    }
}
