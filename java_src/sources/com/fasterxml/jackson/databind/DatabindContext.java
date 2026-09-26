package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.databind.annotation.NoClass;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes11.dex */
public abstract class DatabindContext {
    public Converter<Object, Object> converterInstance(Annotated annotated, Object obj) throws JsonMappingException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Converter) {
            return (Converter) obj;
        }
        if (!(obj instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector returned Converter definition of type " + obj.getClass().getName() + "; expected type Converter or Class<Converter> instead");
        }
        Class<?> cls = (Class) obj;
        if (cls == Converter.None.class || cls == NoClass.class) {
            return null;
        }
        if (Converter.class.isAssignableFrom(cls)) {
            MapperConfig<?> config = getConfig();
            HandlerInstantiator handlerInstantiator = config.getHandlerInstantiator();
            Converter<?, ?> converterConverterInstance = handlerInstantiator != null ? handlerInstantiator.converterInstance(config, annotated, cls) : null;
            return converterConverterInstance == null ? (Converter) ClassUtil.createInstance(cls, config.canOverrideAccessModifiers()) : converterConverterInstance;
        }
        throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<Converter>");
    }

    public abstract Class<?> getActiveView();

    public abstract AnnotationIntrospector getAnnotationIntrospector();

    public abstract Object getAttribute(Object obj);

    public abstract MapperConfig<?> getConfig();

    public abstract TypeFactory getTypeFactory();

    public abstract DatabindContext setAttribute(Object obj, Object obj2);

    public final boolean canOverrideAccessModifiers() {
        return getConfig().canOverrideAccessModifiers();
    }

    public JavaType constructSpecializedType(JavaType javaType, Class<?> cls) {
        if (javaType.getRawClass() == cls) {
            return javaType;
        }
        return getConfig().constructSpecializedType(javaType, cls);
    }

    public JavaType constructType(Type type) {
        return getTypeFactory().constructType(type);
    }

    public final boolean isEnabled(MapperFeature mapperFeature) {
        return getConfig().isEnabled(mapperFeature);
    }

    public ObjectIdGenerator<?> objectIdGeneratorInstance(Annotated annotated, ObjectIdInfo objectIdInfo) throws JsonMappingException {
        ObjectIdGenerator<?> objectIdGeneratorObjectIdGeneratorInstance;
        Class<? extends ObjectIdGenerator<?>> generatorType = objectIdInfo.getGeneratorType();
        MapperConfig<?> config = getConfig();
        HandlerInstantiator handlerInstantiator = config.getHandlerInstantiator();
        if (handlerInstantiator == null) {
            objectIdGeneratorObjectIdGeneratorInstance = null;
        } else {
            objectIdGeneratorObjectIdGeneratorInstance = handlerInstantiator.objectIdGeneratorInstance(config, annotated, generatorType);
        }
        if (objectIdGeneratorObjectIdGeneratorInstance == null) {
            objectIdGeneratorObjectIdGeneratorInstance = (ObjectIdGenerator) ClassUtil.createInstance(generatorType, config.canOverrideAccessModifiers());
        }
        return objectIdGeneratorObjectIdGeneratorInstance.forScope(objectIdInfo.getScope());
    }
}
