package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.google.firebase.crashlytics.internal.common.b0;
import com.google.firebase.remoteconfig.a;
import java.io.IOException;
import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: classes6.dex */
public abstract class StdDeserializer<T> extends JsonDeserializer<T> implements Serializable {
    private static final long serialVersionUID = 1;
    protected final Class<?> _valueClass;

    protected StdDeserializer(Class<?> cls) {
        this._valueClass = cls;
    }

    @Deprecated
    public final Class<?> getValueClass() {
        return this._valueClass;
    }

    public JavaType getValueType() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Class<?> handledType() {
        return this._valueClass;
    }

    protected StdDeserializer(JavaType javaType) {
        this._valueClass = javaType == null ? null : javaType.getRawClass();
    }

    protected static final double parseDouble(String str) throws NumberFormatException {
        if (NumberInput.NASTY_SMALL_DOUBLE.equals(str)) {
            return Double.MIN_VALUE;
        }
        return Double.parseDouble(str);
    }

    protected boolean _hasTextualNull(String str) {
        return "null".equals(str);
    }

    protected final boolean _isNaN(String str) {
        return "NaN".equals(str);
    }

    protected final boolean _isNegInf(String str) {
        return "-Infinity".equals(str) || "-INF".equals(str);
    }

    protected final boolean _isPosInf(String str) {
        return "Infinity".equals(str) || "INF".equals(str);
    }

    protected void handleUnknownProperty(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        if (obj == null) {
            obj = handledType();
        }
        if (deserializationContext.handleUnknownProperty(jsonParser, this, obj, str)) {
            return;
        }
        deserializationContext.reportUnknownProperty(obj, str, this);
        jsonParser.skipChildren();
    }

    protected final Boolean _parseBoolean(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (currentToken == JsonToken.VALUE_FALSE) {
            return Boolean.FALSE;
        }
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            if (jsonParser.getNumberType() == JsonParser.NumberType.INT) {
                if (jsonParser.getIntValue() == 0) {
                    return Boolean.FALSE;
                }
                return Boolean.TRUE;
            }
            return Boolean.valueOf(_parseBooleanFromNumber(jsonParser, deserializationContext));
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return (Boolean) getNullValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String strTrim = jsonParser.getText().trim();
            if (!"true".equals(strTrim) && !"True".equals(strTrim)) {
                if (!"false".equals(strTrim) && !"False".equals(strTrim)) {
                    if (strTrim.length() == 0) {
                        return (Boolean) getEmptyValue();
                    }
                    if (_hasTextualNull(strTrim)) {
                        return (Boolean) getNullValue();
                    }
                    throw deserializationContext.weirdStringException(strTrim, this._valueClass, "only \"true\" or \"false\" recognized");
                }
                return Boolean.FALSE;
            }
            return Boolean.TRUE;
        }
        throw deserializationContext.mappingException(this._valueClass, currentToken);
    }

    protected final boolean _parseBooleanFromNumber(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Boolean bool;
        if (jsonParser.getNumberType() == JsonParser.NumberType.LONG) {
            if (jsonParser.getLongValue() == 0) {
                bool = Boolean.FALSE;
            } else {
                bool = Boolean.TRUE;
            }
            return bool.booleanValue();
        }
        String text = jsonParser.getText();
        if (!b0.DEFAULT_VERSION_NAME.equals(text) && !"0".equals(text)) {
            return true;
        }
        return false;
    }

    protected final boolean _parseBooleanPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_TRUE) {
            return true;
        }
        if (currentToken == JsonToken.VALUE_FALSE || currentToken == JsonToken.VALUE_NULL) {
            return false;
        }
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            if (jsonParser.getNumberType() == JsonParser.NumberType.INT) {
                if (jsonParser.getIntValue() != 0) {
                    return true;
                }
                return false;
            }
            return _parseBooleanFromNumber(jsonParser, deserializationContext);
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String strTrim = jsonParser.getText().trim();
            if ("true".equals(strTrim) || "True".equals(strTrim)) {
                return true;
            }
            if ("false".equals(strTrim) || "False".equals(strTrim) || strTrim.length() == 0 || _hasTextualNull(strTrim)) {
                return false;
            }
            throw deserializationContext.weirdStringException(strTrim, this._valueClass, "only \"true\" or \"false\" recognized");
        }
        throw deserializationContext.mappingException(this._valueClass, currentToken);
    }

    protected Byte _parseByte(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.VALUE_NUMBER_INT && currentToken != JsonToken.VALUE_NUMBER_FLOAT) {
            if (currentToken == JsonToken.VALUE_STRING) {
                String strTrim = jsonParser.getText().trim();
                if (_hasTextualNull(strTrim)) {
                    return (Byte) getNullValue();
                }
                try {
                    if (strTrim.length() == 0) {
                        return (Byte) getEmptyValue();
                    }
                    int i10 = NumberInput.parseInt(strTrim);
                    if (i10 >= -128 && i10 <= 255) {
                        return Byte.valueOf((byte) i10);
                    }
                    throw deserializationContext.weirdStringException(strTrim, this._valueClass, "overflow, value can not be represented as 8-bit value");
                } catch (IllegalArgumentException unused) {
                    throw deserializationContext.weirdStringException(strTrim, this._valueClass, "not a valid Byte value");
                }
            }
            if (currentToken == JsonToken.VALUE_NULL) {
                return (Byte) getNullValue();
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
        return Byte.valueOf(jsonParser.getByteValue());
    }

    protected Date _parseDate(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            return new Date(jsonParser.getLongValue());
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return (Date) getNullValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            try {
                String strTrim = jsonParser.getText().trim();
                if (strTrim.length() == 0) {
                    return (Date) getEmptyValue();
                }
                if (_hasTextualNull(strTrim)) {
                    return (Date) getNullValue();
                }
                return deserializationContext.parseDate(strTrim);
            } catch (IllegalArgumentException e) {
                throw deserializationContext.weirdStringException(null, this._valueClass, "not a valid representation (error: " + e.getMessage() + ")");
            }
        }
        throw deserializationContext.mappingException(this._valueClass, currentToken);
    }

    protected final Double _parseDouble(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.VALUE_NUMBER_INT && currentToken != JsonToken.VALUE_NUMBER_FLOAT) {
            if (currentToken == JsonToken.VALUE_STRING) {
                String strTrim = jsonParser.getText().trim();
                if (strTrim.length() == 0) {
                    return (Double) getEmptyValue();
                }
                if (_hasTextualNull(strTrim)) {
                    return (Double) getNullValue();
                }
                char cCharAt = strTrim.charAt(0);
                if (cCharAt != '-') {
                    if (cCharAt != 'I') {
                        if (cCharAt == 'N' && _isNaN(strTrim)) {
                            return Double.valueOf(Double.NaN);
                        }
                    } else if (_isPosInf(strTrim)) {
                        return Double.valueOf(Double.POSITIVE_INFINITY);
                    }
                } else if (_isNegInf(strTrim)) {
                    return Double.valueOf(Double.NEGATIVE_INFINITY);
                }
                try {
                    return Double.valueOf(parseDouble(strTrim));
                } catch (IllegalArgumentException unused) {
                    throw deserializationContext.weirdStringException(strTrim, this._valueClass, "not a valid Double value");
                }
            }
            if (currentToken == JsonToken.VALUE_NULL) {
                return (Double) getNullValue();
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
        return Double.valueOf(jsonParser.getDoubleValue());
    }

    protected final double _parseDoublePrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.VALUE_NUMBER_INT && currentToken != JsonToken.VALUE_NUMBER_FLOAT) {
            if (currentToken == JsonToken.VALUE_STRING) {
                String strTrim = jsonParser.getText().trim();
                if (strTrim.length() == 0 || _hasTextualNull(strTrim)) {
                    return a.DEFAULT_VALUE_FOR_DOUBLE;
                }
                char cCharAt = strTrim.charAt(0);
                if (cCharAt != '-') {
                    if (cCharAt != 'I') {
                        if (cCharAt == 'N' && _isNaN(strTrim)) {
                            return Double.NaN;
                        }
                    } else if (_isPosInf(strTrim)) {
                        return Double.POSITIVE_INFINITY;
                    }
                } else if (_isNegInf(strTrim)) {
                    return Double.NEGATIVE_INFINITY;
                }
                try {
                    return parseDouble(strTrim);
                } catch (IllegalArgumentException unused) {
                    throw deserializationContext.weirdStringException(strTrim, this._valueClass, "not a valid double value");
                }
            }
            if (currentToken == JsonToken.VALUE_NULL) {
                return a.DEFAULT_VALUE_FOR_DOUBLE;
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
        return jsonParser.getDoubleValue();
    }

    protected final Float _parseFloat(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.VALUE_NUMBER_INT && currentToken != JsonToken.VALUE_NUMBER_FLOAT) {
            if (currentToken == JsonToken.VALUE_STRING) {
                String strTrim = jsonParser.getText().trim();
                if (strTrim.length() == 0) {
                    return (Float) getEmptyValue();
                }
                if (_hasTextualNull(strTrim)) {
                    return (Float) getNullValue();
                }
                char cCharAt = strTrim.charAt(0);
                if (cCharAt != '-') {
                    if (cCharAt != 'I') {
                        if (cCharAt == 'N' && "NaN".equals(strTrim)) {
                            return Float.valueOf(Float.NaN);
                        }
                    } else if ("Infinity".equals(strTrim) || "INF".equals(strTrim)) {
                        return Float.valueOf(Float.POSITIVE_INFINITY);
                    }
                } else if ("-Infinity".equals(strTrim) || "-INF".equals(strTrim)) {
                    return Float.valueOf(Float.NEGATIVE_INFINITY);
                }
                try {
                    return Float.valueOf(Float.parseFloat(strTrim));
                } catch (IllegalArgumentException unused) {
                    throw deserializationContext.weirdStringException(strTrim, this._valueClass, "not a valid Float value");
                }
            }
            if (currentToken == JsonToken.VALUE_NULL) {
                return (Float) getNullValue();
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
        return Float.valueOf(jsonParser.getFloatValue());
    }

    protected final float _parseFloatPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.VALUE_NUMBER_INT && currentToken != JsonToken.VALUE_NUMBER_FLOAT) {
            if (currentToken == JsonToken.VALUE_STRING) {
                String strTrim = jsonParser.getText().trim();
                if (strTrim.length() == 0 || _hasTextualNull(strTrim)) {
                    return 0.0f;
                }
                char cCharAt = strTrim.charAt(0);
                if (cCharAt != '-') {
                    if (cCharAt != 'I') {
                        if (cCharAt == 'N' && _isNaN(strTrim)) {
                            return Float.NaN;
                        }
                    } else if (_isPosInf(strTrim)) {
                        return Float.POSITIVE_INFINITY;
                    }
                } else if (_isNegInf(strTrim)) {
                    return Float.NEGATIVE_INFINITY;
                }
                try {
                    return Float.parseFloat(strTrim);
                } catch (IllegalArgumentException unused) {
                    throw deserializationContext.weirdStringException(strTrim, this._valueClass, "not a valid float value");
                }
            }
            if (currentToken == JsonToken.VALUE_NULL) {
                return 0.0f;
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
        return jsonParser.getFloatValue();
    }

    protected final int _parseIntPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.VALUE_NUMBER_INT && currentToken != JsonToken.VALUE_NUMBER_FLOAT) {
            if (currentToken == JsonToken.VALUE_STRING) {
                String strTrim = jsonParser.getText().trim();
                if (_hasTextualNull(strTrim)) {
                    return 0;
                }
                try {
                    int length = strTrim.length();
                    if (length > 9) {
                        long j6 = Long.parseLong(strTrim);
                        if (j6 >= -2147483648L && j6 <= 2147483647L) {
                            return (int) j6;
                        }
                        throw deserializationContext.weirdStringException(strTrim, this._valueClass, "Overflow: numeric value (" + strTrim + ") out of range of int (-2147483648 - 2147483647)");
                    }
                    if (length == 0) {
                        return 0;
                    }
                    return NumberInput.parseInt(strTrim);
                } catch (IllegalArgumentException unused) {
                    throw deserializationContext.weirdStringException(strTrim, this._valueClass, "not a valid int value");
                }
            }
            if (currentToken == JsonToken.VALUE_NULL) {
                return 0;
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
        return jsonParser.getIntValue();
    }

    protected final Integer _parseInteger(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.VALUE_NUMBER_INT && currentToken != JsonToken.VALUE_NUMBER_FLOAT) {
            if (currentToken == JsonToken.VALUE_STRING) {
                String strTrim = jsonParser.getText().trim();
                try {
                    int length = strTrim.length();
                    if (_hasTextualNull(strTrim)) {
                        return (Integer) getNullValue();
                    }
                    if (length > 9) {
                        long j6 = Long.parseLong(strTrim);
                        if (j6 >= -2147483648L && j6 <= 2147483647L) {
                            return Integer.valueOf((int) j6);
                        }
                        throw deserializationContext.weirdStringException(strTrim, this._valueClass, "Overflow: numeric value (" + strTrim + ") out of range of Integer (-2147483648 - 2147483647)");
                    }
                    if (length == 0) {
                        return (Integer) getEmptyValue();
                    }
                    return Integer.valueOf(NumberInput.parseInt(strTrim));
                } catch (IllegalArgumentException unused) {
                    throw deserializationContext.weirdStringException(strTrim, this._valueClass, "not a valid Integer value");
                }
            }
            if (currentToken == JsonToken.VALUE_NULL) {
                return (Integer) getNullValue();
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
        return Integer.valueOf(jsonParser.getIntValue());
    }

    protected final Long _parseLong(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.VALUE_NUMBER_INT && currentToken != JsonToken.VALUE_NUMBER_FLOAT) {
            if (currentToken == JsonToken.VALUE_STRING) {
                String strTrim = jsonParser.getText().trim();
                if (strTrim.length() == 0) {
                    return (Long) getEmptyValue();
                }
                if (_hasTextualNull(strTrim)) {
                    return (Long) getNullValue();
                }
                try {
                    return Long.valueOf(NumberInput.parseLong(strTrim));
                } catch (IllegalArgumentException unused) {
                    throw deserializationContext.weirdStringException(strTrim, this._valueClass, "not a valid Long value");
                }
            }
            if (currentToken == JsonToken.VALUE_NULL) {
                return (Long) getNullValue();
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
        return Long.valueOf(jsonParser.getLongValue());
    }

    protected final long _parseLongPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.VALUE_NUMBER_INT && currentToken != JsonToken.VALUE_NUMBER_FLOAT) {
            if (currentToken == JsonToken.VALUE_STRING) {
                String strTrim = jsonParser.getText().trim();
                if (strTrim.length() == 0 || _hasTextualNull(strTrim)) {
                    return 0L;
                }
                try {
                    return NumberInput.parseLong(strTrim);
                } catch (IllegalArgumentException unused) {
                    throw deserializationContext.weirdStringException(strTrim, this._valueClass, "not a valid long value");
                }
            }
            if (currentToken == JsonToken.VALUE_NULL) {
                return 0L;
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
        return jsonParser.getLongValue();
    }

    protected Short _parseShort(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.VALUE_NUMBER_INT && currentToken != JsonToken.VALUE_NUMBER_FLOAT) {
            if (currentToken == JsonToken.VALUE_STRING) {
                String strTrim = jsonParser.getText().trim();
                try {
                    if (strTrim.length() == 0) {
                        return (Short) getEmptyValue();
                    }
                    if (_hasTextualNull(strTrim)) {
                        return (Short) getNullValue();
                    }
                    int i10 = NumberInput.parseInt(strTrim);
                    if (i10 >= -32768 && i10 <= 32767) {
                        return Short.valueOf((short) i10);
                    }
                    throw deserializationContext.weirdStringException(strTrim, this._valueClass, "overflow, value can not be represented as 16-bit value");
                } catch (IllegalArgumentException unused) {
                    throw deserializationContext.weirdStringException(strTrim, this._valueClass, "not a valid Short value");
                }
            }
            if (currentToken == JsonToken.VALUE_NULL) {
                return (Short) getNullValue();
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
        return Short.valueOf(jsonParser.getShortValue());
    }

    protected final short _parseShortPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int i_parseIntPrimitive = _parseIntPrimitive(jsonParser, deserializationContext);
        if (i_parseIntPrimitive >= -32768 && i_parseIntPrimitive <= 32767) {
            return (short) i_parseIntPrimitive;
        }
        throw deserializationContext.weirdStringException(String.valueOf(i_parseIntPrimitive), this._valueClass, "overflow, value can not be represented as 16-bit value");
    }

    protected final String _parseString(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String valueAsString = jsonParser.getValueAsString();
        if (valueAsString != null) {
            return valueAsString;
        }
        throw deserializationContext.mappingException(String.class, jsonParser.getCurrentToken());
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
    }

    protected JsonDeserializer<?> findConvertingContentDeserializer(DeserializationContext deserializationContext, BeanProperty beanProperty, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        Object objFindDeserializationContentConverter;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector != null && beanProperty != null && (objFindDeserializationContentConverter = annotationIntrospector.findDeserializationContentConverter(beanProperty.getMember())) != null) {
            Converter<Object, Object> converterConverterInstance = deserializationContext.converterInstance(beanProperty.getMember(), objFindDeserializationContentConverter);
            JavaType inputType = converterConverterInstance.getInputType(deserializationContext.getTypeFactory());
            if (jsonDeserializer == null) {
                jsonDeserializer = deserializationContext.findContextualValueDeserializer(inputType, beanProperty);
            }
            return new StdDelegatingDeserializer(converterConverterInstance, inputType, jsonDeserializer);
        }
        return jsonDeserializer;
    }

    protected JsonDeserializer<Object> findDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return deserializationContext.findContextualValueDeserializer(javaType, beanProperty);
    }

    protected boolean isDefaultDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return ClassUtil.isJacksonStdImpl(jsonDeserializer);
    }

    protected boolean isDefaultKeyDeserializer(KeyDeserializer keyDeserializer) {
        return ClassUtil.isJacksonStdImpl(keyDeserializer);
    }
}
