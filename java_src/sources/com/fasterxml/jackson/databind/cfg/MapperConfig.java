package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes8.dex */
public abstract class MapperConfig<T extends MapperConfig<T>> implements ClassIntrospector.MixInResolver, Serializable {
    private static final long serialVersionUID = 8891625428805876137L;
    protected final BaseSettings _base;
    protected final int _mapperFeatures;

    protected MapperConfig(BaseSettings baseSettings, int i10) {
        this._base = baseSettings;
        this._mapperFeatures = i10;
    }

    public final JavaType constructType(Class<?> cls) {
        return getTypeFactory().constructType(cls, (TypeBindings) null);
    }

    public abstract Class<?> getActiveView();

    public abstract ContextAttributes getAttributes();

    public abstract SubtypeResolver getSubtypeResolver();

    public final boolean hasMapperFeatures(int i10) {
        return (this._mapperFeatures & i10) == i10;
    }

    public abstract BeanDescription introspectClassAnnotations(JavaType javaType);

    public BeanDescription introspectClassAnnotations(Class<?> cls) {
        return introspectClassAnnotations(constructType(cls));
    }

    public abstract BeanDescription introspectDirectClassAnnotations(JavaType javaType);

    public BeanDescription introspectDirectClassAnnotations(Class<?> cls) {
        return introspectDirectClassAnnotations(constructType(cls));
    }

    public abstract boolean useRootWrapping();

    public abstract T with(MapperFeature mapperFeature, boolean z6);

    public abstract T with(MapperFeature... mapperFeatureArr);

    public abstract T without(MapperFeature... mapperFeatureArr);

    protected MapperConfig(MapperConfig<T> mapperConfig) {
        this._base = mapperConfig._base;
        this._mapperFeatures = mapperConfig._mapperFeatures;
    }

    public final boolean canOverrideAccessModifiers() {
        return isEnabled(MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS);
    }

    public final JavaType constructType(TypeReference<?> typeReference) {
        return getTypeFactory().constructType(typeReference.getType(), (TypeBindings) null);
    }

    public AnnotationIntrospector getAnnotationIntrospector() {
        return this._base.getAnnotationIntrospector();
    }

    public Base64Variant getBase64Variant() {
        return this._base.getBase64Variant();
    }

    public ClassIntrospector getClassIntrospector() {
        return this._base.getClassIntrospector();
    }

    public final DateFormat getDateFormat() {
        return this._base.getDateFormat();
    }

    public final TypeResolverBuilder<?> getDefaultTyper(JavaType javaType) {
        return this._base.getTypeResolverBuilder();
    }

    public VisibilityChecker<?> getDefaultVisibilityChecker() {
        return this._base.getVisibilityChecker();
    }

    public final HandlerInstantiator getHandlerInstantiator() {
        return this._base.getHandlerInstantiator();
    }

    public final Locale getLocale() {
        return this._base.getLocale();
    }

    public final PropertyNamingStrategy getPropertyNamingStrategy() {
        return this._base.getPropertyNamingStrategy();
    }

    public final TimeZone getTimeZone() {
        return this._base.getTimeZone();
    }

    public final TypeFactory getTypeFactory() {
        return this._base.getTypeFactory();
    }

    public final boolean isAnnotationProcessingEnabled() {
        return isEnabled(MapperFeature.USE_ANNOTATIONS);
    }

    public final boolean isEnabled(MapperFeature mapperFeature) {
        return (mapperFeature.getMask() & this._mapperFeatures) != 0;
    }

    public final boolean shouldSortPropertiesAlphabetically() {
        return isEnabled(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY);
    }

    public static <F extends Enum<F> & ConfigFeature> int collectFeatureDefaults(Class<F> cls) {
        int mask = 0;
        for (Object obj : (Enum[]) cls.getEnumConstants()) {
            ConfigFeature configFeature = (ConfigFeature) obj;
            if (configFeature.enabledByDefault()) {
                mask |= configFeature.getMask();
            }
        }
        return mask;
    }

    public JavaType constructSpecializedType(JavaType javaType, Class<?> cls) {
        return getTypeFactory().constructSpecializedType(javaType, cls);
    }

    public TypeIdResolver typeIdResolverInstance(Annotated annotated, Class<? extends TypeIdResolver> cls) {
        TypeIdResolver typeIdResolverTypeIdResolverInstance;
        HandlerInstantiator handlerInstantiator = getHandlerInstantiator();
        if (handlerInstantiator != null && (typeIdResolverTypeIdResolverInstance = handlerInstantiator.typeIdResolverInstance(this, annotated, cls)) != null) {
            return typeIdResolverTypeIdResolverInstance;
        }
        return (TypeIdResolver) ClassUtil.createInstance(cls, canOverrideAccessModifiers());
    }

    public TypeResolverBuilder<?> typeResolverBuilderInstance(Annotated annotated, Class<? extends TypeResolverBuilder<?>> cls) {
        TypeResolverBuilder<?> typeResolverBuilderTypeResolverBuilderInstance;
        HandlerInstantiator handlerInstantiator = getHandlerInstantiator();
        if (handlerInstantiator != null && (typeResolverBuilderTypeResolverBuilderInstance = handlerInstantiator.typeResolverBuilderInstance(this, annotated, cls)) != null) {
            return typeResolverBuilderTypeResolverBuilderInstance;
        }
        return (TypeResolverBuilder) ClassUtil.createInstance(cls, canOverrideAccessModifiers());
    }
}
