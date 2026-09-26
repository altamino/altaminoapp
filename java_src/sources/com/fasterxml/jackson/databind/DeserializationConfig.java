package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.LinkedNode;
import java.text.DateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes10.dex */
public final class DeserializationConfig extends MapperConfigBase<DeserializationFeature, DeserializationConfig> {
    private static final long serialVersionUID = -4227480407273773599L;
    protected final int _deserFeatures;
    protected final JsonNodeFactory _nodeFactory;
    protected final LinkedNode<DeserializationProblemHandler> _problemHandlers;

    public DeserializationConfig(BaseSettings baseSettings, SubtypeResolver subtypeResolver, Map<ClassKey, Class<?>> map) {
        super(baseSettings, subtypeResolver, map);
        this._deserFeatures = MapperConfig.collectFeatureDefaults(DeserializationFeature.class);
        this._nodeFactory = JsonNodeFactory.instance;
        this._problemHandlers = null;
    }

    protected BaseSettings getBaseSettings() {
        return this._base;
    }

    public final int getDeserializationFeatures() {
        return this._deserFeatures;
    }

    public final JsonNodeFactory getNodeFactory() {
        return this._nodeFactory;
    }

    public LinkedNode<DeserializationProblemHandler> getProblemHandlers() {
        return this._problemHandlers;
    }

    public final boolean hasDeserializationFeatures(int i10) {
        return (this._deserFeatures & i10) == i10;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public /* bridge */ /* synthetic */ MapperConfigBase withView(Class cls) {
        return withView((Class<?>) cls);
    }

    private final DeserializationConfig _withBase(BaseSettings baseSettings) {
        return this._base == baseSettings ? this : new DeserializationConfig(this, baseSettings);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public AnnotationIntrospector getAnnotationIntrospector() {
        return isEnabled(MapperFeature.USE_ANNOTATIONS) ? super.getAnnotationIntrospector() : NopAnnotationIntrospector.instance;
    }

    public final boolean isEnabled(DeserializationFeature deserializationFeature) {
        return (deserializationFeature.getMask() & this._deserFeatures) != 0;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public boolean useRootWrapping() {
        String str = this._rootName;
        if (str != null) {
            return str.length() > 0;
        }
        return isEnabled(DeserializationFeature.UNWRAP_ROOT_VALUE);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig withAppendedAnnotationIntrospector(AnnotationIntrospector annotationIntrospector) {
        return _withBase(this._base.withAppendedAnnotationIntrospector(annotationIntrospector));
    }

    public DeserializationConfig withFeatures(DeserializationFeature... deserializationFeatureArr) {
        int mask = this._deserFeatures;
        for (DeserializationFeature deserializationFeature : deserializationFeatureArr) {
            mask |= deserializationFeature.getMask();
        }
        return mask == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, mask);
    }

    public DeserializationConfig withHandler(DeserializationProblemHandler deserializationProblemHandler) {
        return LinkedNode.contains(this._problemHandlers, deserializationProblemHandler) ? this : new DeserializationConfig(this, (LinkedNode<DeserializationProblemHandler>) new LinkedNode(deserializationProblemHandler, this._problemHandlers));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig withInsertedAnnotationIntrospector(AnnotationIntrospector annotationIntrospector) {
        return _withBase(this._base.withInsertedAnnotationIntrospector(annotationIntrospector));
    }

    public DeserializationConfig withNoProblemHandlers() {
        return this._problemHandlers == null ? this : new DeserializationConfig(this, (LinkedNode<DeserializationProblemHandler>) null);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig withRootName(String str) {
        if (str == null) {
            if (this._rootName == null) {
                return this;
            }
        } else if (str.equals(this._rootName)) {
            return this;
        }
        return new DeserializationConfig(this, str);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig withView(Class<?> cls) {
        return this._view == cls ? this : new DeserializationConfig(this, cls);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig withVisibility(PropertyAccessor propertyAccessor, JsonAutoDetect.Visibility visibility) {
        return _withBase(this._base.withVisibility(propertyAccessor, visibility));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public DeserializationConfig without(MapperFeature... mapperFeatureArr) {
        int i10 = this._mapperFeatures;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            i10 &= ~mapperFeature.getMask();
        }
        return i10 == this._mapperFeatures ? this : new DeserializationConfig(this, i10, this._deserFeatures);
    }

    public DeserializationConfig withoutFeatures(DeserializationFeature... deserializationFeatureArr) {
        int i10 = this._deserFeatures;
        for (DeserializationFeature deserializationFeature : deserializationFeatureArr) {
            i10 &= ~deserializationFeature.getMask();
        }
        return i10 == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, i10);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public VisibilityChecker<?> getDefaultVisibilityChecker() {
        VisibilityChecker<?> defaultVisibilityChecker = super.getDefaultVisibilityChecker();
        if (!isEnabled(MapperFeature.AUTO_DETECT_SETTERS)) {
            defaultVisibilityChecker = defaultVisibilityChecker.withSetterVisibility(JsonAutoDetect.Visibility.NONE);
        }
        if (!isEnabled(MapperFeature.AUTO_DETECT_CREATORS)) {
            defaultVisibilityChecker = defaultVisibilityChecker.withCreatorVisibility(JsonAutoDetect.Visibility.NONE);
        }
        if (!isEnabled(MapperFeature.AUTO_DETECT_FIELDS)) {
            return defaultVisibilityChecker.withFieldVisibility(JsonAutoDetect.Visibility.NONE);
        }
        return defaultVisibilityChecker;
    }

    public <T extends BeanDescription> T introspect(JavaType javaType) {
        return (T) getClassIntrospector().forDeserialization(this, javaType, this);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public BeanDescription introspectClassAnnotations(JavaType javaType) {
        return getClassIntrospector().forClassAnnotations(this, javaType, this);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public BeanDescription introspectDirectClassAnnotations(JavaType javaType) {
        return getClassIntrospector().forDirectClassAnnotations(this, javaType, this);
    }

    public <T extends BeanDescription> T introspectForBuilder(JavaType javaType) {
        return (T) getClassIntrospector().forDeserializationWithBuilder(this, javaType, this);
    }

    public <T extends BeanDescription> T introspectForCreation(JavaType javaType) {
        return (T) getClassIntrospector().forCreation(this, javaType, this);
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, SubtypeResolver subtypeResolver) {
        super(deserializationConfig, subtypeResolver);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._problemHandlers = deserializationConfig._problemHandlers;
    }

    public DeserializationConfig without(DeserializationFeature deserializationFeature) {
        int i10 = (~deserializationFeature.getMask()) & this._deserFeatures;
        return i10 == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, i10);
    }

    public DeserializationConfig without(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        int i10 = (~deserializationFeature.getMask()) & this._deserFeatures;
        for (DeserializationFeature deserializationFeature2 : deserializationFeatureArr) {
            i10 &= ~deserializationFeature2.getMask();
        }
        return i10 == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, i10);
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, int i10, int i11) {
        super(deserializationConfig, i10);
        this._deserFeatures = i11;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._problemHandlers = deserializationConfig._problemHandlers;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public /* bridge */ /* synthetic */ MapperConfigBase with(VisibilityChecker visibilityChecker) {
        return with((VisibilityChecker<?>) visibilityChecker);
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, BaseSettings baseSettings) {
        super(deserializationConfig, baseSettings);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._problemHandlers = deserializationConfig._problemHandlers;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public /* bridge */ /* synthetic */ MapperConfigBase with(TypeResolverBuilder typeResolverBuilder) {
        return with((TypeResolverBuilder<?>) typeResolverBuilder);
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, JsonNodeFactory jsonNodeFactory) {
        super(deserializationConfig);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = jsonNodeFactory;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public DeserializationConfig with(MapperFeature... mapperFeatureArr) {
        int mask = this._mapperFeatures;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            mask |= mapperFeature.getMask();
        }
        return mask == this._mapperFeatures ? this : new DeserializationConfig(this, mask, this._deserFeatures);
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, LinkedNode<DeserializationProblemHandler> linkedNode) {
        super(deserializationConfig);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._problemHandlers = linkedNode;
        this._nodeFactory = deserializationConfig._nodeFactory;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public DeserializationConfig with(MapperFeature mapperFeature, boolean z6) {
        int mask;
        if (z6) {
            mask = mapperFeature.getMask() | this._mapperFeatures;
        } else {
            mask = (~mapperFeature.getMask()) & this._mapperFeatures;
        }
        return mask == this._mapperFeatures ? this : new DeserializationConfig(this, mask, this._deserFeatures);
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, String str) {
        super(deserializationConfig, str);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = deserializationConfig._nodeFactory;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(ClassIntrospector classIntrospector) {
        return _withBase(this._base.withClassIntrospector(classIntrospector));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(AnnotationIntrospector annotationIntrospector) {
        return _withBase(this._base.withAnnotationIntrospector(annotationIntrospector));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(VisibilityChecker<?> visibilityChecker) {
        return _withBase(this._base.withVisibilityChecker(visibilityChecker));
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, Class<?> cls) {
        super(deserializationConfig, cls);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = deserializationConfig._nodeFactory;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(TypeResolverBuilder<?> typeResolverBuilder) {
        return _withBase(this._base.withTypeResolverBuilder(typeResolverBuilder));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(SubtypeResolver subtypeResolver) {
        return this._subtypeResolver == subtypeResolver ? this : new DeserializationConfig(this, subtypeResolver);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(PropertyNamingStrategy propertyNamingStrategy) {
        return _withBase(this._base.withPropertyNamingStrategy(propertyNamingStrategy));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(TypeFactory typeFactory) {
        return _withBase(this._base.withTypeFactory(typeFactory));
    }

    protected DeserializationConfig(DeserializationConfig deserializationConfig, Map<ClassKey, Class<?>> map) {
        super(deserializationConfig, map);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = deserializationConfig._nodeFactory;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(DateFormat dateFormat) {
        return _withBase(this._base.withDateFormat(dateFormat));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(HandlerInstantiator handlerInstantiator) {
        return _withBase(this._base.withHandlerInstantiator(handlerInstantiator));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(Locale locale) {
        return _withBase(this._base.with(locale));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(TimeZone timeZone) {
        return _withBase(this._base.with(timeZone));
    }

    protected DeserializationConfig(DeserializationConfig deserializationConfig, ContextAttributes contextAttributes) {
        super(deserializationConfig, contextAttributes);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = deserializationConfig._nodeFactory;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(Base64Variant base64Variant) {
        return _withBase(this._base.with(base64Variant));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(ContextAttributes contextAttributes) {
        return contextAttributes == this._attributes ? this : new DeserializationConfig(this, contextAttributes);
    }

    public DeserializationConfig with(JsonNodeFactory jsonNodeFactory) {
        return this._nodeFactory == jsonNodeFactory ? this : new DeserializationConfig(this, jsonNodeFactory);
    }

    public DeserializationConfig with(DeserializationFeature deserializationFeature) {
        int mask = deserializationFeature.getMask() | this._deserFeatures;
        return mask == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, mask);
    }

    public DeserializationConfig with(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        int mask = deserializationFeature.getMask() | this._deserFeatures;
        for (DeserializationFeature deserializationFeature2 : deserializationFeatureArr) {
            mask |= deserializationFeature2.getMask();
        }
        return mask == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, mask);
    }
}
