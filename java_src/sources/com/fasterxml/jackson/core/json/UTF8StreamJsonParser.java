package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.BytesToNameCanonicalizer;
import com.fasterxml.jackson.core.sym.Name;
import com.fasterxml.jackson.core.util.ArraysCompat;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlinx.serialization.json.internal.b;
import okio.Utf8;

/* JADX INFO: loaded from: classes9.dex */
public class UTF8StreamJsonParser extends ParserBase {
    static final byte BYTE_LF = 10;
    protected boolean _bufferRecyclable;
    protected byte[] _inputBuffer;
    protected InputStream _inputStream;
    protected ObjectCodec _objectCodec;
    private int _quad1;
    protected int[] _quadBuffer;
    protected final BytesToNameCanonicalizer _symbols;
    protected boolean _tokenIncomplete;
    private static final int[] _icUTF8 = CharTypes.getInputCodeUtf8();
    protected static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();
    private static final int[] _icWS = CharTypes.getInputCodeWS();

    private final JsonToken _nextAfterName() {
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        this._currToken = jsonToken;
        return jsonToken;
    }

    private final JsonToken _parserNumber2(char[] cArr, int i10, boolean z6, int i11) throws IOException {
        char[] cArrFinishCurrentSegment = cArr;
        int i12 = i10;
        int i13 = i11;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                this._textBuffer.setCurrentLength(i12);
                return resetInt(z6, i13);
            }
            byte[] bArr = this._inputBuffer;
            int i14 = this._inputPtr;
            this._inputPtr = i14 + 1;
            int i15 = bArr[i14] & 255;
            if (i15 > 57 || i15 < 48) {
                if (i15 == 46 || i15 == 101 || i15 == 69) {
                    return _parseFloat(cArrFinishCurrentSegment, i12, i15, z6, i13);
                }
                this._inputPtr = i14;
                this._textBuffer.setCurrentLength(i12);
                if (this._parsingContext.inRoot()) {
                    byte[] bArr2 = this._inputBuffer;
                    int i16 = this._inputPtr;
                    this._inputPtr = i16 + 1;
                    _verifyRootSpace(bArr2[i16] & 255);
                }
                return resetInt(z6, i13);
            }
            if (i12 >= cArrFinishCurrentSegment.length) {
                i12 = 0;
                cArrFinishCurrentSegment = this._textBuffer.finishCurrentSegment();
            }
            cArrFinishCurrentSegment[i12] = (char) i15;
            i13++;
            i12++;
        }
    }

    private final Name findName(int i10, int i11) throws JsonParseException {
        Name nameFindName = this._symbols.findName(i10);
        if (nameFindName != null) {
            return nameFindName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i10;
        return addName(iArr, 1, i11);
    }

    private final Name parseName(int i10, int i11, int i12) throws IOException {
        return parseEscapedName(this._quadBuffer, 0, i10, i11, i12);
    }

    protected int _readBinary(Base64Variant base64Variant, OutputStream outputStream, byte[] bArr) throws IOException {
        int length = bArr.length - 3;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            byte[] bArr2 = this._inputBuffer;
            int i12 = this._inputPtr;
            this._inputPtr = i12 + 1;
            int i13 = bArr2[i12] & 255;
            if (i13 > 32) {
                int iDecodeBase64Char = base64Variant.decodeBase64Char(i13);
                if (iDecodeBase64Char < 0) {
                    if (i13 == 34) {
                        break;
                    }
                    iDecodeBase64Char = _decodeBase64Escape(base64Variant, i13, 0);
                    if (iDecodeBase64Char < 0) {
                        continue;
                    }
                }
                if (i10 > length) {
                    i11 += i10;
                    outputStream.write(bArr, 0, i10);
                    i10 = 0;
                }
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i14 = this._inputPtr;
                this._inputPtr = i14 + 1;
                int i15 = bArr3[i14] & 255;
                int iDecodeBase64Char2 = base64Variant.decodeBase64Char(i15);
                if (iDecodeBase64Char2 < 0) {
                    iDecodeBase64Char2 = _decodeBase64Escape(base64Variant, i15, 1);
                }
                int i16 = (iDecodeBase64Char << 6) | iDecodeBase64Char2;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                byte[] bArr4 = this._inputBuffer;
                int i17 = this._inputPtr;
                this._inputPtr = i17 + 1;
                int i18 = bArr4[i17] & 255;
                int iDecodeBase64Char3 = base64Variant.decodeBase64Char(i18);
                if (iDecodeBase64Char3 < 0) {
                    if (iDecodeBase64Char3 != -2) {
                        if (i18 == 34 && !base64Variant.usesPadding()) {
                            bArr[i10] = (byte) (i16 >> 4);
                            i10++;
                            break;
                        }
                        iDecodeBase64Char3 = _decodeBase64Escape(base64Variant, i18, 2);
                    }
                    if (iDecodeBase64Char3 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            loadMoreGuaranteed();
                        }
                        byte[] bArr5 = this._inputBuffer;
                        int i19 = this._inputPtr;
                        this._inputPtr = i19 + 1;
                        int i20 = bArr5[i19] & 255;
                        if (!base64Variant.usesPaddingChar(i20)) {
                            throw reportInvalidBase64Char(base64Variant, i20, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        bArr[i10] = (byte) (i16 >> 4);
                        i10++;
                    }
                }
                int i21 = (i16 << 6) | iDecodeBase64Char3;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                byte[] bArr6 = this._inputBuffer;
                int i22 = this._inputPtr;
                this._inputPtr = i22 + 1;
                int i23 = bArr6[i22] & 255;
                int iDecodeBase64Char4 = base64Variant.decodeBase64Char(i23);
                if (iDecodeBase64Char4 < 0) {
                    if (iDecodeBase64Char4 != -2) {
                        if (i23 == 34 && !base64Variant.usesPadding()) {
                            int i24 = i10 + 1;
                            bArr[i10] = (byte) (i21 >> 10);
                            i10 += 2;
                            bArr[i24] = (byte) (i21 >> 2);
                            break;
                        }
                        iDecodeBase64Char4 = _decodeBase64Escape(base64Variant, i23, 3);
                    }
                    if (iDecodeBase64Char4 == -2) {
                        int i25 = i10 + 1;
                        bArr[i10] = (byte) (i21 >> 10);
                        i10 += 2;
                        bArr[i25] = (byte) (i21 >> 2);
                    }
                }
                int i26 = (i21 << 6) | iDecodeBase64Char4;
                bArr[i10] = (byte) (i26 >> 16);
                int i27 = i10 + 2;
                bArr[i10 + 1] = (byte) (i26 >> 8);
                i10 += 3;
                bArr[i27] = (byte) i26;
            }
        }
        this._tokenIncomplete = false;
        if (i10 <= 0) {
            return i11;
        }
        int i28 = i11 + i10;
        outputStream.write(bArr, 0, i10);
        return i28;
    }

    protected void _reportInvalidOther(int i10) throws JsonParseException {
        _reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i10));
    }

    protected void _reportInvalidToken(String str) throws IOException {
        _reportInvalidToken(str, "'null', 'true', 'false' or NaN");
    }

    protected void _skipString() throws IOException {
        this._tokenIncomplete = false;
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i10 = this._inputPtr;
            int i11 = this._inputEnd;
            if (i10 >= i11) {
                loadMoreGuaranteed();
                i10 = this._inputPtr;
                i11 = this._inputEnd;
            }
            while (true) {
                if (i10 >= i11) {
                    this._inputPtr = i10;
                    break;
                }
                int i12 = i10 + 1;
                int i13 = bArr[i10] & 255;
                int i14 = iArr[i13];
                if (i14 != 0) {
                    this._inputPtr = i12;
                    if (i13 != 34) {
                        if (i14 == 1) {
                            _decodeEscaped();
                            break;
                        }
                        if (i14 == 2) {
                            _skipUtf8_2(i13);
                            break;
                        }
                        if (i14 == 3) {
                            _skipUtf8_3(i13);
                            break;
                        }
                        if (i14 == 4) {
                            _skipUtf8_4(i13);
                            break;
                        } else if (i13 >= 32) {
                            _reportInvalidChar(i13);
                            break;
                        } else {
                            _throwUnquotedSpace(i13, "string value");
                            break;
                        }
                    }
                    return;
                }
                i10 = i12;
            }
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public ObjectCodec getCodec() {
        return this._objectCodec;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getInputSource() {
        return this._inputStream;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String getValueAsString() throws IOException {
        if (this._currToken != JsonToken.VALUE_STRING) {
            return super.getValueAsString(null);
        }
        if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
        return this._textBuffer.contentsAsString();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean nextFieldName(SerializableString serializableString) throws IOException {
        this._numTypesValid = 0;
        if (this._currToken == JsonToken.FIELD_NAME) {
            _nextAfterName();
            return false;
        }
        if (this._tokenIncomplete) {
            _skipString();
        }
        int i_skipWSOrEnd = _skipWSOrEnd();
        if (i_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return false;
        }
        long j6 = this._currInputProcessed;
        int i10 = this._inputPtr;
        this._tokenInputTotal = (j6 + ((long) i10)) - 1;
        this._tokenInputRow = this._currInputRow;
        this._tokenInputCol = (i10 - this._currInputRowStart) - 1;
        this._binaryValue = null;
        if (i_skipWSOrEnd == 93) {
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(i_skipWSOrEnd, b.END_OBJ);
            }
            this._parsingContext = this._parsingContext.getParent();
            this._currToken = JsonToken.END_ARRAY;
            return false;
        }
        if (i_skipWSOrEnd == 125) {
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(i_skipWSOrEnd, b.END_LIST);
            }
            this._parsingContext = this._parsingContext.getParent();
            this._currToken = JsonToken.END_OBJECT;
            return false;
        }
        if (this._parsingContext.expectComma()) {
            if (i_skipWSOrEnd != 44) {
                _reportUnexpectedChar(i_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
            }
            i_skipWSOrEnd = _skipWS();
        }
        if (!this._parsingContext.inObject()) {
            _nextTokenNotInObject(i_skipWSOrEnd);
            return false;
        }
        if (i_skipWSOrEnd == 34) {
            byte[] bArrAsQuotedUTF8 = serializableString.asQuotedUTF8();
            int length = bArrAsQuotedUTF8.length;
            int i11 = this._inputPtr;
            if (i11 + length < this._inputEnd) {
                int i12 = i11 + length;
                if (this._inputBuffer[i12] == 34) {
                    for (int i13 = 0; i13 != length; i13++) {
                        if (bArrAsQuotedUTF8[i13] == this._inputBuffer[i11 + i13]) {
                        }
                    }
                    this._inputPtr = i12 + 1;
                    this._parsingContext.setCurrentName(serializableString.getValue());
                    this._currToken = JsonToken.FIELD_NAME;
                    _isNextTokenNameYes();
                    return true;
                }
            }
        }
        return _isNextTokenNameMaybe(i_skipWSOrEnd, serializableString);
    }

    /* JADX WARN: Code duplicated, block: B:67:0x0125  */
    /* JADX WARN: Code duplicated, block: B:70:0x0136  */
    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public JsonToken nextToken() throws IOException {
        JsonToken jsonToken_parseNumber;
        this._numTypesValid = 0;
        JsonToken jsonToken = this._currToken;
        JsonToken jsonToken2 = JsonToken.FIELD_NAME;
        if (jsonToken == jsonToken2) {
            return _nextAfterName();
        }
        if (this._tokenIncomplete) {
            _skipString();
        }
        int i_skipWSOrEnd = _skipWSOrEnd();
        if (i_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return null;
        }
        long j6 = this._currInputProcessed;
        int i10 = this._inputPtr;
        this._tokenInputTotal = (j6 + ((long) i10)) - 1;
        this._tokenInputRow = this._currInputRow;
        this._tokenInputCol = (i10 - this._currInputRowStart) - 1;
        this._binaryValue = null;
        if (i_skipWSOrEnd == 93) {
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(i_skipWSOrEnd, b.END_OBJ);
            }
            this._parsingContext = this._parsingContext.getParent();
            JsonToken jsonToken3 = JsonToken.END_ARRAY;
            this._currToken = jsonToken3;
            return jsonToken3;
        }
        if (i_skipWSOrEnd == 125) {
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(i_skipWSOrEnd, b.END_LIST);
            }
            this._parsingContext = this._parsingContext.getParent();
            JsonToken jsonToken4 = JsonToken.END_OBJECT;
            this._currToken = jsonToken4;
            return jsonToken4;
        }
        if (this._parsingContext.expectComma()) {
            if (i_skipWSOrEnd != 44) {
                _reportUnexpectedChar(i_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
            }
            i_skipWSOrEnd = _skipWS();
        }
        if (!this._parsingContext.inObject()) {
            return _nextTokenNotInObject(i_skipWSOrEnd);
        }
        this._parsingContext.setCurrentName(_parseName(i_skipWSOrEnd).getName());
        this._currToken = jsonToken2;
        int i11 = this._inputPtr;
        if (i11 >= this._inputEnd || this._inputBuffer[i11] != 58) {
            int i_skipWS = _skipWS();
            if (i_skipWS != 58) {
                _reportUnexpectedChar(i_skipWS, "was expecting a colon to separate field name and value");
            }
        } else {
            this._inputPtr = i11 + 1;
        }
        int i_skipWS2 = _skipWS();
        if (i_skipWS2 == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
            return this._currToken;
        }
        if (i_skipWS2 == 45) {
            jsonToken_parseNumber = _parseNumber(i_skipWS2);
        } else if (i_skipWS2 == 91) {
            jsonToken_parseNumber = JsonToken.START_ARRAY;
        } else if (i_skipWS2 == 93) {
            _reportUnexpectedChar(i_skipWS2, "expected a value");
            _matchToken("true", 1);
            jsonToken_parseNumber = JsonToken.VALUE_TRUE;
        } else if (i_skipWS2 == 102) {
            _matchToken("false", 1);
            jsonToken_parseNumber = JsonToken.VALUE_FALSE;
        } else if (i_skipWS2 == 110) {
            _matchToken("null", 1);
            jsonToken_parseNumber = JsonToken.VALUE_NULL;
        } else if (i_skipWS2 == 116) {
            _matchToken("true", 1);
            jsonToken_parseNumber = JsonToken.VALUE_TRUE;
        } else if (i_skipWS2 == 123) {
            jsonToken_parseNumber = JsonToken.START_OBJECT;
        } else if (i_skipWS2 != 125) {
            switch (i_skipWS2) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    jsonToken_parseNumber = _parseNumber(i_skipWS2);
                    break;
                default:
                    jsonToken_parseNumber = _handleUnexpectedValue(i_skipWS2);
                    break;
            }
        } else {
            _reportUnexpectedChar(i_skipWS2, "expected a value");
            _matchToken("true", 1);
            jsonToken_parseNumber = JsonToken.VALUE_TRUE;
        }
        this._nextToken = jsonToken_parseNumber;
        return this._currToken;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }

    private final int _decodeUtf8_2(int i10) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i11 = this._inputPtr;
        int i12 = i11 + 1;
        this._inputPtr = i12;
        byte b7 = bArr[i11];
        if ((b7 & 192) != 128) {
            _reportInvalidOther(b7 & 255, i12);
        }
        return ((i10 & 31) << 6) | (b7 & Utf8.REPLACEMENT_BYTE);
    }

    private final int _decodeUtf8_3(int i10) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        int i11 = i10 & 15;
        byte[] bArr = this._inputBuffer;
        int i12 = this._inputPtr;
        int i13 = i12 + 1;
        this._inputPtr = i13;
        byte b7 = bArr[i12];
        if ((b7 & 192) != 128) {
            _reportInvalidOther(b7 & 255, i13);
        }
        int i14 = (i11 << 6) | (b7 & Utf8.REPLACEMENT_BYTE);
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i15 = this._inputPtr;
        int i16 = i15 + 1;
        this._inputPtr = i16;
        byte b10 = bArr2[i15];
        if ((b10 & 192) != 128) {
            _reportInvalidOther(b10 & 255, i16);
        }
        return (i14 << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
    }

    private final int _decodeUtf8_3fast(int i10) throws IOException {
        int i11 = i10 & 15;
        byte[] bArr = this._inputBuffer;
        int i12 = this._inputPtr;
        int i13 = i12 + 1;
        this._inputPtr = i13;
        byte b7 = bArr[i12];
        if ((b7 & 192) != 128) {
            _reportInvalidOther(b7 & 255, i13);
        }
        int i14 = (i11 << 6) | (b7 & Utf8.REPLACEMENT_BYTE);
        byte[] bArr2 = this._inputBuffer;
        int i15 = this._inputPtr;
        int i16 = i15 + 1;
        this._inputPtr = i16;
        byte b10 = bArr2[i15];
        if ((b10 & 192) != 128) {
            _reportInvalidOther(b10 & 255, i16);
        }
        return (i14 << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
    }

    private final int _decodeUtf8_4(int i10) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i11 = this._inputPtr;
        int i12 = i11 + 1;
        this._inputPtr = i12;
        byte b7 = bArr[i11];
        if ((b7 & 192) != 128) {
            _reportInvalidOther(b7 & 255, i12);
        }
        int i13 = ((i10 & 7) << 6) | (b7 & Utf8.REPLACEMENT_BYTE);
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i14 = this._inputPtr;
        int i15 = i14 + 1;
        this._inputPtr = i15;
        byte b10 = bArr2[i14];
        if ((b10 & 192) != 128) {
            _reportInvalidOther(b10 & 255, i15);
        }
        int i16 = (i13 << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i17 = this._inputPtr;
        int i18 = i17 + 1;
        this._inputPtr = i18;
        byte b11 = bArr3[i17];
        if ((b11 & 192) != 128) {
            _reportInvalidOther(b11 & 255, i18);
        }
        return ((i16 << 6) | (b11 & Utf8.REPLACEMENT_BYTE)) - 65536;
    }

    private final void _finishString2(char[] cArr, int i10) throws IOException {
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i11 = this._inputPtr;
            if (i11 >= this._inputEnd) {
                loadMoreGuaranteed();
                i11 = this._inputPtr;
            }
            int i12 = 0;
            if (i10 >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i10 = 0;
            }
            int iMin = Math.min(this._inputEnd, (cArr.length - i10) + i11);
            while (true) {
                if (i11 >= iMin) {
                    this._inputPtr = i11;
                    break;
                }
                int i13 = i11 + 1;
                int i_decodeEscaped = bArr[i11] & 255;
                int i14 = iArr[i_decodeEscaped];
                if (i14 != 0) {
                    this._inputPtr = i13;
                    if (i_decodeEscaped != 34) {
                        if (i14 == 1) {
                            i_decodeEscaped = _decodeEscaped();
                        } else if (i14 == 2) {
                            i_decodeEscaped = _decodeUtf8_2(i_decodeEscaped);
                        } else if (i14 == 3) {
                            i_decodeEscaped = this._inputEnd - i13 >= 2 ? _decodeUtf8_3fast(i_decodeEscaped) : _decodeUtf8_3(i_decodeEscaped);
                        } else if (i14 == 4) {
                            int i_decodeUtf8_4 = _decodeUtf8_4(i_decodeEscaped);
                            int i15 = i10 + 1;
                            cArr[i10] = (char) ((i_decodeUtf8_4 >> 10) | 55296);
                            if (i15 >= cArr.length) {
                                cArr = this._textBuffer.finishCurrentSegment();
                                i10 = 0;
                            } else {
                                i10 = i15;
                            }
                            i_decodeEscaped = (i_decodeUtf8_4 & 1023) | Utf8.LOG_SURROGATE_HEADER;
                        } else if (i_decodeEscaped < 32) {
                            _throwUnquotedSpace(i_decodeEscaped, "string value");
                        } else {
                            _reportInvalidChar(i_decodeEscaped);
                        }
                        if (i10 >= cArr.length) {
                            cArr = this._textBuffer.finishCurrentSegment();
                        } else {
                            i12 = i10;
                        }
                        i10 = i12 + 1;
                        cArr[i12] = (char) i_decodeEscaped;
                        break;
                    }
                    this._textBuffer.setCurrentLength(i10);
                    return;
                }
                cArr[i10] = (char) i_decodeEscaped;
                i11 = i13;
                i10++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0047  */
    private final void _isNextTokenNameYes() throws IOException {
        int i_skipColon;
        int i10 = this._inputPtr;
        if (i10 < this._inputEnd - 1) {
            byte[] bArr = this._inputBuffer;
            if (bArr[i10] == 58) {
                byte b7 = bArr[i10 + 1];
                this._inputPtr = i10 + 2;
                if (b7 == 34) {
                    this._tokenIncomplete = true;
                    this._nextToken = JsonToken.VALUE_STRING;
                    return;
                } else {
                    if (b7 == 123) {
                        this._nextToken = JsonToken.START_OBJECT;
                        return;
                    }
                    if (b7 == 91) {
                        this._nextToken = JsonToken.START_ARRAY;
                        return;
                    }
                    i_skipColon = b7 & 255;
                    if (i_skipColon <= 32 || i_skipColon == 47) {
                        this._inputPtr = i10 + 1;
                        i_skipColon = _skipWS();
                    }
                }
            } else {
                i_skipColon = _skipColon();
            }
        } else {
            i_skipColon = _skipColon();
        }
        if (i_skipColon == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
            return;
        }
        if (i_skipColon != 45) {
            if (i_skipColon == 91) {
                this._nextToken = JsonToken.START_ARRAY;
                return;
            }
            if (i_skipColon == 93) {
                _reportUnexpectedChar(i_skipColon, "expected a value");
            } else {
                if (i_skipColon == 102) {
                    _matchToken("false", 1);
                    this._nextToken = JsonToken.VALUE_FALSE;
                    return;
                }
                if (i_skipColon == 110) {
                    _matchToken("null", 1);
                    this._nextToken = JsonToken.VALUE_NULL;
                    return;
                } else if (i_skipColon != 116) {
                    if (i_skipColon == 123) {
                        this._nextToken = JsonToken.START_OBJECT;
                        return;
                    }
                    if (i_skipColon != 125) {
                        switch (i_skipColon) {
                            case 48:
                            case 49:
                            case 50:
                            case 51:
                            case 52:
                            case 53:
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                                break;
                            default:
                                this._nextToken = _handleUnexpectedValue(i_skipColon);
                                break;
                        }
                        return;
                    }
                    _reportUnexpectedChar(i_skipColon, "expected a value");
                }
            }
            _matchToken("true", 1);
            this._nextToken = JsonToken.VALUE_TRUE;
            return;
        }
        this._nextToken = _parseNumber(i_skipColon);
    }

    private final JsonToken _nextTokenNotInObject(int i10) throws IOException {
        if (i10 == 34) {
            this._tokenIncomplete = true;
            JsonToken jsonToken = JsonToken.VALUE_STRING;
            this._currToken = jsonToken;
            return jsonToken;
        }
        if (i10 != 45) {
            if (i10 == 91) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                JsonToken jsonToken2 = JsonToken.START_ARRAY;
                this._currToken = jsonToken2;
                return jsonToken2;
            }
            if (i10 == 93) {
                _reportUnexpectedChar(i10, "expected a value");
            } else {
                if (i10 == 102) {
                    _matchToken("false", 1);
                    JsonToken jsonToken3 = JsonToken.VALUE_FALSE;
                    this._currToken = jsonToken3;
                    return jsonToken3;
                }
                if (i10 == 110) {
                    _matchToken("null", 1);
                    JsonToken jsonToken4 = JsonToken.VALUE_NULL;
                    this._currToken = jsonToken4;
                    return jsonToken4;
                }
                if (i10 != 116) {
                    if (i10 == 123) {
                        this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                        JsonToken jsonToken5 = JsonToken.START_OBJECT;
                        this._currToken = jsonToken5;
                        return jsonToken5;
                    }
                    if (i10 != 125) {
                        switch (i10) {
                            case 48:
                            case 49:
                            case 50:
                            case 51:
                            case 52:
                            case 53:
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                                break;
                            default:
                                JsonToken jsonToken_handleUnexpectedValue = _handleUnexpectedValue(i10);
                                this._currToken = jsonToken_handleUnexpectedValue;
                                return jsonToken_handleUnexpectedValue;
                        }
                    }
                    _reportUnexpectedChar(i10, "expected a value");
                }
            }
            _matchToken("true", 1);
            JsonToken jsonToken6 = JsonToken.VALUE_TRUE;
            this._currToken = jsonToken6;
            return jsonToken6;
        }
        JsonToken jsonToken_parseNumber = _parseNumber(i10);
        this._currToken = jsonToken_parseNumber;
        return jsonToken_parseNumber;
    }

    private final JsonToken _parseFloat(char[] cArr, int i10, int i11, boolean z6, int i12) throws IOException {
        int i13;
        boolean z10;
        int i14 = 0;
        if (i11 == 46) {
            cArr[i10] = (char) i11;
            i10++;
            i13 = 0;
            while (true) {
                if (this._inputPtr >= this._inputEnd && !loadMore()) {
                    z10 = true;
                    break;
                }
                byte[] bArr = this._inputBuffer;
                int i15 = this._inputPtr;
                this._inputPtr = i15 + 1;
                i11 = bArr[i15] & 255;
                if (i11 < 48 || i11 > 57) {
                    z10 = false;
                    break;
                }
                i13++;
                if (i10 >= cArr.length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    i10 = 0;
                }
                cArr[i10] = (char) i11;
                i10++;
            }
            if (i13 == 0) {
                reportUnexpectedNumberChar(i11, "Decimal point not followed by a digit");
            }
        } else {
            i13 = 0;
            z10 = false;
        }
        if (i11 == 101 || i11 == 69) {
            if (i10 >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i10 = 0;
            }
            int i16 = i10 + 1;
            cArr[i10] = (char) i11;
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            byte[] bArr2 = this._inputBuffer;
            int i17 = this._inputPtr;
            this._inputPtr = i17 + 1;
            int i18 = bArr2[i17] & 255;
            if (i18 == 45 || i18 == 43) {
                if (i16 >= cArr.length) {
                    cArr = this._textBuffer.finishCurrentSegment();
                    i16 = 0;
                }
                int i19 = i16 + 1;
                cArr[i16] = (char) i18;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i20 = this._inputPtr;
                this._inputPtr = i20 + 1;
                i18 = bArr3[i20] & 255;
                i16 = i19;
            }
            i11 = i18;
            int i21 = 0;
            while (true) {
                if (i11 <= 57 && i11 >= 48) {
                    i21++;
                    if (i16 >= cArr.length) {
                        cArr = this._textBuffer.finishCurrentSegment();
                        i16 = 0;
                    }
                    int i22 = i16 + 1;
                    cArr[i16] = (char) i11;
                    if (this._inputPtr >= this._inputEnd && !loadMore()) {
                        i14 = i21;
                        z10 = true;
                        i10 = i22;
                        break;
                    }
                    byte[] bArr4 = this._inputBuffer;
                    int i23 = this._inputPtr;
                    this._inputPtr = i23 + 1;
                    i11 = bArr4[i23] & 255;
                    i16 = i22;
                } else {
                    i14 = i21;
                    i10 = i16;
                    break;
                }
            }
            if (i14 == 0) {
                reportUnexpectedNumberChar(i11, "Exponent indicator not followed by a digit");
            }
        }
        if (!z10) {
            this._inputPtr--;
            if (this._parsingContext.inRoot()) {
                _verifyRootSpace(i11);
            }
        }
        this._textBuffer.setCurrentLength(i10);
        return resetFloat(z6, i12, i13, i14);
    }

    private final int _skipColon() throws IOException {
        int i10;
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i11 = this._inputPtr;
        int i12 = i11 + 1;
        this._inputPtr = i12;
        byte b7 = bArr[i11];
        if (b7 != 58) {
            int i13 = b7 & 255;
            while (true) {
                if (i13 != 9) {
                    if (i13 == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (i13 == 13) {
                        _skipCR();
                    } else if (i13 != 32) {
                        if (i13 != 47) {
                            break;
                        }
                        _skipComment();
                    }
                }
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                byte[] bArr2 = this._inputBuffer;
                int i14 = this._inputPtr;
                this._inputPtr = i14 + 1;
                i13 = bArr2[i14] & 255;
            }
            if (i13 < 32) {
                _throwInvalidSpace(i13);
            }
            if (i13 != 58) {
                _reportUnexpectedChar(i13, "was expecting a colon to separate field name and value");
            }
        } else if (i12 < this._inputEnd && (i10 = bArr[i12] & 255) > 32 && i10 != 47) {
            this._inputPtr = i11 + 2;
            return i10;
        }
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.getTypeDesc() + " entries");
            }
            byte[] bArr3 = this._inputBuffer;
            int i15 = this._inputPtr;
            int i16 = i15 + 1;
            this._inputPtr = i16;
            int i17 = bArr3[i15] & 255;
            if (i17 > 32) {
                if (i17 != 47) {
                    return i17;
                }
                _skipComment();
            } else if (i17 != 32) {
                if (i17 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i16;
                } else if (i17 == 13) {
                    _skipCR();
                } else if (i17 != 9) {
                    _throwInvalidSpace(i17);
                }
            }
        }
    }

    private final void _skipComment() throws IOException {
        if (!isEnabled(JsonParser.Feature.ALLOW_COMMENTS)) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in a comment");
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        int i11 = bArr[i10] & 255;
        if (i11 == 47) {
            _skipLine();
        } else if (i11 == 42) {
            _skipCComment();
        } else {
            _reportUnexpectedChar(i11, "was expecting either '*' or '/' for a comment");
        }
    }

    private final void _skipUtf8_2(int i10) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i11 = this._inputPtr;
        int i12 = i11 + 1;
        this._inputPtr = i12;
        byte b7 = bArr[i11];
        if ((b7 & 192) != 128) {
            _reportInvalidOther(b7 & 255, i12);
        }
    }

    private final void _skipUtf8_3(int i10) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i11 = this._inputPtr;
        int i12 = i11 + 1;
        this._inputPtr = i12;
        byte b7 = bArr[i11];
        if ((b7 & 192) != 128) {
            _reportInvalidOther(b7 & 255, i12);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i13 = this._inputPtr;
        int i14 = i13 + 1;
        this._inputPtr = i14;
        byte b10 = bArr2[i13];
        if ((b10 & 192) != 128) {
            _reportInvalidOther(b10 & 255, i14);
        }
    }

    private final void _skipUtf8_4(int i10) throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i11 = this._inputPtr;
        int i12 = i11 + 1;
        this._inputPtr = i12;
        byte b7 = bArr[i11];
        if ((b7 & 192) != 128) {
            _reportInvalidOther(b7 & 255, i12);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i13 = this._inputPtr;
        int i14 = i13 + 1;
        this._inputPtr = i14;
        byte b10 = bArr2[i13];
        if ((b10 & 192) != 128) {
            _reportInvalidOther(b10 & 255, i14);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i15 = this._inputPtr;
        int i16 = i15 + 1;
        this._inputPtr = i16;
        byte b11 = bArr3[i15];
        if ((b11 & 192) != 128) {
            _reportInvalidOther(b11 & 255, i16);
        }
    }

    private final int _skipWS() throws IOException {
        int[] iArr = _icWS;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.getTypeDesc() + " entries");
            }
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            int i12 = bArr[i10] & 255;
            int i13 = iArr[i12];
            if (i13 == 0) {
                return i12;
            }
            if (i13 != 1) {
                if (i13 == 2) {
                    _skipUtf8_2(i12);
                } else if (i13 == 3) {
                    _skipUtf8_3(i12);
                } else if (i13 == 4) {
                    _skipUtf8_4(i12);
                } else if (i13 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i11;
                } else if (i13 == 13) {
                    _skipCR();
                } else if (i13 != 35) {
                    if (i13 != 47) {
                        if (i12 < 32) {
                            _throwInvalidSpace(i12);
                        }
                        _reportInvalidChar(i12);
                    } else {
                        _skipComment();
                    }
                } else if (!_skipYAMLComment()) {
                    return i12;
                }
            }
        }
    }

    private final int _skipWSOrEnd() throws IOException {
        int[] iArr = _icWS;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _handleEOF();
                return -1;
            }
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            int i12 = bArr[i10] & 255;
            int i13 = iArr[i12];
            if (i13 == 0) {
                return i12;
            }
            if (i13 != 1) {
                if (i13 == 2) {
                    _skipUtf8_2(i12);
                } else if (i13 == 3) {
                    _skipUtf8_3(i12);
                } else if (i13 == 4) {
                    _skipUtf8_4(i12);
                } else if (i13 == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = i11;
                } else if (i13 == 13) {
                    _skipCR();
                } else if (i13 != 35) {
                    if (i13 != 47) {
                        _reportInvalidChar(i12);
                    } else {
                        _skipComment();
                    }
                } else if (!_skipYAMLComment()) {
                    return i12;
                }
            }
        }
    }

    private final boolean _skipYAMLComment() throws IOException {
        if (!isEnabled(JsonParser.Feature.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        _skipLine();
        return true;
    }

    private final int _verifyNoLeadingZeroes() throws IOException {
        int i10;
        if ((this._inputPtr >= this._inputEnd && !loadMore()) || (i10 = this._inputBuffer[this._inputPtr] & 255) < 48 || i10 > 57) {
            return 48;
        }
        if (!isEnabled(JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            reportInvalidNumber("Leading zeroes not allowed");
        }
        this._inputPtr++;
        if (i10 == 48) {
            do {
                if (this._inputPtr >= this._inputEnd && !loadMore()) {
                    break;
                }
                byte[] bArr = this._inputBuffer;
                int i11 = this._inputPtr;
                i10 = bArr[i11] & 255;
                if (i10 < 48 || i10 > 57) {
                    return 48;
                }
                this._inputPtr = i11 + 1;
            } while (i10 == 48);
        }
        return i10;
    }

    private final void _verifyRootSpace(int i10) throws IOException {
        int i11 = this._inputPtr + 1;
        this._inputPtr = i11;
        if (i10 != 9) {
            if (i10 == 10) {
                this._currInputRow++;
                this._currInputRowStart = i11;
            } else if (i10 == 13) {
                _skipCR();
            } else if (i10 != 32) {
                _reportMissingRootWS(i10);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0060  */
    /* JADX WARN: Code duplicated, block: B:26:0x0077  */
    /* JADX WARN: Code duplicated, block: B:29:0x0082  */
    /* JADX WARN: Code duplicated, block: B:31:0x0092  */
    /* JADX WARN: Code duplicated, block: B:34:0x009d  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b7 A[PHI: r5 r14
      0x00b7: PHI (r5v17 int) = (r5v16 int), (r5v28 int) binds: [B:28:0x0080, B:37:0x00b2] A[DONT_GENERATE, DONT_INLINE]
      0x00b7: PHI (r14v6 int) = (r14v5 int), (r14v15 int) binds: [B:28:0x0080, B:37:0x00b2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c7  */
    private final Name addName(int[] iArr, int i10, int i11) throws JsonParseException {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21 = ((i10 << 2) - 4) + i11;
        if (i11 < 4) {
            int i22 = i10 - 1;
            i12 = iArr[i22];
            iArr[i22] = i12 << ((4 - i11) << 3);
        } else {
            i12 = 0;
        }
        char[] cArrEmptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int i23 = 0;
        int i24 = 0;
        while (i23 < i21) {
            int i25 = iArr[i23 >> 2] >> ((3 - (i23 & 3)) << 3);
            int i26 = i25 & 255;
            int i27 = i23 + 1;
            if (i26 > 127) {
                if ((i25 & 224) == 192) {
                    i13 = i25 & 31;
                } else {
                    if ((i25 & 240) == 224) {
                        i13 = i25 & 15;
                        i14 = 2;
                    } else if ((i25 & 248) == 240) {
                        i13 = i25 & 7;
                        i14 = 3;
                    } else {
                        _reportInvalidInitial(i26);
                        i13 = 1;
                    }
                    if (i27 + i14 > i21) {
                        _reportInvalidEOF(" in field name");
                    }
                    i15 = iArr[i27 >> 2] >> ((3 - (i27 & 3)) << 3);
                    i27 = i23 + 2;
                    if ((i15 & 192) != 128) {
                        _reportInvalidOther(i15);
                    }
                    i16 = (i13 << 6) | (i15 & 63);
                    if (i14 > 1) {
                        i18 = iArr[i27 >> 2] >> ((3 - (i27 & 3)) << 3);
                        i27 = i23 + 3;
                        if ((i18 & 192) != 128) {
                            _reportInvalidOther(i18);
                        }
                        i19 = (i16 << 6) | (i18 & 63);
                        if (i14 > 2) {
                            i20 = iArr[i27 >> 2] >> ((3 - (i27 & 3)) << 3);
                            i27 = i23 + 4;
                            if ((i20 & 192) != 128) {
                                _reportInvalidOther(i20 & 255);
                            }
                            i16 = (i19 << 6) | (i20 & 63);
                            i26 = i16;
                            i17 = 2;
                        } else {
                            i26 = i19;
                            i17 = 2;
                        }
                    } else {
                        i26 = i16;
                        i17 = 2;
                    }
                    if (i14 > i17) {
                        int i28 = i26 - 65536;
                        if (i24 >= cArrEmptyAndGetCurrentSegment.length) {
                            cArrEmptyAndGetCurrentSegment = this._textBuffer.expandCurrentSegment();
                        }
                        cArrEmptyAndGetCurrentSegment[i24] = (char) ((i28 >> 10) + 55296);
                        i26 = (i28 & 1023) | Utf8.LOG_SURROGATE_HEADER;
                        i24++;
                    }
                }
                i14 = 1;
                if (i27 + i14 > i21) {
                    _reportInvalidEOF(" in field name");
                }
                i15 = iArr[i27 >> 2] >> ((3 - (i27 & 3)) << 3);
                i27 = i23 + 2;
                if ((i15 & 192) != 128) {
                    _reportInvalidOther(i15);
                }
                i16 = (i13 << 6) | (i15 & 63);
                if (i14 > 1) {
                    i18 = iArr[i27 >> 2] >> ((3 - (i27 & 3)) << 3);
                    i27 = i23 + 3;
                    if ((i18 & 192) != 128) {
                        _reportInvalidOther(i18);
                    }
                    i19 = (i16 << 6) | (i18 & 63);
                    if (i14 > 2) {
                        i20 = iArr[i27 >> 2] >> ((3 - (i27 & 3)) << 3);
                        i27 = i23 + 4;
                        if ((i20 & 192) != 128) {
                            _reportInvalidOther(i20 & 255);
                        }
                        i16 = (i19 << 6) | (i20 & 63);
                        i26 = i16;
                        i17 = 2;
                    } else {
                        i26 = i19;
                        i17 = 2;
                    }
                } else {
                    i26 = i16;
                    i17 = 2;
                }
                if (i14 > i17) {
                    int i29 = i26 - 65536;
                    if (i24 >= cArrEmptyAndGetCurrentSegment.length) {
                        cArrEmptyAndGetCurrentSegment = this._textBuffer.expandCurrentSegment();
                    }
                    cArrEmptyAndGetCurrentSegment[i24] = (char) ((i29 >> 10) + 55296);
                    i26 = (i29 & 1023) | Utf8.LOG_SURROGATE_HEADER;
                    i24++;
                }
            }
            i23 = i27;
            if (i24 >= cArrEmptyAndGetCurrentSegment.length) {
                cArrEmptyAndGetCurrentSegment = this._textBuffer.expandCurrentSegment();
            }
            cArrEmptyAndGetCurrentSegment[i24] = (char) i26;
            i24++;
        }
        String str = new String(cArrEmptyAndGetCurrentSegment, 0, i24);
        if (i11 < 4) {
            iArr[i10 - 1] = i12;
        }
        return this._symbols.addName(str, iArr, i10);
    }

    public static int[] growArrayBy(int[] iArr, int i10) {
        return iArr == null ? new int[i10] : ArraysCompat.copyOf(iArr, iArr.length + i10);
    }

    private int nextByte() throws IOException {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        return bArr[i10] & 255;
    }

    private final Name parseName(int i10, int i11, int i12, int i13) throws IOException {
        int[] iArr = this._quadBuffer;
        iArr[0] = i10;
        return parseEscapedName(iArr, 1, i11, i12, i13);
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _closeInput() throws IOException {
        if (this._inputStream != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE)) {
                this._inputStream.close();
            }
            this._inputStream = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0032  */
    /* JADX WARN: Code duplicated, block: B:19:0x003e  */
    /* JADX WARN: Code duplicated, block: B:21:0x0046  */
    /* JADX WARN: Code duplicated, block: B:24:0x0052  */
    /* JADX WARN: Code duplicated, block: B:26:0x005a  */
    /* JADX WARN: Code duplicated, block: B:30:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    protected int _decodeCharForError(int i10) throws IOException {
        char c7;
        int iNextByte;
        int i11;
        int iNextByte2;
        int i12;
        int iNextByte3;
        if (i10 >= 0) {
            return i10;
        }
        if ((i10 & 224) != 192) {
            if ((i10 & 240) == 224) {
                i10 &= 15;
                c7 = 2;
            } else if ((i10 & 248) == 240) {
                i10 &= 7;
                c7 = 3;
            } else {
                _reportInvalidInitial(i10 & 255);
            }
            iNextByte = nextByte();
            if ((iNextByte & 192) != 128) {
                _reportInvalidOther(iNextByte & 255);
            }
            i11 = (i10 << 6) | (iNextByte & 63);
            if (c7 > 1) {
                return i11;
            }
            iNextByte2 = nextByte();
            if ((iNextByte2 & 192) != 128) {
                _reportInvalidOther(iNextByte2 & 255);
            }
            i12 = (i11 << 6) | (iNextByte2 & 63);
            if (c7 > 2) {
                return i12;
            }
            iNextByte3 = nextByte();
            if ((iNextByte3 & 192) != 128) {
                _reportInvalidOther(iNextByte3 & 255);
            }
            return (i12 << 6) | (iNextByte3 & 63);
        }
        i10 &= 31;
        c7 = 1;
        iNextByte = nextByte();
        if ((iNextByte & 192) != 128) {
            _reportInvalidOther(iNextByte & 255);
        }
        i11 = (i10 << 6) | (iNextByte & 63);
        if (c7 > 1) {
            return i11;
        }
        iNextByte2 = nextByte();
        if ((iNextByte2 & 192) != 128) {
            _reportInvalidOther(iNextByte2 & 255);
        }
        i12 = (i11 << 6) | (iNextByte2 & 63);
        if (c7 > 2) {
            return i12;
        }
        iNextByte3 = nextByte();
        if ((iNextByte3 & 192) != 128) {
            _reportInvalidOther(iNextByte3 & 255);
        }
        return (i12 << 6) | (iNextByte3 & 63);
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected char _decodeEscaped() throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in character escape sequence");
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        byte b7 = bArr[i10];
        if (b7 == 34 || b7 == 47 || b7 == 92) {
            return (char) b7;
        }
        if (b7 == 98) {
            return '\b';
        }
        if (b7 == 102) {
            return '\f';
        }
        if (b7 == 110) {
            return '\n';
        }
        if (b7 == 114) {
            return '\r';
        }
        if (b7 == 116) {
            return '\t';
        }
        if (b7 != 117) {
            return _handleUnrecognizedCharacterEscape((char) _decodeCharForError(b7));
        }
        int i11 = 0;
        for (int i12 = 0; i12 < 4; i12++) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(" in character escape sequence");
            }
            byte[] bArr2 = this._inputBuffer;
            int i13 = this._inputPtr;
            this._inputPtr = i13 + 1;
            byte b10 = bArr2[i13];
            int iCharToHex = CharTypes.charToHex(b10);
            if (iCharToHex < 0) {
                _reportUnexpectedChar(b10, "expected a hex-digit for character escape sequence");
            }
            i11 = (i11 << 4) | iCharToHex;
        }
        return (char) i11;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _finishString() throws IOException {
        int i10 = this._inputPtr;
        if (i10 >= this._inputEnd) {
            loadMoreGuaranteed();
            i10 = this._inputPtr;
        }
        char[] cArrEmptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int iMin = Math.min(this._inputEnd, cArrEmptyAndGetCurrentSegment.length + i10);
        byte[] bArr = this._inputBuffer;
        int i11 = 0;
        while (i10 < iMin) {
            int i12 = bArr[i10] & 255;
            if (iArr[i12] != 0) {
                if (i12 != 34) {
                    break;
                }
                this._inputPtr = i10 + 1;
                this._textBuffer.setCurrentLength(i11);
                return;
            }
            i10++;
            cArrEmptyAndGetCurrentSegment[i11] = (char) i12;
            i11++;
        }
        this._inputPtr = i10;
        _finishString2(cArrEmptyAndGetCurrentSegment, i11);
    }

    protected final String _getText2(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        int iId = jsonToken.id();
        if (iId != 5) {
            return (iId == 6 || iId == 7 || iId == 8) ? this._textBuffer.contentsAsString() : jsonToken.asString();
        }
        return this._parsingContext.getCurrentName();
    }

    protected JsonToken _handleApos() throws IOException {
        char[] cArrEmptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        int i10 = 0;
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            if (i10 >= cArrEmptyAndGetCurrentSegment.length) {
                cArrEmptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                i10 = 0;
            }
            int i11 = this._inputEnd;
            int length = this._inputPtr + (cArrEmptyAndGetCurrentSegment.length - i10);
            if (length < i11) {
                i11 = length;
            }
            while (true) {
                int i12 = this._inputPtr;
                if (i12 >= i11) {
                    break;
                }
                int i13 = i12 + 1;
                this._inputPtr = i13;
                int i_decodeEscaped = bArr[i12] & 255;
                if (i_decodeEscaped == 39 || iArr[i_decodeEscaped] != 0) {
                    if (i_decodeEscaped != 39) {
                        int i14 = iArr[i_decodeEscaped];
                        if (i14 != 1) {
                            if (i14 == 2) {
                                i_decodeEscaped = _decodeUtf8_2(i_decodeEscaped);
                            } else if (i14 == 3) {
                                i_decodeEscaped = this._inputEnd - i13 >= 2 ? _decodeUtf8_3fast(i_decodeEscaped) : _decodeUtf8_3(i_decodeEscaped);
                            } else if (i14 != 4) {
                                if (i_decodeEscaped < 32) {
                                    _throwUnquotedSpace(i_decodeEscaped, "string value");
                                }
                                _reportInvalidChar(i_decodeEscaped);
                            } else {
                                int i_decodeUtf8_4 = _decodeUtf8_4(i_decodeEscaped);
                                int i15 = i10 + 1;
                                cArrEmptyAndGetCurrentSegment[i10] = (char) ((i_decodeUtf8_4 >> 10) | 55296);
                                if (i15 >= cArrEmptyAndGetCurrentSegment.length) {
                                    cArrEmptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                                    i10 = 0;
                                } else {
                                    i10 = i15;
                                }
                                i_decodeEscaped = 56320 | (i_decodeUtf8_4 & 1023);
                            }
                        } else if (i_decodeEscaped != 39) {
                            i_decodeEscaped = _decodeEscaped();
                        }
                        if (i10 >= cArrEmptyAndGetCurrentSegment.length) {
                            cArrEmptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                            i10 = 0;
                        }
                        cArrEmptyAndGetCurrentSegment[i10] = (char) i_decodeEscaped;
                        i10++;
                        break;
                    }
                    this._textBuffer.setCurrentLength(i10);
                    return JsonToken.VALUE_STRING;
                }
                cArrEmptyAndGetCurrentSegment[i10] = (char) i_decodeEscaped;
                i10++;
            }
        }
    }

    protected JsonToken _handleInvalidNumberStart(int i10, boolean z6) throws IOException {
        String str;
        while (i10 == 73) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOFInValue();
            }
            byte[] bArr = this._inputBuffer;
            int i11 = this._inputPtr;
            this._inputPtr = i11 + 1;
            i10 = bArr[i11];
            if (i10 != 78) {
                if (i10 != 110) {
                    break;
                }
                str = z6 ? "-Infinity" : "+Infinity";
            } else {
                str = z6 ? "-INF" : "+INF";
            }
            _matchToken(str, 3);
            if (isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                return resetAsNaN(str, z6 ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY);
            }
            _reportError("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
        }
        reportUnexpectedNumberChar(i10, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }

    protected Name _handleOddName(int i10) throws IOException {
        if (i10 == 39 && isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
            return _parseAposName();
        }
        if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
            _reportUnexpectedChar(i10, "was expecting double-quote to start field name");
        }
        int[] inputCodeUtf8JsNames = CharTypes.getInputCodeUtf8JsNames();
        if (inputCodeUtf8JsNames[i10] != 0) {
            _reportUnexpectedChar(i10, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int[] iArrGrowArrayBy = this._quadBuffer;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i11 < 4) {
                i11++;
                i13 = i10 | (i13 << 8);
            } else {
                if (i12 >= iArrGrowArrayBy.length) {
                    iArrGrowArrayBy = growArrayBy(iArrGrowArrayBy, iArrGrowArrayBy.length);
                    this._quadBuffer = iArrGrowArrayBy;
                }
                iArrGrowArrayBy[i12] = i13;
                i13 = i10;
                i12++;
                i11 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(" in field name");
            }
            byte[] bArr = this._inputBuffer;
            int i14 = this._inputPtr;
            i10 = bArr[i14] & 255;
            if (inputCodeUtf8JsNames[i10] != 0) {
                break;
            }
            this._inputPtr = i14 + 1;
        }
        if (i11 > 0) {
            if (i12 >= iArrGrowArrayBy.length) {
                iArrGrowArrayBy = growArrayBy(iArrGrowArrayBy, iArrGrowArrayBy.length);
                this._quadBuffer = iArrGrowArrayBy;
            }
            iArrGrowArrayBy[i12] = i13;
            i12++;
        }
        Name nameFindName = this._symbols.findName(iArrGrowArrayBy, i12);
        return nameFindName == null ? addName(iArrGrowArrayBy, i12, i11) : nameFindName;
    }

    protected JsonToken _handleUnexpectedValue(int i10) throws IOException {
        if (i10 != 39) {
            if (i10 == 43) {
                if (this._inputPtr >= this._inputEnd && !loadMore()) {
                    _reportInvalidEOFInValue();
                }
                byte[] bArr = this._inputBuffer;
                int i11 = this._inputPtr;
                this._inputPtr = i11 + 1;
                return _handleInvalidNumberStart(bArr[i11] & 255, false);
            }
            if (i10 == 73) {
                _matchToken("Infinity", 1);
                if (isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                    return resetAsNaN("Infinity", Double.POSITIVE_INFINITY);
                }
                _reportError("Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            } else if (i10 == 78) {
                _matchToken("NaN", 1);
                if (isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                    return resetAsNaN("NaN", Double.NaN);
                }
                _reportError("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            }
        } else if (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
            return _handleApos();
        }
        if (Character.isJavaIdentifierStart(i10)) {
            _reportInvalidToken("" + ((char) i10), "('true', 'false' or 'null')");
        }
        _reportUnexpectedChar(i10, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
    }

    protected final boolean _loadToHaveAtLeast(int i10) throws IOException {
        if (this._inputStream == null) {
            return false;
        }
        int i11 = this._inputEnd;
        int i12 = this._inputPtr;
        int i13 = i11 - i12;
        if (i13 <= 0 || i12 <= 0) {
            this._inputEnd = 0;
        } else {
            this._currInputProcessed += (long) i12;
            this._currInputRowStart -= i12;
            byte[] bArr = this._inputBuffer;
            System.arraycopy(bArr, i12, bArr, 0, i13);
            this._inputEnd = i13;
        }
        this._inputPtr = 0;
        while (true) {
            int i14 = this._inputEnd;
            if (i14 >= i10) {
                return true;
            }
            InputStream inputStream = this._inputStream;
            byte[] bArr2 = this._inputBuffer;
            int i15 = inputStream.read(bArr2, i14, bArr2.length - i14);
            if (i15 < 1) {
                _closeInput();
                if (i15 != 0) {
                    return false;
                }
                throw new IOException("InputStream.read() returned 0 characters when trying to read " + i13 + " bytes");
            }
            this._inputEnd += i15;
        }
    }

    protected Name _parseAposName() throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(": was expecting closing ''' for name");
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        int i_decodeEscaped = bArr[i10] & 255;
        if (i_decodeEscaped == 39) {
            return BytesToNameCanonicalizer.getEmptyName();
        }
        int[] iArrGrowArrayBy = this._quadBuffer;
        int[] iArr = _icLatin1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i_decodeEscaped != 39) {
            if (i_decodeEscaped != 34 && iArr[i_decodeEscaped] != 0) {
                if (i_decodeEscaped != 92) {
                    _throwUnquotedSpace(i_decodeEscaped, "name");
                } else {
                    i_decodeEscaped = _decodeEscaped();
                }
                if (i_decodeEscaped > 127) {
                    if (i11 >= 4) {
                        if (i12 >= iArrGrowArrayBy.length) {
                            iArrGrowArrayBy = growArrayBy(iArrGrowArrayBy, iArrGrowArrayBy.length);
                            this._quadBuffer = iArrGrowArrayBy;
                        }
                        iArrGrowArrayBy[i12] = i13;
                        i13 = 0;
                        i12++;
                        i11 = 0;
                    }
                    if (i_decodeEscaped < 2048) {
                        i13 = (i13 << 8) | (i_decodeEscaped >> 6) | 192;
                        i11++;
                    } else {
                        int i14 = (i13 << 8) | (i_decodeEscaped >> 12) | 224;
                        int i15 = i11 + 1;
                        if (i15 >= 4) {
                            if (i12 >= iArrGrowArrayBy.length) {
                                iArrGrowArrayBy = growArrayBy(iArrGrowArrayBy, iArrGrowArrayBy.length);
                                this._quadBuffer = iArrGrowArrayBy;
                            }
                            iArrGrowArrayBy[i12] = i14;
                            i14 = 0;
                            i12++;
                            i15 = 0;
                        }
                        i13 = (i14 << 8) | ((i_decodeEscaped >> 6) & 63) | 128;
                        i11 = i15 + 1;
                    }
                    i_decodeEscaped = (i_decodeEscaped & 63) | 128;
                }
            }
            if (i11 < 4) {
                i11++;
                i13 = i_decodeEscaped | (i13 << 8);
            } else {
                if (i12 >= iArrGrowArrayBy.length) {
                    iArrGrowArrayBy = growArrayBy(iArrGrowArrayBy, iArrGrowArrayBy.length);
                    this._quadBuffer = iArrGrowArrayBy;
                }
                iArrGrowArrayBy[i12] = i13;
                i13 = i_decodeEscaped;
                i12++;
                i11 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(" in field name");
            }
            byte[] bArr2 = this._inputBuffer;
            int i16 = this._inputPtr;
            this._inputPtr = i16 + 1;
            i_decodeEscaped = bArr2[i16] & 255;
        }
        if (i11 > 0) {
            if (i12 >= iArrGrowArrayBy.length) {
                iArrGrowArrayBy = growArrayBy(iArrGrowArrayBy, iArrGrowArrayBy.length);
                this._quadBuffer = iArrGrowArrayBy;
            }
            iArrGrowArrayBy[i12] = i13;
            i12++;
        }
        Name nameFindName = this._symbols.findName(iArrGrowArrayBy, i12);
        return nameFindName == null ? addName(iArrGrowArrayBy, i12, i11) : nameFindName;
    }

    protected Name _parseName(int i10) throws IOException {
        if (i10 != 34) {
            return _handleOddName(i10);
        }
        int i11 = this._inputPtr;
        if (i11 + 9 > this._inputEnd) {
            return slowParseName();
        }
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i12 = i11 + 1;
        this._inputPtr = i12;
        int i13 = bArr[i11] & 255;
        if (iArr[i13] != 0) {
            return i13 == 34 ? BytesToNameCanonicalizer.getEmptyName() : parseName(0, i13, 0);
        }
        int i14 = i11 + 2;
        this._inputPtr = i14;
        int i15 = bArr[i12] & 255;
        if (iArr[i15] != 0) {
            return i15 == 34 ? findName(i13, 1) : parseName(i13, i15, 1);
        }
        int i16 = i15 | (i13 << 8);
        int i17 = i11 + 3;
        this._inputPtr = i17;
        int i18 = bArr[i14] & 255;
        if (iArr[i18] != 0) {
            return i18 == 34 ? findName(i16, 2) : parseName(i16, i18, 2);
        }
        int i19 = (i16 << 8) | i18;
        int i20 = i11 + 4;
        this._inputPtr = i20;
        int i21 = bArr[i17] & 255;
        if (iArr[i21] != 0) {
            return i21 == 34 ? findName(i19, 3) : parseName(i19, i21, 3);
        }
        int i22 = (i19 << 8) | i21;
        this._inputPtr = i11 + 5;
        int i23 = bArr[i20] & 255;
        if (iArr[i23] != 0) {
            return i23 == 34 ? findName(i22, 4) : parseName(i22, i23, 4);
        }
        this._quad1 = i22;
        return parseMediumName(i23, iArr);
    }

    protected JsonToken _parseNumber(int i10) throws IOException {
        int i11;
        char[] cArrEmptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        boolean z6 = i10 == 45;
        if (z6) {
            cArrEmptyAndGetCurrentSegment[0] = '-';
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            byte[] bArr = this._inputBuffer;
            int i12 = this._inputPtr;
            this._inputPtr = i12 + 1;
            i10 = bArr[i12] & 255;
            if (i10 < 48 || i10 > 57) {
                return _handleInvalidNumberStart(i10, true);
            }
            i11 = 1;
        } else {
            i11 = 0;
        }
        if (i10 == 48) {
            i10 = _verifyNoLeadingZeroes();
        }
        int i13 = i11 + 1;
        cArrEmptyAndGetCurrentSegment[i11] = (char) i10;
        int length = this._inputPtr + cArrEmptyAndGetCurrentSegment.length;
        int i14 = this._inputEnd;
        int i15 = 1;
        if (length > i14) {
            length = i14;
        }
        while (true) {
            int i16 = this._inputPtr;
            if (i16 >= length) {
                return _parserNumber2(cArrEmptyAndGetCurrentSegment, i13, z6, i15);
            }
            byte[] bArr2 = this._inputBuffer;
            this._inputPtr = i16 + 1;
            int i17 = bArr2[i16] & 255;
            if (i17 < 48 || i17 > 57) {
                if (i17 == 46 || i17 == 101 || i17 == 69) {
                    return _parseFloat(cArrEmptyAndGetCurrentSegment, i13, i17, z6, i15);
                }
                this._inputPtr = i16;
                this._textBuffer.setCurrentLength(i13);
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(i17);
                }
                return resetInt(z6, i15);
            }
            i15++;
            if (i13 >= cArrEmptyAndGetCurrentSegment.length) {
                cArrEmptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                i13 = 0;
            }
            cArrEmptyAndGetCurrentSegment[i13] = (char) i17;
            i13++;
        }
    }

    protected void _reportInvalidChar(int i10) throws JsonParseException {
        if (i10 < 32) {
            _throwInvalidSpace(i10);
        }
        _reportInvalidInitial(i10);
    }

    protected void _reportInvalidInitial(int i10) throws JsonParseException {
        _reportError("Invalid UTF-8 start byte 0x" + Integer.toHexString(i10));
    }

    protected void _reportInvalidOther(int i10, int i11) throws JsonParseException {
        this._inputPtr = i11;
        _reportInvalidOther(i10);
    }

    protected void _reportInvalidToken(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                break;
            }
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            this._inputPtr = i10 + 1;
            char c_decodeCharForError = (char) _decodeCharForError(bArr[i10]);
            if (!Character.isJavaIdentifierPart(c_decodeCharForError)) {
                break;
            } else {
                sb.append(c_decodeCharForError);
            }
        }
        _reportError("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
    }

    protected final void _skipCR() throws IOException {
        if (this._inputPtr < this._inputEnd || loadMore()) {
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            if (bArr[i10] == 10) {
                this._inputPtr = i10 + 1;
            }
        }
        this._currInputRow++;
        this._currInputRowStart = this._inputPtr;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_STRING && (jsonToken != JsonToken.VALUE_EMBEDDED_OBJECT || this._binaryValue == null)) {
            _reportError("Current token (" + this._currToken + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
        }
        if (this._tokenIncomplete) {
            try {
                this._binaryValue = _decodeBase64(base64Variant);
                this._tokenIncomplete = false;
            } catch (IllegalArgumentException e) {
                throw _constructError("Failed to decode VALUE_STRING as base64 (" + base64Variant + "): " + e.getMessage());
            }
        } else if (this._binaryValue == null) {
            ByteArrayBuilder byteArrayBuilder_getByteArrayBuilder = _getByteArrayBuilder();
            _decodeBase64(getText(), byteArrayBuilder_getByteArrayBuilder, base64Variant);
            this._binaryValue = byteArrayBuilder_getByteArrayBuilder.toByteArray();
        }
        return this._binaryValue;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getCurrentLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), this._currInputProcessed + ((long) this._inputPtr), -1L, this._currInputRow, (this._inputPtr - this._currInputRowStart) + 1);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getText() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_STRING) {
            return _getText2(jsonToken);
        }
        if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
        return this._textBuffer.contentsAsString();
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public char[] getTextCharacters() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null) {
            return null;
        }
        int iId = jsonToken.id();
        if (iId != 5) {
            if (iId != 6) {
                if (iId != 7 && iId != 8) {
                    return this._currToken.asCharArray();
                }
            } else if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.getTextBuffer();
        }
        if (!this._nameCopied) {
            String currentName = this._parsingContext.getCurrentName();
            int length = currentName.length();
            char[] cArr = this._nameCopyBuffer;
            if (cArr == null) {
                this._nameCopyBuffer = this._ioContext.allocNameCopyBuffer(length);
            } else if (cArr.length < length) {
                this._nameCopyBuffer = new char[length];
            }
            currentName.getChars(0, length, this._nameCopyBuffer, 0);
            this._nameCopied = true;
        }
        return this._nameCopyBuffer;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getTextLength() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == null) {
            return 0;
        }
        int iId = jsonToken.id();
        if (iId == 5) {
            return this._parsingContext.getCurrentName().length();
        }
        if (iId != 6) {
            if (iId != 7 && iId != 8) {
                return this._currToken.asCharArray().length;
            }
        } else if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
        return this._textBuffer.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0011, code lost:
    
        if (r0 != 8) goto L16;
     */
    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getTextOffset() throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != null) {
            int iId = jsonToken.id();
            if (iId != 6) {
                if (iId != 7) {
                }
            } else if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.getTextOffset();
        }
        return 0;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase, com.fasterxml.jackson.core.JsonParser
    public JsonLocation getTokenLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), getTokenCharacterOffset(), -1L, getTokenLineNr(), getTokenColumnNr());
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected final boolean loadMore() throws IOException {
        long j6 = this._currInputProcessed;
        int i10 = this._inputEnd;
        this._currInputProcessed = j6 + ((long) i10);
        this._currInputRowStart -= i10;
        InputStream inputStream = this._inputStream;
        if (inputStream != null) {
            byte[] bArr = this._inputBuffer;
            int i11 = inputStream.read(bArr, 0, bArr.length);
            if (i11 > 0) {
                this._inputPtr = 0;
                this._inputEnd = i11;
                return true;
            }
            _closeInput();
            if (i11 == 0) {
                throw new IOException("InputStream.read() returned 0 characters when trying to read " + this._inputBuffer.length + " bytes");
            }
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Boolean nextBooleanValue() throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            int iId = nextToken().id();
            if (iId == 9) {
                return Boolean.TRUE;
            }
            if (iId != 10) {
                return null;
            }
            return Boolean.FALSE;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (jsonToken == JsonToken.VALUE_FALSE) {
            return Boolean.FALSE;
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int nextIntValue(int i10) throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            return nextToken() == JsonToken.VALUE_NUMBER_INT ? getIntValue() : i10;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return getIntValue();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        return i10;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long nextLongValue(long j6) throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            return nextToken() == JsonToken.VALUE_NUMBER_INT ? getLongValue() : j6;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return getLongValue();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        return j6;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String nextTextValue() throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            if (nextToken() == JsonToken.VALUE_STRING) {
                return getText();
            }
            return null;
        }
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        this._currToken = jsonToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.contentsAsString();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        return null;
    }

    protected Name parseEscapedName(int[] iArr, int i10, int i11, int i12, int i13) throws IOException {
        int[] iArr2 = _icLatin1;
        while (true) {
            if (iArr2[i12] != 0) {
                if (i12 == 34) {
                    break;
                }
                if (i12 != 92) {
                    _throwUnquotedSpace(i12, "name");
                } else {
                    i12 = _decodeEscaped();
                }
                if (i12 > 127) {
                    int i14 = 0;
                    if (i13 >= 4) {
                        if (i10 >= iArr.length) {
                            iArr = growArrayBy(iArr, iArr.length);
                            this._quadBuffer = iArr;
                        }
                        iArr[i10] = i11;
                        i10++;
                        i11 = 0;
                        i13 = 0;
                    }
                    if (i12 < 2048) {
                        i11 = (i11 << 8) | (i12 >> 6) | 192;
                        i13++;
                    } else {
                        int i15 = (i11 << 8) | (i12 >> 12) | 224;
                        int i16 = i13 + 1;
                        if (i16 >= 4) {
                            if (i10 >= iArr.length) {
                                iArr = growArrayBy(iArr, iArr.length);
                                this._quadBuffer = iArr;
                            }
                            iArr[i10] = i15;
                            i10++;
                            i16 = 0;
                        } else {
                            i14 = i15;
                        }
                        i11 = (i14 << 8) | ((i12 >> 6) & 63) | 128;
                        i13 = i16 + 1;
                    }
                    i12 = (i12 & 63) | 128;
                }
            }
            if (i13 < 4) {
                i13++;
                i11 = (i11 << 8) | i12;
            } else {
                if (i10 >= iArr.length) {
                    iArr = growArrayBy(iArr, iArr.length);
                    this._quadBuffer = iArr;
                }
                iArr[i10] = i11;
                i11 = i12;
                i10++;
                i13 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(" in field name");
            }
            byte[] bArr = this._inputBuffer;
            int i17 = this._inputPtr;
            this._inputPtr = i17 + 1;
            i12 = bArr[i17] & 255;
        }
        if (i13 > 0) {
            if (i10 >= iArr.length) {
                iArr = growArrayBy(iArr, iArr.length);
                this._quadBuffer = iArr;
            }
            iArr[i10] = i11;
            i10++;
        }
        Name nameFindName = this._symbols.findName(iArr, i10);
        return nameFindName == null ? addName(iArr, i10, i13) : nameFindName;
    }

    protected Name parseLongName(int i10) throws IOException {
        int[] iArr = _icLatin1;
        int i11 = 2;
        while (true) {
            int i12 = this._inputEnd;
            int i13 = this._inputPtr;
            if (i12 - i13 < 4) {
                return parseEscapedName(this._quadBuffer, i11, 0, i10, 0);
            }
            byte[] bArr = this._inputBuffer;
            int i14 = i13 + 1;
            this._inputPtr = i14;
            int i15 = bArr[i13] & 255;
            if (iArr[i15] != 0) {
                return i15 == 34 ? findName(this._quadBuffer, i11, i10, 1) : parseEscapedName(this._quadBuffer, i11, i10, i15, 1);
            }
            int i16 = (i10 << 8) | i15;
            int i17 = i13 + 2;
            this._inputPtr = i17;
            int i18 = bArr[i14] & 255;
            if (iArr[i18] != 0) {
                return i18 == 34 ? findName(this._quadBuffer, i11, i16, 2) : parseEscapedName(this._quadBuffer, i11, i16, i18, 2);
            }
            int i19 = (i16 << 8) | i18;
            int i20 = i13 + 3;
            this._inputPtr = i20;
            int i21 = bArr[i17] & 255;
            if (iArr[i21] != 0) {
                return i21 == 34 ? findName(this._quadBuffer, i11, i19, 3) : parseEscapedName(this._quadBuffer, i11, i19, i21, 3);
            }
            int i22 = (i19 << 8) | i21;
            this._inputPtr = i13 + 4;
            int i23 = bArr[i20] & 255;
            if (iArr[i23] != 0) {
                return i23 == 34 ? findName(this._quadBuffer, i11, i22, 4) : parseEscapedName(this._quadBuffer, i11, i22, i23, 4);
            }
            int[] iArr2 = this._quadBuffer;
            if (i11 >= iArr2.length) {
                this._quadBuffer = growArrayBy(iArr2, i11);
            }
            this._quadBuffer[i11] = i22;
            i11++;
            i10 = i23;
        }
    }

    protected Name parseMediumName(int i10, int[] iArr) throws IOException {
        byte[] bArr = this._inputBuffer;
        int i11 = this._inputPtr;
        int i12 = i11 + 1;
        this._inputPtr = i12;
        int i13 = bArr[i11] & 255;
        if (iArr[i13] != 0) {
            return i13 == 34 ? findName(this._quad1, i10, 1) : parseName(this._quad1, i10, i13, 1);
        }
        int i14 = (i10 << 8) | i13;
        int i15 = i11 + 2;
        this._inputPtr = i15;
        int i16 = bArr[i12] & 255;
        if (iArr[i16] != 0) {
            return i16 == 34 ? findName(this._quad1, i14, 2) : parseName(this._quad1, i14, i16, 2);
        }
        int i17 = (i14 << 8) | i16;
        int i18 = i11 + 3;
        this._inputPtr = i18;
        int i19 = bArr[i15] & 255;
        if (iArr[i19] != 0) {
            return i19 == 34 ? findName(this._quad1, i17, 3) : parseName(this._quad1, i17, i19, 3);
        }
        int i20 = (i17 << 8) | i19;
        this._inputPtr = i11 + 4;
        int i21 = bArr[i18] & 255;
        if (iArr[i21] != 0) {
            return i21 == 34 ? findName(this._quad1, i20, 4) : parseName(this._quad1, i20, i21, 4);
        }
        int[] iArr2 = this._quadBuffer;
        iArr2[0] = this._quad1;
        iArr2[1] = i20;
        return parseLongName(i21);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        if (!this._tokenIncomplete || this._currToken != JsonToken.VALUE_STRING) {
            byte[] binaryValue = getBinaryValue(base64Variant);
            outputStream.write(binaryValue);
            return binaryValue.length;
        }
        byte[] bArrAllocBase64Buffer = this._ioContext.allocBase64Buffer();
        try {
            return _readBinary(base64Variant, outputStream, bArrAllocBase64Buffer);
        } finally {
            this._ioContext.releaseBase64Buffer(bArrAllocBase64Buffer);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int releaseBuffered(OutputStream outputStream) throws IOException {
        int i10 = this._inputEnd;
        int i11 = this._inputPtr;
        int i12 = i10 - i11;
        if (i12 < 1) {
            return 0;
        }
        outputStream.write(this._inputBuffer, i11, i12);
        return i12;
    }

    protected Name slowParseName() throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(": was expecting closing '\"' for name");
        }
        byte[] bArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        int i11 = bArr[i10] & 255;
        return i11 == 34 ? BytesToNameCanonicalizer.getEmptyName() : parseEscapedName(this._quadBuffer, 0, 0, i11, 0);
    }

    public UTF8StreamJsonParser(IOContext iOContext, int i10, InputStream inputStream, ObjectCodec objectCodec, BytesToNameCanonicalizer bytesToNameCanonicalizer, byte[] bArr, int i11, int i12, boolean z6) {
        super(iOContext, i10);
        this._quadBuffer = new int[16];
        this._tokenIncomplete = false;
        this._inputStream = inputStream;
        this._objectCodec = objectCodec;
        this._symbols = bytesToNameCanonicalizer;
        this._inputBuffer = bArr;
        this._inputPtr = i11;
        this._inputEnd = i12;
        this._currInputRowStart = i11;
        this._currInputProcessed = -i11;
        this._bufferRecyclable = z6;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0073  */
    /* JADX WARN: Code duplicated, block: B:33:0x0084  */
    private final boolean _isNextTokenNameMaybe(int i10, SerializableString serializableString) throws IOException {
        JsonToken jsonToken_parseNumber;
        String name = _parseName(i10).getName();
        this._parsingContext.setCurrentName(name);
        boolean zEquals = name.equals(serializableString.getValue());
        this._currToken = JsonToken.FIELD_NAME;
        int i_skipWS = _skipWS();
        if (i_skipWS != 58) {
            _reportUnexpectedChar(i_skipWS, "was expecting a colon to separate field name and value");
        }
        int i_skipWS2 = _skipWS();
        if (i_skipWS2 == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
            return zEquals;
        }
        if (i_skipWS2 != 45) {
            if (i_skipWS2 != 91) {
                if (i_skipWS2 != 93) {
                    if (i_skipWS2 != 102) {
                        if (i_skipWS2 != 110) {
                            if (i_skipWS2 != 116) {
                                if (i_skipWS2 != 123) {
                                    if (i_skipWS2 == 125) {
                                        _reportUnexpectedChar(i_skipWS2, "expected a value");
                                        _matchToken("true", 1);
                                        jsonToken_parseNumber = JsonToken.VALUE_TRUE;
                                    } else {
                                        switch (i_skipWS2) {
                                            case 48:
                                            case 49:
                                            case 50:
                                            case 51:
                                            case 52:
                                            case 53:
                                            case 54:
                                            case 55:
                                            case 56:
                                            case 57:
                                                jsonToken_parseNumber = _parseNumber(i_skipWS2);
                                                break;
                                            default:
                                                jsonToken_parseNumber = _handleUnexpectedValue(i_skipWS2);
                                                break;
                                        }
                                    }
                                } else {
                                    jsonToken_parseNumber = JsonToken.START_OBJECT;
                                }
                            } else {
                                _matchToken("true", 1);
                                jsonToken_parseNumber = JsonToken.VALUE_TRUE;
                            }
                        } else {
                            _matchToken("null", 1);
                            jsonToken_parseNumber = JsonToken.VALUE_NULL;
                        }
                    } else {
                        _matchToken("false", 1);
                        jsonToken_parseNumber = JsonToken.VALUE_FALSE;
                    }
                } else {
                    _reportUnexpectedChar(i_skipWS2, "expected a value");
                    _matchToken("true", 1);
                    jsonToken_parseNumber = JsonToken.VALUE_TRUE;
                }
            } else {
                jsonToken_parseNumber = JsonToken.START_ARRAY;
            }
        } else {
            jsonToken_parseNumber = _parseNumber(i_skipWS2);
        }
        this._nextToken = jsonToken_parseNumber;
        return zEquals;
    }

    private final void _skipCComment() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                break;
            }
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            int i12 = bArr[i10] & 255;
            int i13 = inputCodeComment[i12];
            if (i13 != 0) {
                if (i13 != 2) {
                    if (i13 != 3) {
                        if (i13 != 4) {
                            if (i13 != 10) {
                                if (i13 != 13) {
                                    if (i13 != 42) {
                                        _reportInvalidChar(i12);
                                    } else {
                                        if (i11 >= this._inputEnd && !loadMore()) {
                                            break;
                                        }
                                        byte[] bArr2 = this._inputBuffer;
                                        int i14 = this._inputPtr;
                                        if (bArr2[i14] == 47) {
                                            this._inputPtr = i14 + 1;
                                            return;
                                        }
                                    }
                                } else {
                                    _skipCR();
                                }
                            } else {
                                this._currInputRow++;
                                this._currInputRowStart = i11;
                            }
                        } else {
                            _skipUtf8_4(i12);
                        }
                    } else {
                        _skipUtf8_3(i12);
                    }
                } else {
                    _skipUtf8_2(i12);
                }
            }
        }
        _reportInvalidEOF(" in a comment");
    }

    private final void _skipLine() throws IOException {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                return;
            }
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            int i12 = bArr[i10] & 255;
            int i13 = inputCodeComment[i12];
            if (i13 != 0) {
                if (i13 != 2) {
                    if (i13 != 3) {
                        if (i13 != 4) {
                            if (i13 != 10) {
                                if (i13 != 13) {
                                    if (i13 != 42 && i13 < 0) {
                                        _reportInvalidChar(i12);
                                    }
                                } else {
                                    _skipCR();
                                    return;
                                }
                            } else {
                                this._currInputRow++;
                                this._currInputRowStart = i11;
                                return;
                            }
                        } else {
                            _skipUtf8_4(i12);
                        }
                    } else {
                        _skipUtf8_3(i12);
                    }
                } else {
                    _skipUtf8_2(i12);
                }
            }
        }
    }

    protected final byte[] _decodeBase64(Base64Variant base64Variant) throws IOException {
        ByteArrayBuilder byteArrayBuilder_getByteArrayBuilder = _getByteArrayBuilder();
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            byte[] bArr = this._inputBuffer;
            int i10 = this._inputPtr;
            this._inputPtr = i10 + 1;
            int i11 = bArr[i10] & 255;
            if (i11 > 32) {
                int iDecodeBase64Char = base64Variant.decodeBase64Char(i11);
                if (iDecodeBase64Char < 0) {
                    if (i11 == 34) {
                        return byteArrayBuilder_getByteArrayBuilder.toByteArray();
                    }
                    iDecodeBase64Char = _decodeBase64Escape(base64Variant, i11, 0);
                    if (iDecodeBase64Char < 0) {
                        continue;
                    }
                }
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                byte[] bArr2 = this._inputBuffer;
                int i12 = this._inputPtr;
                this._inputPtr = i12 + 1;
                int i13 = bArr2[i12] & 255;
                int iDecodeBase64Char2 = base64Variant.decodeBase64Char(i13);
                if (iDecodeBase64Char2 < 0) {
                    iDecodeBase64Char2 = _decodeBase64Escape(base64Variant, i13, 1);
                }
                int i14 = (iDecodeBase64Char << 6) | iDecodeBase64Char2;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i15 = this._inputPtr;
                this._inputPtr = i15 + 1;
                int i16 = bArr3[i15] & 255;
                int iDecodeBase64Char3 = base64Variant.decodeBase64Char(i16);
                if (iDecodeBase64Char3 < 0) {
                    if (iDecodeBase64Char3 != -2) {
                        if (i16 == 34 && !base64Variant.usesPadding()) {
                            byteArrayBuilder_getByteArrayBuilder.append(i14 >> 4);
                            return byteArrayBuilder_getByteArrayBuilder.toByteArray();
                        }
                        iDecodeBase64Char3 = _decodeBase64Escape(base64Variant, i16, 2);
                    }
                    if (iDecodeBase64Char3 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            loadMoreGuaranteed();
                        }
                        byte[] bArr4 = this._inputBuffer;
                        int i17 = this._inputPtr;
                        this._inputPtr = i17 + 1;
                        int i18 = bArr4[i17] & 255;
                        if (base64Variant.usesPaddingChar(i18)) {
                            byteArrayBuilder_getByteArrayBuilder.append(i14 >> 4);
                        } else {
                            throw reportInvalidBase64Char(base64Variant, i18, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                    }
                }
                int i19 = (i14 << 6) | iDecodeBase64Char3;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                byte[] bArr5 = this._inputBuffer;
                int i20 = this._inputPtr;
                this._inputPtr = i20 + 1;
                int i21 = bArr5[i20] & 255;
                int iDecodeBase64Char4 = base64Variant.decodeBase64Char(i21);
                if (iDecodeBase64Char4 < 0) {
                    if (iDecodeBase64Char4 != -2) {
                        if (i21 == 34 && !base64Variant.usesPadding()) {
                            byteArrayBuilder_getByteArrayBuilder.appendTwoBytes(i19 >> 2);
                            return byteArrayBuilder_getByteArrayBuilder.toByteArray();
                        }
                        iDecodeBase64Char4 = _decodeBase64Escape(base64Variant, i21, 3);
                    }
                    if (iDecodeBase64Char4 == -2) {
                        byteArrayBuilder_getByteArrayBuilder.appendTwoBytes(i19 >> 2);
                    }
                }
                byteArrayBuilder_getByteArrayBuilder.appendThreeBytes((i19 << 6) | iDecodeBase64Char4);
            }
        }
    }

    protected void _matchToken(String str, int i10) throws IOException {
        int i11;
        int i12;
        int length = str.length();
        do {
            if ((this._inputPtr >= this._inputEnd && !loadMore()) || this._inputBuffer[this._inputPtr] != str.charAt(i10)) {
                _reportInvalidToken(str.substring(0, i10));
            }
            i11 = this._inputPtr + 1;
            this._inputPtr = i11;
            i10++;
        } while (i10 < length);
        if ((i11 < this._inputEnd || loadMore()) && (i12 = this._inputBuffer[this._inputPtr] & 255) >= 48 && i12 != 93 && i12 != 125 && Character.isJavaIdentifierPart((char) _decodeCharForError(i12))) {
            _reportInvalidToken(str.substring(0, i10));
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _releaseBuffers() throws IOException {
        byte[] bArr;
        super._releaseBuffers();
        this._symbols.release();
        if (this._bufferRecyclable && (bArr = this._inputBuffer) != null) {
            this._inputBuffer = null;
            this._ioContext.releaseReadIOBuffer(bArr);
        }
    }

    private final Name findName(int i10, int i11, int i12) throws JsonParseException {
        Name nameFindName = this._symbols.findName(i10, i11);
        if (nameFindName != null) {
            return nameFindName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i10;
        iArr[1] = i11;
        return addName(iArr, 2, i12);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getValueAsString(String str) throws IOException {
        if (this._currToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                _finishString();
            }
            return this._textBuffer.contentsAsString();
        }
        return super.getValueAsString(str);
    }

    private final Name findName(int[] iArr, int i10, int i11, int i12) throws JsonParseException {
        if (i10 >= iArr.length) {
            iArr = growArrayBy(iArr, iArr.length);
            this._quadBuffer = iArr;
        }
        int i13 = i10 + 1;
        iArr[i10] = i11;
        Name nameFindName = this._symbols.findName(iArr, i13);
        return nameFindName == null ? addName(iArr, i13, i12) : nameFindName;
    }
}
