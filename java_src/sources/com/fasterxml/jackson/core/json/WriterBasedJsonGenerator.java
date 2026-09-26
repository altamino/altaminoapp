package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberOutput;
import com.google.common.base.c;
import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes6.dex */
public final class WriterBasedJsonGenerator extends JsonGeneratorImpl {
    protected static final char[] HEX_CHARS = CharTypes.copyHexChars();
    protected static final int SHORT_WRITE = 32;
    protected SerializableString _currentEscape;
    protected char[] _entityBuffer;
    protected char[] _outputBuffer;
    protected int _outputEnd;
    protected int _outputHead;
    protected int _outputTail;
    protected final Writer _writer;

    private char[] _allocateEntityBuffer() {
        char[] cArr = {b.STRING_ESC, 0, b.STRING_ESC, b.UNICODE_ESC, '0', '0', 0, 0, b.STRING_ESC, b.UNICODE_ESC, 0, 0, 0, 0};
        this._entityBuffer = cArr;
        return cArr;
    }

    private void _prependOrWriteCharacterEscape(char c7, int i10) throws IOException {
        String value;
        int i11;
        if (i10 >= 0) {
            int i12 = this._outputTail;
            if (i12 >= 2) {
                int i13 = i12 - 2;
                this._outputHead = i13;
                char[] cArr = this._outputBuffer;
                cArr[i13] = b.STRING_ESC;
                cArr[i12 - 1] = (char) i10;
                return;
            }
            char[] cArr_allocateEntityBuffer = this._entityBuffer;
            if (cArr_allocateEntityBuffer == null) {
                cArr_allocateEntityBuffer = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            cArr_allocateEntityBuffer[1] = (char) i10;
            this._writer.write(cArr_allocateEntityBuffer, 0, 2);
            return;
        }
        if (i10 == -2) {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                value = this._characterEscapes.getEscapeSequence(c7).getValue();
            } else {
                value = serializableString.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            int i14 = this._outputTail;
            if (i14 < length) {
                this._outputHead = i14;
                this._writer.write(value);
                return;
            } else {
                int i15 = i14 - length;
                this._outputHead = i15;
                value.getChars(0, length, this._outputBuffer, i15);
                return;
            }
        }
        int i16 = this._outputTail;
        if (i16 < 6) {
            char[] cArr_allocateEntityBuffer2 = this._entityBuffer;
            if (cArr_allocateEntityBuffer2 == null) {
                cArr_allocateEntityBuffer2 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c7 <= 255) {
                char[] cArr2 = HEX_CHARS;
                cArr_allocateEntityBuffer2[6] = cArr2[c7 >> 4];
                cArr_allocateEntityBuffer2[7] = cArr2[c7 & 15];
                this._writer.write(cArr_allocateEntityBuffer2, 2, 6);
                return;
            }
            int i17 = c7 >> '\b';
            char[] cArr3 = HEX_CHARS;
            cArr_allocateEntityBuffer2[10] = cArr3[(i17 & 255) >> 4];
            cArr_allocateEntityBuffer2[11] = cArr3[i17 & 15];
            cArr_allocateEntityBuffer2[12] = cArr3[(c7 & 255) >> 4];
            cArr_allocateEntityBuffer2[13] = cArr3[c7 & 15];
            this._writer.write(cArr_allocateEntityBuffer2, 8, 6);
            return;
        }
        char[] cArr4 = this._outputBuffer;
        int i18 = i16 - 6;
        this._outputHead = i18;
        cArr4[i18] = b.STRING_ESC;
        cArr4[i16 - 5] = b.UNICODE_ESC;
        if (c7 > 255) {
            int i19 = c7 >> '\b';
            char[] cArr5 = HEX_CHARS;
            cArr4[i16 - 4] = cArr5[(i19 & 255) >> 4];
            i11 = i16 - 3;
            cArr4[i11] = cArr5[i19 & 15];
            c7 = (char) (c7 & 255);
        } else {
            cArr4[i16 - 4] = '0';
            i11 = i16 - 3;
            cArr4[i11] = '0';
        }
        char[] cArr6 = HEX_CHARS;
        cArr4[i11 + 1] = cArr6[c7 >> 4];
        cArr4[i11 + 2] = cArr6[c7 & 15];
    }

    private int _readMore(InputStream inputStream, byte[] bArr, int i10, int i11, int i12) throws IOException {
        int i13 = 0;
        while (i10 < i11) {
            bArr[i13] = bArr[i10];
            i13++;
            i10++;
        }
        int iMin = Math.min(i12, bArr.length);
        do {
            int i14 = iMin - i13;
            if (i14 == 0) {
                break;
            }
            int i15 = inputStream.read(bArr, i13, i14);
            if (i15 < 0) {
                return i13;
            }
            i13 += i15;
        } while (i13 < 3);
        return i13;
    }

    private void _writeString(String str) throws IOException {
        int length = str.length();
        int i10 = this._outputEnd;
        if (length > i10) {
            _writeLongString(str);
            return;
        }
        if (this._outputTail + length > i10) {
            _flushBuffer();
        }
        str.getChars(0, length, this._outputBuffer, this._outputTail);
        if (this._characterEscapes != null) {
            _writeStringCustom(length);
            return;
        }
        int i11 = this._maximumNonEscapedChar;
        if (i11 != 0) {
            _writeStringASCII(length, i11);
        } else {
            _writeString2(length);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    /* JADX WARN: Code duplicated, block: B:22:0x002a A[SYNTHETIC] */
    private void _writeStringASCII(int i10, int i11) throws IOException {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = this._outputTail + i10;
        int[] iArr = this._outputEscapes;
        int iMin = Math.min(iArr.length, i11 + 1);
        while (this._outputTail < i16) {
            do {
                char[] cArr = this._outputBuffer;
                int i17 = this._outputTail;
                char c7 = cArr[i17];
                if (c7 < iMin) {
                    i12 = iArr[c7];
                    if (i12 != 0) {
                        i13 = this._outputHead;
                        i14 = i17 - i13;
                        if (i14 > 0) {
                            this._writer.write(cArr, i13, i14);
                        }
                        this._outputTail++;
                        _prependOrWriteCharacterEscape(c7, i12);
                    }
                    i15 = i17 + 1;
                    this._outputTail = i15;
                } else {
                    if (c7 > i11) {
                        i12 = -1;
                        i13 = this._outputHead;
                        i14 = i17 - i13;
                        if (i14 > 0) {
                            this._writer.write(cArr, i13, i14);
                        }
                        this._outputTail++;
                        _prependOrWriteCharacterEscape(c7, i12);
                    }
                    i15 = i17 + 1;
                    this._outputTail = i15;
                }
            } while (i15 < i16);
            return;
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0042 A[SYNTHETIC] */
    private void _writeStringCustom(int i10) throws IOException {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15 = this._outputTail + i10;
        int[] iArr = this._outputEscapes;
        int i16 = this._maximumNonEscapedChar;
        if (i16 < 1) {
            i16 = 65535;
        }
        int iMin = Math.min(iArr.length, i16 + 1);
        CharacterEscapes characterEscapes = this._characterEscapes;
        while (this._outputTail < i15) {
            do {
                char c7 = this._outputBuffer[this._outputTail];
                if (c7 < iMin) {
                    i11 = iArr[c7];
                    if (i11 != 0) {
                        int i17 = this._outputTail;
                        i12 = this._outputHead;
                        i13 = i17 - i12;
                        if (i13 > 0) {
                            this._writer.write(this._outputBuffer, i12, i13);
                        }
                        this._outputTail++;
                        _prependOrWriteCharacterEscape(c7, i11);
                    }
                    i14 = this._outputTail + 1;
                    this._outputTail = i14;
                } else {
                    if (c7 > i16) {
                        i11 = -1;
                    } else {
                        SerializableString escapeSequence = characterEscapes.getEscapeSequence(c7);
                        this._currentEscape = escapeSequence;
                        if (escapeSequence != null) {
                            i11 = -2;
                        }
                        i14 = this._outputTail + 1;
                        this._outputTail = i14;
                    }
                    int i18 = this._outputTail;
                    i12 = this._outputHead;
                    i13 = i18 - i12;
                    if (i13 > 0) {
                        this._writer.write(this._outputBuffer, i12, i13);
                    }
                    this._outputTail++;
                    _prependOrWriteCharacterEscape(c7, i11);
                }
            } while (i14 < i15);
            return;
        }
    }

    protected void _writeBinary(Base64Variant base64Variant, byte[] bArr, int i10, int i11) throws IOException {
        int iEncodeBase64Chunk;
        int i12 = i11 - 3;
        int i13 = this._outputEnd - 6;
        int maxLineLength = base64Variant.getMaxLineLength();
        loop0: while (true) {
            int i14 = maxLineLength >> 2;
            do {
                if (i10 > i12) {
                    break loop0;
                }
                if (this._outputTail > i13) {
                    _flushBuffer();
                }
                int i15 = i10 + 2;
                int i16 = ((bArr[i10 + 1] & 255) | (bArr[i10] << 8)) << 8;
                i10 += 3;
                iEncodeBase64Chunk = base64Variant.encodeBase64Chunk(i16 | (bArr[i15] & 255), this._outputBuffer, this._outputTail);
                this._outputTail = iEncodeBase64Chunk;
                i14--;
            } while (i14 > 0);
            char[] cArr = this._outputBuffer;
            cArr[iEncodeBase64Chunk] = b.STRING_ESC;
            this._outputTail = iEncodeBase64Chunk + 2;
            cArr[iEncodeBase64Chunk + 1] = 'n';
            maxLineLength = base64Variant.getMaxLineLength();
        }
        int i17 = i11 - i10;
        if (i17 > 0) {
            if (this._outputTail > i13) {
                _flushBuffer();
            }
            int i18 = i10 + 1;
            int i19 = bArr[i10] << c.DLE;
            if (i17 == 2) {
                i19 |= (bArr[i18] & 255) << 8;
            }
            this._outputTail = base64Variant.encodeBase64Partial(i19, i17, this._outputBuffer, this._outputTail);
        }
    }

    protected void _writeFieldName(String str, boolean z6) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(str, z6);
            return;
        }
        if (this._outputTail + 1 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z6) {
            char[] cArr = this._outputBuffer;
            int i10 = this._outputTail;
            this._outputTail = i10 + 1;
            cArr[i10] = b.COMMA;
        }
        if (!isEnabled(JsonGenerator.Feature.QUOTE_FIELD_NAMES)) {
            _writeString(str);
            return;
        }
        char[] cArr2 = this._outputBuffer;
        int i11 = this._outputTail;
        this._outputTail = i11 + 1;
        cArr2[i11] = b.STRING;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i12 = this._outputTail;
        this._outputTail = i12 + 1;
        cArr3[i12] = b.STRING;
    }

    protected void _writePPFieldName(String str, boolean z6) throws IOException {
        if (z6) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (!isEnabled(JsonGenerator.Feature.QUOTE_FIELD_NAMES)) {
            _writeString(str);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        cArr[i10] = b.STRING;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i11 = this._outputTail;
        this._outputTail = i11 + 1;
        cArr2[i11] = b.STRING;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object getOutputTarget() {
        return this._writer;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i10, int i11) throws IOException {
        _verifyValueWrite("write binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i12 = this._outputTail;
        this._outputTail = i12 + 1;
        cArr[i12] = b.STRING;
        _writeBinary(base64Variant, bArr, i10, i11 + i10);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i13 = this._outputTail;
        this._outputTail = i13 + 1;
        cArr2[i13] = b.STRING;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(String str) throws IOException {
        int iWriteFieldName = this._writeContext.writeFieldName(str);
        if (iWriteFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        _writeFieldName(str, iWriteFieldName == 1);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(short s) throws IOException {
        _verifyValueWrite("write number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedShort(s);
            return;
        }
        if (this._outputTail + 6 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputInt(s, this._outputBuffer, this._outputTail);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str) throws IOException {
        int length = str.length();
        int i10 = this._outputEnd - this._outputTail;
        if (i10 == 0) {
            _flushBuffer();
            i10 = this._outputEnd - this._outputTail;
        }
        if (i10 < length) {
            writeRawLong(str);
        } else {
            str.getChars(0, length, this._outputBuffer, this._outputTail);
            this._outputTail += length;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(String str) throws IOException {
        _verifyValueWrite("write text value");
        if (str == null) {
            _writeNull();
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        cArr[i10] = b.STRING;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i11 = this._outputTail;
        this._outputTail = i11 + 1;
        cArr2[i11] = b.STRING;
    }

    private void _appendCharacterEscape(char c7, int i10) throws IOException {
        String value;
        int i11;
        if (i10 >= 0) {
            if (this._outputTail + 2 > this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i12 = this._outputTail;
            cArr[i12] = b.STRING_ESC;
            this._outputTail = i12 + 2;
            cArr[i12 + 1] = (char) i10;
            return;
        }
        if (i10 == -2) {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                value = this._characterEscapes.getEscapeSequence(c7).getValue();
            } else {
                value = serializableString.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            if (this._outputTail + length > this._outputEnd) {
                _flushBuffer();
                if (length > this._outputEnd) {
                    this._writer.write(value);
                    return;
                }
            }
            value.getChars(0, length, this._outputBuffer, this._outputTail);
            this._outputTail += length;
            return;
        }
        if (this._outputTail + 2 > this._outputEnd) {
            _flushBuffer();
        }
        int i13 = this._outputTail;
        char[] cArr2 = this._outputBuffer;
        cArr2[i13] = b.STRING_ESC;
        int i14 = i13 + 2;
        cArr2[i13 + 1] = b.UNICODE_ESC;
        if (c7 > 255) {
            int i15 = c7 >> '\b';
            int i16 = i13 + 3;
            char[] cArr3 = HEX_CHARS;
            cArr2[i14] = cArr3[(i15 & 255) >> 4];
            i11 = i13 + 4;
            cArr2[i16] = cArr3[i15 & 15];
            c7 = (char) (c7 & 255);
        } else {
            int i17 = i13 + 3;
            cArr2[i14] = '0';
            i11 = i13 + 4;
            cArr2[i17] = '0';
        }
        char[] cArr4 = HEX_CHARS;
        cArr2[i11] = cArr4[c7 >> 4];
        cArr2[i11 + 1] = cArr4[c7 & 15];
        this._outputTail = i11 + 2;
    }

    private void _writeNull() throws IOException {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        int i10 = this._outputTail;
        char[] cArr = this._outputBuffer;
        cArr[i10] = 'n';
        cArr[i10 + 1] = b.UNICODE_ESC;
        cArr[i10 + 2] = 'l';
        cArr[i10 + 3] = 'l';
        this._outputTail = i10 + 4;
    }

    private void _writeQuotedInt(int i10) throws IOException {
        if (this._outputTail + 13 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i11 = this._outputTail;
        int i12 = i11 + 1;
        this._outputTail = i12;
        cArr[i11] = b.STRING;
        int iOutputInt = NumberOutput.outputInt(i10, cArr, i12);
        char[] cArr2 = this._outputBuffer;
        this._outputTail = iOutputInt + 1;
        cArr2[iOutputInt] = b.STRING;
    }

    private void _writeQuotedLong(long j6) throws IOException {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i10 = this._outputTail;
        int i11 = i10 + 1;
        this._outputTail = i11;
        cArr[i10] = b.STRING;
        int iOutputLong = NumberOutput.outputLong(j6, cArr, i11);
        char[] cArr2 = this._outputBuffer;
        this._outputTail = iOutputLong + 1;
        cArr2[iOutputLong] = b.STRING;
    }

    private void _writeQuotedRaw(Object obj) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        cArr[i10] = b.STRING;
        writeRaw(obj.toString());
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i11 = this._outputTail;
        this._outputTail = i11 + 1;
        cArr2[i11] = b.STRING;
    }

    private void _writeQuotedShort(short s) throws IOException {
        if (this._outputTail + 8 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i10 = this._outputTail;
        int i11 = i10 + 1;
        this._outputTail = i11;
        cArr[i10] = b.STRING;
        int iOutputInt = NumberOutput.outputInt(s, cArr, i11);
        char[] cArr2 = this._outputBuffer;
        this._outputTail = iOutputInt + 1;
        cArr2[iOutputInt] = b.STRING;
    }

    private void _writeSegment(int i10) throws IOException {
        char[] cArr;
        char c7;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        int i11 = 0;
        int i_prependOrWriteCharacterEscape = 0;
        while (i11 < i10) {
            do {
                cArr = this._outputBuffer;
                c7 = cArr[i11];
                if (c7 < length && iArr[c7] != 0) {
                    break;
                } else {
                    i11++;
                }
            } while (i11 < i10);
            int i12 = i11 - i_prependOrWriteCharacterEscape;
            if (i12 > 0) {
                this._writer.write(cArr, i_prependOrWriteCharacterEscape, i12);
                if (i11 >= i10) {
                    return;
                }
            }
            i11++;
            i_prependOrWriteCharacterEscape = _prependOrWriteCharacterEscape(this._outputBuffer, i11, i10, c7, iArr[c7]);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001d A[PHI: r4
      0x001d: PHI (r4v5 int) = (r4v2 int), (r4v6 int) binds: [B:9:0x0019, B:7:0x0016] A[DONT_GENERATE, DONT_INLINE]] */
    private void _writeSegmentASCII(int i10, int i11) throws IOException {
        char[] cArr;
        char c7;
        int[] iArr = this._outputEscapes;
        int iMin = Math.min(iArr.length, i11 + 1);
        int i12 = 0;
        int i_prependOrWriteCharacterEscape = 0;
        int i13 = 0;
        while (i12 < i10) {
            do {
                cArr = this._outputBuffer;
                c7 = cArr[i12];
                if (c7 < iMin) {
                    i13 = iArr[c7];
                    if (i13 != 0) {
                        break;
                    } else {
                        i12++;
                    }
                } else {
                    if (c7 > i11) {
                        i13 = -1;
                        break;
                    }
                    i12++;
                }
            } while (i12 < i10);
            int i14 = i12 - i_prependOrWriteCharacterEscape;
            if (i14 > 0) {
                this._writer.write(cArr, i_prependOrWriteCharacterEscape, i14);
                if (i12 >= i10) {
                    return;
                }
            }
            i12++;
            i_prependOrWriteCharacterEscape = _prependOrWriteCharacterEscape(this._outputBuffer, i12, i10, c7, i13);
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0031 A[PHI: r6
      0x0031: PHI (r6v6 int) = (r6v2 int), (r6v7 int) binds: [B:15:0x002d, B:10:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
    private void _writeSegmentCustom(int i10) throws IOException {
        char c7;
        int[] iArr = this._outputEscapes;
        int i11 = this._maximumNonEscapedChar;
        if (i11 < 1) {
            i11 = 65535;
        }
        int iMin = Math.min(iArr.length, i11 + 1);
        CharacterEscapes characterEscapes = this._characterEscapes;
        int i12 = 0;
        int i_prependOrWriteCharacterEscape = 0;
        int i13 = 0;
        while (i12 < i10) {
            do {
                c7 = this._outputBuffer[i12];
                if (c7 < iMin) {
                    i13 = iArr[c7];
                    if (i13 != 0) {
                        break;
                    } else {
                        i12++;
                    }
                } else {
                    if (c7 > i11) {
                        i13 = -1;
                        break;
                    }
                    SerializableString escapeSequence = characterEscapes.getEscapeSequence(c7);
                    this._currentEscape = escapeSequence;
                    if (escapeSequence != null) {
                        i13 = -2;
                        break;
                    }
                    i12++;
                }
            } while (i12 < i10);
            int i14 = i12 - i_prependOrWriteCharacterEscape;
            if (i14 > 0) {
                this._writer.write(this._outputBuffer, i_prependOrWriteCharacterEscape, i14);
                if (i12 >= i10) {
                    return;
                }
            }
            i12++;
            i_prependOrWriteCharacterEscape = _prependOrWriteCharacterEscape(this._outputBuffer, i12, i10, c7, i13);
        }
    }

    private void _writeString2(int i10) throws IOException {
        int i11;
        int i12 = this._outputTail + i10;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        while (this._outputTail < i12) {
            do {
                char[] cArr = this._outputBuffer;
                int i13 = this._outputTail;
                char c7 = cArr[i13];
                if (c7 >= length || iArr[c7] == 0) {
                    i11 = i13 + 1;
                    this._outputTail = i11;
                } else {
                    int i14 = this._outputHead;
                    int i15 = i13 - i14;
                    if (i15 > 0) {
                        this._writer.write(cArr, i14, i15);
                    }
                    char[] cArr2 = this._outputBuffer;
                    int i16 = this._outputTail;
                    this._outputTail = i16 + 1;
                    char c10 = cArr2[i16];
                    _prependOrWriteCharacterEscape(c10, iArr[c10]);
                }
            } while (i11 < i12);
            return;
        }
    }

    private void writeRawLong(String str) throws IOException {
        int i10 = this._outputEnd;
        int i11 = this._outputTail;
        int i12 = i10 - i11;
        str.getChars(0, i12, this._outputBuffer, i11);
        this._outputTail += i12;
        _flushBuffer();
        int length = str.length() - i12;
        while (true) {
            int i13 = this._outputEnd;
            if (length <= i13) {
                str.getChars(i12, i12 + length, this._outputBuffer, 0);
                this._outputHead = 0;
                this._outputTail = length;
                return;
            } else {
                int i14 = i12 + i13;
                str.getChars(i12, i14, this._outputBuffer, 0);
                this._outputHead = 0;
                this._outputTail = i13;
                _flushBuffer();
                length -= i13;
                i12 = i14;
            }
        }
    }

    protected void _flushBuffer() throws IOException {
        int i10 = this._outputTail;
        int i11 = this._outputHead;
        int i12 = i10 - i11;
        if (i12 > 0) {
            this._outputHead = 0;
            this._outputTail = 0;
            this._writer.write(this._outputBuffer, i11, i12);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    protected void _releaseBuffers() {
        char[] cArr = this._outputBuffer;
        if (cArr != null) {
            this._outputBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
        }
    }

    protected void _verifyPrettyValueWrite(String str, int i10) throws IOException {
        if (i10 == 0) {
            if (this._writeContext.inArray()) {
                this._cfgPrettyPrinter.beforeArrayValues(this);
                return;
            } else {
                if (this._writeContext.inObject()) {
                    this._cfgPrettyPrinter.beforeObjectEntries(this);
                    return;
                }
                return;
            }
        }
        if (i10 == 1) {
            this._cfgPrettyPrinter.writeArrayValueSeparator(this);
            return;
        }
        if (i10 == 2) {
            this._cfgPrettyPrinter.writeObjectFieldValueSeparator(this);
        } else if (i10 != 3) {
            _throwInternal();
        } else {
            this._cfgPrettyPrinter.writeRootValueSeparator(this);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    protected void _verifyValueWrite(String str) throws IOException {
        char c7;
        SerializableString serializableString;
        int iWriteValue = this._writeContext.writeValue();
        if (iWriteValue == 5) {
            _reportError("Can not " + str + ", expecting field name");
        }
        if (this._cfgPrettyPrinter != null) {
            _verifyPrettyValueWrite(str, iWriteValue);
            return;
        }
        if (iWriteValue == 1) {
            c7 = b.COMMA;
        } else {
            if (iWriteValue != 2) {
                if (iWriteValue == 3 && (serializableString = this._rootValueSeparator) != null) {
                    writeRaw(serializableString.getValue());
                    return;
                }
                return;
            }
            c7 = b.COLON;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i10 = this._outputTail;
        cArr[i10] = c7;
        this._outputTail = i10 + 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeEndArray() throws IOException {
        if (!this._writeContext.inArray()) {
            _reportError("Current context not an ARRAY but " + this._writeContext.getTypeDesc());
        }
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeEndArray(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i10 = this._outputTail;
            this._outputTail = i10 + 1;
            cArr[i10] = b.END_LIST;
        }
        this._writeContext = this._writeContext.getParent();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeEndObject() throws IOException {
        if (!this._writeContext.inObject()) {
            _reportError("Current context not an object but " + this._writeContext.getTypeDesc());
        }
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeEndObject(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i10 = this._outputTail;
            this._outputTail = i10 + 1;
            cArr[i10] = b.END_OBJ;
        }
        this._writeContext = this._writeContext.getParent();
    }

    public WriterBasedJsonGenerator(IOContext iOContext, int i10, ObjectCodec objectCodec, Writer writer) {
        super(iOContext, i10, objectCodec);
        this._outputHead = 0;
        this._outputTail = 0;
        this._writer = writer;
        char[] cArrAllocConcatBuffer = iOContext.allocConcatBuffer();
        this._outputBuffer = cArrAllocConcatBuffer;
        this._outputEnd = cArrAllocConcatBuffer.length;
    }

    private void _writeLongString(String str) throws IOException {
        _flushBuffer();
        int length = str.length();
        int i10 = 0;
        while (true) {
            int i11 = this._outputEnd;
            if (i10 + i11 > length) {
                i11 = length - i10;
            }
            int i12 = i10 + i11;
            str.getChars(i10, i12, this._outputBuffer, 0);
            if (this._characterEscapes != null) {
                _writeSegmentCustom(i11);
            } else {
                int i13 = this._maximumNonEscapedChar;
                if (i13 != 0) {
                    _writeSegmentASCII(i11, i13);
                } else {
                    _writeSegment(i11);
                }
            }
            if (i12 >= length) {
                return;
            } else {
                i10 = i12;
            }
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this._outputBuffer != null && isEnabled(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                JsonWriteContext outputContext = getOutputContext();
                if (outputContext.inArray()) {
                    writeEndArray();
                } else if (!outputContext.inObject()) {
                    break;
                } else {
                    writeEndObject();
                }
            }
        }
        _flushBuffer();
        if (this._writer != null) {
            if (!this._ioContext.isResourceManaged() && !isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                if (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
                    this._writer.flush();
                }
            } else {
                this._writer.close();
            }
        }
        _releaseBuffers();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        _flushBuffer();
        if (this._writer != null && isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
            this._writer.flush();
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBoolean(boolean z6) throws IOException {
        int i10;
        _verifyValueWrite("write boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        int i11 = this._outputTail;
        char[] cArr = this._outputBuffer;
        if (z6) {
            cArr[i11] = 't';
            cArr[i11 + 1] = 'r';
            cArr[i11 + 2] = b.UNICODE_ESC;
            i10 = i11 + 3;
            cArr[i10] = 'e';
        } else {
            cArr[i11] = 'f';
            cArr[i11 + 1] = 'a';
            cArr[i11 + 2] = 'l';
            cArr[i11 + 3] = 's';
            i10 = i11 + 4;
            cArr[i10] = 'e';
        }
        this._outputTail = i10 + 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNull() throws IOException {
        _verifyValueWrite("write null value");
        _writeNull();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawUTF8String(byte[] bArr, int i10, int i11) throws IOException {
        _reportUnsupportedOperation();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray() throws IOException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext();
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        cArr[i10] = b.BEGIN_LIST;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartObject() throws IOException {
        _verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext();
        PrettyPrinter prettyPrinter = this._cfgPrettyPrinter;
        if (prettyPrinter != null) {
            prettyPrinter.writeStartObject(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        cArr[i10] = b.BEGIN_OBJ;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeUTF8String(byte[] bArr, int i10, int i11) throws IOException {
        _reportUnsupportedOperation();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(SerializableString serializableString) throws IOException {
        int iWriteFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (iWriteFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        _writeFieldName(serializableString, iWriteFieldName == 1);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(int i10) throws IOException {
        _verifyValueWrite("write number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedInt(i10);
            return;
        }
        if (this._outputTail + 11 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputInt(i10, this._outputBuffer, this._outputTail);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str, int i10, int i11) throws IOException {
        int i12 = this._outputEnd - this._outputTail;
        if (i12 < i11) {
            _flushBuffer();
            i12 = this._outputEnd - this._outputTail;
        }
        if (i12 >= i11) {
            str.getChars(i10, i10 + i11, this._outputBuffer, this._outputTail);
            this._outputTail += i11;
        } else {
            writeRawLong(str.substring(i10, i11 + i10));
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001b A[PHI: r2
      0x001b: PHI (r2v6 int) = (r2v3 int), (r2v7 int) binds: [B:10:0x0017, B:8:0x0014] A[DONT_GENERATE, DONT_INLINE]] */
    private void _writeStringASCII(char[] cArr, int i10, int i11, int i12) throws IOException {
        char c7;
        int i13 = i11 + i10;
        int[] iArr = this._outputEscapes;
        int iMin = Math.min(iArr.length, i12 + 1);
        int i14 = 0;
        while (i10 < i13) {
            int i15 = i10;
            do {
                c7 = cArr[i15];
                if (c7 < iMin) {
                    i14 = iArr[c7];
                    if (i14 != 0) {
                        break;
                    } else {
                        i15++;
                    }
                } else {
                    if (c7 > i12) {
                        i14 = -1;
                        break;
                    }
                    i15++;
                }
            } while (i15 < i13);
            int i16 = i15 - i10;
            if (i16 < 32) {
                if (this._outputTail + i16 > this._outputEnd) {
                    _flushBuffer();
                }
                if (i16 > 0) {
                    System.arraycopy(cArr, i10, this._outputBuffer, this._outputTail, i16);
                    this._outputTail += i16;
                }
            } else {
                _flushBuffer();
                this._writer.write(cArr, i10, i16);
            }
            if (i15 >= i13) {
                return;
            }
            i10 = i15 + 1;
            _appendCharacterEscape(c7, i14);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002f A[PHI: r4
      0x002f: PHI (r4v6 int) = (r4v2 int), (r4v7 int) binds: [B:16:0x002b, B:11:0x001e] A[DONT_GENERATE, DONT_INLINE]] */
    private void _writeStringCustom(char[] cArr, int i10, int i11) throws IOException {
        char c7;
        int i12 = i11 + i10;
        int[] iArr = this._outputEscapes;
        int i13 = this._maximumNonEscapedChar;
        if (i13 < 1) {
            i13 = 65535;
        }
        int iMin = Math.min(iArr.length, i13 + 1);
        CharacterEscapes characterEscapes = this._characterEscapes;
        int i14 = 0;
        while (i10 < i12) {
            int i15 = i10;
            do {
                c7 = cArr[i15];
                if (c7 < iMin) {
                    i14 = iArr[c7];
                    if (i14 != 0) {
                        break;
                    } else {
                        i15++;
                    }
                } else {
                    if (c7 > i13) {
                        i14 = -1;
                        break;
                    }
                    SerializableString escapeSequence = characterEscapes.getEscapeSequence(c7);
                    this._currentEscape = escapeSequence;
                    if (escapeSequence != null) {
                        i14 = -2;
                        break;
                    }
                    i15++;
                }
            } while (i15 < i12);
            int i16 = i15 - i10;
            if (i16 < 32) {
                if (this._outputTail + i16 > this._outputEnd) {
                    _flushBuffer();
                }
                if (i16 > 0) {
                    System.arraycopy(cArr, i10, this._outputBuffer, this._outputTail, i16);
                    this._outputTail += i16;
                }
            } else {
                _flushBuffer();
                this._writer.write(cArr, i10, i16);
            }
            if (i15 >= i12) {
                return;
            }
            i10 = i15 + 1;
            _appendCharacterEscape(c7, i14);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i10) throws IOException {
        _verifyValueWrite("write binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i11 = this._outputTail;
        this._outputTail = i11 + 1;
        cArr[i11] = b.STRING;
        byte[] bArrAllocBase64Buffer = this._ioContext.allocBase64Buffer();
        try {
            if (i10 < 0) {
                i10 = _writeBinary(base64Variant, inputStream, bArrAllocBase64Buffer);
            } else {
                int i_writeBinary = _writeBinary(base64Variant, inputStream, bArrAllocBase64Buffer, i10);
                if (i_writeBinary > 0) {
                    _reportError("Too few bytes available: missing " + i_writeBinary + " bytes (out of " + i10 + ")");
                }
            }
            this._ioContext.releaseBase64Buffer(bArrAllocBase64Buffer);
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr2 = this._outputBuffer;
            int i12 = this._outputTail;
            this._outputTail = i12 + 1;
            cArr2[i12] = b.STRING;
            return i10;
        } catch (Throwable th) {
            this._ioContext.releaseBase64Buffer(bArrAllocBase64Buffer);
            throw th;
        }
    }

    private void _writeString(char[] cArr, int i10, int i11) throws IOException {
        if (this._characterEscapes != null) {
            _writeStringCustom(cArr, i10, i11);
            return;
        }
        int i12 = this._maximumNonEscapedChar;
        if (i12 != 0) {
            _writeStringASCII(cArr, i10, i11, i12);
            return;
        }
        int i13 = i11 + i10;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        while (i10 < i13) {
            int i14 = i10;
            do {
                char c7 = cArr[i14];
                if (c7 < length && iArr[c7] != 0) {
                    break;
                } else {
                    i14++;
                }
            } while (i14 < i13);
            int i15 = i14 - i10;
            if (i15 < 32) {
                if (this._outputTail + i15 > this._outputEnd) {
                    _flushBuffer();
                }
                if (i15 > 0) {
                    System.arraycopy(cArr, i10, this._outputBuffer, this._outputTail, i15);
                    this._outputTail += i15;
                }
            } else {
                _flushBuffer();
                this._writer.write(cArr, i10, i15);
            }
            if (i14 >= i13) {
                return;
            }
            i10 = i14 + 1;
            char c10 = cArr[i14];
            _appendCharacterEscape(c10, iArr[c10]);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(SerializableString serializableString) throws IOException {
        writeRaw(serializableString.getValue());
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(char[] cArr, int i10, int i11) throws IOException {
        _verifyValueWrite("write text value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i12 = this._outputTail;
        this._outputTail = i12 + 1;
        cArr2[i12] = b.STRING;
        _writeString(cArr, i10, i11);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i13 = this._outputTail;
        this._outputTail = i13 + 1;
        cArr3[i13] = b.STRING;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(long j6) throws IOException {
        _verifyValueWrite("write number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedLong(j6);
            return;
        }
        if (this._outputTail + 21 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputLong(j6, this._outputBuffer, this._outputTail);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char[] cArr, int i10, int i11) throws IOException {
        if (i11 < 32) {
            if (i11 > this._outputEnd - this._outputTail) {
                _flushBuffer();
            }
            System.arraycopy(cArr, i10, this._outputBuffer, this._outputTail, i11);
            this._outputTail += i11;
            return;
        }
        _flushBuffer();
        this._writer.write(cArr, i10, i11);
    }

    public void _writeFieldName(SerializableString serializableString, boolean z6) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(serializableString, z6);
            return;
        }
        if (this._outputTail + 1 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z6) {
            char[] cArr = this._outputBuffer;
            int i10 = this._outputTail;
            this._outputTail = i10 + 1;
            cArr[i10] = b.COMMA;
        }
        char[] cArrAsQuotedChars = serializableString.asQuotedChars();
        if (!isEnabled(JsonGenerator.Feature.QUOTE_FIELD_NAMES)) {
            writeRaw(cArrAsQuotedChars, 0, cArrAsQuotedChars.length);
            return;
        }
        char[] cArr2 = this._outputBuffer;
        int i11 = this._outputTail;
        int i12 = i11 + 1;
        this._outputTail = i12;
        cArr2[i11] = b.STRING;
        int length = cArrAsQuotedChars.length;
        if (i12 + length + 1 >= this._outputEnd) {
            writeRaw(cArrAsQuotedChars, 0, length);
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr3 = this._outputBuffer;
            int i13 = this._outputTail;
            this._outputTail = i13 + 1;
            cArr3[i13] = b.STRING;
            return;
        }
        System.arraycopy(cArrAsQuotedChars, 0, cArr2, i12, length);
        int i14 = this._outputTail + length;
        char[] cArr4 = this._outputBuffer;
        this._outputTail = i14 + 1;
        cArr4[i14] = b.STRING;
    }

    protected void _writePPFieldName(SerializableString serializableString, boolean z6) throws IOException {
        if (z6) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        char[] cArrAsQuotedChars = serializableString.asQuotedChars();
        if (isEnabled(JsonGenerator.Feature.QUOTE_FIELD_NAMES)) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i10 = this._outputTail;
            this._outputTail = i10 + 1;
            cArr[i10] = b.STRING;
            writeRaw(cArrAsQuotedChars, 0, cArrAsQuotedChars.length);
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr2 = this._outputBuffer;
            int i11 = this._outputTail;
            this._outputTail = i11 + 1;
            cArr2[i11] = b.STRING;
            return;
        }
        writeRaw(cArrAsQuotedChars, 0, cArrAsQuotedChars.length);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigInteger bigInteger) throws IOException {
        _verifyValueWrite("write number");
        if (bigInteger == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(bigInteger);
        } else {
            writeRaw(bigInteger.toString());
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char c7) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        cArr[i10] = c7;
    }

    protected int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr, int i10) throws IOException {
        int i_readMore;
        int i11 = this._outputEnd - 6;
        int i12 = 2;
        int i13 = -3;
        int i14 = i10;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i15 = 0;
        int i_readMore2 = 0;
        while (i14 > 2) {
            if (i15 > i13) {
                i_readMore2 = _readMore(inputStream, bArr, i15, i_readMore2, i14);
                if (i_readMore2 < 3) {
                    i15 = 0;
                    break;
                }
                i13 = i_readMore2 - 3;
                i15 = 0;
            }
            if (this._outputTail > i11) {
                _flushBuffer();
            }
            int i16 = i15 + 2;
            int i17 = ((bArr[i15 + 1] & 255) | (bArr[i15] << 8)) << 8;
            i15 += 3;
            i14 -= 3;
            int iEncodeBase64Chunk = base64Variant.encodeBase64Chunk(i17 | (bArr[i16] & 255), this._outputBuffer, this._outputTail);
            this._outputTail = iEncodeBase64Chunk;
            maxLineLength--;
            if (maxLineLength <= 0) {
                char[] cArr = this._outputBuffer;
                cArr[iEncodeBase64Chunk] = b.STRING_ESC;
                this._outputTail = iEncodeBase64Chunk + 2;
                cArr[iEncodeBase64Chunk + 1] = 'n';
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
        }
        if (i14 <= 0 || (i_readMore = _readMore(inputStream, bArr, i15, i_readMore2, i14)) <= 0) {
            return i14;
        }
        if (this._outputTail > i11) {
            _flushBuffer();
        }
        int i18 = bArr[0] << c.DLE;
        if (1 < i_readMore) {
            i18 |= (bArr[1] & 255) << 8;
        } else {
            i12 = 1;
        }
        this._outputTail = base64Variant.encodeBase64Partial(i18, i12, this._outputBuffer, this._outputTail);
        return i14 - i12;
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeString(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write text value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        cArr[i10] = b.STRING;
        char[] cArrAsQuotedChars = serializableString.asQuotedChars();
        int length = cArrAsQuotedChars.length;
        if (length < 32) {
            if (length > this._outputEnd - this._outputTail) {
                _flushBuffer();
            }
            System.arraycopy(cArrAsQuotedChars, 0, this._outputBuffer, this._outputTail, length);
            this._outputTail += length;
        } else {
            _flushBuffer();
            this._writer.write(cArrAsQuotedChars, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i11 = this._outputTail;
        this._outputTail = i11 + 1;
        cArr2[i11] = b.STRING;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(double d) throws IOException {
        if (!this._cfgNumbersAsStrings && ((!Double.isNaN(d) && !Double.isInfinite(d)) || !isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
            _verifyValueWrite("write number");
            writeRaw(String.valueOf(d));
        } else {
            writeString(String.valueOf(d));
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(float f) throws IOException {
        if (!this._cfgNumbersAsStrings && ((!Float.isNaN(f) && !Float.isInfinite(f)) || !isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
            _verifyValueWrite("write number");
            writeRaw(String.valueOf(f));
        } else {
            writeString(String.valueOf(f));
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigDecimal bigDecimal) throws IOException {
        _verifyValueWrite("write number");
        if (bigDecimal == null) {
            _writeNull();
            return;
        }
        if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(bigDecimal);
        } else if (isEnabled(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN)) {
            writeRaw(bigDecimal.toPlainString());
        } else {
            writeRaw(bigDecimal.toString());
        }
    }

    private int _prependOrWriteCharacterEscape(char[] cArr, int i10, int i11, char c7, int i12) throws IOException {
        String value;
        int i13;
        if (i12 >= 0) {
            if (i10 > 1 && i10 < i11) {
                int i14 = i10 - 2;
                cArr[i14] = b.STRING_ESC;
                cArr[i10 - 1] = (char) i12;
                return i14;
            }
            char[] cArr_allocateEntityBuffer = this._entityBuffer;
            if (cArr_allocateEntityBuffer == null) {
                cArr_allocateEntityBuffer = _allocateEntityBuffer();
            }
            cArr_allocateEntityBuffer[1] = (char) i12;
            this._writer.write(cArr_allocateEntityBuffer, 0, 2);
            return i10;
        }
        if (i12 == -2) {
            SerializableString serializableString = this._currentEscape;
            if (serializableString == null) {
                value = this._characterEscapes.getEscapeSequence(c7).getValue();
            } else {
                value = serializableString.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            if (i10 >= length && i10 < i11) {
                int i15 = i10 - length;
                value.getChars(0, length, cArr, i15);
                return i15;
            }
            this._writer.write(value);
            return i10;
        }
        if (i10 <= 5 || i10 >= i11) {
            char[] cArr_allocateEntityBuffer2 = this._entityBuffer;
            if (cArr_allocateEntityBuffer2 == null) {
                cArr_allocateEntityBuffer2 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c7 > 255) {
                int i16 = c7 >> '\b';
                char[] cArr2 = HEX_CHARS;
                cArr_allocateEntityBuffer2[10] = cArr2[(i16 & 255) >> 4];
                cArr_allocateEntityBuffer2[11] = cArr2[i16 & 15];
                cArr_allocateEntityBuffer2[12] = cArr2[(c7 & 255) >> 4];
                cArr_allocateEntityBuffer2[13] = cArr2[c7 & 15];
                this._writer.write(cArr_allocateEntityBuffer2, 8, 6);
                return i10;
            }
            char[] cArr3 = HEX_CHARS;
            cArr_allocateEntityBuffer2[6] = cArr3[c7 >> 4];
            cArr_allocateEntityBuffer2[7] = cArr3[c7 & 15];
            this._writer.write(cArr_allocateEntityBuffer2, 2, 6);
            return i10;
        }
        cArr[i10 - 6] = b.STRING_ESC;
        int i17 = i10 - 4;
        cArr[i10 - 5] = b.UNICODE_ESC;
        if (c7 > 255) {
            int i18 = c7 >> '\b';
            int i19 = i10 - 3;
            char[] cArr4 = HEX_CHARS;
            cArr[i17] = cArr4[(i18 & 255) >> 4];
            i13 = i10 - 2;
            cArr[i19] = cArr4[i18 & 15];
            c7 = (char) (c7 & 255);
        } else {
            int i20 = i10 - 3;
            cArr[i17] = '0';
            i13 = i10 - 2;
            cArr[i20] = '0';
        }
        char[] cArr5 = HEX_CHARS;
        cArr[i13] = cArr5[c7 >> 4];
        cArr[i13 + 1] = cArr5[c7 & 15];
        return i13 - 4;
    }

    protected int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr) throws IOException {
        int i10 = this._outputEnd - 6;
        int i11 = 2;
        int i12 = -3;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i13 = 0;
        int i_readMore = 0;
        int i14 = 0;
        while (true) {
            if (i13 > i12) {
                i_readMore = _readMore(inputStream, bArr, i13, i_readMore, bArr.length);
                if (i_readMore < 3) {
                    break;
                }
                i12 = i_readMore - 3;
                i13 = 0;
            }
            if (this._outputTail > i10) {
                _flushBuffer();
            }
            int i15 = i13 + 2;
            int i16 = ((bArr[i13 + 1] & 255) | (bArr[i13] << 8)) << 8;
            i13 += 3;
            i14 += 3;
            int iEncodeBase64Chunk = base64Variant.encodeBase64Chunk(i16 | (bArr[i15] & 255), this._outputBuffer, this._outputTail);
            this._outputTail = iEncodeBase64Chunk;
            maxLineLength--;
            if (maxLineLength <= 0) {
                char[] cArr = this._outputBuffer;
                cArr[iEncodeBase64Chunk] = b.STRING_ESC;
                this._outputTail = iEncodeBase64Chunk + 2;
                cArr[iEncodeBase64Chunk + 1] = 'n';
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
        }
        if (i_readMore <= 0) {
            return i14;
        }
        if (this._outputTail > i10) {
            _flushBuffer();
        }
        int i17 = bArr[0] << c.DLE;
        if (1 < i_readMore) {
            i17 |= (bArr[1] & 255) << 8;
        } else {
            i11 = 1;
        }
        int i18 = i14 + i11;
        this._outputTail = base64Variant.encodeBase64Partial(i17, i11, this._outputBuffer, this._outputTail);
        return i18;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(String str) throws IOException {
        _verifyValueWrite("write number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(str);
        } else {
            writeRaw(str);
        }
    }
}
