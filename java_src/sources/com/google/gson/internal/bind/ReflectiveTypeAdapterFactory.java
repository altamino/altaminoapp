package com.google.gson.internal.bind;

import com.google.firebase.remoteconfig.a;
import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.ReflectionAccessFilter;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.ReflectionAccessFilterHelper;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {
    private final ConstructorConstructor constructorConstructor;
    private final Excluder excluder;
    private final FieldNamingStrategy fieldNamingPolicy;
    private final JsonAdapterAnnotationTypeAdapterFactory jsonAdapterFactory;
    private final List<ReflectionAccessFilter> reflectionFilters;

    public static abstract class Adapter<T, A> extends TypeAdapter<T> {
        final Map<String, BoundField> boundFields;

        abstract A createAccumulator();

        abstract T finalize(A a7);

        abstract void readField(A a7, JsonReader jsonReader, BoundField boundField) throws IllegalAccessException, IOException;

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t5) throws IOException {
            if (t5 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                Iterator<BoundField> it = this.boundFields.values().iterator();
                while (it.hasNext()) {
                    it.next().write(jsonWriter, t5);
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
            }
        }

        Adapter(Map<String, BoundField> map) {
            this.boundFields = map;
        }

        @Override // com.google.gson.TypeAdapter
        public T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            A aCreateAccumulator = createAccumulator();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    BoundField boundField = this.boundFields.get(jsonReader.nextName());
                    if (boundField != null && boundField.deserialized) {
                        readField(aCreateAccumulator, jsonReader, boundField);
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                return finalize(aCreateAccumulator);
            } catch (IllegalAccessException e) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException(e2);
            }
        }
    }

    private static final class FieldReflectionAdapter<T> extends Adapter<T, T> {
        private final ObjectConstructor<T> constructor;

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        T finalize(T t5) {
            return t5;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        T createAccumulator() {
            return this.constructor.construct();
        }

        FieldReflectionAdapter(ObjectConstructor<T> objectConstructor, Map<String, BoundField> map) {
            super(map);
            this.constructor = objectConstructor;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        void readField(T t5, JsonReader jsonReader, BoundField boundField) throws IllegalAccessException, IOException {
            boundField.readIntoField(jsonReader, t5);
        }
    }

    private static final class RecordAdapter<T> extends Adapter<T, Object[]> {
        static final Map<Class<?>, Object> PRIMITIVE_DEFAULTS = primitiveDefaults();
        private final Map<String, Integer> componentIndices;
        private final Constructor<T> constructor;
        private final Object[] constructorArgsDefaults;

        private static Map<Class<?>, Object> primitiveDefaults() {
            HashMap map = new HashMap();
            map.put(Byte.TYPE, (byte) 0);
            map.put(Short.TYPE, (short) 0);
            map.put(Integer.TYPE, 0);
            map.put(Long.TYPE, 0L);
            map.put(Float.TYPE, Float.valueOf(0.0f));
            map.put(Double.TYPE, Double.valueOf(a.DEFAULT_VALUE_FOR_DOUBLE));
            map.put(Character.TYPE, (char) 0);
            map.put(Boolean.TYPE, Boolean.FALSE);
            return map;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public Object[] createAccumulator() {
            return (Object[]) this.constructorArgsDefaults.clone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public T finalize(Object[] objArr) {
            try {
                return this.constructor.newInstance(objArr);
            } catch (IllegalAccessException e) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
            } catch (IllegalArgumentException e2) {
                e = e2;
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(this.constructor) + "' with args " + Arrays.toString(objArr), e);
            } catch (InstantiationException e6) {
                e = e6;
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(this.constructor) + "' with args " + Arrays.toString(objArr), e);
            } catch (InvocationTargetException e7) {
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(this.constructor) + "' with args " + Arrays.toString(objArr), e7.getCause());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public void readField(Object[] objArr, JsonReader jsonReader, BoundField boundField) throws IOException {
            Integer num = this.componentIndices.get(boundField.fieldName);
            if (num != null) {
                boundField.readIntoArray(jsonReader, num.intValue(), objArr);
                return;
            }
            throw new IllegalStateException("Could not find the index in the constructor '" + ReflectionHelper.constructorToString(this.constructor) + "' for field with name '" + boundField.fieldName + "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");
        }

        RecordAdapter(Class<T> cls, Map<String, BoundField> map, boolean z6) {
            super(map);
            this.componentIndices = new HashMap();
            Constructor<T> canonicalRecordConstructor = ReflectionHelper.getCanonicalRecordConstructor(cls);
            this.constructor = canonicalRecordConstructor;
            if (z6) {
                ReflectiveTypeAdapterFactory.checkAccessible(null, canonicalRecordConstructor);
            } else {
                ReflectionHelper.makeAccessible(canonicalRecordConstructor);
            }
            String[] recordComponentNames = ReflectionHelper.getRecordComponentNames(cls);
            for (int i10 = 0; i10 < recordComponentNames.length; i10++) {
                this.componentIndices.put(recordComponentNames[i10], Integer.valueOf(i10));
            }
            Class<?>[] parameterTypes = this.constructor.getParameterTypes();
            this.constructorArgsDefaults = new Object[parameterTypes.length];
            for (int i11 = 0; i11 < parameterTypes.length; i11++) {
                this.constructorArgsDefaults[i11] = PRIMITIVE_DEFAULTS.get(parameterTypes[i11]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <M extends AccessibleObject & Member> void checkAccessible(Object obj, M m) {
        if (Modifier.isStatic(m.getModifiers())) {
            obj = null;
        }
        if (ReflectionAccessFilterHelper.canAccess(m, obj)) {
            return;
        }
        throw new JsonIOException(ReflectionHelper.getAccessibleObjectDescription(m, true) + " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.");
    }

    static abstract class BoundField {
        final boolean deserialized;
        final Field field;
        final String fieldName;
        final String name;
        final boolean serialized;

        abstract void readIntoArray(JsonReader jsonReader, int i10, Object[] objArr) throws JsonParseException, IOException;

        abstract void readIntoField(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException;

        abstract void write(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException;

        protected BoundField(String str, Field field, boolean z6, boolean z10) {
            this.name = str;
            this.field = field;
            this.fieldName = field.getName();
            this.serialized = z6;
            this.deserialized = z10;
        }
    }

    private BoundField createBoundField(final Gson gson, Field field, final Method method, String str, final TypeToken<?> typeToken, boolean z6, boolean z10, final boolean z11) {
        final boolean zIsPrimitive = Primitives.isPrimitive(typeToken.getRawType());
        int modifiers = field.getModifiers();
        final boolean z12 = Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers);
        JsonAdapter jsonAdapter = (JsonAdapter) field.getAnnotation(JsonAdapter.class);
        TypeAdapter<?> typeAdapter = jsonAdapter != null ? this.jsonAdapterFactory.getTypeAdapter(this.constructorConstructor, gson, typeToken, jsonAdapter) : null;
        final boolean z13 = typeAdapter != null;
        if (typeAdapter == null) {
            typeAdapter = gson.getAdapter(typeToken);
        }
        final TypeAdapter<?> typeAdapter2 = typeAdapter;
        return new BoundField(str, field, z6, z10) { // from class: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            void readIntoArray(JsonReader jsonReader, int i10, Object[] objArr) throws JsonParseException, IOException {
                Object obj = typeAdapter2.read(jsonReader);
                if (obj != null || !zIsPrimitive) {
                    objArr[i10] = obj;
                    return;
                }
                throw new JsonParseException("null is not allowed as value for record component '" + this.fieldName + "' of primitive type; at path " + jsonReader.getPath());
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            void readIntoField(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException {
                Object obj2 = typeAdapter2.read(jsonReader);
                if (obj2 == null && zIsPrimitive) {
                    return;
                }
                if (z11) {
                    ReflectiveTypeAdapterFactory.checkAccessible(obj, this.field);
                } else if (z12) {
                    throw new JsonIOException("Cannot set value of 'static final' " + ReflectionHelper.getAccessibleObjectDescription(this.field, false));
                }
                this.field.set(obj, obj2);
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            void write(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException {
                Object objInvoke;
                if (this.serialized) {
                    if (z11) {
                        Method method2 = method;
                        if (method2 == null) {
                            ReflectiveTypeAdapterFactory.checkAccessible(obj, this.field);
                        } else {
                            ReflectiveTypeAdapterFactory.checkAccessible(obj, method2);
                        }
                    }
                    Method method3 = method;
                    if (method3 != null) {
                        try {
                            objInvoke = method3.invoke(obj, new Object[0]);
                        } catch (InvocationTargetException e) {
                            throw new JsonIOException("Accessor " + ReflectionHelper.getAccessibleObjectDescription(method, false) + " threw exception", e.getCause());
                        }
                    } else {
                        objInvoke = this.field.get(obj);
                    }
                    if (objInvoke == obj) {
                        return;
                    }
                    jsonWriter.name(this.name);
                    (z13 ? typeAdapter2 : new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter2, typeToken.getType())).write(jsonWriter, objInvoke);
                }
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r22v0 */
    private Map<String, BoundField> getBoundFields(Gson gson, TypeToken<?> typeToken, Class<?> cls, boolean z6, boolean z10) {
        boolean z11;
        Method method;
        int i10;
        int i11;
        boolean z12;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        TypeToken<?> typeToken2 = typeToken;
        boolean z13 = z6;
        Class<?> rawType = cls;
        while (rawType != Object.class) {
            Field[] declaredFields = rawType.getDeclaredFields();
            boolean z14 = true;
            boolean z15 = false;
            if (rawType != cls && declaredFields.length > 0) {
                ReflectionAccessFilter.FilterResult filterResult = ReflectionAccessFilterHelper.getFilterResult(this.reflectionFilters, rawType);
                if (filterResult == ReflectionAccessFilter.FilterResult.BLOCK_ALL) {
                    throw new JsonIOException("ReflectionAccessFilter does not permit using reflection for " + rawType + " (supertype of " + cls + "). Register a TypeAdapter for this type or adjust the access filter.");
                }
                z13 = filterResult == ReflectionAccessFilter.FilterResult.BLOCK_INACCESSIBLE;
            }
            boolean z16 = z13;
            int length = declaredFields.length;
            int i12 = 0;
            while (i12 < length) {
                Field field = declaredFields[i12];
                boolean zIncludeField = this.includeField(field, z14);
                boolean zIncludeField2 = this.includeField(field, z15);
                if (zIncludeField || zIncludeField2) {
                    BoundField boundField = null;
                    if (!z10) {
                        z11 = zIncludeField2;
                        method = null;
                    } else if (Modifier.isStatic(field.getModifiers())) {
                        method = null;
                        z11 = z15;
                    } else {
                        Method accessor = ReflectionHelper.getAccessor(rawType, field);
                        if (!z16) {
                            ReflectionHelper.makeAccessible(accessor);
                        }
                        if (accessor.getAnnotation(SerializedName.class) != null && field.getAnnotation(SerializedName.class) == null) {
                            throw new JsonIOException("@SerializedName on " + ReflectionHelper.getAccessibleObjectDescription(accessor, z15) + " is not supported");
                        }
                        z11 = zIncludeField2;
                        method = accessor;
                    }
                    if (!z16 && method == null) {
                        ReflectionHelper.makeAccessible(field);
                    }
                    Type typeResolve = C$Gson$Types.resolve(typeToken2.getType(), rawType, field.getGenericType());
                    List<String> fieldNames = this.getFieldNames(field);
                    int size = fieldNames.size();
                    ?? r1 = z15;
                    while (r1 < size) {
                        String str = fieldNames.get(r1);
                        boolean z17 = r1 != 0 ? z15 : zIncludeField;
                        ?? r22 = r1;
                        BoundField boundField2 = boundField;
                        int i13 = size;
                        List<String> list = fieldNames;
                        Field field2 = field;
                        int i14 = i12;
                        int i15 = length;
                        boolean z18 = z15;
                        boundField = boundField2 == null ? (BoundField) linkedHashMap.put(str, createBoundField(gson, field, method, str, TypeToken.get(typeResolve), z17, z11, z16)) : boundField2;
                        zIncludeField = z17;
                        i12 = i14;
                        size = i13;
                        fieldNames = list;
                        field = field2;
                        length = i15;
                        z15 = z18;
                        r1 = (r22 == true ? 1 : 0) + 1;
                    }
                    BoundField boundField3 = boundField;
                    Field field3 = field;
                    i10 = i12;
                    i11 = length;
                    z12 = z15;
                    if (boundField3 != null) {
                        throw new IllegalArgumentException("Class " + cls.getName() + " declares multiple JSON fields named '" + boundField3.name + "'; conflict is caused by fields " + ReflectionHelper.fieldToString(boundField3.field) + " and " + ReflectionHelper.fieldToString(field3));
                    }
                } else {
                    i10 = i12;
                    i11 = length;
                    z12 = z15;
                }
                i12 = i10 + 1;
                z14 = true;
                this = this;
                length = i11;
                z15 = z12;
            }
            typeToken2 = TypeToken.get(C$Gson$Types.resolve(typeToken2.getType(), rawType, rawType.getGenericSuperclass()));
            rawType = typeToken2.getRawType();
            z13 = z16;
        }
        return linkedHashMap;
    }

    private List<String> getFieldNames(Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        if (serializedName == null) {
            return Collections.singletonList(this.fieldNamingPolicy.translateName(field));
        }
        String strValue = serializedName.value();
        String[] strArrAlternate = serializedName.alternate();
        if (strArrAlternate.length == 0) {
            return Collections.singletonList(strValue);
        }
        ArrayList arrayList = new ArrayList(strArrAlternate.length + 1);
        arrayList.add(strValue);
        Collections.addAll(arrayList, strArrAlternate);
        return arrayList;
    }

    private boolean includeField(Field field, boolean z6) {
        return (this.excluder.excludeClass(field.getType(), z6) || this.excluder.excludeField(field, z6)) ? false : true;
    }

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory, List<ReflectionAccessFilter> list) {
        this.constructorConstructor = constructorConstructor;
        this.fieldNamingPolicy = fieldNamingStrategy;
        this.excluder = excluder;
        this.jsonAdapterFactory = jsonAdapterAnnotationTypeAdapterFactory;
        this.reflectionFilters = list;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        boolean z6;
        Class<? super T> rawType = typeToken.getRawType();
        if (!Object.class.isAssignableFrom(rawType)) {
            return null;
        }
        ReflectionAccessFilter.FilterResult filterResult = ReflectionAccessFilterHelper.getFilterResult(this.reflectionFilters, rawType);
        if (filterResult != ReflectionAccessFilter.FilterResult.BLOCK_ALL) {
            if (filterResult == ReflectionAccessFilter.FilterResult.BLOCK_INACCESSIBLE) {
                z6 = true;
            } else {
                z6 = false;
            }
            boolean z10 = z6;
            if (ReflectionHelper.isRecord(rawType)) {
                return new RecordAdapter(rawType, getBoundFields(gson, typeToken, rawType, z10, true), z10);
            }
            return new FieldReflectionAdapter(this.constructorConstructor.get(typeToken), getBoundFields(gson, typeToken, rawType, z10, false));
        }
        throw new JsonIOException("ReflectionAccessFilter does not permit using reflection for " + rawType + ". Register a TypeAdapter for this type or adjust the access filter.");
    }
}
