package okio;

import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class Utf8 {
    public static final int HIGH_SURROGATE_HEADER = 55232;
    public static final int LOG_SURROGATE_HEADER = 56320;
    public static final int MASK_2BYTES = 3968;
    public static final int MASK_3BYTES = -123008;
    public static final int MASK_4BYTES = 3678080;
    public static final byte REPLACEMENT_BYTE = 63;
    public static final char REPLACEMENT_CHARACTER = 65533;
    public static final int REPLACEMENT_CODE_POINT = 65533;

    public static final boolean isIsoControl(int i10) {
        return (i10 >= 0 && i10 < 32) || (127 <= i10 && i10 < 160);
    }

    public static final boolean isUtf8Continuation(byte b7) {
        return (b7 & 192) == 128;
    }

    public static final long size(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        return size$default(str, 0, 0, 3, null);
    }

    public static final int process2Utf8Bytes(@NotNull byte[] bArr, int i10, int i11, @NotNull e8.l<? super Integer, l0> yield) {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        kotlin.jvm.internal.t.j(yield, "yield");
        int i12 = i10 + 1;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i11 <= i12) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b7 = bArr[i10];
        byte b10 = bArr[i12];
        if ((b10 & 192) != 128) {
            yield.invoke(numValueOf);
            return 1;
        }
        int i13 = (b10 ^ 3968) ^ (b7 << 6);
        if (i13 < 128) {
            yield.invoke(numValueOf);
            return 2;
        }
        yield.invoke(Integer.valueOf(i13));
        return 2;
    }

    public static final int process3Utf8Bytes(@NotNull byte[] bArr, int i10, int i11, @NotNull e8.l<? super Integer, l0> yield) {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        kotlin.jvm.internal.t.j(yield, "yield");
        int i12 = i10 + 2;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i11 <= i12) {
            yield.invoke(numValueOf);
            int i13 = i10 + 1;
            return (i11 <= i13 || (bArr[i13] & 192) != 128) ? 1 : 2;
        }
        byte b7 = bArr[i10];
        byte b10 = bArr[i10 + 1];
        if ((b10 & 192) != 128) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b11 = bArr[i12];
        if ((b11 & 192) != 128) {
            yield.invoke(numValueOf);
            return 2;
        }
        int i14 = ((b11 ^ (-123008)) ^ (b10 << 6)) ^ (b7 << com.google.common.base.c.FF);
        if (i14 < 2048) {
            yield.invoke(numValueOf);
            return 3;
        }
        if (55296 > i14 || i14 >= 57344) {
            yield.invoke(Integer.valueOf(i14));
            return 3;
        }
        yield.invoke(numValueOf);
        return 3;
    }

    public static final int process4Utf8Bytes(@NotNull byte[] bArr, int i10, int i11, @NotNull e8.l<? super Integer, l0> yield) {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        kotlin.jvm.internal.t.j(yield, "yield");
        int i12 = i10 + 3;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i11 <= i12) {
            yield.invoke(numValueOf);
            int i13 = i10 + 1;
            if (i11 <= i13 || (bArr[i13] & 192) != 128) {
                return 1;
            }
            int i14 = i10 + 2;
            return (i11 <= i14 || (bArr[i14] & 192) != 128) ? 2 : 3;
        }
        byte b7 = bArr[i10];
        byte b10 = bArr[i10 + 1];
        if ((b10 & 192) != 128) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b11 = bArr[i10 + 2];
        if ((b11 & 192) != 128) {
            yield.invoke(numValueOf);
            return 2;
        }
        byte b12 = bArr[i12];
        if ((b12 & 192) != 128) {
            yield.invoke(numValueOf);
            return 3;
        }
        int i15 = (((b12 ^ 3678080) ^ (b11 << 6)) ^ (b10 << com.google.common.base.c.FF)) ^ (b7 << com.google.common.base.c.DC2);
        if (i15 > 1114111) {
            yield.invoke(numValueOf);
            return 4;
        }
        if (55296 <= i15 && i15 < 57344) {
            yield.invoke(numValueOf);
            return 4;
        }
        if (i15 < 65536) {
            yield.invoke(numValueOf);
            return 4;
        }
        yield.invoke(Integer.valueOf(i15));
        return 4;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    public static final void processUtf16Chars(@NotNull byte[] bArr, int i10, int i11, @NotNull e8.l<? super Character, l0> yield) {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        kotlin.jvm.internal.t.j(yield, "yield");
        while (i10 < i11) {
            byte b7 = bArr[i10];
            if (b7 >= 0) {
                yield.invoke(Character.valueOf((char) b7));
                i10++;
                while (i10 < i11) {
                    byte b10 = bArr[i10];
                    if (b10 < 0) {
                        break;
                    }
                    i10++;
                    yield.invoke(Character.valueOf((char) b10));
                }
            } else {
                int i12 = 2;
                if ((b7 >> 5) == -2) {
                    int i13 = i10 + 1;
                    if (i11 > i13) {
                        byte b11 = bArr[i13];
                        if ((b11 & 192) == 128) {
                            int i14 = (b7 << 6) ^ (b11 ^ 3968);
                            yield.invoke(Character.valueOf(i14 < 128 ? (char) REPLACEMENT_CODE_POINT : (char) i14));
                        }
                        i10 += i12;
                    }
                    yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                    i12 = 1;
                    i10 += i12;
                } else if ((b7 >> 4) == -2) {
                    int i15 = i10 + 2;
                    if (i11 <= i15) {
                        yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                        int i16 = i10 + 1;
                        if (i11 <= i16 || (bArr[i16] & 192) != 128) {
                            i12 = 1;
                        }
                    } else {
                        byte b12 = bArr[i10 + 1];
                        if ((b12 & 192) == 128) {
                            byte b13 = bArr[i15];
                            if ((b13 & 192) == 128) {
                                int i17 = (b7 << com.google.common.base.c.FF) ^ ((b13 ^ (-123008)) ^ (b12 << 6));
                                yield.invoke(Character.valueOf((i17 >= 2048 && (55296 > i17 || i17 >= 57344)) ? (char) i17 : (char) REPLACEMENT_CODE_POINT));
                                i12 = 3;
                            } else {
                                yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                            }
                        } else {
                            yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                            i12 = 1;
                        }
                    }
                    i10 += i12;
                } else if ((b7 >> 3) == -2) {
                    int i18 = i10 + 3;
                    if (i11 <= i18) {
                        yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                        int i19 = i10 + 1;
                        if (i11 <= i19 || (bArr[i19] & 192) != 128) {
                            i12 = 1;
                        } else {
                            int i20 = i10 + 2;
                            if (i11 > i20 && (bArr[i20] & 192) == 128) {
                                i12 = 3;
                            }
                        }
                    } else {
                        byte b14 = bArr[i10 + 1];
                        if ((b14 & 192) == 128) {
                            byte b15 = bArr[i10 + 2];
                            if ((b15 & 192) == 128) {
                                byte b16 = bArr[i18];
                                if ((b16 & 192) == 128) {
                                    int i21 = (b7 << com.google.common.base.c.DC2) ^ (((b16 ^ 3678080) ^ (b15 << 6)) ^ (b14 << com.google.common.base.c.FF));
                                    if (i21 <= 1114111 && ((55296 > i21 || i21 >= 57344) && i21 >= 65536 && i21 != 65533)) {
                                        yield.invoke(Character.valueOf((char) ((i21 >>> 10) + HIGH_SURROGATE_HEADER)));
                                        yield.invoke(Character.valueOf((char) ((i21 & 1023) + LOG_SURROGATE_HEADER)));
                                    } else {
                                        yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                    }
                                    i12 = 4;
                                } else {
                                    yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                    i12 = 3;
                                }
                            } else {
                                yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                            }
                        } else {
                            yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                            i12 = 1;
                        }
                    }
                    i10 += i12;
                } else {
                    yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                    i10++;
                }
            }
        }
    }

    public static final void processUtf8Bytes(@NotNull String str, int i10, int i11, @NotNull e8.l<? super Byte, l0> yield) {
        int i12;
        char cCharAt;
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(yield, "yield");
        while (i10 < i11) {
            char cCharAt2 = str.charAt(i10);
            if (kotlin.jvm.internal.t.l(cCharAt2, 128) < 0) {
                yield.invoke(Byte.valueOf((byte) cCharAt2));
                i10++;
                while (i10 < i11 && kotlin.jvm.internal.t.l(str.charAt(i10), 128) < 0) {
                    yield.invoke(Byte.valueOf((byte) str.charAt(i10)));
                    i10++;
                }
            } else {
                if (kotlin.jvm.internal.t.l(cCharAt2, 2048) < 0) {
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 >> 6) | 192)));
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 & '?') | 128)));
                } else if (55296 > cCharAt2 || cCharAt2 >= 57344) {
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 >> '\f') | 224)));
                    yield.invoke(Byte.valueOf((byte) (((cCharAt2 >> 6) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 & '?') | 128)));
                } else if (kotlin.jvm.internal.t.l(cCharAt2, 56319) > 0 || i11 <= (i12 = i10 + 1) || 56320 > (cCharAt = str.charAt(i12)) || cCharAt >= 57344) {
                    yield.invoke(Byte.valueOf(REPLACEMENT_BYTE));
                } else {
                    int iCharAt = ((cCharAt2 << '\n') + str.charAt(i12)) - 56613888;
                    yield.invoke(Byte.valueOf((byte) ((iCharAt >> 18) | 240)));
                    yield.invoke(Byte.valueOf((byte) (((iCharAt >> 12) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) (((iCharAt >> 6) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) ((iCharAt & 63) | 128)));
                    i10 += 2;
                }
                i10++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0040  */
    public static final void processUtf8CodePoints(@NotNull byte[] bArr, int i10, int i11, @NotNull e8.l<? super Integer, l0> yield) {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        kotlin.jvm.internal.t.j(yield, "yield");
        while (i10 < i11) {
            byte b7 = bArr[i10];
            if (b7 >= 0) {
                yield.invoke(Integer.valueOf(b7));
                i10++;
                while (i10 < i11) {
                    byte b10 = bArr[i10];
                    if (b10 < 0) {
                        break;
                    }
                    i10++;
                    yield.invoke(Integer.valueOf(b10));
                }
            } else {
                int i12 = 2;
                if ((b7 >> 5) == -2) {
                    int i13 = i10 + 1;
                    if (i11 > i13) {
                        byte b11 = bArr[i13];
                        if ((b11 & 192) == 128) {
                            int i14 = (b7 << 6) ^ (b11 ^ 3968);
                            yield.invoke(i14 < 128 ? Integer.valueOf(REPLACEMENT_CODE_POINT) : Integer.valueOf(i14));
                        }
                        i10 += i12;
                    }
                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    i12 = 1;
                    i10 += i12;
                } else if ((b7 >> 4) == -2) {
                    int i15 = i10 + 2;
                    if (i11 <= i15) {
                        yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        int i16 = i10 + 1;
                        if (i11 <= i16 || (bArr[i16] & 192) != 128) {
                            i12 = 1;
                        }
                    } else {
                        byte b12 = bArr[i10 + 1];
                        if ((b12 & 192) == 128) {
                            byte b13 = bArr[i15];
                            if ((b13 & 192) == 128) {
                                int i17 = (b7 << com.google.common.base.c.FF) ^ ((b13 ^ (-123008)) ^ (b12 << 6));
                                yield.invoke((i17 >= 2048 && (55296 > i17 || i17 >= 57344)) ? Integer.valueOf(i17) : Integer.valueOf(REPLACEMENT_CODE_POINT));
                                i12 = 3;
                            } else {
                                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            }
                        } else {
                            yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            i12 = 1;
                        }
                    }
                    i10 += i12;
                } else if ((b7 >> 3) == -2) {
                    int i18 = i10 + 3;
                    if (i11 <= i18) {
                        yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        int i19 = i10 + 1;
                        if (i11 <= i19 || (bArr[i19] & 192) != 128) {
                            i12 = 1;
                        } else {
                            int i20 = i10 + 2;
                            if (i11 > i20 && (bArr[i20] & 192) == 128) {
                                i12 = 3;
                            }
                        }
                    } else {
                        byte b14 = bArr[i10 + 1];
                        if ((b14 & 192) == 128) {
                            byte b15 = bArr[i10 + 2];
                            if ((b15 & 192) == 128) {
                                byte b16 = bArr[i18];
                                if ((b16 & 192) == 128) {
                                    int i21 = (b7 << com.google.common.base.c.DC2) ^ (((b16 ^ 3678080) ^ (b15 << 6)) ^ (b14 << com.google.common.base.c.FF));
                                    yield.invoke((i21 <= 1114111 && (55296 > i21 || i21 >= 57344) && i21 >= 65536) ? Integer.valueOf(i21) : Integer.valueOf(REPLACEMENT_CODE_POINT));
                                    i12 = 4;
                                } else {
                                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                                    i12 = 3;
                                }
                            } else {
                                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            }
                        } else {
                            yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            i12 = 1;
                        }
                    }
                    i10 += i12;
                } else {
                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    i10++;
                }
            }
        }
    }

    public static final long size(@NotNull String str, int i10) {
        kotlin.jvm.internal.t.j(str, "<this>");
        return size$default(str, i10, 0, 2, null);
    }

    public static /* synthetic */ long size$default(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return size(str, i10, i11);
    }

    public static final long size(@NotNull String str, int i10, int i11) {
        int i12;
        kotlin.jvm.internal.t.j(str, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
        }
        if (i11 >= i10) {
            if (i11 > str.length()) {
                throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + str.length()).toString());
            }
            long j6 = 0;
            while (i10 < i11) {
                char cCharAt = str.charAt(i10);
                if (cCharAt < 128) {
                    j6++;
                } else {
                    if (cCharAt < 2048) {
                        i12 = 2;
                    } else if (cCharAt < 55296 || cCharAt > 57343) {
                        i12 = 3;
                    } else {
                        int i13 = i10 + 1;
                        char cCharAt2 = i13 < i11 ? str.charAt(i13) : (char) 0;
                        if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                            j6++;
                            i10 = i13;
                        } else {
                            j6 += (long) 4;
                            i10 += 2;
                        }
                    }
                    j6 += (long) i12;
                }
                i10++;
            }
            return j6;
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
    }
}
