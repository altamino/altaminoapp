package com.fasterxml.jackson.databind.ser.std;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class StdArraySerializers {
    protected static final HashMap<String, JsonSerializer<?>> _arraySerializers;

    @JacksonStdImpl
    public static final class BooleanArraySerializer extends ArraySerializerBase<boolean[]> {
        private static final JavaType VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Boolean.class);

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
            return this;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JsonSerializer<?> getContentSerializer() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JavaType getContentType() {
            return VALUE_TYPE;
        }

        public BooleanArraySerializer() {
            super(boolean[].class, (BeanProperty) null);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            JsonArrayFormatVisitor jsonArrayFormatVisitorExpectArrayFormat;
            if (jsonFormatVisitorWrapper == null || (jsonArrayFormatVisitorExpectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType)) == null) {
                return;
            }
            jsonArrayFormatVisitorExpectArrayFormat.itemsFormat(JsonFormatTypes.BOOLEAN);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
        public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            ObjectNode objectNodeCreateSchemaNode = createSchemaNode("array", true);
            objectNodeCreateSchemaNode.put("items", createSchemaNode(TypedValues.Custom.S_BOOLEAN));
            return objectNodeCreateSchemaNode;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public boolean hasSingleElement(boolean[] zArr) {
            return zArr.length == 1;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public boolean isEmpty(boolean[] zArr) {
            return zArr == null || zArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public void serializeContents(boolean[] zArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            for (boolean z6 : zArr) {
                jsonGenerator.writeBoolean(z6);
            }
        }
    }

    @JacksonStdImpl
    public static final class ByteArraySerializer extends StdSerializer<byte[]> {
        public ByteArraySerializer() {
            super(byte[].class);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            JsonArrayFormatVisitor jsonArrayFormatVisitorExpectArrayFormat;
            if (jsonFormatVisitorWrapper == null || (jsonArrayFormatVisitorExpectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType)) == null) {
                return;
            }
            jsonArrayFormatVisitorExpectArrayFormat.itemsFormat(JsonFormatTypes.STRING);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
        public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            ObjectNode objectNodeCreateSchemaNode = createSchemaNode("array", true);
            objectNodeCreateSchemaNode.put("items", createSchemaNode(TypedValues.Custom.S_STRING));
            return objectNodeCreateSchemaNode;
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public boolean isEmpty(byte[] bArr) {
            return bArr == null || bArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(byte[] bArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeBinary(serializerProvider.getConfig().getBase64Variant(), bArr, 0, bArr.length);
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public void serializeWithType(byte[] bArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
            typeSerializer.writeTypePrefixForScalar(bArr, jsonGenerator);
            jsonGenerator.writeBinary(serializerProvider.getConfig().getBase64Variant(), bArr, 0, bArr.length);
            typeSerializer.writeTypeSuffixForScalar(bArr, jsonGenerator);
        }
    }

    @JacksonStdImpl
    public static final class CharArraySerializer extends StdSerializer<char[]> {
        private final void _writeArrayContents(JsonGenerator jsonGenerator, char[] cArr) throws IOException {
            int length = cArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                jsonGenerator.writeString(cArr, i10, 1);
            }
        }

        public CharArraySerializer() {
            super(char[].class);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            JsonArrayFormatVisitor jsonArrayFormatVisitorExpectArrayFormat;
            if (jsonFormatVisitorWrapper == null || (jsonArrayFormatVisitorExpectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType)) == null) {
                return;
            }
            jsonArrayFormatVisitorExpectArrayFormat.itemsFormat(JsonFormatTypes.STRING);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
        public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            ObjectNode objectNodeCreateSchemaNode = createSchemaNode("array", true);
            ObjectNode objectNodeCreateSchemaNode2 = createSchemaNode(TypedValues.Custom.S_STRING);
            objectNodeCreateSchemaNode2.put("type", TypedValues.Custom.S_STRING);
            objectNodeCreateSchemaNode.put("items", objectNodeCreateSchemaNode2);
            return objectNodeCreateSchemaNode;
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public boolean isEmpty(char[] cArr) {
            return cArr == null || cArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(char[] cArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            if (!serializerProvider.isEnabled(SerializationFeature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS)) {
                jsonGenerator.writeString(cArr, 0, cArr.length);
                return;
            }
            jsonGenerator.writeStartArray();
            _writeArrayContents(jsonGenerator, cArr);
            jsonGenerator.writeEndArray();
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public void serializeWithType(char[] cArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
            if (serializerProvider.isEnabled(SerializationFeature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS)) {
                typeSerializer.writeTypePrefixForArray(cArr, jsonGenerator);
                _writeArrayContents(jsonGenerator, cArr);
                typeSerializer.writeTypeSuffixForArray(cArr, jsonGenerator);
            } else {
                typeSerializer.writeTypePrefixForScalar(cArr, jsonGenerator);
                jsonGenerator.writeString(cArr, 0, cArr.length);
                typeSerializer.writeTypeSuffixForScalar(cArr, jsonGenerator);
            }
        }
    }

    @JacksonStdImpl
    public static final class DoubleArraySerializer extends ArraySerializerBase<double[]> {
        private static final JavaType VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Double.TYPE);

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
            return this;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JsonSerializer<?> getContentSerializer() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JavaType getContentType() {
            return VALUE_TYPE;
        }

        public DoubleArraySerializer() {
            super(double[].class, (BeanProperty) null);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            JsonArrayFormatVisitor jsonArrayFormatVisitorExpectArrayFormat;
            if (jsonFormatVisitorWrapper == null || (jsonArrayFormatVisitorExpectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType)) == null) {
                return;
            }
            jsonArrayFormatVisitorExpectArrayFormat.itemsFormat(JsonFormatTypes.NUMBER);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
        public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            ObjectNode objectNodeCreateSchemaNode = createSchemaNode("array", true);
            objectNodeCreateSchemaNode.put("items", createSchemaNode("number"));
            return objectNodeCreateSchemaNode;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public boolean hasSingleElement(double[] dArr) {
            return dArr.length == 1;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public boolean isEmpty(double[] dArr) {
            return dArr == null || dArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public void serializeContents(double[] dArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            for (double d : dArr) {
                jsonGenerator.writeNumber(d);
            }
        }
    }

    @JacksonStdImpl
    public static final class FloatArraySerializer extends TypedPrimitiveArraySerializer<float[]> {
        private static final JavaType VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Float.TYPE);

        public FloatArraySerializer() {
            super(float[].class);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JsonSerializer<?> getContentSerializer() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JavaType getContentType() {
            return VALUE_TYPE;
        }

        public FloatArraySerializer(FloatArraySerializer floatArraySerializer, BeanProperty beanProperty, TypeSerializer typeSerializer) {
            super(floatArraySerializer, beanProperty, typeSerializer);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
            return new FloatArraySerializer(this, this._property, typeSerializer);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            JsonArrayFormatVisitor jsonArrayFormatVisitorExpectArrayFormat;
            if (jsonFormatVisitorWrapper == null || (jsonArrayFormatVisitorExpectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType)) == null) {
                return;
            }
            jsonArrayFormatVisitorExpectArrayFormat.itemsFormat(JsonFormatTypes.NUMBER);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
        public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            ObjectNode objectNodeCreateSchemaNode = createSchemaNode("array", true);
            objectNodeCreateSchemaNode.put("items", createSchemaNode("number"));
            return objectNodeCreateSchemaNode;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public boolean hasSingleElement(float[] fArr) {
            return fArr.length == 1;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public boolean isEmpty(float[] fArr) {
            return fArr == null || fArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public void serializeContents(float[] fArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            int i10 = 0;
            if (this._valueTypeSerializer == null) {
                int length = fArr.length;
                while (i10 < length) {
                    jsonGenerator.writeNumber(fArr[i10]);
                    i10++;
                }
                return;
            }
            int length2 = fArr.length;
            while (i10 < length2) {
                this._valueTypeSerializer.writeTypePrefixForScalar(null, jsonGenerator, Float.TYPE);
                jsonGenerator.writeNumber(fArr[i10]);
                this._valueTypeSerializer.writeTypeSuffixForScalar(null, jsonGenerator);
                i10++;
            }
        }
    }

    @JacksonStdImpl
    public static final class IntArraySerializer extends ArraySerializerBase<int[]> {
        private static final JavaType VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Integer.TYPE);

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
            return this;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JsonSerializer<?> getContentSerializer() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JavaType getContentType() {
            return VALUE_TYPE;
        }

        public IntArraySerializer() {
            super(int[].class, (BeanProperty) null);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            JsonArrayFormatVisitor jsonArrayFormatVisitorExpectArrayFormat;
            if (jsonFormatVisitorWrapper == null || (jsonArrayFormatVisitorExpectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType)) == null) {
                return;
            }
            jsonArrayFormatVisitorExpectArrayFormat.itemsFormat(JsonFormatTypes.INTEGER);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
        public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            ObjectNode objectNodeCreateSchemaNode = createSchemaNode("array", true);
            objectNodeCreateSchemaNode.put("items", createSchemaNode(TypedValues.Custom.S_INT));
            return objectNodeCreateSchemaNode;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public boolean hasSingleElement(int[] iArr) {
            return iArr.length == 1;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public boolean isEmpty(int[] iArr) {
            return iArr == null || iArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public void serializeContents(int[] iArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            for (int i10 : iArr) {
                jsonGenerator.writeNumber(i10);
            }
        }
    }

    @JacksonStdImpl
    public static final class LongArraySerializer extends TypedPrimitiveArraySerializer<long[]> {
        private static final JavaType VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Long.TYPE);

        public LongArraySerializer() {
            super(long[].class);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JsonSerializer<?> getContentSerializer() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JavaType getContentType() {
            return VALUE_TYPE;
        }

        public LongArraySerializer(LongArraySerializer longArraySerializer, BeanProperty beanProperty, TypeSerializer typeSerializer) {
            super(longArraySerializer, beanProperty, typeSerializer);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
            return new LongArraySerializer(this, this._property, typeSerializer);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            JsonArrayFormatVisitor jsonArrayFormatVisitorExpectArrayFormat;
            if (jsonFormatVisitorWrapper == null || (jsonArrayFormatVisitorExpectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType)) == null) {
                return;
            }
            jsonArrayFormatVisitorExpectArrayFormat.itemsFormat(JsonFormatTypes.NUMBER);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
        public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            ObjectNode objectNodeCreateSchemaNode = createSchemaNode("array", true);
            objectNodeCreateSchemaNode.put("items", createSchemaNode("number", true));
            return objectNodeCreateSchemaNode;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public boolean hasSingleElement(long[] jArr) {
            return jArr.length == 1;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public boolean isEmpty(long[] jArr) {
            return jArr == null || jArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public void serializeContents(long[] jArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            int i10 = 0;
            if (this._valueTypeSerializer == null) {
                int length = jArr.length;
                while (i10 < length) {
                    jsonGenerator.writeNumber(jArr[i10]);
                    i10++;
                }
                return;
            }
            int length2 = jArr.length;
            while (i10 < length2) {
                this._valueTypeSerializer.writeTypePrefixForScalar(null, jsonGenerator, Long.TYPE);
                jsonGenerator.writeNumber(jArr[i10]);
                this._valueTypeSerializer.writeTypeSuffixForScalar(null, jsonGenerator);
                i10++;
            }
        }
    }

    @JacksonStdImpl
    public static final class ShortArraySerializer extends TypedPrimitiveArraySerializer<short[]> {
        private static final JavaType VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Short.TYPE);

        public ShortArraySerializer() {
            super(short[].class);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JsonSerializer<?> getContentSerializer() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JavaType getContentType() {
            return VALUE_TYPE;
        }

        public ShortArraySerializer(ShortArraySerializer shortArraySerializer, BeanProperty beanProperty, TypeSerializer typeSerializer) {
            super(shortArraySerializer, beanProperty, typeSerializer);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
            return new ShortArraySerializer(this, this._property, typeSerializer);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            JsonArrayFormatVisitor jsonArrayFormatVisitorExpectArrayFormat;
            if (jsonFormatVisitorWrapper == null || (jsonArrayFormatVisitorExpectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType)) == null) {
                return;
            }
            jsonArrayFormatVisitorExpectArrayFormat.itemsFormat(JsonFormatTypes.INTEGER);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
        public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            ObjectNode objectNodeCreateSchemaNode = createSchemaNode("array", true);
            objectNodeCreateSchemaNode.put("items", createSchemaNode(TypedValues.Custom.S_INT));
            return objectNodeCreateSchemaNode;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public boolean hasSingleElement(short[] sArr) {
            return sArr.length == 1;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public boolean isEmpty(short[] sArr) {
            return sArr == null || sArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public void serializeContents(short[] sArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            int i10 = 0;
            if (this._valueTypeSerializer == null) {
                int length = sArr.length;
                while (i10 < length) {
                    jsonGenerator.writeNumber((int) sArr[i10]);
                    i10++;
                }
                return;
            }
            int length2 = sArr.length;
            while (i10 < length2) {
                this._valueTypeSerializer.writeTypePrefixForScalar(null, jsonGenerator, Short.TYPE);
                jsonGenerator.writeNumber(sArr[i10]);
                this._valueTypeSerializer.writeTypeSuffixForScalar(null, jsonGenerator);
                i10++;
            }
        }
    }

    protected static abstract class TypedPrimitiveArraySerializer<T> extends ArraySerializerBase<T> {
        protected final TypeSerializer _valueTypeSerializer;

        protected TypedPrimitiveArraySerializer(Class<T> cls) {
            super(cls);
            this._valueTypeSerializer = null;
        }

        protected TypedPrimitiveArraySerializer(TypedPrimitiveArraySerializer<T> typedPrimitiveArraySerializer, BeanProperty beanProperty, TypeSerializer typeSerializer) {
            super(typedPrimitiveArraySerializer, beanProperty);
            this._valueTypeSerializer = typeSerializer;
        }
    }

    protected StdArraySerializers() {
    }

    static {
        HashMap<String, JsonSerializer<?>> map = new HashMap<>();
        _arraySerializers = map;
        map.put(boolean[].class.getName(), new BooleanArraySerializer());
        map.put(byte[].class.getName(), new ByteArraySerializer());
        map.put(char[].class.getName(), new CharArraySerializer());
        map.put(short[].class.getName(), new ShortArraySerializer());
        map.put(int[].class.getName(), new IntArraySerializer());
        map.put(long[].class.getName(), new LongArraySerializer());
        map.put(float[].class.getName(), new FloatArraySerializer());
        map.put(double[].class.getName(), new DoubleArraySerializer());
    }

    public static JsonSerializer<?> findStandardImpl(Class<?> cls) {
        return _arraySerializers.get(cls.getName());
    }
}
