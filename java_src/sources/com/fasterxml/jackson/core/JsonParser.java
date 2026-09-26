package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.type.TypeReference;
import com.google.firebase.remoteconfig.a;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class JsonParser implements Closeable, Versioned {
    private static final int MAX_BYTE_I = 255;
    private static final int MAX_SHORT_I = 32767;
    private static final int MIN_BYTE_I = -128;
    private static final int MIN_SHORT_I = -32768;
    protected int _features;

    public enum NumberType {
        INT,
        LONG,
        BIG_INTEGER,
        FLOAT,
        DOUBLE,
        BIG_DECIMAL
    }

    protected JsonParser() {
    }

    protected JsonParser(int i10) {
        this._features = i10;
    }

    public boolean canReadObjectId() {
        return false;
    }

    public boolean canReadTypeId() {
        return false;
    }

    public boolean canUseSchema(FormatSchema formatSchema) {
        return false;
    }

    public abstract void clearCurrentToken();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    public abstract BigInteger getBigIntegerValue() throws IOException;

    public byte[] getBinaryValue() throws IOException {
        return getBinaryValue(Base64Variants.getDefaultVariant());
    }

    public abstract byte[] getBinaryValue(Base64Variant base64Variant) throws IOException;

    public abstract ObjectCodec getCodec();

    public abstract JsonLocation getCurrentLocation();

    public abstract String getCurrentName() throws IOException;

    public abstract JsonToken getCurrentToken();

    public abstract int getCurrentTokenId();

    public abstract BigDecimal getDecimalValue() throws IOException;

    public abstract double getDoubleValue() throws IOException;

    public abstract Object getEmbeddedObject() throws IOException;

    public int getFeatureMask() {
        return this._features;
    }

    public abstract float getFloatValue() throws IOException;

    public Object getInputSource() {
        return null;
    }

    public abstract int getIntValue() throws IOException;

    public abstract JsonToken getLastClearedToken();

    public abstract long getLongValue() throws IOException;

    public abstract NumberType getNumberType() throws IOException;

    public abstract Number getNumberValue() throws IOException;

    public Object getObjectId() throws IOException {
        return null;
    }

    public abstract JsonStreamContext getParsingContext();

    public FormatSchema getSchema() {
        return null;
    }

    public abstract String getText() throws IOException;

    public abstract char[] getTextCharacters() throws IOException;

    public abstract int getTextLength() throws IOException;

    public abstract int getTextOffset() throws IOException;

    public abstract JsonLocation getTokenLocation();

    public Object getTypeId() throws IOException {
        return null;
    }

    public boolean getValueAsBoolean(boolean z6) throws IOException {
        return z6;
    }

    public double getValueAsDouble(double d) throws IOException {
        return d;
    }

    public int getValueAsInt(int i10) throws IOException {
        return i10;
    }

    public long getValueAsLong(long j6) throws IOException {
        return j6;
    }

    public String getValueAsString() throws IOException {
        return getValueAsString(null);
    }

    public abstract String getValueAsString(String str) throws IOException;

    public abstract boolean hasCurrentToken();

    public abstract boolean hasTextCharacters();

    public abstract boolean isClosed();

    public abstract JsonToken nextToken() throws IOException;

    public abstract JsonToken nextValue() throws IOException;

    public abstract void overrideCurrentName(String str);

    public int readBinaryValue(OutputStream outputStream) throws IOException {
        return readBinaryValue(Base64Variants.getDefaultVariant(), outputStream);
    }

    public <T> T readValueAs(Class<T> cls) throws IOException {
        ObjectCodec codec = getCodec();
        if (codec != null) {
            return (T) codec.readValue(this, cls);
        }
        throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
    }

    public <T> Iterator<T> readValuesAs(Class<T> cls) throws IOException {
        ObjectCodec codec = getCodec();
        if (codec != null) {
            return codec.readValues(this, cls);
        }
        throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
    }

    public int releaseBuffered(OutputStream outputStream) throws IOException {
        return -1;
    }

    public boolean requiresCustomCodec() {
        return false;
    }

    public abstract void setCodec(ObjectCodec objectCodec);

    public JsonParser setFeatureMask(int i10) {
        this._features = i10;
        return this;
    }

    public abstract JsonParser skipChildren() throws IOException;

    @Override // com.fasterxml.jackson.core.Versioned
    public abstract Version version();

    public enum Feature {
        AUTO_CLOSE_SOURCE(true),
        ALLOW_COMMENTS(false),
        ALLOW_YAML_COMMENTS(false),
        ALLOW_UNQUOTED_FIELD_NAMES(false),
        ALLOW_SINGLE_QUOTES(false),
        ALLOW_UNQUOTED_CONTROL_CHARS(false),
        ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false),
        ALLOW_NUMERIC_LEADING_ZEROS(false),
        ALLOW_NON_NUMERIC_NUMBERS(false),
        STRICT_DUPLICATE_DETECTION(false);

        private final boolean _defaultState;
        private final int _mask = 1 << ordinal();

        public boolean enabledByDefault() {
            return this._defaultState;
        }

        public boolean enabledIn(int i10) {
            return (i10 & this._mask) != 0;
        }

        public int getMask() {
            return 1 << ordinal();
        }

        Feature(boolean z6) {
            this._defaultState = z6;
        }

        public static int collectDefaults() {
            int mask = 0;
            for (Feature feature : values()) {
                if (feature.enabledByDefault()) {
                    mask |= feature.getMask();
                }
            }
            return mask;
        }
    }

    protected JsonParseException _constructError(String str) {
        return new JsonParseException(str, getCurrentLocation());
    }

    protected void _reportUnsupportedOperation() {
        throw new UnsupportedOperationException("Operation not supported by parser of type " + getClass().getName());
    }

    public JsonParser configure(Feature feature, boolean z6) {
        if (z6) {
            enable(feature);
        } else {
            disable(feature);
        }
        return this;
    }

    public JsonParser disable(Feature feature) {
        this._features = (~feature.getMask()) & this._features;
        return this;
    }

    public JsonParser enable(Feature feature) {
        this._features = feature.getMask() | this._features;
        return this;
    }

    public boolean getValueAsBoolean() throws IOException {
        return getValueAsBoolean(false);
    }

    public double getValueAsDouble() throws IOException {
        return getValueAsDouble(a.DEFAULT_VALUE_FOR_DOUBLE);
    }

    public int getValueAsInt() throws IOException {
        return getValueAsInt(0);
    }

    public long getValueAsLong() throws IOException {
        return getValueAsLong(0L);
    }

    public boolean isEnabled(Feature feature) {
        return (feature.getMask() & this._features) != 0;
    }

    public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        _reportUnsupportedOperation();
        return 0;
    }

    public int releaseBuffered(Writer writer) throws IOException {
        return -1;
    }

    public void setSchema(FormatSchema formatSchema) {
        throw new UnsupportedOperationException("Parser of type " + getClass().getName() + " does not support schema of type '" + formatSchema.getSchemaType() + "'");
    }

    public boolean getBooleanValue() throws IOException {
        JsonToken currentToken = getCurrentToken();
        if (currentToken == JsonToken.VALUE_TRUE) {
            return true;
        }
        if (currentToken == JsonToken.VALUE_FALSE) {
            return false;
        }
        throw new JsonParseException("Current token (" + currentToken + ") not of boolean type", getCurrentLocation());
    }

    public byte getByteValue() throws IOException {
        int intValue = getIntValue();
        if (intValue >= MIN_BYTE_I && intValue <= 255) {
            return (byte) intValue;
        }
        throw _constructError("Numeric value (" + getText() + ") out of range of Java byte");
    }

    public short getShortValue() throws IOException {
        int intValue = getIntValue();
        if (intValue >= MIN_SHORT_I && intValue <= MAX_SHORT_I) {
            return (short) intValue;
        }
        throw _constructError("Numeric value (" + getText() + ") out of range of Java short");
    }

    public boolean isExpectedStartArrayToken() {
        if (getCurrentToken() == JsonToken.START_ARRAY) {
            return true;
        }
        return false;
    }

    public Boolean nextBooleanValue() throws IOException {
        JsonToken jsonTokenNextToken = nextToken();
        if (jsonTokenNextToken == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (jsonTokenNextToken == JsonToken.VALUE_FALSE) {
            return Boolean.FALSE;
        }
        return null;
    }

    public boolean nextFieldName(SerializableString serializableString) throws IOException {
        if (nextToken() == JsonToken.FIELD_NAME && serializableString.getValue().equals(getCurrentName())) {
            return true;
        }
        return false;
    }

    public int nextIntValue(int i10) throws IOException {
        if (nextToken() == JsonToken.VALUE_NUMBER_INT) {
            return getIntValue();
        }
        return i10;
    }

    public long nextLongValue(long j6) throws IOException {
        if (nextToken() == JsonToken.VALUE_NUMBER_INT) {
            return getLongValue();
        }
        return j6;
    }

    public String nextTextValue() throws IOException {
        if (nextToken() == JsonToken.VALUE_STRING) {
            return getText();
        }
        return null;
    }

    public <T extends TreeNode> T readValueAsTree() throws IOException {
        ObjectCodec codec = getCodec();
        if (codec != null) {
            return (T) codec.readTree(this);
        }
        throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into JsonNode tree");
    }

    public <T> T readValueAs(TypeReference<?> typeReference) throws IOException {
        ObjectCodec codec = getCodec();
        if (codec != null) {
            return (T) codec.readValue(this, typeReference);
        }
        throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
    }

    public <T> Iterator<T> readValuesAs(TypeReference<?> typeReference) throws IOException {
        ObjectCodec codec = getCodec();
        if (codec != null) {
            return codec.readValues(this, typeReference);
        }
        throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
    }
}
