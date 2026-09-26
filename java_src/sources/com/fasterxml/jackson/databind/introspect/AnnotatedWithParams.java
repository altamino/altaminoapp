package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class AnnotatedWithParams extends AnnotatedMember {
    private static final long serialVersionUID = 1;
    protected final AnnotationMap[] _paramAnnotations;

    public abstract Object call() throws Exception;

    public abstract Object call(Object[] objArr) throws Exception;

    public abstract Object call1(Object obj) throws Exception;

    public abstract Type getGenericParameterType(int i10);

    public abstract int getParameterCount();

    public abstract Class<?> getRawParameterType(int i10);

    public final void addOrOverrideParam(int i10, Annotation annotation) {
        AnnotationMap annotationMap = this._paramAnnotations[i10];
        if (annotationMap == null) {
            annotationMap = new AnnotationMap();
            this._paramAnnotations[i10] = annotationMap;
        }
        annotationMap.add(annotation);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this._annotations.get(cls);
    }

    public final int getAnnotationCount() {
        return this._annotations.size();
    }

    public final AnnotatedParameter getParameter(int i10) {
        return new AnnotatedParameter(this, getGenericParameterType(i10), getParameterAnnotations(i10), i10);
    }

    public final AnnotationMap getParameterAnnotations(int i10) {
        AnnotationMap[] annotationMapArr = this._paramAnnotations;
        if (annotationMapArr == null || i10 < 0 || i10 > annotationMapArr.length) {
            return null;
        }
        return annotationMapArr[i10];
    }

    protected JavaType getType(TypeBindings typeBindings, TypeVariable<?>[] typeVariableArr) {
        if (typeVariableArr != null && typeVariableArr.length > 0) {
            typeBindings = typeBindings.childInstance();
            for (TypeVariable<?> typeVariable : typeVariableArr) {
                typeBindings._addPlaceholder(typeVariable.getName());
                Type type = typeVariable.getBounds()[0];
                typeBindings.addBinding(typeVariable.getName(), type == null ? TypeFactory.unknownType() : typeBindings.resolveType(type));
            }
        }
        return typeBindings.resolveType(getGenericType());
    }

    protected AnnotatedParameter replaceParameterAnnotations(int i10, AnnotationMap annotationMap) {
        this._paramAnnotations[i10] = annotationMap;
        return getParameter(i10);
    }

    protected AnnotatedWithParams(AnnotationMap annotationMap, AnnotationMap[] annotationMapArr) {
        super(annotationMap);
        this._paramAnnotations = annotationMapArr;
    }

    public final JavaType resolveParameterType(int i10, TypeBindings typeBindings) {
        return typeBindings.resolveType(getGenericParameterType(i10));
    }
}
