package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.lang.ref.SoftReference;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes8.dex */
public final class JsonStringEncoder {
    private static final int INT_0 = 48;
    private static final int INT_BACKSLASH = 92;
    private static final int INT_U = 117;
    private static final int SURR1_FIRST = 55296;
    private static final int SURR1_LAST = 56319;
    private static final int SURR2_FIRST = 56320;
    private static final int SURR2_LAST = 57343;
    protected ByteArrayBuilder _byteBuilder;
    protected final char[] _quoteBuffer = {b.STRING_ESC, 0, '0', '0', 0, 0};
    protected TextBuffer _textBuffer;
    private static final char[] HEX_CHARS = CharTypes.copyHexChars();
    private static final byte[] HEX_BYTES = CharTypes.copyHexBytes();
    protected static final ThreadLocal<SoftReference<JsonStringEncoder>> _threadEncoder = new ThreadLocal<>();

    private int _appendNamedEscape(int i10, char[] cArr) {
        cArr[1] = (char) i10;
        return 2;
    }

    private int _appendNumericEscape(int i10, char[] cArr) {
        cArr[1] = b.UNICODE_ESC;
        char[] cArr2 = HEX_CHARS;
        cArr[4] = cArr2[i10 >> 4];
        cArr[5] = cArr2[i10 & 15];
        return 6;
    }

    protected static void _illegalSurrogate(int i10) {
        throw new IllegalArgumentException(UTF8Writer.illegalSurrogateDesc(i10));
    }

    public static JsonStringEncoder getInstance() {
        ThreadLocal<SoftReference<JsonStringEncoder>> threadLocal = _threadEncoder;
        SoftReference<JsonStringEncoder> softReference = threadLocal.get();
        JsonStringEncoder jsonStringEncoder = softReference == null ? null : softReference.get();
        if (jsonStringEncoder != null) {
            return jsonStringEncoder;
        }
        JsonStringEncoder jsonStringEncoder2 = new JsonStringEncoder();
        threadLocal.set(new SoftReference<>(jsonStringEncoder2));
        return jsonStringEncoder2;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:54:0x00dc A[SYNTHETIC] */
    public byte[] encodeAsUTF8(String str) {
        int i10;
        int i11;
        ByteArrayBuilder byteArrayBuilder = this._byteBuilder;
        if (byteArrayBuilder == null) {
            byteArrayBuilder = new ByteArrayBuilder((BufferRecycler) null);
            this._byteBuilder = byteArrayBuilder;
        }
        int length = str.length();
        byte[] bArrResetAndGetFirstSegment = byteArrayBuilder.resetAndGetFirstSegment();
        int length2 = bArrResetAndGetFirstSegment.length;
        int i12 = 0;
        int i13 = 0;
        loop0: while (i12 < length) {
            int i14 = i12 + 1;
            char cCharAt = str.charAt(i12);
            while (cCharAt <= 127) {
                if (i13 >= length2) {
                    bArrResetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                    length2 = bArrResetAndGetFirstSegment.length;
                    i13 = 0;
                }
                int i15 = i13 + 1;
                bArrResetAndGetFirstSegment[i13] = (byte) cCharAt;
                if (i14 >= length) {
                    i13 = i15;
                    break loop0;
                }
                char cCharAt2 = str.charAt(i14);
                i14++;
                cCharAt = cCharAt2;
                i13 = i15;
            }
            if (i13 >= length2) {
                bArrResetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                length2 = bArrResetAndGetFirstSegment.length;
                i13 = 0;
            }
            if (cCharAt < 2048) {
                i10 = i13 + 1;
                bArrResetAndGetFirstSegment[i13] = (byte) ((cCharAt >> 6) | 192);
            } else {
                if (cCharAt < SURR1_FIRST || cCharAt > SURR2_LAST) {
                    int i16 = i13 + 1;
                    bArrResetAndGetFirstSegment[i13] = (byte) ((cCharAt >> '\f') | 224);
                    if (i16 >= length2) {
                        bArrResetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                        length2 = bArrResetAndGetFirstSegment.length;
                        i16 = 0;
                    }
                    bArrResetAndGetFirstSegment[i16] = (byte) (((cCharAt >> 6) & 63) | 128);
                    i10 = i16 + 1;
                } else {
                    if (cCharAt > SURR1_LAST) {
                        _illegalSurrogate(cCharAt);
                    }
                    if (i14 >= length) {
                        _illegalSurrogate(cCharAt);
                    }
                    int i17 = i14 + 1;
                    int i_convertSurrogate = _convertSurrogate(cCharAt, str.charAt(i14));
                    if (i_convertSurrogate > 1114111) {
                        _illegalSurrogate(i_convertSurrogate);
                    }
                    int i18 = i13 + 1;
                    bArrResetAndGetFirstSegment[i13] = (byte) ((i_convertSurrogate >> 18) | 240);
                    if (i18 >= length2) {
                        bArrResetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                        length2 = bArrResetAndGetFirstSegment.length;
                        i18 = 0;
                    }
                    int i19 = i18 + 1;
                    bArrResetAndGetFirstSegment[i18] = (byte) (((i_convertSurrogate >> 12) & 63) | 128);
                    if (i19 >= length2) {
                        bArrResetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                        length2 = bArrResetAndGetFirstSegment.length;
                        i19 = 0;
                    }
                    int i20 = i19 + 1;
                    bArrResetAndGetFirstSegment[i19] = (byte) (((i_convertSurrogate >> 6) & 63) | 128);
                    i11 = i_convertSurrogate;
                    i12 = i17;
                    i10 = i20;
                }
                if (i10 >= length2) {
                    bArrResetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                    length2 = bArrResetAndGetFirstSegment.length;
                    i10 = 0;
                }
                bArrResetAndGetFirstSegment[i10] = (byte) ((i11 & 63) | 128);
                i13 = i10 + 1;
            }
            i11 = cCharAt;
            i12 = i14;
            if (i10 >= length2) {
                bArrResetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                length2 = bArrResetAndGetFirstSegment.length;
                i10 = 0;
            }
            bArrResetAndGetFirstSegment[i10] = (byte) ((i11 & 63) | 128);
            i13 = i10 + 1;
        }
        return this._byteBuilder.completeAndCoalesce(i13);
    }

    public char[] quoteAsString(String str) {
        TextBuffer textBuffer = this._textBuffer;
        if (textBuffer == null) {
            textBuffer = new TextBuffer(null);
            this._textBuffer = textBuffer;
        }
        char[] cArrEmptyAndGetCurrentSegment = textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = CharTypes.get7BitOutputEscapes();
        int length = iArr.length;
        int length2 = str.length();
        int i10 = 0;
        int i11 = 0;
        loop0: while (i10 < length2) {
            while (true) {
                char cCharAt = str.charAt(i10);
                if (cCharAt >= length || iArr[cCharAt] == 0) {
                    if (i11 >= cArrEmptyAndGetCurrentSegment.length) {
                        cArrEmptyAndGetCurrentSegment = textBuffer.finishCurrentSegment();
                        i11 = 0;
                    }
                    int i12 = i11 + 1;
                    cArrEmptyAndGetCurrentSegment[i11] = cCharAt;
                    i10++;
                    if (i10 >= length2) {
                        i11 = i12;
                        break loop0;
                    }
                    i11 = i12;
                }
            }
            int i13 = i10 + 1;
            char cCharAt2 = str.charAt(i10);
            int i14 = iArr[cCharAt2];
            int i_appendNumericEscape = i14 < 0 ? _appendNumericEscape(cCharAt2, this._quoteBuffer) : _appendNamedEscape(i14, this._quoteBuffer);
            int i15 = i11 + i_appendNumericEscape;
            if (i15 > cArrEmptyAndGetCurrentSegment.length) {
                int length3 = cArrEmptyAndGetCurrentSegment.length - i11;
                if (length3 > 0) {
                    System.arraycopy(this._quoteBuffer, 0, cArrEmptyAndGetCurrentSegment, i11, length3);
                }
                cArrEmptyAndGetCurrentSegment = textBuffer.finishCurrentSegment();
                int i16 = i_appendNumericEscape - length3;
                System.arraycopy(this._quoteBuffer, length3, cArrEmptyAndGetCurrentSegment, 0, i16);
                i11 = i16;
            } else {
                System.arraycopy(this._quoteBuffer, 0, cArrEmptyAndGetCurrentSegment, i11, i_appendNumericEscape);
                i11 = i15;
            }
            i10 = i13;
        }
        textBuffer.setCurrentLength(i11);
        return textBuffer.contentsAsArray();
    }

    public byte[] quoteAsUTF8(String str) {
        int i10;
        int i11;
        int i12;
        ByteArrayBuilder byteArrayBuilder = this._byteBuilder;
        if (byteArrayBuilder == null) {
            byteArrayBuilder = new ByteArrayBuilder((BufferRecycler) null);
            this._byteBuilder = byteArrayBuilder;
        }
        int length = str.length();
        byte[] bArrResetAndGetFirstSegment = byteArrayBuilder.resetAndGetFirstSegment();
        int i13 = 0;
        int i_appendByteEscape = 0;
        loop0: while (i13 < length) {
            int[] iArr = CharTypes.get7BitOutputEscapes();
            while (true) {
                char cCharAt = str.charAt(i13);
                if (cCharAt > 127 || iArr[cCharAt] != 0) {
                    break;
                }
                if (i_appendByteEscape >= bArrResetAndGetFirstSegment.length) {
                    bArrResetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                    i_appendByteEscape = 0;
                }
                int i14 = i_appendByteEscape + 1;
                bArrResetAndGetFirstSegment[i_appendByteEscape] = (byte) cCharAt;
                i13++;
                if (i13 >= length) {
                    i_appendByteEscape = i14;
                    break loop0;
                }
                i_appendByteEscape = i14;
            }
            if (i_appendByteEscape >= bArrResetAndGetFirstSegment.length) {
                bArrResetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                i_appendByteEscape = 0;
            }
            int i15 = i13 + 1;
            char cCharAt2 = str.charAt(i13);
            if (cCharAt2 <= 127) {
                i_appendByteEscape = _appendByteEscape(cCharAt2, iArr[cCharAt2], byteArrayBuilder, i_appendByteEscape);
                bArrResetAndGetFirstSegment = byteArrayBuilder.getCurrentSegment();
            } else {
                if (cCharAt2 <= 2047) {
                    i12 = i_appendByteEscape + 1;
                    bArrResetAndGetFirstSegment[i_appendByteEscape] = (byte) ((cCharAt2 >> 6) | 192);
                    i11 = (cCharAt2 & '?') | 128;
                } else {
                    if (cCharAt2 < SURR1_FIRST || cCharAt2 > SURR2_LAST) {
                        int i16 = i_appendByteEscape + 1;
                        bArrResetAndGetFirstSegment[i_appendByteEscape] = (byte) ((cCharAt2 >> '\f') | 224);
                        if (i16 >= bArrResetAndGetFirstSegment.length) {
                            bArrResetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                            i16 = 0;
                        }
                        bArrResetAndGetFirstSegment[i16] = (byte) (((cCharAt2 >> 6) & 63) | 128);
                        i10 = i16 + 1;
                        i11 = (cCharAt2 & '?') | 128;
                    } else {
                        if (cCharAt2 > SURR1_LAST) {
                            _illegalSurrogate(cCharAt2);
                        }
                        if (i15 >= length) {
                            _illegalSurrogate(cCharAt2);
                        }
                        int i17 = i13 + 2;
                        int i_convertSurrogate = _convertSurrogate(cCharAt2, str.charAt(i15));
                        if (i_convertSurrogate > 1114111) {
                            _illegalSurrogate(i_convertSurrogate);
                        }
                        int i18 = i_appendByteEscape + 1;
                        bArrResetAndGetFirstSegment[i_appendByteEscape] = (byte) ((i_convertSurrogate >> 18) | 240);
                        if (i18 >= bArrResetAndGetFirstSegment.length) {
                            bArrResetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                            i18 = 0;
                        }
                        int i19 = i18 + 1;
                        bArrResetAndGetFirstSegment[i18] = (byte) (((i_convertSurrogate >> 12) & 63) | 128);
                        if (i19 >= bArrResetAndGetFirstSegment.length) {
                            bArrResetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                            i19 = 0;
                        }
                        int i20 = i19 + 1;
                        bArrResetAndGetFirstSegment[i19] = (byte) (((i_convertSurrogate >> 6) & 63) | 128);
                        i11 = (i_convertSurrogate & 63) | 128;
                        i10 = i20;
                        i15 = i17;
                    }
                    i12 = i10;
                }
                if (i12 >= bArrResetAndGetFirstSegment.length) {
                    bArrResetAndGetFirstSegment = byteArrayBuilder.finishCurrentSegment();
                    i12 = 0;
                }
                bArrResetAndGetFirstSegment[i12] = (byte) i11;
                i_appendByteEscape = i12 + 1;
            }
            i13 = i15;
        }
        return this._byteBuilder.completeAndCoalesce(i_appendByteEscape);
    }

    private int _appendByteEscape(int i10, int i11, ByteArrayBuilder byteArrayBuilder, int i12) {
        byteArrayBuilder.setCurrentSegmentLength(i12);
        byteArrayBuilder.append(92);
        if (i11 < 0) {
            byteArrayBuilder.append(117);
            if (i10 > 255) {
                byte[] bArr = HEX_BYTES;
                byteArrayBuilder.append(bArr[i10 >> 12]);
                byteArrayBuilder.append(bArr[(i10 >> 8) & 15]);
                i10 &= 255;
            } else {
                byteArrayBuilder.append(48);
                byteArrayBuilder.append(48);
            }
            byte[] bArr2 = HEX_BYTES;
            byteArrayBuilder.append(bArr2[i10 >> 4]);
            byteArrayBuilder.append(bArr2[i10 & 15]);
        } else {
            byteArrayBuilder.append((byte) i11);
        }
        return byteArrayBuilder.getCurrentSegmentLength();
    }

    protected static int _convertSurrogate(int i10, int i11) {
        if (i11 >= 56320 && i11 <= SURR2_LAST) {
            return ((i10 - SURR1_FIRST) << 10) + 65536 + (i11 - 56320);
        }
        throw new IllegalArgumentException("Broken surrogate pair: first char 0x" + Integer.toHexString(i10) + ", second 0x" + Integer.toHexString(i11) + "; illegal combination");
    }
}
