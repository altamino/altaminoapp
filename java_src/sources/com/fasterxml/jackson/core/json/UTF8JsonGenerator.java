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
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes8.dex */
public class UTF8JsonGenerator extends JsonGeneratorImpl {
    private static final byte BYTE_0 = 48;
    private static final byte BYTE_BACKSLASH = 92;
    private static final byte BYTE_COLON = 58;
    private static final byte BYTE_COMMA = 44;
    private static final byte BYTE_LBRACKET = 91;
    private static final byte BYTE_LCURLY = 123;
    private static final byte BYTE_QUOTE = 34;
    private static final byte BYTE_RBRACKET = 93;
    private static final byte BYTE_RCURLY = 125;
    private static final int MAX_BYTES_TO_BUFFER = 512;
    protected static final int SURR1_FIRST = 55296;
    protected static final int SURR1_LAST = 56319;
    protected static final int SURR2_FIRST = 56320;
    protected static final int SURR2_LAST = 57343;
    protected boolean _bufferRecyclable;
    protected final boolean _cfgQuoteNames;
    protected char[] _charBuffer;
    protected final int _charBufferLength;
    protected byte[] _entityBuffer;
    protected byte[] _outputBuffer;
    protected final int _outputEnd;
    protected final int _outputMaxContiguous;
    protected final OutputStream _outputStream;
    protected int _outputTail;
    static final byte[] HEX_CHARS = CharTypes.copyHexBytes();
    private static final byte BYTE_u = 117;
    private static final byte[] NULL_BYTES = {110, BYTE_u, 108, 108};
    private static final byte[] TRUE_BYTES = {116, 114, BYTE_u, 101};
    private static final byte[] FALSE_BYTES = {102, 97, 108, 115, 101};

    public UTF8JsonGenerator(IOContext iOContext, int i10, ObjectCodec objectCodec, OutputStream outputStream) {
        super(iOContext, i10, objectCodec);
        this._outputTail = 0;
        this._outputStream = outputStream;
        this._bufferRecyclable = true;
        byte[] bArrAllocWriteEncodingBuffer = iOContext.allocWriteEncodingBuffer();
        this._outputBuffer = bArrAllocWriteEncodingBuffer;
        int length = bArrAllocWriteEncodingBuffer.length;
        this._outputEnd = length;
        this._outputMaxContiguous = length >> 3;
        char[] cArrAllocConcatBuffer = iOContext.allocConcatBuffer();
        this._charBuffer = cArrAllocConcatBuffer;
        this._charBufferLength = cArrAllocConcatBuffer.length;
        if (isEnabled(JsonGenerator.Feature.ESCAPE_NON_ASCII)) {
            setHighestNonEscapedChar(127);
        }
        this._cfgQuoteNames = JsonGenerator.Feature.QUOTE_FIELD_NAMES.enabledIn(i10);
    }

    private final int _handleLongCustomEscape(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws IOException {
        int length = bArr2.length;
        if (i10 + length > i11) {
            this._outputTail = i10;
            _flushBuffer();
            int i13 = this._outputTail;
            if (length > bArr.length) {
                this._outputStream.write(bArr2, 0, length);
                return i13;
            }
            System.arraycopy(bArr2, 0, bArr, i13, length);
            i10 = i13 + length;
        }
        if ((i12 * 6) + i10 <= i11) {
            return i10;
        }
        _flushBuffer();
        return this._outputTail;
    }

    private final int _readMore(InputStream inputStream, byte[] bArr, int i10, int i11, int i12) throws IOException {
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

    private final void _writeBytes(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this._outputTail + length > this._outputEnd) {
            _flushBuffer();
            if (length > 512) {
                this._outputStream.write(bArr, 0, length);
                return;
            }
        }
        System.arraycopy(bArr, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
    }

    private void _writeLongString(String str) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        bArr[i10] = BYTE_QUOTE;
        _writeStringSegments(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i11 = this._outputTail;
        this._outputTail = i11 + 1;
        bArr2[i11] = BYTE_QUOTE;
    }

    private final void _writeStringSegment(char[] cArr, int i10, int i11) throws IOException {
        int i12 = i11 + i10;
        int i13 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i10 < i12) {
            char c7 = cArr[i10];
            if (c7 > 127 || iArr[c7] != 0) {
                break;
            }
            bArr[i13] = (byte) c7;
            i10++;
            i13++;
        }
        this._outputTail = i13;
        if (i10 < i12) {
            if (this._characterEscapes != null) {
                _writeCustomStringSegment2(cArr, i10, i12);
            } else if (this._maximumNonEscapedChar == 0) {
                _writeStringSegment2(cArr, i10, i12);
            } else {
                _writeStringSegmentASCII2(cArr, i10, i12);
            }
        }
    }

    private final void _writeStringSegments(String str) throws IOException {
        int length = str.length();
        char[] cArr = this._charBuffer;
        int i10 = 0;
        while (length > 0) {
            int iMin = Math.min(this._outputMaxContiguous, length);
            int i11 = i10 + iMin;
            str.getChars(i10, i11, cArr, 0);
            if (this._outputTail + iMin > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(cArr, 0, iMin);
            length -= iMin;
            i10 = i11;
        }
    }

    protected final void _writeBinary(Base64Variant base64Variant, byte[] bArr, int i10, int i11) throws IOException {
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
            byte[] bArr2 = this._outputBuffer;
            bArr2[iEncodeBase64Chunk] = BYTE_BACKSLASH;
            this._outputTail = iEncodeBase64Chunk + 2;
            bArr2[iEncodeBase64Chunk + 1] = 110;
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

    protected final void _writeFieldName(String str) throws IOException {
        if (!this._cfgQuoteNames) {
            _writeStringSegments(str);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        bArr[i10] = BYTE_QUOTE;
        int length = str.length();
        if (length <= this._charBufferLength) {
            str.getChars(0, length, this._charBuffer, 0);
            if (length <= this._outputMaxContiguous) {
                if (this._outputTail + length > this._outputEnd) {
                    _flushBuffer();
                }
                _writeStringSegment(this._charBuffer, 0, length);
            } else {
                _writeStringSegments(this._charBuffer, 0, length);
            }
        } else {
            _writeStringSegments(str);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i11 = this._outputTail;
        this._outputTail = i11 + 1;
        bArr2[i11] = BYTE_QUOTE;
    }

    protected final void _writePPFieldName(String str, boolean z6) throws IOException {
        if (z6) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (!this._cfgQuoteNames) {
            _writeStringSegments(str);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        bArr[i10] = BYTE_QUOTE;
        int length = str.length();
        if (length <= this._charBufferLength) {
            str.getChars(0, length, this._charBuffer, 0);
            if (length <= this._outputMaxContiguous) {
                if (this._outputTail + length > this._outputEnd) {
                    _flushBuffer();
                }
                _writeStringSegment(this._charBuffer, 0, length);
            } else {
                _writeStringSegments(this._charBuffer, 0, length);
            }
        } else {
            _writeStringSegments(str);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i11 = this._outputTail;
        this._outputTail = i11 + 1;
        bArr2[i11] = BYTE_QUOTE;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object getOutputTarget() {
        return this._outputStream;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i10, int i11) throws IOException {
        _verifyValueWrite("write binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i12 = this._outputTail;
        this._outputTail = i12 + 1;
        bArr2[i12] = BYTE_QUOTE;
        _writeBinary(base64Variant, bArr, i10, i11 + i10);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i13 = this._outputTail;
        this._outputTail = i13 + 1;
        bArr3[i13] = BYTE_QUOTE;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(String str) throws IOException {
        int iWriteFieldName = this._writeContext.writeFieldName(str);
        if (iWriteFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(str, iWriteFieldName == 1);
            return;
        }
        if (iWriteFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i10 = this._outputTail;
            this._outputTail = i10 + 1;
            bArr[i10] = BYTE_COMMA;
        }
        _writeFieldName(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(short s) throws IOException {
        _verifyValueWrite("write number");
        if (this._outputTail + 6 >= this._outputEnd) {
            _flushBuffer();
        }
        if (this._cfgNumbersAsStrings) {
            _writeQuotedShort(s);
        } else {
            this._outputTail = NumberOutput.outputInt(s, this._outputBuffer, this._outputTail);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str) throws IOException {
        int length = str.length();
        int i10 = 0;
        while (length > 0) {
            char[] cArr = this._charBuffer;
            int length2 = cArr.length;
            if (length < length2) {
                length2 = length;
            }
            int i11 = i10 + length2;
            str.getChars(i10, i11, cArr, 0);
            writeRaw(cArr, 0, length2);
            length -= length2;
            i10 = i11;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(String str) throws IOException {
        _verifyValueWrite("write text value");
        if (str == null) {
            _writeNull();
            return;
        }
        int length = str.length();
        if (length > this._charBufferLength) {
            _writeLongString(str);
            return;
        }
        str.getChars(0, length, this._charBuffer, 0);
        if (length > this._outputMaxContiguous) {
            _writeLongString(this._charBuffer, 0, length);
            return;
        }
        if (this._outputTail + length >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        bArr[i10] = BYTE_QUOTE;
        _writeStringSegment(this._charBuffer, 0, length);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i11 = this._outputTail;
        this._outputTail = i11 + 1;
        bArr2[i11] = BYTE_QUOTE;
    }

    private final int _outputMultiByteChar(int i10, int i11) throws IOException {
        byte[] bArr = this._outputBuffer;
        if (i10 < SURR1_FIRST || i10 > SURR2_LAST) {
            bArr[i11] = (byte) ((i10 >> 12) | 224);
            int i12 = i11 + 2;
            bArr[i11 + 1] = (byte) (((i10 >> 6) & 63) | 128);
            int i13 = i11 + 3;
            bArr[i12] = (byte) ((i10 & 63) | 128);
            return i13;
        }
        bArr[i11] = BYTE_BACKSLASH;
        bArr[i11 + 1] = BYTE_u;
        byte[] bArr2 = HEX_CHARS;
        bArr[i11 + 2] = bArr2[(i10 >> 12) & 15];
        bArr[i11 + 3] = bArr2[(i10 >> 8) & 15];
        int i14 = i11 + 5;
        bArr[i11 + 4] = bArr2[(i10 >> 4) & 15];
        int i15 = i11 + 6;
        bArr[i14] = bArr2[i10 & 15];
        return i15;
    }

    private final void _writeCustomStringSegment2(char[] cArr, int i10, int i11) throws IOException {
        if (this._outputTail + ((i11 - i10) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i_outputMultiByteChar = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i12 = this._maximumNonEscapedChar;
        if (i12 <= 0) {
            i12 = 65535;
        }
        CharacterEscapes characterEscapes = this._characterEscapes;
        while (i10 < i11) {
            i10++;
            char c7 = cArr[i10];
            if (c7 <= 127) {
                int i13 = iArr[c7];
                if (i13 == 0) {
                    bArr[i_outputMultiByteChar] = (byte) c7;
                    i_outputMultiByteChar++;
                } else if (i13 > 0) {
                    int i14 = i_outputMultiByteChar + 1;
                    bArr[i_outputMultiByteChar] = BYTE_BACKSLASH;
                    i_outputMultiByteChar += 2;
                    bArr[i14] = (byte) i13;
                } else if (i13 == -2) {
                    SerializableString escapeSequence = characterEscapes.getEscapeSequence(c7);
                    if (escapeSequence == null) {
                        _reportError("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(c7) + ", although was supposed to have one");
                    }
                    i_outputMultiByteChar = _writeCustomEscape(bArr, i_outputMultiByteChar, escapeSequence, i11 - i10);
                } else {
                    i_outputMultiByteChar = _writeGenericEscape(c7, i_outputMultiByteChar);
                }
            } else if (c7 > i12) {
                i_outputMultiByteChar = _writeGenericEscape(c7, i_outputMultiByteChar);
            } else {
                SerializableString escapeSequence2 = characterEscapes.getEscapeSequence(c7);
                if (escapeSequence2 != null) {
                    i_outputMultiByteChar = _writeCustomEscape(bArr, i_outputMultiByteChar, escapeSequence2, i11 - i10);
                } else if (c7 <= 2047) {
                    int i15 = i_outputMultiByteChar + 1;
                    bArr[i_outputMultiByteChar] = (byte) ((c7 >> 6) | 192);
                    i_outputMultiByteChar += 2;
                    bArr[i15] = (byte) ((c7 & '?') | 128);
                } else {
                    i_outputMultiByteChar = _outputMultiByteChar(c7, i_outputMultiByteChar);
                }
            }
        }
        this._outputTail = i_outputMultiByteChar;
    }

    private int _writeGenericEscape(int i10, int i11) throws IOException {
        int i12;
        byte[] bArr = this._outputBuffer;
        bArr[i11] = BYTE_BACKSLASH;
        int i13 = i11 + 2;
        bArr[i11 + 1] = BYTE_u;
        if (i10 > 255) {
            int i14 = i10 >> 8;
            int i15 = i11 + 3;
            byte[] bArr2 = HEX_CHARS;
            bArr[i13] = bArr2[(i14 & 255) >> 4];
            i12 = i11 + 4;
            bArr[i15] = bArr2[i14 & 15];
            i10 &= 255;
        } else {
            int i16 = i11 + 3;
            bArr[i13] = 48;
            i12 = i11 + 4;
            bArr[i16] = 48;
        }
        int i17 = i12 + 1;
        byte[] bArr3 = HEX_CHARS;
        bArr[i12] = bArr3[i10 >> 4];
        int i18 = i12 + 2;
        bArr[i17] = bArr3[i10 & 15];
        return i18;
    }

    private final void _writeNull() throws IOException {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        System.arraycopy(NULL_BYTES, 0, this._outputBuffer, this._outputTail, 4);
        this._outputTail += 4;
    }

    private final void _writeQuotedInt(int i10) throws IOException {
        if (this._outputTail + 13 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i11 = this._outputTail;
        int i12 = i11 + 1;
        this._outputTail = i12;
        bArr[i11] = BYTE_QUOTE;
        int iOutputInt = NumberOutput.outputInt(i10, bArr, i12);
        byte[] bArr2 = this._outputBuffer;
        this._outputTail = iOutputInt + 1;
        bArr2[iOutputInt] = BYTE_QUOTE;
    }

    private final void _writeQuotedLong(long j6) throws IOException {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i10 = this._outputTail;
        int i11 = i10 + 1;
        this._outputTail = i11;
        bArr[i10] = BYTE_QUOTE;
        int iOutputLong = NumberOutput.outputLong(j6, bArr, i11);
        byte[] bArr2 = this._outputBuffer;
        this._outputTail = iOutputLong + 1;
        bArr2[iOutputLong] = BYTE_QUOTE;
    }

    private final void _writeQuotedRaw(Object obj) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        bArr[i10] = BYTE_QUOTE;
        writeRaw(obj.toString());
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i11 = this._outputTail;
        this._outputTail = i11 + 1;
        bArr2[i11] = BYTE_QUOTE;
    }

    private final void _writeQuotedShort(short s) throws IOException {
        if (this._outputTail + 8 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i10 = this._outputTail;
        int i11 = i10 + 1;
        this._outputTail = i11;
        bArr[i10] = BYTE_QUOTE;
        int iOutputInt = NumberOutput.outputInt(s, bArr, i11);
        byte[] bArr2 = this._outputBuffer;
        this._outputTail = iOutputInt + 1;
        bArr2[iOutputInt] = BYTE_QUOTE;
    }

    private final void _writeSegmentedRaw(char[] cArr, int i10, int i11) throws IOException {
        int i12 = this._outputEnd;
        byte[] bArr = this._outputBuffer;
        while (i10 < i11) {
            do {
                char c7 = cArr[i10];
                if (c7 >= 128) {
                    if (this._outputTail + 3 >= this._outputEnd) {
                        _flushBuffer();
                    }
                    int i13 = i10 + 1;
                    char c10 = cArr[i10];
                    if (c10 < 2048) {
                        int i14 = this._outputTail;
                        bArr[i14] = (byte) ((c10 >> 6) | 192);
                        this._outputTail = i14 + 2;
                        bArr[i14 + 1] = (byte) ((c10 & '?') | 128);
                        i10 = i13;
                    } else {
                        i10 = _outputRawMultiByteChar(c10, cArr, i13, i11);
                    }
                } else {
                    if (this._outputTail >= i12) {
                        _flushBuffer();
                    }
                    int i15 = this._outputTail;
                    this._outputTail = i15 + 1;
                    bArr[i15] = (byte) c7;
                    i10++;
                }
            } while (i10 < i11);
            return;
        }
    }

    private final void _writeStringSegment2(char[] cArr, int i10, int i11) throws IOException {
        if (this._outputTail + ((i11 - i10) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i_outputMultiByteChar = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i10 < i11) {
            i10++;
            char c7 = cArr[i10];
            if (c7 <= 127) {
                int i12 = iArr[c7];
                if (i12 == 0) {
                    bArr[i_outputMultiByteChar] = (byte) c7;
                    i_outputMultiByteChar++;
                } else if (i12 > 0) {
                    int i13 = i_outputMultiByteChar + 1;
                    bArr[i_outputMultiByteChar] = BYTE_BACKSLASH;
                    i_outputMultiByteChar += 2;
                    bArr[i13] = (byte) i12;
                } else {
                    i_outputMultiByteChar = _writeGenericEscape(c7, i_outputMultiByteChar);
                }
            } else if (c7 <= 2047) {
                int i14 = i_outputMultiByteChar + 1;
                bArr[i_outputMultiByteChar] = (byte) ((c7 >> 6) | 192);
                i_outputMultiByteChar += 2;
                bArr[i14] = (byte) ((c7 & '?') | 128);
            } else {
                i_outputMultiByteChar = _outputMultiByteChar(c7, i_outputMultiByteChar);
            }
        }
        this._outputTail = i_outputMultiByteChar;
    }

    private final void _writeStringSegmentASCII2(char[] cArr, int i10, int i11) throws IOException {
        if (this._outputTail + ((i11 - i10) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i_outputMultiByteChar = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i12 = this._maximumNonEscapedChar;
        while (i10 < i11) {
            i10++;
            char c7 = cArr[i10];
            if (c7 <= 127) {
                int i13 = iArr[c7];
                if (i13 == 0) {
                    bArr[i_outputMultiByteChar] = (byte) c7;
                    i_outputMultiByteChar++;
                } else if (i13 > 0) {
                    int i14 = i_outputMultiByteChar + 1;
                    bArr[i_outputMultiByteChar] = BYTE_BACKSLASH;
                    i_outputMultiByteChar += 2;
                    bArr[i14] = (byte) i13;
                } else {
                    i_outputMultiByteChar = _writeGenericEscape(c7, i_outputMultiByteChar);
                }
            } else if (c7 > i12) {
                i_outputMultiByteChar = _writeGenericEscape(c7, i_outputMultiByteChar);
            } else if (c7 <= 2047) {
                int i15 = i_outputMultiByteChar + 1;
                bArr[i_outputMultiByteChar] = (byte) ((c7 >> 6) | 192);
                i_outputMultiByteChar += 2;
                bArr[i15] = (byte) ((c7 & '?') | 128);
            } else {
                i_outputMultiByteChar = _outputMultiByteChar(c7, i_outputMultiByteChar);
            }
        }
        this._outputTail = i_outputMultiByteChar;
    }

    private final void _writeUTF8Segment(byte[] bArr, int i10, int i11) throws IOException {
        int[] iArr = this._outputEscapes;
        int i12 = i10 + i11;
        int i13 = i10;
        while (i13 < i12) {
            int i14 = i13 + 1;
            byte b7 = bArr[i13];
            if (b7 >= 0 && iArr[b7] != 0) {
                _writeUTF8Segment2(bArr, i10, i11);
                return;
            }
            i13 = i14;
        }
        if (this._outputTail + i11 > this._outputEnd) {
            _flushBuffer();
        }
        System.arraycopy(bArr, i10, this._outputBuffer, this._outputTail, i11);
        this._outputTail += i11;
    }

    private final void _writeUTF8Segment2(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i_writeGenericEscape = this._outputTail;
        if ((i11 * 6) + i_writeGenericEscape > this._outputEnd) {
            _flushBuffer();
            i_writeGenericEscape = this._outputTail;
        }
        byte[] bArr2 = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i13 = i11 + i10;
        while (i10 < i13) {
            i10++;
            byte b7 = bArr[i10];
            if (b7 < 0 || (i12 = iArr[b7]) == 0) {
                bArr2[i_writeGenericEscape] = b7;
                i_writeGenericEscape++;
            } else if (i12 > 0) {
                int i14 = i_writeGenericEscape + 1;
                bArr2[i_writeGenericEscape] = BYTE_BACKSLASH;
                i_writeGenericEscape += 2;
                bArr2[i14] = (byte) i12;
            } else {
                i_writeGenericEscape = _writeGenericEscape(b7, i_writeGenericEscape);
            }
        }
        this._outputTail = i_writeGenericEscape;
    }

    private final void _writeUTF8Segments(byte[] bArr, int i10, int i11) throws IOException {
        do {
            int iMin = Math.min(this._outputMaxContiguous, i11);
            _writeUTF8Segment(bArr, i10, iMin);
            i10 += iMin;
            i11 -= iMin;
        } while (i11 > 0);
    }

    protected final void _flushBuffer() throws IOException {
        int i10 = this._outputTail;
        if (i10 > 0) {
            this._outputTail = 0;
            this._outputStream.write(this._outputBuffer, 0, i10);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    protected void _releaseBuffers() {
        byte[] bArr = this._outputBuffer;
        if (bArr != null && this._bufferRecyclable) {
            this._outputBuffer = null;
            this._ioContext.releaseWriteEncodingBuffer(bArr);
        }
        char[] cArr = this._charBuffer;
        if (cArr != null) {
            this._charBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
        }
    }

    protected final void _verifyPrettyValueWrite(String str, int i10) throws IOException {
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
    protected final void _verifyValueWrite(String str) throws IOException {
        byte b7;
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
            b7 = BYTE_COMMA;
        } else {
            if (iWriteValue != 2) {
                if (iWriteValue == 3 && (serializableString = this._rootValueSeparator) != null) {
                    byte[] bArrAsUnquotedUTF8 = serializableString.asUnquotedUTF8();
                    if (bArrAsUnquotedUTF8.length > 0) {
                        _writeBytes(bArrAsUnquotedUTF8);
                        return;
                    }
                    return;
                }
                return;
            }
            b7 = BYTE_COLON;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i10 = this._outputTail;
        bArr[i10] = b7;
        this._outputTail = i10 + 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeEndArray() throws IOException {
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
            byte[] bArr = this._outputBuffer;
            int i10 = this._outputTail;
            this._outputTail = i10 + 1;
            bArr[i10] = BYTE_RBRACKET;
        }
        this._writeContext = this._writeContext.getParent();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeEndObject() throws IOException {
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
            byte[] bArr = this._outputBuffer;
            int i10 = this._outputTail;
            this._outputTail = i10 + 1;
            bArr[i10] = BYTE_RCURLY;
        }
        this._writeContext = this._writeContext.getParent();
    }

    private final int _outputRawMultiByteChar(int i10, char[] cArr, int i11, int i12) throws IOException {
        if (i10 >= SURR1_FIRST && i10 <= SURR2_LAST) {
            if (i11 >= i12 || cArr == null) {
                _reportError("Split surrogate on writeRaw() input (last character)");
            }
            _outputSurrogates(i10, cArr[i11]);
            return i11 + 1;
        }
        byte[] bArr = this._outputBuffer;
        int i13 = this._outputTail;
        bArr[i13] = (byte) ((i10 >> 12) | 224);
        bArr[i13 + 1] = (byte) (((i10 >> 6) & 63) | 128);
        this._outputTail = i13 + 3;
        bArr[i13 + 2] = (byte) ((i10 & 63) | 128);
        return i11;
    }

    private final int _writeCustomEscape(byte[] bArr, int i10, SerializableString serializableString, int i11) throws IOException {
        byte[] bArrAsUnquotedUTF8 = serializableString.asUnquotedUTF8();
        int length = bArrAsUnquotedUTF8.length;
        if (length > 6) {
            return _handleLongCustomEscape(bArr, i10, this._outputEnd, bArrAsUnquotedUTF8, i11);
        }
        System.arraycopy(bArrAsUnquotedUTF8, 0, bArr, i10, length);
        return i10 + length;
    }

    protected final int _decodeSurrogate(int i10, int i11) throws IOException {
        if (i11 < 56320 || i11 > SURR2_LAST) {
            _reportError("Incomplete surrogate pair: first char 0x" + Integer.toHexString(i10) + ", second 0x" + Integer.toHexString(i11));
        }
        return ((i10 - SURR1_FIRST) << 10) + 65536 + (i11 - 56320);
    }

    protected final void _outputSurrogates(int i10, int i11) throws IOException {
        int i_decodeSurrogate = _decodeSurrogate(i10, i11);
        if (this._outputTail + 4 > this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i12 = this._outputTail;
        bArr[i12] = (byte) ((i_decodeSurrogate >> 18) | 240);
        bArr[i12 + 1] = (byte) (((i_decodeSurrogate >> 12) & 63) | 128);
        bArr[i12 + 2] = (byte) (((i_decodeSurrogate >> 6) & 63) | 128);
        this._outputTail = i12 + 4;
        bArr[i12 + 3] = (byte) ((i_decodeSurrogate & 63) | 128);
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
        if (this._outputStream != null) {
            if (!this._ioContext.isResourceManaged() && !isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                if (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
                    this._outputStream.flush();
                }
            } else {
                this._outputStream.close();
            }
        }
        _releaseBuffers();
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        _flushBuffer();
        if (this._outputStream != null && isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
            this._outputStream.flush();
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBoolean(boolean z6) throws IOException {
        byte[] bArr;
        _verifyValueWrite("write boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z6) {
            bArr = TRUE_BYTES;
        } else {
            bArr = FALSE_BYTES;
        }
        int length = bArr.length;
        System.arraycopy(bArr, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNull() throws IOException {
        _verifyValueWrite("write null value");
        _writeNull();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawUTF8String(byte[] bArr, int i10, int i11) throws IOException {
        _verifyValueWrite("write text value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i12 = this._outputTail;
        this._outputTail = i12 + 1;
        bArr2[i12] = BYTE_QUOTE;
        _writeBytes(bArr, i10, i11);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i13 = this._outputTail;
        this._outputTail = i13 + 1;
        bArr3[i13] = BYTE_QUOTE;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartArray() throws IOException {
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
        byte[] bArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        bArr[i10] = BYTE_LBRACKET;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartObject() throws IOException {
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
        byte[] bArr = this._outputBuffer;
        int i10 = this._outputTail;
        this._outputTail = i10 + 1;
        bArr[i10] = BYTE_LCURLY;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeUTF8String(byte[] bArr, int i10, int i11) throws IOException {
        _verifyValueWrite("write text value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i12 = this._outputTail;
        this._outputTail = i12 + 1;
        bArr2[i12] = BYTE_QUOTE;
        if (i11 <= this._outputMaxContiguous) {
            _writeUTF8Segment(bArr, i10, i11);
        } else {
            _writeUTF8Segments(bArr, i10, i11);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i13 = this._outputTail;
        this._outputTail = i13 + 1;
        bArr3[i13] = BYTE_QUOTE;
    }

    private final void _writeBytes(byte[] bArr, int i10, int i11) throws IOException {
        if (this._outputTail + i11 > this._outputEnd) {
            _flushBuffer();
            if (i11 > 512) {
                this._outputStream.write(bArr, i10, i11);
                return;
            }
        }
        System.arraycopy(bArr, i10, this._outputBuffer, this._outputTail, i11);
        this._outputTail += i11;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(int i10) throws IOException {
        _verifyValueWrite("write number");
        if (this._outputTail + 11 >= this._outputEnd) {
            _flushBuffer();
        }
        if (this._cfgNumbersAsStrings) {
            _writeQuotedInt(i10);
        } else {
            this._outputTail = NumberOutput.outputInt(i10, this._outputBuffer, this._outputTail);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str, int i10, int i11) throws IOException {
        while (i11 > 0) {
            char[] cArr = this._charBuffer;
            int length = cArr.length;
            if (i11 < length) {
                length = i11;
            }
            int i12 = i10 + length;
            str.getChars(i10, i12, cArr, 0);
            writeRaw(cArr, 0, length);
            i11 -= length;
            i10 = i12;
        }
    }

    private void _writeLongString(char[] cArr, int i10, int i11) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i12 = this._outputTail;
        this._outputTail = i12 + 1;
        bArr[i12] = BYTE_QUOTE;
        _writeStringSegments(this._charBuffer, 0, i11);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i13 = this._outputTail;
        this._outputTail = i13 + 1;
        bArr2[i13] = BYTE_QUOTE;
    }

    private final void _writeStringSegments(char[] cArr, int i10, int i11) throws IOException {
        do {
            int iMin = Math.min(this._outputMaxContiguous, i11);
            if (this._outputTail + iMin > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(cArr, i10, iMin);
            i10 += iMin;
            i11 -= iMin;
        } while (i11 > 0);
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i10) throws IOException {
        _verifyValueWrite("write binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i11 = this._outputTail;
        this._outputTail = i11 + 1;
        bArr[i11] = BYTE_QUOTE;
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
            byte[] bArr2 = this._outputBuffer;
            int i12 = this._outputTail;
            this._outputTail = i12 + 1;
            bArr2[i12] = BYTE_QUOTE;
            return i10;
        } catch (Throwable th) {
            this._ioContext.releaseBase64Buffer(bArrAllocBase64Buffer);
            throw th;
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(SerializableString serializableString) throws IOException {
        int iWriteFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (iWriteFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(serializableString, iWriteFieldName == 1);
            return;
        }
        if (iWriteFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i10 = this._outputTail;
            this._outputTail = i10 + 1;
            bArr[i10] = BYTE_COMMA;
        }
        _writeFieldName(serializableString);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(SerializableString serializableString) throws IOException {
        byte[] bArrAsUnquotedUTF8 = serializableString.asUnquotedUTF8();
        if (bArrAsUnquotedUTF8.length > 0) {
            _writeBytes(bArrAsUnquotedUTF8);
        }
    }

    public UTF8JsonGenerator(IOContext iOContext, int i10, ObjectCodec objectCodec, OutputStream outputStream, byte[] bArr, int i11, boolean z6) {
        super(iOContext, i10, objectCodec);
        this._outputStream = outputStream;
        this._bufferRecyclable = z6;
        this._outputTail = i11;
        this._outputBuffer = bArr;
        int length = bArr.length;
        this._outputEnd = length;
        this._outputMaxContiguous = length >> 3;
        char[] cArrAllocConcatBuffer = iOContext.allocConcatBuffer();
        this._charBuffer = cArrAllocConcatBuffer;
        this._charBufferLength = cArrAllocConcatBuffer.length;
        this._cfgQuoteNames = JsonGenerator.Feature.QUOTE_FIELD_NAMES.enabledIn(i10);
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
    public final void writeRaw(char[] cArr, int i10, int i11) throws IOException {
        int i12 = i11 + i11 + i11;
        int i13 = this._outputTail + i12;
        int i14 = this._outputEnd;
        if (i13 > i14) {
            if (i14 < i12) {
                _writeSegmentedRaw(cArr, i10, i11);
                return;
            }
            _flushBuffer();
        }
        int i15 = i11 + i10;
        while (i10 < i15) {
            do {
                char c7 = cArr[i10];
                if (c7 > 127) {
                    i10++;
                    if (c7 < 2048) {
                        byte[] bArr = this._outputBuffer;
                        int i16 = this._outputTail;
                        bArr[i16] = (byte) ((c7 >> 6) | 192);
                        this._outputTail = i16 + 2;
                        bArr[i16 + 1] = (byte) ((c7 & '?') | 128);
                    } else {
                        i10 = _outputRawMultiByteChar(c7, cArr, i10, i15);
                    }
                } else {
                    byte[] bArr2 = this._outputBuffer;
                    int i17 = this._outputTail;
                    this._outputTail = i17 + 1;
                    bArr2[i17] = (byte) c7;
                    i10++;
                }
            } while (i10 < i15);
            return;
        }
    }

    protected final void _writeFieldName(SerializableString serializableString) throws IOException {
        if (!this._cfgQuoteNames) {
            int iAppendQuotedUTF8 = serializableString.appendQuotedUTF8(this._outputBuffer, this._outputTail);
            if (iAppendQuotedUTF8 < 0) {
                _writeBytes(serializableString.asQuotedUTF8());
                return;
            } else {
                this._outputTail += iAppendQuotedUTF8;
                return;
            }
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i10 = this._outputTail;
        int i11 = i10 + 1;
        this._outputTail = i11;
        bArr[i10] = BYTE_QUOTE;
        int iAppendQuotedUTF9 = serializableString.appendQuotedUTF8(bArr, i11);
        if (iAppendQuotedUTF9 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += iAppendQuotedUTF9;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i12 = this._outputTail;
        this._outputTail = i12 + 1;
        bArr2[i12] = BYTE_QUOTE;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(char[] cArr, int i10, int i11) throws IOException {
        _verifyValueWrite("write text value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i12 = this._outputTail;
        int i13 = i12 + 1;
        this._outputTail = i13;
        bArr[i12] = BYTE_QUOTE;
        if (i11 <= this._outputMaxContiguous) {
            if (i13 + i11 > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(cArr, i10, i11);
        } else {
            _writeStringSegments(cArr, i10, i11);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i14 = this._outputTail;
        this._outputTail = i14 + 1;
        bArr2[i14] = BYTE_QUOTE;
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

    protected final int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr, int i10) throws IOException {
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
                byte[] bArr2 = this._outputBuffer;
                bArr2[iEncodeBase64Chunk] = BYTE_BACKSLASH;
                this._outputTail = iEncodeBase64Chunk + 2;
                bArr2[iEncodeBase64Chunk + 1] = 110;
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

    protected final void _writePPFieldName(SerializableString serializableString, boolean z6) throws IOException {
        if (z6) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        boolean z10 = this._cfgQuoteNames;
        if (z10) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i10 = this._outputTail;
            this._outputTail = i10 + 1;
            bArr[i10] = BYTE_QUOTE;
        }
        _writeBytes(serializableString.asQuotedUTF8());
        if (z10) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr2 = this._outputBuffer;
            int i11 = this._outputTail;
            this._outputTail = i11 + 1;
            bArr2[i11] = BYTE_QUOTE;
        }
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
    public void writeRaw(char c7) throws IOException {
        if (this._outputTail + 3 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        if (c7 <= 127) {
            int i10 = this._outputTail;
            this._outputTail = i10 + 1;
            bArr[i10] = (byte) c7;
        } else {
            if (c7 < 2048) {
                int i11 = this._outputTail;
                bArr[i11] = (byte) ((c7 >> 6) | 192);
                this._outputTail = i11 + 2;
                bArr[i11 + 1] = (byte) ((c7 & '?') | 128);
                return;
            }
            _outputRawMultiByteChar(c7, null, 0, 0);
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator
    public final void writeString(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write text value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i10 = this._outputTail;
        int i11 = i10 + 1;
        this._outputTail = i11;
        bArr[i10] = BYTE_QUOTE;
        int iAppendQuotedUTF8 = serializableString.appendQuotedUTF8(bArr, i11);
        if (iAppendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail += iAppendQuotedUTF8;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i12 = this._outputTail;
        this._outputTail = i12 + 1;
        bArr2[i12] = BYTE_QUOTE;
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

    protected final int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr) throws IOException {
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
                byte[] bArr2 = this._outputBuffer;
                bArr2[iEncodeBase64Chunk] = BYTE_BACKSLASH;
                this._outputTail = iEncodeBase64Chunk + 2;
                bArr2[iEncodeBase64Chunk + 1] = 110;
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
