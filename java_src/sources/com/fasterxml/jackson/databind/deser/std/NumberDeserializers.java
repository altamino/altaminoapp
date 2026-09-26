package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.google.firebase.remoteconfig.a;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
public class NumberDeserializers {
    private static final HashSet<String> _classNames = new HashSet<>();

    @JacksonStdImpl
    public static class BigDecimalDeserializer extends StdScalarDeserializer<BigDecimal> {
        public static final BigDecimalDeserializer instance = new BigDecimalDeserializer();

        public BigDecimalDeserializer() {
            super((Class<?>) BigDecimal.class);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public BigDecimal deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
                return jsonParser.getDecimalValue();
            }
            if (currentToken != JsonToken.VALUE_STRING) {
                throw deserializationContext.mappingException(this._valueClass, currentToken);
            }
            String strTrim = jsonParser.getText().trim();
            if (strTrim.length() == 0) {
                return null;
            }
            try {
                return new BigDecimal(strTrim);
            } catch (IllegalArgumentException unused) {
                throw deserializationContext.weirdStringException(strTrim, this._valueClass, "not a valid representation");
            }
        }
    }

    @JacksonStdImpl
    public static class BigIntegerDeserializer extends StdScalarDeserializer<BigInteger> {
        public static final BigIntegerDeserializer instance = new BigIntegerDeserializer();

        public BigIntegerDeserializer() {
            super((Class<?>) BigInteger.class);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public BigInteger deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_NUMBER_INT) {
                int i10 = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[jsonParser.getNumberType().ordinal()];
                if (i10 == 1 || i10 == 2) {
                    return BigInteger.valueOf(jsonParser.getLongValue());
                }
            } else {
                if (currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
                    return jsonParser.getDecimalValue().toBigInteger();
                }
                if (currentToken != JsonToken.VALUE_STRING) {
                    throw deserializationContext.mappingException(this._valueClass, currentToken);
                }
            }
            String strTrim = jsonParser.getText().trim();
            if (strTrim.length() == 0) {
                return null;
            }
            try {
                return new BigInteger(strTrim);
            } catch (IllegalArgumentException unused) {
                throw deserializationContext.weirdStringException(strTrim, this._valueClass, "not a valid representation");
            }
        }
    }

    @JacksonStdImpl
    public static final class BooleanDeserializer extends PrimitiveOrWrapperDeserializer<Boolean> {
        private static final long serialVersionUID = 1;
        private static final BooleanDeserializer primitiveInstance = new BooleanDeserializer(Boolean.class, Boolean.FALSE);
        private static final BooleanDeserializer wrapperInstance = new BooleanDeserializer(Boolean.TYPE, null);

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Boolean deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseBoolean(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public Boolean deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return _parseBoolean(jsonParser, deserializationContext);
        }

        public BooleanDeserializer(Class<Boolean> cls, Boolean bool) {
            super(cls, bool);
        }
    }

    @JacksonStdImpl
    public static final class ByteDeserializer extends PrimitiveOrWrapperDeserializer<Byte> {
        private static final long serialVersionUID = 1;
        private static final ByteDeserializer primitiveInstance = new ByteDeserializer(Byte.TYPE, (byte) 0);
        private static final ByteDeserializer wrapperInstance = new ByteDeserializer(Byte.class, null);

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Byte deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseByte(jsonParser, deserializationContext);
        }

        public ByteDeserializer(Class<Byte> cls, Byte b7) {
            super(cls, b7);
        }
    }

    @JacksonStdImpl
    public static final class CharacterDeserializer extends PrimitiveOrWrapperDeserializer<Character> {
        private static final long serialVersionUID = 1;
        private static final CharacterDeserializer primitiveInstance = new CharacterDeserializer(Character.class, 0);
        private static final CharacterDeserializer wrapperInstance = new CharacterDeserializer(Character.TYPE, null);

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Character deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_NUMBER_INT) {
                int intValue = jsonParser.getIntValue();
                if (intValue >= 0 && intValue <= 65535) {
                    return Character.valueOf((char) intValue);
                }
            } else if (currentToken == JsonToken.VALUE_STRING) {
                String text = jsonParser.getText();
                if (text.length() == 1) {
                    return Character.valueOf(text.charAt(0));
                }
                if (text.length() == 0) {
                    return getEmptyValue();
                }
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }

        public CharacterDeserializer(Class<Character> cls, Character ch) {
            super(cls, ch);
        }
    }

    @JacksonStdImpl
    public static final class DoubleDeserializer extends PrimitiveOrWrapperDeserializer<Double> {
        private static final long serialVersionUID = 1;
        private static final DoubleDeserializer primitiveInstance = new DoubleDeserializer(Double.class, Double.valueOf(a.DEFAULT_VALUE_FOR_DOUBLE));
        private static final DoubleDeserializer wrapperInstance = new DoubleDeserializer(Double.TYPE, null);

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Double deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseDouble(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public Double deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return _parseDouble(jsonParser, deserializationContext);
        }

        public DoubleDeserializer(Class<Double> cls, Double d) {
            super(cls, d);
        }
    }

    @JacksonStdImpl
    public static final class FloatDeserializer extends PrimitiveOrWrapperDeserializer<Float> {
        private static final long serialVersionUID = 1;
        private static final FloatDeserializer primitiveInstance = new FloatDeserializer(Float.class, Float.valueOf(0.0f));
        private static final FloatDeserializer wrapperInstance = new FloatDeserializer(Float.TYPE, null);

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Float deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseFloat(jsonParser, deserializationContext);
        }

        public FloatDeserializer(Class<Float> cls, Float f) {
            super(cls, f);
        }
    }

    @JacksonStdImpl
    public static final class IntegerDeserializer extends PrimitiveOrWrapperDeserializer<Integer> {
        private static final long serialVersionUID = 1;
        private static final IntegerDeserializer primitiveInstance = new IntegerDeserializer(Integer.class, 0);
        private static final IntegerDeserializer wrapperInstance = new IntegerDeserializer(Integer.TYPE, null);

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Integer deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseInteger(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public Integer deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            return _parseInteger(jsonParser, deserializationContext);
        }

        public IntegerDeserializer(Class<Integer> cls, Integer num) {
            super(cls, num);
        }
    }

    @JacksonStdImpl
    public static final class LongDeserializer extends PrimitiveOrWrapperDeserializer<Long> {
        private static final long serialVersionUID = 1;
        private static final LongDeserializer primitiveInstance = new LongDeserializer(Long.class, 0L);
        private static final LongDeserializer wrapperInstance = new LongDeserializer(Long.TYPE, null);

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Long deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseLong(jsonParser, deserializationContext);
        }

        public LongDeserializer(Class<Long> cls, Long l) {
            super(cls, l);
        }
    }

    @JacksonStdImpl
    public static final class NumberDeserializer extends StdScalarDeserializer<Number> {
        public static final NumberDeserializer instance = new NumberDeserializer();

        public NumberDeserializer() {
            super((Class<?>) Number.class);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Number deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_NUMBER_INT) {
                return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS) ? jsonParser.getBigIntegerValue() : jsonParser.getNumberValue();
            }
            if (currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
                return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? jsonParser.getDecimalValue() : Double.valueOf(jsonParser.getDoubleValue());
            }
            if (currentToken != JsonToken.VALUE_STRING) {
                throw deserializationContext.mappingException(this._valueClass, currentToken);
            }
            String strTrim = jsonParser.getText().trim();
            if (strTrim.length() == 0) {
                return getEmptyValue();
            }
            if (_hasTextualNull(strTrim)) {
                return getNullValue();
            }
            if (_isPosInf(strTrim)) {
                return Double.valueOf(Double.POSITIVE_INFINITY);
            }
            if (_isNegInf(strTrim)) {
                return Double.valueOf(Double.NEGATIVE_INFINITY);
            }
            if (_isNaN(strTrim)) {
                return Double.valueOf(Double.NaN);
            }
            try {
                if (strTrim.indexOf(46) >= 0) {
                    return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? new BigDecimal(strTrim) : new Double(strTrim);
                }
                if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
                    return new BigInteger(strTrim);
                }
                long j6 = Long.parseLong(strTrim);
                return (j6 > 2147483647L || j6 < -2147483648L) ? Long.valueOf(j6) : Integer.valueOf((int) j6);
            } catch (IllegalArgumentException unused) {
                throw deserializationContext.weirdStringException(strTrim, this._valueClass, "not a valid number");
            }
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            int i10 = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$core$JsonToken[jsonParser.getCurrentToken().ordinal()];
            return (i10 == 1 || i10 == 2 || i10 == 3) ? deserialize(jsonParser, deserializationContext) : typeDeserializer.deserializeTypedFromScalar(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    public static final class ShortDeserializer extends PrimitiveOrWrapperDeserializer<Short> {
        private static final long serialVersionUID = 1;
        private static final ShortDeserializer primitiveInstance = new ShortDeserializer(Short.class, 0);
        private static final ShortDeserializer wrapperInstance = new ShortDeserializer(Short.TYPE, null);

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Short deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseShort(jsonParser, deserializationContext);
        }

        public ShortDeserializer(Class<Short> cls, Short sh) {
            super(cls, sh);
        }
    }

    /* JADX INFO: renamed from: com.fasterxml.jackson.databind.deser.std.NumberDeserializers$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType;
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonToken;

        static {
            int[] iArr = new int[JsonParser.NumberType.values().length];
            $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType = iArr;
            try {
                iArr[JsonParser.NumberType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[JsonParser.NumberType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[JsonToken.values().length];
            $SwitchMap$com$fasterxml$jackson$core$JsonToken = iArr2;
            try {
                iArr2[JsonToken.VALUE_NUMBER_INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    protected static abstract class PrimitiveOrWrapperDeserializer<T> extends StdScalarDeserializer<T> {
        private static final long serialVersionUID = 1;
        protected final T _nullValue;

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public final T getNullValue() {
            return this._nullValue;
        }

        protected PrimitiveOrWrapperDeserializer(Class<T> cls, T t5) {
            super((Class<?>) cls);
            this._nullValue = t5;
        }
    }

    static {
        Class[] clsArr = {Boolean.class, Byte.class, Short.class, Character.class, Integer.class, Long.class, Float.class, Double.class, Number.class, BigDecimal.class, BigInteger.class};
        for (int i10 = 0; i10 < 11; i10++) {
            _classNames.add(clsArr[i10].getName());
        }
    }

    @Deprecated
    public static StdDeserializer<?>[] all() {
        return new StdDeserializer[]{new BooleanDeserializer(Boolean.class, null), new ByteDeserializer(Byte.class, null), new ShortDeserializer(Short.class, null), new CharacterDeserializer(Character.class, null), new IntegerDeserializer(Integer.class, null), new LongDeserializer(Long.class, null), new FloatDeserializer(Float.class, null), new DoubleDeserializer(Double.class, null), new BooleanDeserializer(Boolean.TYPE, Boolean.FALSE), new ByteDeserializer(Byte.TYPE, (byte) 0), new ShortDeserializer(Short.TYPE, (short) 0), new CharacterDeserializer(Character.TYPE, (char) 0), new IntegerDeserializer(Integer.TYPE, 0), new LongDeserializer(Long.TYPE, 0L), new FloatDeserializer(Float.TYPE, Float.valueOf(0.0f)), new DoubleDeserializer(Double.TYPE, Double.valueOf(a.DEFAULT_VALUE_FOR_DOUBLE)), new NumberDeserializer(), new BigDecimalDeserializer(), new BigIntegerDeserializer()};
    }

    public static JsonDeserializer<?> find(Class<?> cls, String str) {
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return IntegerDeserializer.primitiveInstance;
            }
            if (cls == Boolean.TYPE) {
                return BooleanDeserializer.primitiveInstance;
            }
            if (cls == Long.TYPE) {
                return LongDeserializer.primitiveInstance;
            }
            if (cls == Double.TYPE) {
                return DoubleDeserializer.primitiveInstance;
            }
            if (cls == Character.TYPE) {
                return CharacterDeserializer.primitiveInstance;
            }
            if (cls == Byte.TYPE) {
                return ByteDeserializer.primitiveInstance;
            }
            if (cls == Short.TYPE) {
                return ShortDeserializer.primitiveInstance;
            }
            if (cls == Float.TYPE) {
                return FloatDeserializer.primitiveInstance;
            }
        } else if (_classNames.contains(str)) {
            if (cls == Integer.class) {
                return IntegerDeserializer.wrapperInstance;
            }
            if (cls == Boolean.class) {
                return BooleanDeserializer.wrapperInstance;
            }
            if (cls == Long.class) {
                return LongDeserializer.wrapperInstance;
            }
            if (cls == Double.class) {
                return DoubleDeserializer.wrapperInstance;
            }
            if (cls == Character.class) {
                return CharacterDeserializer.wrapperInstance;
            }
            if (cls == Byte.class) {
                return ByteDeserializer.wrapperInstance;
            }
            if (cls == Short.class) {
                return ShortDeserializer.wrapperInstance;
            }
            if (cls == Float.class) {
                return FloatDeserializer.wrapperInstance;
            }
            if (cls == Number.class) {
                return NumberDeserializer.instance;
            }
            if (cls == BigDecimal.class) {
                return BigDecimalDeserializer.instance;
            }
            if (cls == BigInteger.class) {
                return BigIntegerDeserializer.instance;
            }
        } else {
            return null;
        }
        throw new IllegalArgumentException("Internal error: can't find deserializer for " + cls.getName());
    }
}
