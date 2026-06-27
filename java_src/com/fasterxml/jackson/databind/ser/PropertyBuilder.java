package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.util.Annotations;

/* loaded from: classes.dex */
public class PropertyBuilder {
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final BeanDescription _beanDesc;
    protected final SerializationConfig _config;
    protected Object _defaultBean;
    protected final JsonInclude.Include _outputProps;

    public PropertyBuilder(SerializationConfig serializationConfig, BeanDescription beanDescription) {
        this._config = serializationConfig;
        this._beanDesc = beanDescription;
        this._outputProps = beanDescription.findSerializationInclusion(serializationConfig.getSerializationInclusion());
        this._annotationIntrospector = this._config.getAnnotationIntrospector();
    }

    public Annotations getClassAnnotations() {
        return this._beanDesc.getClassAnnotations();
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00ad A[PHI: r1
  0x00ad: PHI (r1v2 java.lang.Object) = (r1v1 java.lang.Object), (r1v11 java.lang.Object), (r1v12 java.lang.Object), (r1v1 java.lang.Object) binds: [B:13:0x0063, B:36:0x00a7, B:37:0x00a9, B:21:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.databind.ser.BeanPropertyWriter buildWriter(com.fasterxml.jackson.databind.SerializerProvider r14, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition r15, com.fasterxml.jackson.databind.JavaType r16, com.fasterxml.jackson.databind.JsonSerializer<?> r17, com.fasterxml.jackson.databind.jsontype.TypeSerializer r18, com.fasterxml.jackson.databind.jsontype.TypeSerializer r19, com.fasterxml.jackson.databind.introspect.AnnotatedMember r20, boolean r21) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r13 = this;
            r0 = r13
            r1 = r19
            r11 = r20
            r5 = r16
            r2 = r21
            com.fasterxml.jackson.databind.JavaType r2 = r13.findSerializationType(r11, r2, r5)
            if (r1 == 0) goto L57
            if (r2 != 0) goto L12
            r2 = r5
        L12:
            com.fasterxml.jackson.databind.JavaType r3 = r2.getContentType()
            if (r3 == 0) goto L21
            com.fasterxml.jackson.databind.JavaType r1 = r2.withContentTypeHandler(r1)
            r1.getContentType()
            r8 = r1
            goto L58
        L21:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Problem trying to create BeanPropertyWriter for property '"
            r3.append(r4)
            java.lang.String r4 = r15.getName()
            r3.append(r4)
            java.lang.String r4 = "' (of type "
            r3.append(r4)
            com.fasterxml.jackson.databind.BeanDescription r4 = r0._beanDesc
            com.fasterxml.jackson.databind.JavaType r4 = r4.getType()
            r3.append(r4)
            java.lang.String r4 = "); serialization type "
            r3.append(r4)
            r3.append(r2)
            java.lang.String r2 = " has no content"
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            r1.<init>(r2)
            throw r1
        L57:
            r8 = r2
        L58:
            r1 = 0
            r2 = 0
            com.fasterxml.jackson.databind.AnnotationIntrospector r3 = r0._annotationIntrospector
            com.fasterxml.jackson.annotation.JsonInclude$Include r4 = r0._outputProps
            com.fasterxml.jackson.annotation.JsonInclude$Include r3 = r3.findSerializationInclusion(r11, r4)
            r4 = 1
            if (r3 == 0) goto Lad
            int[] r6 = com.fasterxml.jackson.databind.ser.PropertyBuilder.AnonymousClass1.$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include
            int r3 = r3.ordinal()
            r3 = r6[r3]
            if (r3 == r4) goto L94
            r6 = 2
            if (r3 == r6) goto L8f
            r6 = 3
            if (r3 == r6) goto L79
            r4 = 4
            if (r3 == r4) goto L7a
            goto Lad
        L79:
            r2 = 1
        L7a:
            boolean r3 = r16.isContainerType()
            if (r3 == 0) goto L8c
            com.fasterxml.jackson.databind.SerializationConfig r3 = r0._config
            com.fasterxml.jackson.databind.SerializationFeature r4 = com.fasterxml.jackson.databind.SerializationFeature.WRITE_EMPTY_JSON_ARRAYS
            boolean r3 = r3.isEnabled(r4)
            if (r3 != 0) goto L8c
            java.lang.Object r1 = com.fasterxml.jackson.databind.ser.BeanPropertyWriter.MARKER_FOR_EMPTY
        L8c:
            r10 = r1
            r9 = r2
            goto Laf
        L8f:
            java.lang.Object r1 = com.fasterxml.jackson.databind.ser.BeanPropertyWriter.MARKER_FOR_EMPTY
        L91:
            r10 = r1
            r9 = 1
            goto Laf
        L94:
            java.lang.String r1 = r15.getName()
            java.lang.Object r1 = r13.getDefaultValue(r1, r11)
            if (r1 != 0) goto L9f
            goto L91
        L9f:
            java.lang.Class r3 = r1.getClass()
            boolean r3 = r3.isArray()
            if (r3 == 0) goto Lad
            java.lang.Object r1 = com.fasterxml.jackson.databind.util.ArrayBuilders.getArrayComparator(r1)
        Lad:
            r10 = r1
            r9 = 0
        Laf:
            com.fasterxml.jackson.databind.ser.BeanPropertyWriter r12 = new com.fasterxml.jackson.databind.ser.BeanPropertyWriter
            com.fasterxml.jackson.databind.BeanDescription r1 = r0._beanDesc
            com.fasterxml.jackson.databind.util.Annotations r4 = r1.getClassAnnotations()
            r1 = r12
            r2 = r15
            r3 = r20
            r5 = r16
            r6 = r17
            r7 = r18
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10)
            com.fasterxml.jackson.databind.AnnotationIntrospector r1 = r0._annotationIntrospector
            java.lang.Object r1 = r1.findNullSerializer(r11)
            if (r1 == 0) goto Ld4
            r2 = r14
            com.fasterxml.jackson.databind.JsonSerializer r1 = r14.serializerInstance(r11, r1)
            r12.assignNullSerializer(r1)
        Ld4:
            com.fasterxml.jackson.databind.AnnotationIntrospector r1 = r0._annotationIntrospector
            com.fasterxml.jackson.databind.util.NameTransformer r1 = r1.findUnwrappingNameTransformer(r11)
            if (r1 == 0) goto Le0
            com.fasterxml.jackson.databind.ser.BeanPropertyWriter r12 = r12.unwrappingWriter(r1)
        Le0:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.PropertyBuilder.buildWriter(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition, com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsontype.TypeSerializer, com.fasterxml.jackson.databind.jsontype.TypeSerializer, com.fasterxml.jackson.databind.introspect.AnnotatedMember, boolean):com.fasterxml.jackson.databind.ser.BeanPropertyWriter");
    }

    /* renamed from: com.fasterxml.jackson.databind.ser.PropertyBuilder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include = new int[JsonInclude.Include.values().length];

        static {
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_NULL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.ALWAYS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    protected JavaType findSerializationType(Annotated annotated, boolean z, JavaType javaType) {
        JavaType javaTypeConstructSpecializedType;
        Class<?> clsFindSerializationType = this._annotationIntrospector.findSerializationType(annotated);
        if (clsFindSerializationType != null) {
            Class<?> rawClass = javaType.getRawClass();
            if (clsFindSerializationType.isAssignableFrom(rawClass)) {
                javaTypeConstructSpecializedType = javaType.widenBy(clsFindSerializationType);
            } else {
                if (!rawClass.isAssignableFrom(clsFindSerializationType)) {
                    throw new IllegalArgumentException("Illegal concrete-type annotation for method '" + annotated.getName() + "': class " + clsFindSerializationType.getName() + " not a super-type of (declared) class " + rawClass.getName());
                }
                javaTypeConstructSpecializedType = this._config.constructSpecializedType(javaType, clsFindSerializationType);
            }
            javaType = javaTypeConstructSpecializedType;
            z = true;
        }
        JavaType javaTypeModifySecondaryTypesByAnnotation = BasicSerializerFactory.modifySecondaryTypesByAnnotation(this._config, annotated, javaType);
        if (javaTypeModifySecondaryTypesByAnnotation != javaType) {
            javaType = javaTypeModifySecondaryTypesByAnnotation;
            z = true;
        }
        JsonSerialize.Typing typingFindSerializationTyping = this._annotationIntrospector.findSerializationTyping(annotated);
        if (typingFindSerializationTyping != null && typingFindSerializationTyping != JsonSerialize.Typing.DEFAULT_TYPING) {
            z = typingFindSerializationTyping == JsonSerialize.Typing.STATIC;
        }
        if (z) {
            return javaType;
        }
        return null;
    }

    protected Object getDefaultBean() {
        if (this._defaultBean == null) {
            this._defaultBean = this._beanDesc.instantiateBean(this._config.canOverrideAccessModifiers());
            if (this._defaultBean == null) {
                throw new IllegalArgumentException("Class " + this._beanDesc.getClassInfo().getAnnotated().getName() + " has no default constructor; can not instantiate default bean value to support 'properties=JsonSerialize.Inclusion.NON_DEFAULT' annotation");
            }
        }
        return this._defaultBean;
    }

    protected Object getDefaultValue(String str, AnnotatedMember annotatedMember) {
        Object defaultBean = getDefaultBean();
        try {
            return annotatedMember.getValue(defaultBean);
        } catch (Exception e) {
            return _throwWrapped(e, str, defaultBean);
        }
    }

    protected Object _throwWrapped(Exception exc, String str, Object obj) {
        Throwable cause = exc;
        while (cause.getCause() != null) {
            cause = cause.getCause();
        }
        if (cause instanceof Error) {
            throw ((Error) cause);
        }
        if (cause instanceof RuntimeException) {
            throw ((RuntimeException) cause);
        }
        throw new IllegalArgumentException("Failed to get property '" + str + "' of default " + obj.getClass().getName() + " instance");
    }
}
