package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.base.ParserMinimalBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes6.dex */
public final class ReaderBasedJsonParser extends ParserBase {
    protected static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();
    private static final int[] _icWS = CharTypes.getInputCodeWS();
    protected final int _hashSeed;
    protected char[] _inputBuffer;
    protected ObjectCodec _objectCodec;
    protected Reader _reader;
    protected final CharsToNameCanonicalizer _symbols;
    protected boolean _tokenIncomplete;

    private JsonToken _nextAfterName() {
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

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r15v0 ??, r15v2 ??, r15v22 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    protected com.fasterxml.jackson.core.JsonToken _parseNumber(
    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r15v0 ??, r15v2 ??, r15v22 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r15v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    protected int _readBinary(Base64Variant base64Variant, OutputStream outputStream, byte[] bArr) throws IOException {
        int length = bArr.length - 3;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            char[] cArr = this._inputBuffer;
            int i12 = this._inputPtr;
            this._inputPtr = i12 + 1;
            char c7 = cArr[i12];
            if (c7 > ' ') {
                int iDecodeBase64Char = base64Variant.decodeBase64Char(c7);
                if (iDecodeBase64Char < 0) {
                    if (c7 == '\"') {
                        break;
                    }
                    iDecodeBase64Char = _decodeBase64Escape(base64Variant, c7, 0);
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
                char[] cArr2 = this._inputBuffer;
                int i13 = this._inputPtr;
                this._inputPtr = i13 + 1;
                char c10 = cArr2[i13];
                int iDecodeBase64Char2 = base64Variant.decodeBase64Char(c10);
                if (iDecodeBase64Char2 < 0) {
                    iDecodeBase64Char2 = _decodeBase64Escape(base64Variant, c10, 1);
                }
                int i14 = (iDecodeBase64Char << 6) | iDecodeBase64Char2;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                char[] cArr3 = this._inputBuffer;
                int i15 = this._inputPtr;
                this._inputPtr = i15 + 1;
                char c11 = cArr3[i15];
                int iDecodeBase64Char3 = base64Variant.decodeBase64Char(c11);
                if (iDecodeBase64Char3 < 0) {
                    if (iDecodeBase64Char3 != -2) {
                        if (c11 == '\"' && !base64Variant.usesPadding()) {
                            bArr[i10] = (byte) (i14 >> 4);
                            i10++;
                            break;
                        }
                        iDecodeBase64Char3 = _decodeBase64Escape(base64Variant, c11, 2);
                    }
                    if (iDecodeBase64Char3 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            loadMoreGuaranteed();
                        }
                        char[] cArr4 = this._inputBuffer;
                        int i16 = this._inputPtr;
                        this._inputPtr = i16 + 1;
                        char c12 = cArr4[i16];
                        if (!base64Variant.usesPaddingChar(c12)) {
                            throw reportInvalidBase64Char(base64Variant, c12, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        bArr[i10] = (byte) (i14 >> 4);
                        i10++;
                    }
                }
                int i17 = (i14 << 6) | iDecodeBase64Char3;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                char[] cArr5 = this._inputBuffer;
                int i18 = this._inputPtr;
                this._inputPtr = i18 + 1;
                char c13 = cArr5[i18];
                int iDecodeBase64Char4 = base64Variant.decodeBase64Char(c13);
                if (iDecodeBase64Char4 < 0) {
                    if (iDecodeBase64Char4 != -2) {
                        if (c13 == '\"' && !base64Variant.usesPadding()) {
                            int i19 = i10 + 1;
                            bArr[i10] = (byte) (i17 >> 10);
                            i10 += 2;
                            bArr[i19] = (byte) (i17 >> 2);
                            break;
                        }
                        iDecodeBase64Char4 = _decodeBase64Escape(base64Variant, c13, 3);
                    }
                    if (iDecodeBase64Char4 == -2) {
                        int i20 = i10 + 1;
                        bArr[i10] = (byte) (i17 >> 10);
                        i10 += 2;
                        bArr[i20] = (byte) (i17 >> 2);
                    }
                }
                int i21 = (i17 << 6) | iDecodeBase64Char4;
                bArr[i10] = (byte) (i21 >> 16);
                int i22 = i10 + 2;
                bArr[i10 + 1] = (byte) (i21 >> 8);
                i10 += 3;
                bArr[i22] = (byte) i21;
            }
        }
        this._tokenIncomplete = false;
        if (i10 <= 0) {
            return i11;
        }
        int i23 = i11 + i10;
        outputStream.write(bArr, 0, i10);
        return i23;
    }

    protected void _reportInvalidToken(String str) throws IOException {
        _reportInvalidToken(str, "'null', 'true', 'false' or NaN");
    }

    protected void _skipString() throws IOException {
        this._tokenIncomplete = false;
        int i10 = this._inputPtr;
        int i11 = this._inputEnd;
        char[] cArr = this._inputBuffer;
        while (true) {
            if (i10 >= i11) {
                this._inputPtr = i10;
                if (!loadMore()) {
                    _reportInvalidEOF(": was expecting closing quote for a string value");
                }
                i10 = this._inputPtr;
                i11 = this._inputEnd;
            }
            int i12 = i10 + 1;
            char c7 = cArr[i10];
            if (c7 <= '\\') {
                if (c7 == '\\') {
                    this._inputPtr = i12;
                    _decodeEscaped();
                    i10 = this._inputPtr;
                    i11 = this._inputEnd;
                } else if (c7 <= '\"') {
                    if (c7 == '\"') {
                        this._inputPtr = i12;
                        return;
                    } else if (c7 < ' ') {
                        this._inputPtr = i12;
                        _throwUnquotedSpace(c7, "string value");
                    }
                }
            }
            i10 = i12;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public ObjectCodec getCodec() {
        return this._objectCodec;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getInputSource() {
        return this._reader;
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

    /* JADX WARN: Code duplicated, block: B:61:0x0111  */
    /* JADX WARN: Code duplicated, block: B:66:0x0130  */
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
        boolean zInObject = this._parsingContext.inObject();
        if (zInObject) {
            this._parsingContext.setCurrentName(_parseName(i_skipWSOrEnd));
            this._currToken = jsonToken2;
            int i_skipWS = _skipWS();
            if (i_skipWS != 58) {
                _reportUnexpectedChar(i_skipWS, "was expecting a colon to separate field name and value");
            }
            i_skipWSOrEnd = _skipWS();
        }
        if (i_skipWSOrEnd == 34) {
            this._tokenIncomplete = true;
            jsonToken_parseNumber = JsonToken.VALUE_STRING;
        } else if (i_skipWSOrEnd == 45) {
            jsonToken_parseNumber = _parseNumber(i_skipWSOrEnd);
        } else if (i_skipWSOrEnd == 91) {
            if (!zInObject) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            }
            jsonToken_parseNumber = JsonToken.START_ARRAY;
        } else if (i_skipWSOrEnd == 93) {
            _reportUnexpectedChar(i_skipWSOrEnd, "expected a value");
            _matchToken("true", 1);
            jsonToken_parseNumber = JsonToken.VALUE_TRUE;
        } else if (i_skipWSOrEnd == 102) {
            _matchToken("false", 1);
            jsonToken_parseNumber = JsonToken.VALUE_FALSE;
        } else if (i_skipWSOrEnd == 110) {
            _matchToken("null", 1);
            jsonToken_parseNumber = JsonToken.VALUE_NULL;
        } else if (i_skipWSOrEnd == 116) {
            _matchToken("true", 1);
            jsonToken_parseNumber = JsonToken.VALUE_TRUE;
        } else if (i_skipWSOrEnd == 123) {
            if (!zInObject) {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            }
            jsonToken_parseNumber = JsonToken.START_OBJECT;
        } else if (i_skipWSOrEnd != 125) {
            switch (i_skipWSOrEnd) {
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
                    jsonToken_parseNumber = _parseNumber(i_skipWSOrEnd);
                    break;
                default:
                    jsonToken_parseNumber = _handleOddValue(i_skipWSOrEnd);
                    break;
            }
        } else {
            _reportUnexpectedChar(i_skipWSOrEnd, "expected a value");
            _matchToken("true", 1);
            jsonToken_parseNumber = JsonToken.VALUE_TRUE;
        }
        if (zInObject) {
            this._nextToken = jsonToken_parseNumber;
            return this._currToken;
        }
        this._currToken = jsonToken_parseNumber;
        return jsonToken_parseNumber;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0069 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x0061 A[SYNTHETIC] */
    private String _handleOddName2(int i10, int i11, int[] iArr) throws IOException {
        int i12;
        this._textBuffer.resetWithShared(this._inputBuffer, i10, this._inputPtr - i10);
        char[] currentSegment = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        int length = iArr.length;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                break;
            }
            char c7 = this._inputBuffer[this._inputPtr];
            if (c7 <= length) {
                if (iArr[c7] != 0) {
                    break;
                }
                this._inputPtr++;
                i11 = (i11 * 33) + c7;
                i12 = currentSegmentSize + 1;
                currentSegment[currentSegmentSize] = c7;
                if (i12 >= currentSegment.length) {
                    currentSegment = this._textBuffer.finishCurrentSegment();
                    currentSegmentSize = 0;
                } else {
                    currentSegmentSize = i12;
                }
            } else {
                if (!Character.isJavaIdentifierPart(c7)) {
                    break;
                }
                this._inputPtr++;
                i11 = (i11 * 33) + c7;
                i12 = currentSegmentSize + 1;
                currentSegment[currentSegmentSize] = c7;
                if (i12 >= currentSegment.length) {
                    currentSegment = this._textBuffer.finishCurrentSegment();
                    currentSegmentSize = 0;
                } else {
                    currentSegmentSize = i12;
                }
            }
        }
        this._textBuffer.setCurrentLength(currentSegmentSize);
        TextBuffer textBuffer = this._textBuffer;
        return this._symbols.findSymbol(textBuffer.getTextBuffer(), textBuffer.getTextOffset(), textBuffer.size(), i11);
    }

    private String _parseName2(int i10, int i11, int i12) throws IOException {
        char c_decodeEscaped;
        this._textBuffer.resetWithShared(this._inputBuffer, i10, this._inputPtr - i10);
        char[] currentSegment = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(": was expecting closing '" + ((char) i12) + "' for name");
            }
            char[] cArr = this._inputBuffer;
            int i13 = this._inputPtr;
            this._inputPtr = i13 + 1;
            char c7 = cArr[i13];
            if (c7 > '\\') {
                c_decodeEscaped = c7;
            } else if (c7 == '\\') {
                c_decodeEscaped = _decodeEscaped();
            } else {
                if (c7 <= i12) {
                    if (c7 == i12) {
                        this._textBuffer.setCurrentLength(currentSegmentSize);
                        TextBuffer textBuffer = this._textBuffer;
                        return this._symbols.findSymbol(textBuffer.getTextBuffer(), textBuffer.getTextOffset(), textBuffer.size(), i11);
                    }
                    if (c7 < ' ') {
                        _throwUnquotedSpace(c7, "name");
                    }
                }
                c_decodeEscaped = c7;
            }
            i11 = (i11 * 33) + c7;
            int i14 = currentSegmentSize + 1;
            currentSegment[currentSegmentSize] = c_decodeEscaped;
            if (i14 >= currentSegment.length) {
                currentSegment = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            } else {
                currentSegmentSize = i14;
            }
        }
    }

    private JsonToken _parseNumber2(boolean z6) throws IOException {
        int i10;
        char nextChar;
        boolean z10;
        int i11;
        char nextChar2;
        char[] cArrEmptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int i12 = 0;
        if (z6) {
            cArrEmptyAndGetCurrentSegment[0] = '-';
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i13 = this._inputPtr;
        if (i13 < this._inputEnd) {
            char[] cArr = this._inputBuffer;
            this._inputPtr = i13 + 1;
            nextChar = cArr[i13];
        } else {
            nextChar = getNextChar("No digit following minus sign");
        }
        if (nextChar == '0') {
            nextChar = _verifyNoLeadingZeroes();
        }
        int i14 = 0;
        while (true) {
            if (nextChar >= '0' && nextChar <= '9') {
                i14++;
                if (i10 >= cArrEmptyAndGetCurrentSegment.length) {
                    cArrEmptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                    i10 = 0;
                }
                int i15 = i10 + 1;
                cArrEmptyAndGetCurrentSegment[i10] = nextChar;
                if (this._inputPtr >= this._inputEnd && !loadMore()) {
                    nextChar = 0;
                    i10 = i15;
                    z10 = true;
                    break;
                }
                char[] cArr2 = this._inputBuffer;
                int i16 = this._inputPtr;
                this._inputPtr = i16 + 1;
                nextChar = cArr2[i16];
                i10 = i15;
            } else {
                z10 = false;
                break;
            }
        }
        if (i14 == 0) {
            reportInvalidNumber("Missing integer part (next char " + ParserMinimalBase._getCharDesc(nextChar) + ")");
        }
        if (nextChar == '.') {
            cArrEmptyAndGetCurrentSegment[i10] = nextChar;
            i10++;
            i11 = 0;
            while (true) {
                if (this._inputPtr >= this._inputEnd && !loadMore()) {
                    z10 = true;
                    break;
                }
                char[] cArr3 = this._inputBuffer;
                int i17 = this._inputPtr;
                this._inputPtr = i17 + 1;
                nextChar = cArr3[i17];
                if (nextChar < '0' || nextChar > '9') {
                    break;
                }
                i11++;
                if (i10 >= cArrEmptyAndGetCurrentSegment.length) {
                    cArrEmptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                    i10 = 0;
                }
                cArrEmptyAndGetCurrentSegment[i10] = nextChar;
                i10++;
            }
            if (i11 == 0) {
                reportUnexpectedNumberChar(nextChar, "Decimal point not followed by a digit");
            }
        } else {
            i11 = 0;
        }
        if (nextChar == 'e' || nextChar == 'E') {
            if (i10 >= cArrEmptyAndGetCurrentSegment.length) {
                cArrEmptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                i10 = 0;
            }
            int i18 = i10 + 1;
            cArrEmptyAndGetCurrentSegment[i10] = nextChar;
            int i19 = this._inputPtr;
            if (i19 < this._inputEnd) {
                char[] cArr4 = this._inputBuffer;
                this._inputPtr = i19 + 1;
                nextChar2 = cArr4[i19];
            } else {
                nextChar2 = getNextChar("expected a digit for number exponent");
            }
            if (nextChar2 == '-' || nextChar2 == '+') {
                if (i18 >= cArrEmptyAndGetCurrentSegment.length) {
                    cArrEmptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                    i18 = 0;
                }
                int i20 = i18 + 1;
                cArrEmptyAndGetCurrentSegment[i18] = nextChar2;
                int i21 = this._inputPtr;
                if (i21 < this._inputEnd) {
                    char[] cArr5 = this._inputBuffer;
                    this._inputPtr = i21 + 1;
                    nextChar2 = cArr5[i21];
                } else {
                    nextChar2 = getNextChar("expected a digit for number exponent");
                }
                i18 = i20;
            }
            int i22 = 0;
            nextChar = nextChar2;
            while (true) {
                if (nextChar <= '9' && nextChar >= '0') {
                    i22++;
                    if (i18 >= cArrEmptyAndGetCurrentSegment.length) {
                        cArrEmptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                        i18 = 0;
                    }
                    i10 = i18 + 1;
                    cArrEmptyAndGetCurrentSegment[i18] = nextChar;
                    if (this._inputPtr >= this._inputEnd && !loadMore()) {
                        i12 = i22;
                        z10 = true;
                        break;
                    }
                    char[] cArr6 = this._inputBuffer;
                    int i23 = this._inputPtr;
                    this._inputPtr = i23 + 1;
                    nextChar = cArr6[i23];
                    i18 = i10;
                } else {
                    i12 = i22;
                    i10 = i18;
                    break;
                }
            }
            if (i12 == 0) {
                reportUnexpectedNumberChar(nextChar, "Exponent indicator not followed by a digit");
            }
        }
        if (!z10) {
            this._inputPtr--;
            if (this._parsingContext.inRoot()) {
                _verifyRootSpace(nextChar);
            }
        }
        this._textBuffer.setCurrentLength(i10);
        return reset(z6, i14, i11, i12);
    }

    private void _skipCComment() throws IOException {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                break;
            }
            char[] cArr = this._inputBuffer;
            int i10 = this._inputPtr;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            char c7 = cArr[i10];
            if (c7 <= '*') {
                if (c7 == '*') {
                    if (i11 >= this._inputEnd && !loadMore()) {
                        break;
                    }
                    char[] cArr2 = this._inputBuffer;
                    int i12 = this._inputPtr;
                    if (cArr2[i12] == '/') {
                        this._inputPtr = i12 + 1;
                        return;
                    }
                } else if (c7 < ' ') {
                    if (c7 == '\n') {
                        this._currInputRow++;
                        this._currInputRowStart = i11;
                    } else if (c7 == '\r') {
                        _skipCR();
                    } else if (c7 != '\t') {
                        _throwInvalidSpace(c7);
                    }
                }
            }
        }
        _reportInvalidEOF(" in a comment");
    }

    private void _skipComment() throws IOException {
        if (!isEnabled(JsonParser.Feature.ALLOW_COMMENTS)) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in a comment");
        }
        char[] cArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        char c7 = cArr[i10];
        if (c7 == '/') {
            _skipLine();
        } else if (c7 == '*') {
            _skipCComment();
        } else {
            _reportUnexpectedChar(c7, "was expecting either '*' or '/' for a comment");
        }
    }

    private void _skipLine() throws IOException {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                return;
            }
            char[] cArr = this._inputBuffer;
            int i10 = this._inputPtr;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            char c7 = cArr[i10];
            if (c7 < ' ') {
                if (c7 == '\n') {
                    this._currInputRow++;
                    this._currInputRowStart = i11;
                    return;
                } else if (c7 == '\r') {
                    _skipCR();
                    return;
                } else if (c7 != '\t') {
                    _throwInvalidSpace(c7);
                }
            }
        }
    }

    private int _skipWS() throws IOException {
        int[] iArr = _icWS;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.getTypeDesc() + " entries");
            }
            char[] cArr = this._inputBuffer;
            int i10 = this._inputPtr;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            char c7 = cArr[i10];
            if (c7 >= '@') {
                return c7;
            }
            int i12 = iArr[c7];
            if (i12 == -1) {
                _throwInvalidSpace(c7);
            } else if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = i11;
                    } else if (i12 == 13) {
                        _skipCR();
                    } else if (i12 != 35) {
                        if (i12 == 47) {
                            _skipComment();
                        }
                    } else if (!_skipYAMLComment()) {
                        return c7;
                    }
                }
            }
            return c7;
        }
    }

    private int _skipWSOrEnd() throws IOException {
        int[] iArr = _icWS;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _handleEOF();
                return -1;
            }
            char[] cArr = this._inputBuffer;
            int i10 = this._inputPtr;
            int i11 = i10 + 1;
            this._inputPtr = i11;
            char c7 = cArr[i10];
            if (c7 >= '@') {
                return c7;
            }
            int i12 = iArr[c7];
            if (i12 == -1) {
                _throwInvalidSpace(c7);
            } else if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = i11;
                    } else if (i12 == 13) {
                        _skipCR();
                    } else if (i12 != 35) {
                        if (i12 == 47) {
                            _skipComment();
                        }
                    } else if (!_skipYAMLComment()) {
                        return c7;
                    }
                }
            }
            return c7;
        }
    }

    private boolean _skipYAMLComment() throws IOException {
        if (!isEnabled(JsonParser.Feature.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        _skipLine();
        return true;
    }

    private char _verifyNoLeadingZeroes() throws IOException {
        char c7;
        if ((this._inputPtr >= this._inputEnd && !loadMore()) || (c7 = this._inputBuffer[this._inputPtr]) < '0' || c7 > '9') {
            return '0';
        }
        if (!isEnabled(JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            reportInvalidNumber("Leading zeroes not allowed");
        }
        this._inputPtr++;
        if (c7 == '0') {
            do {
                if (this._inputPtr >= this._inputEnd && !loadMore()) {
                    break;
                }
                char[] cArr = this._inputBuffer;
                int i10 = this._inputPtr;
                c7 = cArr[i10];
                if (c7 < '0' || c7 > '9') {
                    return '0';
                }
                this._inputPtr = i10 + 1;
            } while (c7 == '0');
        }
        return c7;
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

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _closeInput() throws IOException {
        if (this._reader != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE)) {
                this._reader.close();
            }
            this._reader = null;
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected char _decodeEscaped() throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in character escape sequence");
        }
        char[] cArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        char c7 = cArr[i10];
        if (c7 == '\"' || c7 == '/' || c7 == '\\') {
            return c7;
        }
        if (c7 == 'b') {
            return '\b';
        }
        if (c7 == 'f') {
            return '\f';
        }
        if (c7 == 'n') {
            return '\n';
        }
        if (c7 == 'r') {
            return '\r';
        }
        if (c7 == 't') {
            return '\t';
        }
        if (c7 != 'u') {
            return _handleUnrecognizedCharacterEscape(c7);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < 4; i12++) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(" in character escape sequence");
            }
            char[] cArr2 = this._inputBuffer;
            int i13 = this._inputPtr;
            this._inputPtr = i13 + 1;
            char c10 = cArr2[i13];
            int iCharToHex = CharTypes.charToHex(c10);
            if (iCharToHex < 0) {
                _reportUnexpectedChar(c10, "expected a hex-digit for character escape sequence");
            }
            i11 = (i11 << 4) | iCharToHex;
        }
        return (char) i11;
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _finishString() throws IOException {
        int i10 = this._inputPtr;
        int i11 = this._inputEnd;
        if (i10 < i11) {
            int[] iArr = _icLatin1;
            int length = iArr.length;
            do {
                char[] cArr = this._inputBuffer;
                char c7 = cArr[i10];
                if (c7 < length && iArr[c7] != 0) {
                    if (c7 != '\"') {
                        break;
                    }
                    TextBuffer textBuffer = this._textBuffer;
                    int i12 = this._inputPtr;
                    textBuffer.resetWithShared(cArr, i12, i10 - i12);
                    this._inputPtr = i10 + 1;
                    return;
                }
                i10++;
            } while (i10 < i11);
        }
        TextBuffer textBuffer2 = this._textBuffer;
        char[] cArr2 = this._inputBuffer;
        int i13 = this._inputPtr;
        textBuffer2.resetWithCopy(cArr2, i13, i10 - i13);
        this._inputPtr = i10;
        _finishString2();
    }

    protected void _finishString2() throws IOException {
        char[] currentSegment = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(": was expecting closing quote for a string value");
            }
            char[] cArr = this._inputBuffer;
            int i10 = this._inputPtr;
            this._inputPtr = i10 + 1;
            char c_decodeEscaped = cArr[i10];
            if (c_decodeEscaped <= '\\') {
                if (c_decodeEscaped == '\\') {
                    c_decodeEscaped = _decodeEscaped();
                } else if (c_decodeEscaped <= '\"') {
                    if (c_decodeEscaped == '\"') {
                        this._textBuffer.setCurrentLength(currentSegmentSize);
                        return;
                    } else if (c_decodeEscaped < ' ') {
                        _throwUnquotedSpace(c_decodeEscaped, "string value");
                    }
                }
            }
            if (currentSegmentSize >= currentSegment.length) {
                currentSegment = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            }
            currentSegment[currentSegmentSize] = c_decodeEscaped;
            currentSegmentSize++;
        }
    }

    protected String _getText2(JsonToken jsonToken) {
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
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(": was expecting closing quote for a string value");
            }
            char[] cArr = this._inputBuffer;
            int i10 = this._inputPtr;
            this._inputPtr = i10 + 1;
            char c_decodeEscaped = cArr[i10];
            if (c_decodeEscaped <= '\\') {
                if (c_decodeEscaped == '\\') {
                    c_decodeEscaped = _decodeEscaped();
                } else if (c_decodeEscaped <= '\'') {
                    if (c_decodeEscaped == '\'') {
                        this._textBuffer.setCurrentLength(currentSegmentSize);
                        return JsonToken.VALUE_STRING;
                    }
                    if (c_decodeEscaped < ' ') {
                        _throwUnquotedSpace(c_decodeEscaped, "string value");
                    }
                }
            }
            if (currentSegmentSize >= cArrEmptyAndGetCurrentSegment.length) {
                cArrEmptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            }
            cArrEmptyAndGetCurrentSegment[currentSegmentSize] = c_decodeEscaped;
            currentSegmentSize++;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r9v0 ??, r9v1 ??, r9v5 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    protected com.fasterxml.jackson.core.JsonToken _handleInvalidNumberStart(
    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r9v0 ??, r9v1 ??, r9v5 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r9v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    protected String _handleOddName(int i10) throws IOException {
        if (i10 == 39 && isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
            return _parseAposName();
        }
        if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
            _reportUnexpectedChar(i10, "was expecting double-quote to start field name");
        }
        int[] inputCodeLatin1JsNames = CharTypes.getInputCodeLatin1JsNames();
        int length = inputCodeLatin1JsNames.length;
        if (i10 >= length ? !Character.isJavaIdentifierPart((char) i10) : inputCodeLatin1JsNames[i10] != 0) {
            _reportUnexpectedChar(i10, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int i11 = this._inputPtr;
        int i12 = this._hashSeed;
        int i13 = this._inputEnd;
        if (i11 < i13) {
            do {
                char[] cArr = this._inputBuffer;
                char c7 = cArr[i11];
                if (c7 < length) {
                    if (inputCodeLatin1JsNames[c7] != 0) {
                        int i14 = this._inputPtr - 1;
                        this._inputPtr = i11;
                        return this._symbols.findSymbol(cArr, i14, i11 - i14, i12);
                    }
                } else if (!Character.isJavaIdentifierPart(c7)) {
                    int i15 = this._inputPtr - 1;
                    this._inputPtr = i11;
                    return this._symbols.findSymbol(this._inputBuffer, i15, i11 - i15, i12);
                }
                i12 = (i12 * 33) + c7;
                i11++;
            } while (i11 < i13);
        }
        int i16 = this._inputPtr - 1;
        this._inputPtr = i11;
        return _handleOddName2(i16, i12, inputCodeLatin1JsNames);
    }

    protected JsonToken _handleOddValue(int i10) throws IOException {
        if (i10 != 39) {
            if (i10 == 43) {
                if (this._inputPtr >= this._inputEnd && !loadMore()) {
                    _reportInvalidEOFInValue();
                }
                char[] cArr = this._inputBuffer;
                int i11 = this._inputPtr;
                this._inputPtr = i11 + 1;
                return _handleInvalidNumberStart(cArr[i11], false);
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

    protected String _parseAposName() throws IOException {
        int i10 = this._inputPtr;
        int i11 = this._hashSeed;
        int i12 = this._inputEnd;
        if (i10 < i12) {
            int[] iArr = _icLatin1;
            int length = iArr.length;
            do {
                char[] cArr = this._inputBuffer;
                char c7 = cArr[i10];
                if (c7 != '\'') {
                    if (c7 < length && iArr[c7] != 0) {
                        break;
                    }
                    i11 = (i11 * 33) + c7;
                    i10++;
                } else {
                    int i13 = this._inputPtr;
                    this._inputPtr = i10 + 1;
                    return this._symbols.findSymbol(cArr, i13, i10 - i13, i11);
                }
            } while (i10 < i12);
        }
        int i14 = this._inputPtr;
        this._inputPtr = i10;
        return _parseName2(i14, i11, 39);
    }

    protected String _parseName(int i10) throws IOException {
        if (i10 != 34) {
            return _handleOddName(i10);
        }
        int i11 = this._inputPtr;
        int i12 = this._hashSeed;
        int i13 = this._inputEnd;
        if (i11 < i13) {
            int[] iArr = _icLatin1;
            int length = iArr.length;
            do {
                char[] cArr = this._inputBuffer;
                char c7 = cArr[i11];
                if (c7 < length && iArr[c7] != 0) {
                    if (c7 != '\"') {
                        break;
                    }
                    int i14 = this._inputPtr;
                    this._inputPtr = i11 + 1;
                    return this._symbols.findSymbol(cArr, i14, i11 - i14, i12);
                }
                i12 = (i12 * 33) + c7;
                i11++;
            } while (i11 < i13);
        }
        int i15 = this._inputPtr;
        this._inputPtr = i11;
        return _parseName2(i15, i12, 34);
    }

    protected void _reportInvalidToken(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                break;
            }
            char c7 = this._inputBuffer[this._inputPtr];
            if (!Character.isJavaIdentifierPart(c7)) {
                break;
            }
            this._inputPtr++;
            sb.append(c7);
        }
        _reportError("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
    }

    protected void _skipCR() throws IOException {
        if (this._inputPtr < this._inputEnd || loadMore()) {
            char[] cArr = this._inputBuffer;
            int i10 = this._inputPtr;
            if (cArr[i10] == '\n') {
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

    protected char getNextChar(String str) throws IOException {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(str);
        }
        char[] cArr = this._inputBuffer;
        int i10 = this._inputPtr;
        this._inputPtr = i10 + 1;
        return cArr[i10];
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

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected boolean loadMore() throws IOException {
        long j6 = this._currInputProcessed;
        int i10 = this._inputEnd;
        this._currInputProcessed = j6 + ((long) i10);
        this._currInputRowStart -= i10;
        Reader reader = this._reader;
        if (reader != null) {
            char[] cArr = this._inputBuffer;
            int i11 = reader.read(cArr, 0, cArr.length);
            if (i11 > 0) {
                this._inputPtr = 0;
                this._inputEnd = i11;
                return true;
            }
            _closeInput();
            if (i11 == 0) {
                throw new IOException("Reader returned 0 characters when trying to read " + this._inputEnd);
            }
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Boolean nextBooleanValue() throws IOException {
        if (this._currToken != JsonToken.FIELD_NAME) {
            JsonToken jsonTokenNextToken = nextToken();
            if (jsonTokenNextToken != null) {
                int iId = jsonTokenNextToken.id();
                if (iId == 9) {
                    return Boolean.TRUE;
                }
                if (iId == 10) {
                    return Boolean.FALSE;
                }
            }
            return null;
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
    public int releaseBuffered(Writer writer) throws IOException {
        int i10 = this._inputEnd;
        int i11 = this._inputPtr;
        int i12 = i10 - i11;
        if (i12 < 1) {
            return 0;
        }
        writer.write(this._inputBuffer, i11, i12);
        return i12;
    }

    public ReaderBasedJsonParser(IOContext iOContext, int i10, Reader reader, ObjectCodec objectCodec, CharsToNameCanonicalizer charsToNameCanonicalizer) {
        super(iOContext, i10);
        this._tokenIncomplete = false;
        this._reader = reader;
        this._inputBuffer = iOContext.allocTokenBuffer();
        this._objectCodec = objectCodec;
        this._symbols = charsToNameCanonicalizer;
        this._hashSeed = charsToNameCanonicalizer.hashSeed();
    }

    protected byte[] _decodeBase64(Base64Variant base64Variant) throws IOException {
        ByteArrayBuilder byteArrayBuilder_getByteArrayBuilder = _getByteArrayBuilder();
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            char[] cArr = this._inputBuffer;
            int i10 = this._inputPtr;
            this._inputPtr = i10 + 1;
            char c7 = cArr[i10];
            if (c7 > ' ') {
                int iDecodeBase64Char = base64Variant.decodeBase64Char(c7);
                if (iDecodeBase64Char < 0) {
                    if (c7 == '\"') {
                        return byteArrayBuilder_getByteArrayBuilder.toByteArray();
                    }
                    iDecodeBase64Char = _decodeBase64Escape(base64Variant, c7, 0);
                    if (iDecodeBase64Char < 0) {
                        continue;
                    }
                }
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                char[] cArr2 = this._inputBuffer;
                int i11 = this._inputPtr;
                this._inputPtr = i11 + 1;
                char c10 = cArr2[i11];
                int iDecodeBase64Char2 = base64Variant.decodeBase64Char(c10);
                if (iDecodeBase64Char2 < 0) {
                    iDecodeBase64Char2 = _decodeBase64Escape(base64Variant, c10, 1);
                }
                int i12 = (iDecodeBase64Char << 6) | iDecodeBase64Char2;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                char[] cArr3 = this._inputBuffer;
                int i13 = this._inputPtr;
                this._inputPtr = i13 + 1;
                char c11 = cArr3[i13];
                int iDecodeBase64Char3 = base64Variant.decodeBase64Char(c11);
                if (iDecodeBase64Char3 < 0) {
                    if (iDecodeBase64Char3 != -2) {
                        if (c11 == '\"' && !base64Variant.usesPadding()) {
                            byteArrayBuilder_getByteArrayBuilder.append(i12 >> 4);
                            return byteArrayBuilder_getByteArrayBuilder.toByteArray();
                        }
                        iDecodeBase64Char3 = _decodeBase64Escape(base64Variant, c11, 2);
                    }
                    if (iDecodeBase64Char3 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            loadMoreGuaranteed();
                        }
                        char[] cArr4 = this._inputBuffer;
                        int i14 = this._inputPtr;
                        this._inputPtr = i14 + 1;
                        char c12 = cArr4[i14];
                        if (base64Variant.usesPaddingChar(c12)) {
                            byteArrayBuilder_getByteArrayBuilder.append(i12 >> 4);
                        } else {
                            throw reportInvalidBase64Char(base64Variant, c12, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                    }
                }
                int i15 = (i12 << 6) | iDecodeBase64Char3;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                char[] cArr5 = this._inputBuffer;
                int i16 = this._inputPtr;
                this._inputPtr = i16 + 1;
                char c13 = cArr5[i16];
                int iDecodeBase64Char4 = base64Variant.decodeBase64Char(c13);
                if (iDecodeBase64Char4 < 0) {
                    if (iDecodeBase64Char4 != -2) {
                        if (c13 == '\"' && !base64Variant.usesPadding()) {
                            byteArrayBuilder_getByteArrayBuilder.appendTwoBytes(i15 >> 2);
                            return byteArrayBuilder_getByteArrayBuilder.toByteArray();
                        }
                        iDecodeBase64Char4 = _decodeBase64Escape(base64Variant, c13, 3);
                    }
                    if (iDecodeBase64Char4 == -2) {
                        byteArrayBuilder_getByteArrayBuilder.appendTwoBytes(i15 >> 2);
                    }
                }
                byteArrayBuilder_getByteArrayBuilder.appendThreeBytes((i15 << 6) | iDecodeBase64Char4);
            }
        }
    }

    protected void _matchToken(String str, int i10) throws IOException {
        int i11;
        char c7;
        int length = str.length();
        do {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidToken(str.substring(0, i10));
            }
            if (this._inputBuffer[this._inputPtr] != str.charAt(i10)) {
                _reportInvalidToken(str.substring(0, i10));
            }
            i11 = this._inputPtr + 1;
            this._inputPtr = i11;
            i10++;
        } while (i10 < length);
        if ((i11 < this._inputEnd || loadMore()) && (c7 = this._inputBuffer[this._inputPtr]) >= '0' && c7 != ']' && c7 != '}' && Character.isJavaIdentifierPart(c7)) {
            _reportInvalidToken(str.substring(0, i10));
        }
    }

    @Override // com.fasterxml.jackson.core.base.ParserBase
    protected void _releaseBuffers() throws IOException {
        super._releaseBuffers();
        this._symbols.release();
        char[] cArr = this._inputBuffer;
        if (cArr != null) {
            this._inputBuffer = null;
            this._ioContext.releaseTokenBuffer(cArr);
        }
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
}
