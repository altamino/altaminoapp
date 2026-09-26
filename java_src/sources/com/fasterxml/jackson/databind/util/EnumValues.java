package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.util.Collection;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class EnumValues {
    private final Class<Enum<?>> _enumClass;
    private final EnumMap<?, SerializedString> _values;

    public Class<Enum<?>> getEnumClass() {
        return this._enumClass;
    }

    public EnumMap<?, SerializedString> internalMap() {
        return this._values;
    }

    public SerializedString serializedValueFor(Enum<?> r5) {
        return this._values.get(r5);
    }

    public Collection<SerializedString> values() {
        return this._values.values();
    }

    private EnumValues(Class<Enum<?>> cls, Map<Enum<?>, SerializedString> map) {
        this._enumClass = cls;
        this._values = new EnumMap<>(map);
    }

    public static EnumValues construct(Class<Enum<?>> cls, AnnotationIntrospector annotationIntrospector) {
        return constructFromName(cls, annotationIntrospector);
    }

    public static EnumValues constructFromName(Class<Enum<?>> cls, AnnotationIntrospector annotationIntrospector) {
        Enum<?>[] enumArr = (Enum[]) ClassUtil.findEnumType(cls).getEnumConstants();
        if (enumArr != null) {
            HashMap map = new HashMap();
            for (Enum<?> r5 : enumArr) {
                map.put(r5, new SerializedString(annotationIntrospector.findEnumValue(r5)));
            }
            return new EnumValues(cls, map);
        }
        throw new IllegalArgumentException("Can not determine enum constants for Class " + cls.getName());
    }

    public static EnumValues constructFromToString(Class<Enum<?>> cls, AnnotationIntrospector annotationIntrospector) {
        Enum[] enumArr = (Enum[]) ClassUtil.findEnumType(cls).getEnumConstants();
        if (enumArr != null) {
            HashMap map = new HashMap();
            for (Enum r5 : enumArr) {
                map.put(r5, new SerializedString(r5.toString()));
            }
            return new EnumValues(cls, map);
        }
        throw new IllegalArgumentException("Can not determine enum constants for Class " + cls.getName());
    }
}
