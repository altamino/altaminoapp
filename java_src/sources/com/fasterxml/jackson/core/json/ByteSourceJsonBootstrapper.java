package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.format.InputAccessor;
import com.fasterxml.jackson.core.format.MatchStrength;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.MergedStream;
import com.fasterxml.jackson.core.io.UTF32Reader;
import com.fasterxml.jackson.core.sym.BytesToNameCanonicalizer;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.google.common.base.c;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

/* JADX INFO: loaded from: classes8.dex */
public final class ByteSourceJsonBootstrapper {
    static final byte UTF8_BOM_1 = -17;
    static final byte UTF8_BOM_2 = -69;
    static final byte UTF8_BOM_3 = -65;
    protected boolean _bigEndian;
    private final boolean _bufferRecyclable;
    protected int _bytesPerChar;
    protected final IOContext _context;
    protected final InputStream _in;
    protected final byte[] _inputBuffer;
    private int _inputEnd;
    protected int _inputProcessed;
    private int _inputPtr;

    public ByteSourceJsonBootstrapper(IOContext iOContext, InputStream inputStream) {
        this._bigEndian = true;
        this._bytesPerChar = 0;
        this._context = iOContext;
        this._in = inputStream;
        this._inputBuffer = iOContext.allocReadIOBuffer();
        this._inputPtr = 0;
        this._inputEnd = 0;
        this._inputProcessed = 0;
        this._bufferRecyclable = true;
    }

    private boolean checkUTF16(int i10) {
        if ((65280 & i10) == 0) {
            this._bigEndian = true;
        } else {
            if ((i10 & 255) != 0) {
                return false;
            }
            this._bigEndian = false;
        }
        this._bytesPerChar = 2;
        return true;
    }

    private static int skipSpace(InputAccessor inputAccessor) throws IOException {
        if (inputAccessor.hasMoreBytes()) {
            return skipSpace(inputAccessor, inputAccessor.nextByte());
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x005d  */
    /* JADX WARN: Code duplicated, block: B:19:0x0061 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0063 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0065  */
    /* JADX WARN: Code duplicated, block: B:23:0x0069  */
    /* JADX WARN: Code duplicated, block: B:24:0x006c  */
    /* JADX WARN: Code duplicated, block: B:25:0x006f  */
    /* JADX WARN: Code duplicated, block: B:27:0x0077  */
    /* JADX WARN: Code duplicated, block: B:29:0x007b  */
    /* JADX WARN: Code duplicated, block: B:30:0x007e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0081  */
    public JsonEncoding detectEncoding() throws IOException {
        int i10;
        JsonEncoding jsonEncoding;
        if (ensureLoaded(4)) {
            byte[] bArr = this._inputBuffer;
            int i11 = this._inputPtr;
            int i12 = (bArr[i11 + 3] & 255) | (bArr[i11] << c.CAN) | ((bArr[i11 + 1] & 255) << 16) | ((bArr[i11 + 2] & 255) << 8);
            if (handleBOM(i12) || checkUTF32(i12) || checkUTF16(i12 >>> 16)) {
                i10 = this._bytesPerChar;
                if (i10 != 1) {
                    jsonEncoding = JsonEncoding.UTF8;
                } else if (i10 != 2) {
                    if (i10 == 4) {
                        throw new RuntimeException("Internal error");
                    }
                    if (this._bigEndian) {
                        jsonEncoding = JsonEncoding.UTF32_BE;
                    } else {
                        jsonEncoding = JsonEncoding.UTF32_LE;
                    }
                } else if (this._bigEndian) {
                    jsonEncoding = JsonEncoding.UTF16_BE;
                } else {
                    jsonEncoding = JsonEncoding.UTF16_LE;
                }
            } else {
                jsonEncoding = JsonEncoding.UTF8;
            }
        } else {
            if (ensureLoaded(2)) {
                byte[] bArr2 = this._inputBuffer;
                int i13 = this._inputPtr;
                if (checkUTF16((bArr2[i13 + 1] & 255) | ((bArr2[i13] & 255) << 8))) {
                    i10 = this._bytesPerChar;
                    if (i10 != 1) {
                        jsonEncoding = JsonEncoding.UTF8;
                    } else if (i10 != 2) {
                        if (i10 == 4) {
                            throw new RuntimeException("Internal error");
                        }
                        if (this._bigEndian) {
                            jsonEncoding = JsonEncoding.UTF32_BE;
                        } else {
                            jsonEncoding = JsonEncoding.UTF32_LE;
                        }
                    } else if (this._bigEndian) {
                        jsonEncoding = JsonEncoding.UTF16_BE;
                    } else {
                        jsonEncoding = JsonEncoding.UTF16_LE;
                    }
                }
            }
            jsonEncoding = JsonEncoding.UTF8;
        }
        this._context.setEncoding(jsonEncoding);
        return jsonEncoding;
    }

    private boolean checkUTF32(int i10) throws IOException {
        if ((i10 >> 8) == 0) {
            this._bigEndian = true;
        } else if ((16777215 & i10) == 0) {
            this._bigEndian = false;
        } else if (((-16711681) & i10) == 0) {
            reportWeirdUCS4("3412");
        } else {
            if ((i10 & (-65281)) != 0) {
                return false;
            }
            reportWeirdUCS4("2143");
        }
        this._bytesPerChar = 4;
        return true;
    }

    private boolean handleBOM(int i10) throws IOException {
        if (i10 == -16842752) {
            reportWeirdUCS4("3412");
        } else {
            if (i10 == -131072) {
                this._inputPtr += 4;
                this._bytesPerChar = 4;
                this._bigEndian = false;
                return true;
            }
            if (i10 == 65279) {
                this._bigEndian = true;
                this._inputPtr += 4;
                this._bytesPerChar = 4;
                return true;
            }
            if (i10 == 65534) {
                reportWeirdUCS4("2143");
                reportWeirdUCS4("3412");
            }
        }
        int i11 = i10 >>> 16;
        if (i11 == 65279) {
            this._inputPtr += 2;
            this._bytesPerChar = 2;
            this._bigEndian = true;
            return true;
        }
        if (i11 == 65534) {
            this._inputPtr += 2;
            this._bytesPerChar = 2;
            this._bigEndian = false;
            return true;
        }
        if ((i10 >>> 8) != 15711167) {
            return false;
        }
        this._inputPtr += 3;
        this._bytesPerChar = 1;
        this._bigEndian = true;
        return true;
    }

    private void reportWeirdUCS4(String str) throws IOException {
        throw new CharConversionException("Unsupported UCS-4 endianness (" + str + ") detected");
    }

    public JsonParser constructParser(int i10, ObjectCodec objectCodec, BytesToNameCanonicalizer bytesToNameCanonicalizer, CharsToNameCanonicalizer charsToNameCanonicalizer, boolean z6, boolean z10) throws IOException {
        if (detectEncoding() != JsonEncoding.UTF8 || !z6) {
            return new ReaderBasedJsonParser(this._context, i10, constructReader(), objectCodec, charsToNameCanonicalizer.makeChild(z6, z10));
        }
        return new UTF8StreamJsonParser(this._context, i10, this._in, objectCodec, bytesToNameCanonicalizer.makeChild(z6, z10), this._inputBuffer, this._inputPtr, this._inputEnd, this._bufferRecyclable);
    }

    public Reader constructReader() throws IOException {
        JsonEncoding encoding = this._context.getEncoding();
        int iBits = encoding.bits();
        if (iBits != 8 && iBits != 16) {
            if (iBits != 32) {
                throw new RuntimeException("Internal error");
            }
            IOContext iOContext = this._context;
            return new UTF32Reader(iOContext, this._in, this._inputBuffer, this._inputPtr, this._inputEnd, iOContext.getEncoding().isBigEndian());
        }
        InputStream mergedStream = this._in;
        if (mergedStream == null) {
            mergedStream = new ByteArrayInputStream(this._inputBuffer, this._inputPtr, this._inputEnd);
        } else if (this._inputPtr < this._inputEnd) {
            mergedStream = new MergedStream(this._context, mergedStream, this._inputBuffer, this._inputPtr, this._inputEnd);
        }
        return new InputStreamReader(mergedStream, encoding.getJavaName());
    }

    protected boolean ensureLoaded(int i10) throws IOException {
        int i11;
        int i12 = this._inputEnd - this._inputPtr;
        while (i12 < i10) {
            InputStream inputStream = this._in;
            if (inputStream == null) {
                i11 = -1;
            } else {
                byte[] bArr = this._inputBuffer;
                int i13 = this._inputEnd;
                i11 = inputStream.read(bArr, i13, bArr.length - i13);
            }
            if (i11 < 1) {
                return false;
            }
            this._inputEnd += i11;
            i12 += i11;
        }
        return true;
    }

    public ByteSourceJsonBootstrapper(IOContext iOContext, byte[] bArr, int i10, int i11) {
        this._bigEndian = true;
        this._bytesPerChar = 0;
        this._context = iOContext;
        this._in = null;
        this._inputBuffer = bArr;
        this._inputPtr = i10;
        this._inputEnd = i11 + i10;
        this._inputProcessed = -i10;
        this._bufferRecyclable = false;
    }

    public static MatchStrength hasJSONFormat(InputAccessor inputAccessor) throws IOException {
        if (!inputAccessor.hasMoreBytes()) {
            return MatchStrength.INCONCLUSIVE;
        }
        byte bNextByte = inputAccessor.nextByte();
        if (bNextByte == -17) {
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != -69) {
                return MatchStrength.NO_MATCH;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != -65) {
                return MatchStrength.NO_MATCH;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            bNextByte = inputAccessor.nextByte();
        }
        int iSkipSpace = skipSpace(inputAccessor, bNextByte);
        if (iSkipSpace < 0) {
            return MatchStrength.INCONCLUSIVE;
        }
        if (iSkipSpace == 123) {
            int iSkipSpace2 = skipSpace(inputAccessor);
            if (iSkipSpace2 < 0) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (iSkipSpace2 != 34 && iSkipSpace2 != 125) {
                return MatchStrength.NO_MATCH;
            }
            return MatchStrength.SOLID_MATCH;
        }
        if (iSkipSpace == 91) {
            int iSkipSpace3 = skipSpace(inputAccessor);
            if (iSkipSpace3 < 0) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (iSkipSpace3 != 93 && iSkipSpace3 != 91) {
                return MatchStrength.SOLID_MATCH;
            }
            return MatchStrength.SOLID_MATCH;
        }
        MatchStrength matchStrength = MatchStrength.WEAK_MATCH;
        if (iSkipSpace == 34) {
            return matchStrength;
        }
        if (iSkipSpace <= 57 && iSkipSpace >= 48) {
            return matchStrength;
        }
        if (iSkipSpace == 45) {
            int iSkipSpace4 = skipSpace(inputAccessor);
            if (iSkipSpace4 < 0) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (iSkipSpace4 > 57 || iSkipSpace4 < 48) {
                return MatchStrength.NO_MATCH;
            }
            return matchStrength;
        }
        if (iSkipSpace == 110) {
            return tryMatch(inputAccessor, "ull", matchStrength);
        }
        if (iSkipSpace == 116) {
            return tryMatch(inputAccessor, "rue", matchStrength);
        }
        if (iSkipSpace == 102) {
            return tryMatch(inputAccessor, "alse", matchStrength);
        }
        return MatchStrength.NO_MATCH;
    }

    private static int skipSpace(InputAccessor inputAccessor, byte b7) throws IOException {
        while (true) {
            int i10 = b7 & 255;
            if (i10 != 32 && i10 != 13 && i10 != 10 && i10 != 9) {
                return i10;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return -1;
            }
            b7 = inputAccessor.nextByte();
        }
    }

    private static MatchStrength tryMatch(InputAccessor inputAccessor, String str, MatchStrength matchStrength) throws IOException {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != str.charAt(i10)) {
                return MatchStrength.NO_MATCH;
            }
        }
        return matchStrength;
    }
}
