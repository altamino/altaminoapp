package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.NameTransformer;

/* JADX INFO: loaded from: classes6.dex */
public class PropertyBuilder {
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final BeanDescription _beanDesc;
    protected final SerializationConfig _config;
    protected Object _defaultBean;
    protected final JsonInclude.Include _outputProps;

    @Deprecated
    protected final BeanPropertyWriter buildWriter(BeanPropertyDefinition beanPropertyDefinition, JavaType javaType, JsonSerializer<?> jsonSerializer, TypeSerializer typeSerializer, TypeSerializer typeSerializer2, AnnotatedMember annotatedMember, boolean z6) {
        throw new IllegalStateException();
    }

    /* JADX INFO: renamed from: com.fasterxml.jackson.databind.ser.PropertyBuilder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include;

        static {
            int[] iArr = new int[JsonInclude.Include.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include = iArr;
            try {
                iArr[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
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

    /* JADX WARN: Code duplicated, block: B:31:0x008f A[PHI: r3
      0x008f: PHI (r3v1 boolean) = (r3v0 boolean), (r3v6 boolean), (r3v6 boolean), (r3v0 boolean) binds: [B:13:0x0062, B:25:0x007e, B:27:0x0088, B:21:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    protected BeanPropertyWriter buildWriter(SerializerProvider serializerProvider, BeanPropertyDefinition beanPropertyDefinition, JavaType javaType, JsonSerializer<?> jsonSerializer, TypeSerializer typeSerializer, TypeSerializer typeSerializer2, AnnotatedMember annotatedMember, boolean z6) throws JsonMappingException {
        JavaType javaType2;
        Object obj;
        boolean z10;
        Object defaultValue;
        JavaType javaTypeFindSerializationType = findSerializationType(annotatedMember, z6, javaType);
        if (typeSerializer2 != null) {
            if (javaTypeFindSerializationType == null) {
                javaTypeFindSerializationType = javaType;
            }
            if (javaTypeFindSerializationType.getContentType() == null) {
                throw new IllegalStateException("Problem trying to create BeanPropertyWriter for property '" + beanPropertyDefinition.getName() + "' (of type " + this._beanDesc.getType() + "); serialization type " + javaTypeFindSerializationType + " has no content");
            }
            JavaType javaTypeWithContentTypeHandler = javaTypeFindSerializationType.withContentTypeHandler(typeSerializer2);
            javaTypeWithContentTypeHandler.getContentType();
            javaType2 = javaTypeWithContentTypeHandler;
        } else {
            javaType2 = javaTypeFindSerializationType;
        }
        JsonInclude.Include includeFindSerializationInclusion = this._annotationIntrospector.findSerializationInclusion(annotatedMember, this._outputProps);
        boolean z11 = false;
        if (includeFindSerializationInclusion == null) {
            obj = null;
            z10 = z11;
        } else {
            int i10 = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[includeFindSerializationInclusion.ordinal()];
            if (i10 == 1) {
                defaultValue = getDefaultValue(beanPropertyDefinition.getName(), annotatedMember);
                if (defaultValue == null) {
                    obj = defaultValue;
                    z10 = true;
                } else {
                    if (defaultValue.getClass().isArray()) {
                        defaultValue = ArrayBuilders.getArrayComparator(defaultValue);
                    }
                    obj = defaultValue;
                    z10 = z11;
                }
            } else if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                    }
                    obj = null;
                    z10 = z11;
                } else {
                    z11 = true;
                }
                if (!javaType.isContainerType() || this._config.isEnabled(SerializationFeature.WRITE_EMPTY_JSON_ARRAYS)) {
                    obj = null;
                } else {
                    defaultValue = BeanPropertyWriter.MARKER_FOR_EMPTY;
                    obj = defaultValue;
                }
                z10 = z11;
            } else {
                defaultValue = BeanPropertyWriter.MARKER_FOR_EMPTY;
                obj = defaultValue;
                z10 = true;
            }
        }
        BeanPropertyWriter beanPropertyWriter = new BeanPropertyWriter(beanPropertyDefinition, annotatedMember, this._beanDesc.getClassAnnotations(), javaType, jsonSerializer, typeSerializer, javaType2, z10, obj);
        Object objFindNullSerializer = this._annotationIntrospector.findNullSerializer(annotatedMember);
        if (objFindNullSerializer != null) {
            beanPropertyWriter.assignNullSerializer(serializerProvider.serializerInstance(annotatedMember, objFindNullSerializer));
        }
        NameTransformer nameTransformerFindUnwrappingNameTransformer = this._annotationIntrospector.findUnwrappingNameTransformer(annotatedMember);
        return nameTransformerFindUnwrappingNameTransformer != null ? beanPropertyWriter.unwrappingWriter(nameTransformerFindUnwrappingNameTransformer) : beanPropertyWriter;
    }

    protected JavaType findSerializationType(Annotated annotated, boolean z6, JavaType javaType) {
        JavaType javaTypeConstructSpecializedType;
        Class<?> clsFindSerializationType = this._annotationIntrospector.findSerializationType(annotated);
        boolean z10 = true;
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
            z6 = true;
        }
        JavaType javaTypeModifySecondaryTypesByAnnotation = BasicSerializerFactory.modifySecondaryTypesByAnnotation(this._config, annotated, javaType);
        if (javaTypeModifySecondaryTypesByAnnotation != javaType) {
            javaType = javaTypeModifySecondaryTypesByAnnotation;
        } else {
            z10 = z6;
        }
        JsonSerialize.Typing typingFindSerializationTyping = this._annotationIntrospector.findSerializationTyping(annotated);
        if (typingFindSerializationTyping == null || typingFindSerializationTyping == JsonSerialize.Typing.DEFAULT_TYPING) {
            if (z10) {
                return javaType;
            }
        } else if (typingFindSerializationTyping == JsonSerialize.Typing.STATIC) {
            return javaType;
        }
        return null;
    }

    public Annotations getClassAnnotations() {
        return this._beanDesc.getClassAnnotations();
    }

    protected Object getDefaultBean() {
        if (this._defaultBean == null) {
            Object objInstantiateBean = this._beanDesc.instantiateBean(this._config.canOverrideAccessModifiers());
            this._defaultBean = objInstantiateBean;
            if (objInstantiateBean == null) {
                throw new IllegalArgumentException("Class " + this._beanDesc.getClassInfo().getAnnotated().getName() + " has no default constructor; can not instantiate default bean value to support 'properties=JsonSerialize.Inclusion.NON_DEFAULT' annotation");
            }
        }
        return this._defaultBean;
    }

    public PropertyBuilder(SerializationConfig serializationConfig, BeanDescription beanDescription) {
        this._config = serializationConfig;
        this._beanDesc = beanDescription;
        this._outputProps = beanDescription.findSerializationInclusion(serializationConfig.getSerializationInclusion());
        this._annotationIntrospector = serializationConfig.getAnnotationIntrospector();
    }

    protected Object _throwWrapped(Exception exc, String str, Object obj) {
        Throwable cause = exc;
        while (cause.getCause() != null) {
            cause = cause.getCause();
        }
        if (!(cause instanceof Error)) {
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new IllegalArgumentException("Failed to get property '" + str + "' of default " + obj.getClass().getName() + " instance");
        }
        throw ((Error) cause);
    }

    protected Object getDefaultValue(String str, AnnotatedMember annotatedMember) {
        Object defaultBean = getDefaultBean();
        try {
            return annotatedMember.getValue(defaultBean);
        } catch (Exception e) {
            return _throwWrapped(e, str, defaultBean);
        }
    }
}
