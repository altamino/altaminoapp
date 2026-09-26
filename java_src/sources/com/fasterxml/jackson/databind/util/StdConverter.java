package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;

/* JADX INFO: loaded from: classes5.dex */
public abstract class StdConverter<IN, OUT> implements Converter<IN, OUT> {
    @Override // com.fasterxml.jackson.databind.util.Converter
    public abstract OUT convert(IN in);

    @Override // com.fasterxml.jackson.databind.util.Converter
    public JavaType getInputType(TypeFactory typeFactory) {
        JavaType[] javaTypeArrFindTypeParameters = typeFactory.findTypeParameters(getClass(), Converter.class);
        if (javaTypeArrFindTypeParameters != null && javaTypeArrFindTypeParameters.length >= 2) {
            return javaTypeArrFindTypeParameters[0];
        }
        throw new IllegalStateException("Can not find OUT type parameter for Converter of type " + getClass().getName());
    }

    @Override // com.fasterxml.jackson.databind.util.Converter
    public JavaType getOutputType(TypeFactory typeFactory) {
        JavaType[] javaTypeArrFindTypeParameters = typeFactory.findTypeParameters(getClass(), Converter.class);
        if (javaTypeArrFindTypeParameters != null && javaTypeArrFindTypeParameters.length >= 2) {
            return javaTypeArrFindTypeParameters[1];
        }
        throw new IllegalStateException("Can not find OUT type parameter for Converter of type " + getClass().getName());
    }
}
