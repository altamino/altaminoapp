package com.fasterxml.jackson.databind.jsontype;

import com.fasterxml.jackson.databind.JavaType;

/* loaded from: classes.dex */
public interface TypeIdResolver {
    String idFromBaseType();

    String idFromValue(Object obj);

    String idFromValueAndType(Object obj, Class<?> cls);

    void init(JavaType javaType);

    JavaType typeFromId(String str);
}
