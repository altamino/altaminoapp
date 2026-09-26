package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.SimpleType;
import java.io.Serializable;

/* JADX INFO: loaded from: classes11.dex */
public class BasicClassIntrospector extends ClassIntrospector implements Serializable {
    protected static final BasicBeanDescription BOOLEAN_DESC;
    protected static final BasicBeanDescription INT_DESC;
    protected static final BasicBeanDescription LONG_DESC;
    protected static final BasicBeanDescription STRING_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(String.class), AnnotatedClass.constructWithoutSuperTypes(String.class, null, null));
    public static final BasicClassIntrospector instance;
    private static final long serialVersionUID = 1;

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public /* bridge */ /* synthetic */ BeanDescription forClassAnnotations(MapperConfig mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return forClassAnnotations((MapperConfig<?>) mapperConfig, javaType, mixInResolver);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public /* bridge */ /* synthetic */ BeanDescription forDirectClassAnnotations(MapperConfig mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return forDirectClassAnnotations((MapperConfig<?>) mapperConfig, javaType, mixInResolver);
    }

    static {
        Class cls = Boolean.TYPE;
        BOOLEAN_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls), AnnotatedClass.constructWithoutSuperTypes(cls, null, null));
        Class cls2 = Integer.TYPE;
        INT_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls2), AnnotatedClass.constructWithoutSuperTypes(cls2, null, null));
        Class cls3 = Long.TYPE;
        LONG_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls3), AnnotatedClass.constructWithoutSuperTypes(cls3, null, null));
        instance = new BasicClassIntrospector();
    }

    protected POJOPropertiesCollector constructPropertyCollector(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, JavaType javaType, boolean z6, String str) {
        return new POJOPropertiesCollector(mapperConfig, z6, javaType, annotatedClass, str);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return BasicBeanDescription.forOtherUse(mapperConfig, javaType, AnnotatedClass.construct(javaType.getRawClass(), mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null, mixInResolver));
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forCreation(DeserializationConfig deserializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription basicBeanDescription_findCachedDesc = _findCachedDesc(javaType);
        return basicBeanDescription_findCachedDesc == null ? BasicBeanDescription.forDeserialization(collectProperties(deserializationConfig, javaType, mixInResolver, false, "set")) : basicBeanDescription_findCachedDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forDeserialization(DeserializationConfig deserializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription basicBeanDescription_findCachedDesc = _findCachedDesc(javaType);
        return basicBeanDescription_findCachedDesc == null ? BasicBeanDescription.forDeserialization(collectProperties(deserializationConfig, javaType, mixInResolver, false, "set")) : basicBeanDescription_findCachedDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forDeserializationWithBuilder(DeserializationConfig deserializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return BasicBeanDescription.forDeserialization(collectPropertiesWithBuilder(deserializationConfig, javaType, mixInResolver, false));
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forDirectClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        boolean zIsAnnotationProcessingEnabled = mapperConfig.isAnnotationProcessingEnabled();
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        Class<?> rawClass = javaType.getRawClass();
        if (!zIsAnnotationProcessingEnabled) {
            annotationIntrospector = null;
        }
        return BasicBeanDescription.forOtherUse(mapperConfig, javaType, AnnotatedClass.constructWithoutSuperTypes(rawClass, annotationIntrospector, mixInResolver));
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forSerialization(SerializationConfig serializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription basicBeanDescription_findCachedDesc = _findCachedDesc(javaType);
        return basicBeanDescription_findCachedDesc == null ? BasicBeanDescription.forSerialization(collectProperties(serializationConfig, javaType, mixInResolver, true, "set")) : basicBeanDescription_findCachedDesc;
    }

    protected BasicBeanDescription _findCachedDesc(JavaType javaType) {
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass == String.class) {
            return STRING_DESC;
        }
        if (rawClass == Boolean.TYPE) {
            return BOOLEAN_DESC;
        }
        if (rawClass == Integer.TYPE) {
            return INT_DESC;
        }
        if (rawClass == Long.TYPE) {
            return LONG_DESC;
        }
        return null;
    }

    protected POJOPropertiesCollector collectProperties(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver, boolean z6, String str) {
        AnnotationIntrospector annotationIntrospector;
        boolean zIsAnnotationProcessingEnabled = mapperConfig.isAnnotationProcessingEnabled();
        Class<?> rawClass = javaType.getRawClass();
        if (zIsAnnotationProcessingEnabled) {
            annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        } else {
            annotationIntrospector = null;
        }
        return constructPropertyCollector(mapperConfig, AnnotatedClass.construct(rawClass, annotationIntrospector, mixInResolver), javaType, z6, str).collect();
    }

    protected POJOPropertiesCollector collectPropertiesWithBuilder(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver, boolean z6) {
        AnnotationIntrospector annotationIntrospector;
        String str;
        JsonPOJOBuilder.Value valueFindPOJOBuilderConfig = null;
        if (mapperConfig.isAnnotationProcessingEnabled()) {
            annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        } else {
            annotationIntrospector = null;
        }
        AnnotatedClass annotatedClassConstruct = AnnotatedClass.construct(javaType.getRawClass(), annotationIntrospector, mixInResolver);
        if (annotationIntrospector != null) {
            valueFindPOJOBuilderConfig = annotationIntrospector.findPOJOBuilderConfig(annotatedClassConstruct);
        }
        if (valueFindPOJOBuilderConfig == null) {
            str = "with";
        } else {
            str = valueFindPOJOBuilderConfig.withPrefix;
        }
        return constructPropertyCollector(mapperConfig, annotatedClassConstruct, javaType, z6, str).collect();
    }
}
