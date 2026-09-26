package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.narvii.util.ws.WsMessage;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class Excluder implements TypeAdapterFactory, Cloneable {
    public static final Excluder DEFAULT = new Excluder();
    private static final double IGNORE_VERSIONS = -1.0d;
    private boolean requireExpose;
    private double version = IGNORE_VERSIONS;
    private int modifiers = WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST;
    private boolean serializeInnerClasses = true;
    private List<ExclusionStrategy> serializationStrategies = Collections.emptyList();
    private List<ExclusionStrategy> deserializationStrategies = Collections.emptyList();

    private boolean isValidSince(Since since) {
        if (since != null) {
            return this.version >= since.value();
        }
        return true;
    }

    private boolean isValidUntil(Until until) {
        if (until != null) {
            return this.version < until.value();
        }
        return true;
    }

    private boolean excludeClassChecks(Class<?> cls) {
        if (this.version != IGNORE_VERSIONS && !isValidVersion((Since) cls.getAnnotation(Since.class), (Until) cls.getAnnotation(Until.class))) {
            return true;
        }
        if (this.serializeInnerClasses || !isInnerClass(cls)) {
            return isAnonymousOrNonStaticLocal(cls);
        }
        return true;
    }

    private boolean excludeClassInStrategy(Class<?> cls, boolean z6) {
        Iterator<ExclusionStrategy> it = (z6 ? this.serializationStrategies : this.deserializationStrategies).iterator();
        while (it.hasNext()) {
            if (it.next().shouldSkipClass(cls)) {
                return true;
            }
        }
        return false;
    }

    private boolean isAnonymousOrNonStaticLocal(Class<?> cls) {
        return (Enum.class.isAssignableFrom(cls) || isStatic(cls) || (!cls.isAnonymousClass() && !cls.isLocalClass())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Excluder m13clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public boolean excludeField(Field field, boolean z6) {
        Expose expose;
        if ((this.modifiers & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.version != IGNORE_VERSIONS && !isValidVersion((Since) field.getAnnotation(Since.class), (Until) field.getAnnotation(Until.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.requireExpose && ((expose = (Expose) field.getAnnotation(Expose.class)) == null || (!z6 ? expose.deserialize() : expose.serialize()))) {
            return true;
        }
        if ((!this.serializeInnerClasses && isInnerClass(field.getType())) || isAnonymousOrNonStaticLocal(field.getType())) {
            return true;
        }
        List<ExclusionStrategy> list = z6 ? this.serializationStrategies : this.deserializationStrategies;
        if (list.isEmpty()) {
            return false;
        }
        FieldAttributes fieldAttributes = new FieldAttributes(field);
        Iterator<ExclusionStrategy> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().shouldSkipField(fieldAttributes)) {
                return true;
            }
        }
        return false;
    }

    private boolean isInnerClass(Class<?> cls) {
        if (cls.isMemberClass() && !isStatic(cls)) {
            return true;
        }
        return false;
    }

    private boolean isStatic(Class<?> cls) {
        if ((cls.getModifiers() & 8) != 0) {
            return true;
        }
        return false;
    }

    private boolean isValidVersion(Since since, Until until) {
        if (isValidSince(since) && isValidUntil(until)) {
            return true;
        }
        return false;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(final Gson gson, final TypeToken<T> typeToken) {
        final boolean z6;
        final boolean z10;
        Class<? super T> rawType = typeToken.getRawType();
        boolean zExcludeClassChecks = excludeClassChecks(rawType);
        if (!zExcludeClassChecks && !excludeClassInStrategy(rawType, true)) {
            z6 = false;
        } else {
            z6 = true;
        }
        if (!zExcludeClassChecks && !excludeClassInStrategy(rawType, false)) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (!z6 && !z10) {
            return null;
        }
        return new TypeAdapter<T>() { // from class: com.google.gson.internal.Excluder.1
            private TypeAdapter<T> delegate;

            private TypeAdapter<T> delegate() {
                TypeAdapter<T> typeAdapter = this.delegate;
                if (typeAdapter != null) {
                    return typeAdapter;
                }
                TypeAdapter<T> delegateAdapter = gson.getDelegateAdapter(Excluder.this, typeToken);
                this.delegate = delegateAdapter;
                return delegateAdapter;
            }

            @Override // com.google.gson.TypeAdapter
            public T read(JsonReader jsonReader) throws IOException {
                if (!z10) {
                    return delegate().read(jsonReader);
                }
                jsonReader.skipValue();
                return null;
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, T t5) throws IOException {
                if (z6) {
                    jsonWriter.nullValue();
                } else {
                    delegate().write(jsonWriter, t5);
                }
            }
        };
    }

    public Excluder disableInnerClassSerialization() {
        Excluder excluderM13clone = m13clone();
        excluderM13clone.serializeInnerClasses = false;
        return excluderM13clone;
    }

    public boolean excludeClass(Class<?> cls, boolean z6) {
        if (!excludeClassChecks(cls) && !excludeClassInStrategy(cls, z6)) {
            return false;
        }
        return true;
    }

    public Excluder excludeFieldsWithoutExposeAnnotation() {
        Excluder excluderM13clone = m13clone();
        excluderM13clone.requireExpose = true;
        return excluderM13clone;
    }

    public Excluder withExclusionStrategy(ExclusionStrategy exclusionStrategy, boolean z6, boolean z10) {
        Excluder excluderM13clone = m13clone();
        if (z6) {
            ArrayList arrayList = new ArrayList(this.serializationStrategies);
            excluderM13clone.serializationStrategies = arrayList;
            arrayList.add(exclusionStrategy);
        }
        if (z10) {
            ArrayList arrayList2 = new ArrayList(this.deserializationStrategies);
            excluderM13clone.deserializationStrategies = arrayList2;
            arrayList2.add(exclusionStrategy);
        }
        return excluderM13clone;
    }

    public Excluder withModifiers(int... iArr) {
        Excluder excluderM13clone = m13clone();
        excluderM13clone.modifiers = 0;
        for (int i10 : iArr) {
            excluderM13clone.modifiers = i10 | excluderM13clone.modifiers;
        }
        return excluderM13clone;
    }

    public Excluder withVersion(double d) {
        Excluder excluderM13clone = m13clone();
        excluderM13clone.version = d;
        return excluderM13clone;
    }
}
