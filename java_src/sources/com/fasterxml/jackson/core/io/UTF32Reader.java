package com.fasterxml.jackson.core.io;

import com.google.common.base.c;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class UTF32Reader extends BaseReader {
    protected final boolean _bigEndian;
    protected int _byteCount;
    protected int _charCount;
    protected final boolean _managedBuffers;
    protected char _surrogate;

    @Override // com.fasterxml.jackson.core.io.BaseReader, java.io.Reader
    public /* bridge */ /* synthetic */ int read() throws IOException {
        return super.read();
    }

    private boolean loadMore(int i10) throws IOException {
        int i11;
        this._byteCount += this._length - i10;
        if (i10 > 0) {
            if (this._ptr > 0) {
                for (int i12 = 0; i12 < i10; i12++) {
                    byte[] bArr = this._buffer;
                    bArr[i12] = bArr[this._ptr + i12];
                }
                this._ptr = 0;
            }
            this._length = i10;
        } else {
            this._ptr = 0;
            InputStream inputStream = this._in;
            int i13 = inputStream == null ? -1 : inputStream.read(this._buffer);
            if (i13 < 1) {
                this._length = 0;
                if (i13 < 0) {
                    if (this._managedBuffers) {
                        freeBuffers();
                    }
                    return false;
                }
                reportStrangeStream();
            }
            this._length = i13;
        }
        while (true) {
            int i14 = this._length;
            if (i14 >= 4) {
                return true;
            }
            InputStream inputStream2 = this._in;
            if (inputStream2 == null) {
                i11 = -1;
            } else {
                byte[] bArr2 = this._buffer;
                i11 = inputStream2.read(bArr2, i14, bArr2.length - i14);
            }
            if (i11 < 1) {
                if (i11 < 0) {
                    if (this._managedBuffers) {
                        freeBuffers();
                    }
                    reportUnexpectedEOF(this._length, 4);
                }
                reportStrangeStream();
            }
            this._length += i11;
        }
    }

    private void reportInvalid(int i10, int i11, String str) throws IOException {
        int i12 = (this._byteCount + this._ptr) - 1;
        throw new CharConversionException("Invalid UTF-32 character 0x" + Integer.toHexString(i10) + str + " at char #" + (this._charCount + i11) + ", byte #" + i12 + ")");
    }

    private void reportUnexpectedEOF(int i10, int i11) throws IOException {
        int i12 = this._byteCount + i10;
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i10 + ", needed " + i11 + ", at char #" + this._charCount + ", byte #" + i12 + ")");
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00cd A[LOOP:0: B:21:0x0031->B:40:0x00cd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:44:0x00be A[SYNTHETIC] */
    @Override // java.io.Reader
    public int read(char[] cArr, int i10, int i11) throws IOException {
        int i12;
        int i13;
        int i14;
        int i15;
        if (this._buffer == null) {
            return -1;
        }
        if (i11 < 1) {
            return i11;
        }
        if (i10 < 0 || i10 + i11 > cArr.length) {
            reportBounds(cArr, i10, i11);
        }
        int i16 = i11 + i10;
        char c7 = this._surrogate;
        if (c7 != 0) {
            i12 = i10 + 1;
            cArr[i10] = c7;
            this._surrogate = (char) 0;
        } else {
            int i17 = this._length - this._ptr;
            if (i17 < 4 && !loadMore(i17)) {
                return -1;
            }
            i12 = i10;
        }
        while (i12 < i16) {
            int i18 = this._ptr;
            if (this._bigEndian) {
                byte[] bArr = this._buffer;
                i13 = (bArr[i18] << c.CAN) | ((bArr[i18 + 1] & 255) << 16) | ((bArr[i18 + 2] & 255) << 8);
                i14 = bArr[i18 + 3] & 255;
            } else {
                byte[] bArr2 = this._buffer;
                i13 = (bArr2[i18] & 255) | ((bArr2[i18 + 1] & 255) << 8) | ((bArr2[i18 + 2] & 255) << 16);
                i14 = bArr2[i18 + 3] << c.CAN;
            }
            int i19 = i14 | i13;
            this._ptr = i18 + 4;
            if (i19 <= 65535) {
                i15 = i12 + 1;
                cArr[i12] = (char) i19;
                if (this._ptr >= this._length) {
                    i12 = i15;
                }
            } else {
                if (i19 > 1114111) {
                    reportInvalid(i19, i12 - i10, "(above " + Integer.toHexString(1114111) + ") ");
                }
                int i20 = i19 - 65536;
                i15 = i12 + 1;
                cArr[i12] = (char) ((i20 >> 10) + 55296);
                i19 = 56320 | (i20 & 1023);
                if (i15 >= i16) {
                    this._surrogate = (char) i19;
                } else {
                    i12 = i15;
                    i15 = i12 + 1;
                    cArr[i12] = (char) i19;
                    if (this._ptr >= this._length) {
                        i12 = i15;
                    }
                }
            }
            i12 = i15;
            break;
        }
        int i21 = i12 - i10;
        this._charCount += i21;
        return i21;
    }

    public UTF32Reader(IOContext iOContext, InputStream inputStream, byte[] bArr, int i10, int i11, boolean z6) {
        super(iOContext, inputStream, bArr, i10, i11);
        this._surrogate = (char) 0;
        this._charCount = 0;
        this._byteCount = 0;
        this._bigEndian = z6;
        this._managedBuffers = inputStream != null;
    }

    @Override // com.fasterxml.jackson.core.io.BaseReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() throws IOException {
        super.close();
    }
}
