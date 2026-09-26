package com.fasterxml.jackson.core.base;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.core.json.DupDetector;
import com.fasterxml.jackson.core.json.JsonReadContext;
import com.fasterxml.jackson.core.json.PackageVersion;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes10.dex */
public abstract class ParserBase extends ParserMinimalBase {
    static final BigDecimal BD_MAX_INT;
    static final BigDecimal BD_MAX_LONG;
    static final BigDecimal BD_MIN_INT;
    static final BigDecimal BD_MIN_LONG;
    static final BigInteger BI_MAX_INT;
    static final BigInteger BI_MAX_LONG;
    static final BigInteger BI_MIN_INT;
    static final BigInteger BI_MIN_LONG;
    protected static final char CHAR_NULL = 0;
    protected static final int INT_0 = 48;
    protected static final int INT_9 = 57;
    protected static final int INT_MINUS = 45;
    protected static final int INT_PLUS = 43;
    static final double MAX_INT_D = 2.147483647E9d;
    static final long MAX_INT_L = 2147483647L;
    static final double MAX_LONG_D = 9.223372036854776E18d;
    static final double MIN_INT_D = -2.147483648E9d;
    static final long MIN_INT_L = -2147483648L;
    static final double MIN_LONG_D = -9.223372036854776E18d;
    protected static final int NR_BIGDECIMAL = 16;
    protected static final int NR_BIGINT = 4;
    protected static final int NR_DOUBLE = 8;
    protected static final int NR_INT = 1;
    protected static final int NR_LONG = 2;
    protected static final int NR_UNKNOWN = 0;
    protected byte[] _binaryValue;
    protected boolean _closed;
    protected int _expLength;
    protected int _fractLength;
    protected int _intLength;
    protected final IOContext _ioContext;
    protected JsonToken _nextToken;
    protected BigDecimal _numberBigDecimal;
    protected BigInteger _numberBigInt;
    protected double _numberDouble;
    protected int _numberInt;
    protected long _numberLong;
    protected boolean _numberNegative;
    protected JsonReadContext _parsingContext;
    protected final TextBuffer _textBuffer;
    protected int _inputPtr = 0;
    protected int _inputEnd = 0;
    protected long _currInputProcessed = 0;
    protected int _currInputRow = 1;
    protected int _currInputRowStart = 0;
    protected long _tokenInputTotal = 0;
    protected int _tokenInputRow = 1;
    protected int _tokenInputCol = 0;
    protected char[] _nameCopyBuffer = null;
    protected boolean _nameCopied = false;
    protected ByteArrayBuilder _byteArrayBuilder = null;
    protected int _numTypesValid = 0;

    protected abstract void _closeInput() throws IOException;

    protected final int _decodeBase64Escape(Base64Variant base64Variant, int i10, int i11) throws IOException {
        if (i10 != 92) {
            throw reportInvalidBase64Char(base64Variant, i10, i11);
        }
        char c_decodeEscaped = _decodeEscaped();
        if (c_decodeEscaped <= ' ' && i11 == 0) {
            return -1;
        }
        int iDecodeBase64Char = base64Variant.decodeBase64Char((int) c_decodeEscaped);
        if (iDecodeBase64Char >= 0) {
            return iDecodeBase64Char;
        }
        throw reportInvalidBase64Char(base64Variant, c_decodeEscaped, i11);
    }

    protected abstract void _finishString() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getEmbeddedObject() throws IOException {
        return null;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public JsonReadContext getParsingContext() {
        return this._parsingContext;
    }

    public long getTokenCharacterOffset() {
        return this._tokenInputTotal;
    }

    public int getTokenColumnNr() {
        int i10 = this._tokenInputCol;
        return i10 < 0 ? i10 : i10 + 1;
    }

    public int getTokenLineNr() {
        return this._tokenInputRow;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public boolean isClosed() {
        return this._closed;
    }

    protected abstract boolean loadMore() throws IOException;

    protected IllegalArgumentException reportInvalidBase64Char(Base64Variant base64Variant, int i10, int i11) throws IllegalArgumentException {
        return reportInvalidBase64Char(base64Variant, i10, i11, null);
    }

    protected final JsonToken reset(boolean z6, int i10, int i11, int i12) {
        return (i11 >= 1 || i12 >= 1) ? resetFloat(z6, i10, i11, i12) : resetInt(z6, i10);
    }

    private void _parseSlowFloat(int i10) throws IOException {
        try {
            if (i10 == 16) {
                this._numberBigDecimal = this._textBuffer.contentsAsDecimal();
                this._numTypesValid = 16;
            } else {
                this._numberDouble = this._textBuffer.contentsAsDouble();
                this._numTypesValid = 8;
            }
        } catch (NumberFormatException e) {
            _wrapError("Malformed numeric value '" + this._textBuffer.contentsAsString() + "'", e);
        }
    }

    private void _parseSlowInt(int i10, char[] cArr, int i11, int i12) throws IOException {
        String strContentsAsString = this._textBuffer.contentsAsString();
        try {
            if (NumberInput.inLongRange(cArr, i11, i12, this._numberNegative)) {
                this._numberLong = Long.parseLong(strContentsAsString);
                this._numTypesValid = 2;
            } else {
                this._numberBigInt = new BigInteger(strContentsAsString);
                this._numTypesValid = 4;
            }
        } catch (NumberFormatException e) {
            _wrapError("Malformed numeric value '" + strContentsAsString + "'", e);
        }
    }

    protected char _decodeEscaped() throws IOException {
        throw new UnsupportedOperationException();
    }

    public ByteArrayBuilder _getByteArrayBuilder() {
        ByteArrayBuilder byteArrayBuilder = this._byteArrayBuilder;
        if (byteArrayBuilder == null) {
            this._byteArrayBuilder = new ByteArrayBuilder();
        } else {
            byteArrayBuilder.reset();
        }
        return this._byteArrayBuilder;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase
    protected void _handleEOF() throws JsonParseException {
        if (this._parsingContext.inRoot()) {
            return;
        }
        _reportInvalidEOF(": expected close marker for " + this._parsingContext.getTypeDesc() + " (from " + this._parsingContext.getStartLocation(this._ioContext.getSourceReference()) + ")");
    }

    protected void _parseNumericValue(int i10) throws IOException {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT) {
            if (jsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
                _parseSlowFloat(i10);
                return;
            }
            _reportError("Current token (" + this._currToken + ") not numeric, can not use numeric value accessors");
            return;
        }
        char[] textBuffer = this._textBuffer.getTextBuffer();
        int textOffset = this._textBuffer.getTextOffset();
        int i11 = this._intLength;
        if (this._numberNegative) {
            textOffset++;
        }
        if (i11 <= 9) {
            int i12 = NumberInput.parseInt(textBuffer, textOffset, i11);
            if (this._numberNegative) {
                i12 = -i12;
            }
            this._numberInt = i12;
            this._numTypesValid = 1;
            return;
        }
        if (i11 > 18) {
            _parseSlowInt(i10, textBuffer, textOffset, i11);
            return;
        }
        long j6 = NumberInput.parseLong(textBuffer, textOffset, i11);
        boolean z6 = this._numberNegative;
        if (z6) {
            j6 = -j6;
        }
        if (i11 == 10) {
            if (z6) {
                if (j6 >= MIN_INT_L) {
                    this._numberInt = (int) j6;
                    this._numTypesValid = 1;
                    return;
                }
            } else if (j6 <= MAX_INT_L) {
                this._numberInt = (int) j6;
                this._numTypesValid = 1;
                return;
            }
        }
        this._numberLong = j6;
        this._numTypesValid = 2;
    }

    protected void _releaseBuffers() throws IOException {
        this._textBuffer.releaseBuffers();
        char[] cArr = this._nameCopyBuffer;
        if (cArr != null) {
            this._nameCopyBuffer = null;
            this._ioContext.releaseNameCopyBuffer(cArr);
        }
    }

    protected void _reportMismatchedEndMarker(int i10, char c7) throws JsonParseException {
        _reportError("Unexpected close marker '" + ((char) i10) + "': expected '" + c7 + "' (for " + this._parsingContext.getTypeDesc() + " starting at " + ("" + this._parsingContext.getStartLocation(this._ioContext.getSourceReference())) + ")");
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this._closed) {
            return;
        }
        this._closed = true;
        try {
            _closeInput();
        } finally {
            _releaseBuffers();
        }
    }

    protected void convertNumberToBigDecimal() throws IOException {
        int i10 = this._numTypesValid;
        if ((i10 & 8) != 0) {
            this._numberBigDecimal = NumberInput.parseBigDecimal(getText());
        } else if ((i10 & 4) != 0) {
            this._numberBigDecimal = new BigDecimal(this._numberBigInt);
        } else if ((i10 & 2) != 0) {
            this._numberBigDecimal = BigDecimal.valueOf(this._numberLong);
        } else if ((i10 & 1) != 0) {
            this._numberBigDecimal = BigDecimal.valueOf(this._numberInt);
        } else {
            _throwInternal();
        }
        this._numTypesValid |= 16;
    }

    protected void convertNumberToBigInteger() throws IOException {
        int i10 = this._numTypesValid;
        if ((i10 & 16) != 0) {
            this._numberBigInt = this._numberBigDecimal.toBigInteger();
        } else if ((i10 & 2) != 0) {
            this._numberBigInt = BigInteger.valueOf(this._numberLong);
        } else if ((i10 & 1) != 0) {
            this._numberBigInt = BigInteger.valueOf(this._numberInt);
        } else if ((i10 & 8) != 0) {
            this._numberBigInt = BigDecimal.valueOf(this._numberDouble).toBigInteger();
        } else {
            _throwInternal();
        }
        this._numTypesValid |= 4;
    }

    protected void convertNumberToDouble() throws IOException {
        int i10 = this._numTypesValid;
        if ((i10 & 16) != 0) {
            this._numberDouble = this._numberBigDecimal.doubleValue();
        } else if ((i10 & 4) != 0) {
            this._numberDouble = this._numberBigInt.doubleValue();
        } else if ((i10 & 2) != 0) {
            this._numberDouble = this._numberLong;
        } else if ((i10 & 1) != 0) {
            this._numberDouble = this._numberInt;
        } else {
            _throwInternal();
        }
        this._numTypesValid |= 8;
    }

    protected void convertNumberToInt() throws IOException {
        int i10 = this._numTypesValid;
        if ((i10 & 2) != 0) {
            long j6 = this._numberLong;
            int i11 = (int) j6;
            if (i11 != j6) {
                _reportError("Numeric value (" + getText() + ") out of range of int");
            }
            this._numberInt = i11;
        } else if ((i10 & 4) != 0) {
            if (BI_MIN_INT.compareTo(this._numberBigInt) > 0 || BI_MAX_INT.compareTo(this._numberBigInt) < 0) {
                reportOverflowInt();
            }
            this._numberInt = this._numberBigInt.intValue();
        } else if ((i10 & 8) != 0) {
            double d = this._numberDouble;
            if (d < MIN_INT_D || d > MAX_INT_D) {
                reportOverflowInt();
            }
            this._numberInt = (int) this._numberDouble;
        } else if ((i10 & 16) != 0) {
            if (BD_MIN_INT.compareTo(this._numberBigDecimal) > 0 || BD_MAX_INT.compareTo(this._numberBigDecimal) < 0) {
                reportOverflowInt();
            }
            this._numberInt = this._numberBigDecimal.intValue();
        } else {
            _throwInternal();
        }
        this._numTypesValid |= 1;
    }

    protected void convertNumberToLong() throws IOException {
        int i10 = this._numTypesValid;
        if ((i10 & 1) != 0) {
            this._numberLong = this._numberInt;
        } else if ((i10 & 4) != 0) {
            if (BI_MIN_LONG.compareTo(this._numberBigInt) > 0 || BI_MAX_LONG.compareTo(this._numberBigInt) < 0) {
                reportOverflowLong();
            }
            this._numberLong = this._numberBigInt.longValue();
        } else if ((i10 & 8) != 0) {
            double d = this._numberDouble;
            if (d < MIN_LONG_D || d > MAX_LONG_D) {
                reportOverflowLong();
            }
            this._numberLong = (long) this._numberDouble;
        } else if ((i10 & 16) != 0) {
            if (BD_MIN_LONG.compareTo(this._numberBigDecimal) > 0 || BD_MAX_LONG.compareTo(this._numberBigDecimal) < 0) {
                reportOverflowLong();
            }
            this._numberLong = this._numberBigDecimal.longValue();
        } else {
            _throwInternal();
        }
        this._numTypesValid |= 2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigInteger getBigIntegerValue() throws IOException {
        int i10 = this._numTypesValid;
        if ((i10 & 4) == 0) {
            if (i10 == 0) {
                _parseNumericValue(4);
            }
            if ((this._numTypesValid & 4) == 0) {
                convertNumberToBigInteger();
            }
        }
        return this._numberBigInt;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation getCurrentLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), -1L, this._currInputProcessed + ((long) this._inputPtr), this._currInputRow, (this._inputPtr - this._currInputRowStart) + 1);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getCurrentName() throws IOException {
        JsonToken jsonToken = this._currToken;
        return (jsonToken == JsonToken.START_OBJECT || jsonToken == JsonToken.START_ARRAY) ? this._parsingContext.getParent().getCurrentName() : this._parsingContext.getCurrentName();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigDecimal getDecimalValue() throws IOException {
        int i10 = this._numTypesValid;
        if ((i10 & 16) == 0) {
            if (i10 == 0) {
                _parseNumericValue(16);
            }
            if ((this._numTypesValid & 16) == 0) {
                convertNumberToBigDecimal();
            }
        }
        return this._numberBigDecimal;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public double getDoubleValue() throws IOException {
        int i10 = this._numTypesValid;
        if ((i10 & 8) == 0) {
            if (i10 == 0) {
                _parseNumericValue(8);
            }
            if ((this._numTypesValid & 8) == 0) {
                convertNumberToDouble();
            }
        }
        return this._numberDouble;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int getIntValue() throws IOException {
        int i10 = this._numTypesValid;
        if ((i10 & 1) == 0) {
            if (i10 == 0) {
                _parseNumericValue(1);
            }
            if ((this._numTypesValid & 1) == 0) {
                convertNumberToInt();
            }
        }
        return this._numberInt;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long getLongValue() throws IOException {
        int i10 = this._numTypesValid;
        if ((i10 & 2) == 0) {
            if (i10 == 0) {
                _parseNumericValue(2);
            }
            if ((this._numTypesValid & 2) == 0) {
                convertNumberToLong();
            }
        }
        return this._numberLong;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser.NumberType getNumberType() throws IOException {
        if (this._numTypesValid == 0) {
            _parseNumericValue(0);
        }
        if (this._currToken != JsonToken.VALUE_NUMBER_INT) {
            return (this._numTypesValid & 16) != 0 ? JsonParser.NumberType.BIG_DECIMAL : JsonParser.NumberType.DOUBLE;
        }
        int i10 = this._numTypesValid;
        if ((i10 & 1) != 0) {
            return JsonParser.NumberType.INT;
        }
        return (i10 & 2) != 0 ? JsonParser.NumberType.LONG : JsonParser.NumberType.BIG_INTEGER;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Number getNumberValue() throws IOException {
        if (this._numTypesValid == 0) {
            _parseNumericValue(0);
        }
        if (this._currToken == JsonToken.VALUE_NUMBER_INT) {
            int i10 = this._numTypesValid;
            if ((i10 & 1) != 0) {
                return Integer.valueOf(this._numberInt);
            }
            if ((i10 & 2) != 0) {
                return Long.valueOf(this._numberLong);
            }
            return (i10 & 4) != 0 ? this._numberBigInt : this._numberBigDecimal;
        }
        int i11 = this._numTypesValid;
        if ((i11 & 16) != 0) {
            return this._numberBigDecimal;
        }
        if ((i11 & 8) == 0) {
            _throwInternal();
        }
        return Double.valueOf(this._numberDouble);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation getTokenLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), -1L, getTokenCharacterOffset(), getTokenLineNr(), getTokenColumnNr());
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public boolean hasTextCharacters() {
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.VALUE_STRING) {
            return true;
        }
        if (jsonToken == JsonToken.FIELD_NAME) {
            return this._nameCopied;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public void overrideCurrentName(String str) {
        JsonReadContext parent = this._parsingContext;
        JsonToken jsonToken = this._currToken;
        if (jsonToken == JsonToken.START_OBJECT || jsonToken == JsonToken.START_ARRAY) {
            parent = parent.getParent();
        }
        try {
            parent.setCurrentName(str);
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    protected IllegalArgumentException reportInvalidBase64Char(Base64Variant base64Variant, int i10, int i11, String str) throws IllegalArgumentException {
        String str2;
        if (i10 <= 32) {
            str2 = "Illegal white space character (code 0x" + Integer.toHexString(i10) + ") as character #" + (i11 + 1) + " of 4-char base64 unit: can only used between units";
        } else if (base64Variant.usesPaddingChar(i10)) {
            str2 = "Unexpected padding character ('" + base64Variant.getPaddingChar() + "') as character #" + (i11 + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
        } else if (!Character.isDefined(i10) || Character.isISOControl(i10)) {
            str2 = "Illegal character (code 0x" + Integer.toHexString(i10) + ") in base64 content";
        } else {
            str2 = "Illegal character '" + ((char) i10) + "' (code 0x" + Integer.toHexString(i10) + ") in base64 content";
        }
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        return new IllegalArgumentException(str2);
    }

    protected void reportInvalidNumber(String str) throws JsonParseException {
        _reportError("Invalid numeric value: " + str);
    }

    protected void reportOverflowInt() throws IOException {
        _reportError("Numeric value (" + getText() + ") out of range of int (-2147483648 - 2147483647)");
    }

    protected void reportOverflowLong() throws IOException {
        _reportError("Numeric value (" + getText() + ") out of range of long (-9223372036854775808 - 9223372036854775807)");
    }

    protected void reportUnexpectedNumberChar(int i10, String str) throws JsonParseException {
        String str2 = "Unexpected character (" + ParserMinimalBase._getCharDesc(i10) + ") in numeric value";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        _reportError(str2);
    }

    protected final JsonToken resetAsNaN(String str, double d) {
        this._textBuffer.resetWithString(str);
        this._numberDouble = d;
        this._numTypesValid = 8;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    protected final JsonToken resetFloat(boolean z6, int i10, int i11, int i12) {
        this._numberNegative = z6;
        this._intLength = i10;
        this._fractLength = i11;
        this._expLength = i12;
        this._numTypesValid = 0;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    protected final JsonToken resetInt(boolean z6, int i10) {
        this._numberNegative = z6;
        this._intLength = i10;
        this._fractLength = 0;
        this._expLength = 0;
        this._numTypesValid = 0;
        return JsonToken.VALUE_NUMBER_INT;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.core.Versioned
    public Version version() {
        return PackageVersion.VERSION;
    }

    static {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(MIN_INT_L);
        BI_MIN_INT = bigIntegerValueOf;
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(MAX_INT_L);
        BI_MAX_INT = bigIntegerValueOf2;
        BigInteger bigIntegerValueOf3 = BigInteger.valueOf(Long.MIN_VALUE);
        BI_MIN_LONG = bigIntegerValueOf3;
        BigInteger bigIntegerValueOf4 = BigInteger.valueOf(Long.MAX_VALUE);
        BI_MAX_LONG = bigIntegerValueOf4;
        BD_MIN_LONG = new BigDecimal(bigIntegerValueOf3);
        BD_MAX_LONG = new BigDecimal(bigIntegerValueOf4);
        BD_MIN_INT = new BigDecimal(bigIntegerValueOf);
        BD_MAX_INT = new BigDecimal(bigIntegerValueOf2);
    }

    protected ParserBase(IOContext iOContext, int i10) {
        this._features = i10;
        this._ioContext = iOContext;
        this._textBuffer = iOContext.constructTextBuffer();
        this._parsingContext = JsonReadContext.createRootContext(JsonParser.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i10) ? DupDetector.rootDetector(this) : null);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public float getFloatValue() throws IOException {
        return (float) getDoubleValue();
    }

    protected final void loadMoreGuaranteed() throws IOException {
        if (!loadMore()) {
            _reportInvalidEOF();
        }
    }

    protected final int _decodeBase64Escape(Base64Variant base64Variant, char c7, int i10) throws IOException {
        if (c7 == '\\') {
            char c_decodeEscaped = _decodeEscaped();
            if (c_decodeEscaped <= ' ' && i10 == 0) {
                return -1;
            }
            int iDecodeBase64Char = base64Variant.decodeBase64Char(c_decodeEscaped);
            if (iDecodeBase64Char >= 0) {
                return iDecodeBase64Char;
            }
            throw reportInvalidBase64Char(base64Variant, c_decodeEscaped, i10);
        }
        throw reportInvalidBase64Char(base64Variant, c7, i10);
    }
}
