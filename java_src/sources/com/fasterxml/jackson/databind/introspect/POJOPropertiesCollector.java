package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes8.dex */
public class POJOPropertiesCollector {
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final AnnotatedClass _classDef;
    protected final MapperConfig<?> _config;
    protected final boolean _forSerialization;
    protected HashSet<String> _ignoredPropertyNames;
    protected LinkedHashMap<Object, AnnotatedMember> _injectables;
    protected final String _mutatorPrefix;
    protected final JavaType _type;
    protected final VisibilityChecker<?> _visibilityChecker;
    protected final LinkedHashMap<String, POJOPropertyBuilder> _properties = new LinkedHashMap<>();
    protected LinkedList<POJOPropertyBuilder> _creatorProperties = null;
    protected LinkedList<AnnotatedMember> _anyGetters = null;
    protected LinkedList<AnnotatedMethod> _anySetters = null;
    protected LinkedList<AnnotatedMethod> _jsonValueGetters = null;

    protected void _addSetterMethod(AnnotatedMethod annotatedMethod, AnnotationIntrospector annotationIntrospector) {
        String strOkNameForMutator;
        boolean zIsSetterVisible;
        PropertyName propertyNameFindNameForDeserialization = annotationIntrospector == null ? null : annotationIntrospector.findNameForDeserialization(annotatedMethod);
        String simpleName = propertyNameFindNameForDeserialization != null ? propertyNameFindNameForDeserialization.getSimpleName() : null;
        if (simpleName == null) {
            strOkNameForMutator = BeanUtil.okNameForMutator(annotatedMethod, this._mutatorPrefix);
            if (strOkNameForMutator == null) {
                return;
            } else {
                zIsSetterVisible = this._visibilityChecker.isSetterVisible(annotatedMethod);
            }
        } else {
            strOkNameForMutator = BeanUtil.okNameForMutator(annotatedMethod, this._mutatorPrefix);
            if (strOkNameForMutator == null) {
                strOkNameForMutator = annotatedMethod.getName();
            }
            if (simpleName.length() == 0) {
                simpleName = strOkNameForMutator;
            }
            zIsSetterVisible = true;
        }
        _property(strOkNameForMutator).addSetter(annotatedMethod, simpleName, zIsSetterVisible, annotationIntrospector == null ? false : annotationIntrospector.hasIgnoreMarker(annotatedMethod));
    }

    public AnnotationIntrospector getAnnotationIntrospector() {
        return this._annotationIntrospector;
    }

    public AnnotatedClass getClassDef() {
        return this._classDef;
    }

    public MapperConfig<?> getConfig() {
        return this._config;
    }

    public Set<String> getIgnoredPropertyNames() {
        return this._ignoredPropertyNames;
    }

    public Map<Object, AnnotatedMember> getInjectables() {
        return this._injectables;
    }

    protected Map<String, POJOPropertyBuilder> getPropertyMap() {
        return this._properties;
    }

    public JavaType getType() {
        return this._type;
    }

    private void _addIgnored(String str) {
        if (this._forSerialization) {
            return;
        }
        if (this._ignoredPropertyNames == null) {
            this._ignoredPropertyNames = new HashSet<>();
        }
        this._ignoredPropertyNames.add(str);
    }

    private PropertyNamingStrategy _findNamingStrategy() {
        PropertyNamingStrategy propertyNamingStrategyNamingStrategyInstance;
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        Object objFindNamingStrategy = annotationIntrospector == null ? null : annotationIntrospector.findNamingStrategy(this._classDef);
        if (objFindNamingStrategy == null) {
            return this._config.getPropertyNamingStrategy();
        }
        if (objFindNamingStrategy instanceof PropertyNamingStrategy) {
            return (PropertyNamingStrategy) objFindNamingStrategy;
        }
        if (!(objFindNamingStrategy instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector returned PropertyNamingStrategy definition of type " + objFindNamingStrategy.getClass().getName() + "; expected type PropertyNamingStrategy or Class<PropertyNamingStrategy> instead");
        }
        Class<?> cls = (Class) objFindNamingStrategy;
        if (PropertyNamingStrategy.class.isAssignableFrom(cls)) {
            HandlerInstantiator handlerInstantiator = this._config.getHandlerInstantiator();
            return (handlerInstantiator == null || (propertyNamingStrategyNamingStrategyInstance = handlerInstantiator.namingStrategyInstance(this._config, this._classDef, cls)) == null) ? (PropertyNamingStrategy) ClassUtil.createInstance(cls, this._config.canOverrideAccessModifiers()) : propertyNamingStrategyNamingStrategyInstance;
        }
        throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<PropertyNamingStrategy>");
    }

    protected void _addCreators() {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector == null) {
            return;
        }
        for (AnnotatedConstructor annotatedConstructor : this._classDef.getConstructors()) {
            if (this._creatorProperties == null) {
                this._creatorProperties = new LinkedList<>();
            }
            int parameterCount = annotatedConstructor.getParameterCount();
            for (int i10 = 0; i10 < parameterCount; i10++) {
                AnnotatedParameter parameter = annotatedConstructor.getParameter(i10);
                PropertyName propertyNameFindNameForDeserialization = annotationIntrospector.findNameForDeserialization(parameter);
                String simpleName = propertyNameFindNameForDeserialization == null ? null : propertyNameFindNameForDeserialization.getSimpleName();
                if (simpleName != null) {
                    POJOPropertyBuilder pOJOPropertyBuilder_property = _property(simpleName);
                    pOJOPropertyBuilder_property.addCtor(parameter, simpleName, true, false);
                    this._creatorProperties.add(pOJOPropertyBuilder_property);
                }
            }
        }
        for (AnnotatedMethod annotatedMethod : this._classDef.getStaticMethods()) {
            if (this._creatorProperties == null) {
                this._creatorProperties = new LinkedList<>();
            }
            int parameterCount2 = annotatedMethod.getParameterCount();
            for (int i11 = 0; i11 < parameterCount2; i11++) {
                AnnotatedParameter parameter2 = annotatedMethod.getParameter(i11);
                PropertyName propertyNameFindNameForDeserialization2 = annotationIntrospector.findNameForDeserialization(parameter2);
                String simpleName2 = propertyNameFindNameForDeserialization2 == null ? null : propertyNameFindNameForDeserialization2.getSimpleName();
                if (simpleName2 != null) {
                    POJOPropertyBuilder pOJOPropertyBuilder_property2 = _property(simpleName2);
                    pOJOPropertyBuilder_property2.addCtor(parameter2, simpleName2, true, false);
                    this._creatorProperties.add(pOJOPropertyBuilder_property2);
                }
            }
        }
    }

    protected void _addFields() {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        boolean z6 = (this._forSerialization || this._config.isEnabled(MapperFeature.ALLOW_FINAL_FIELDS_AS_MUTATORS)) ? false : true;
        for (AnnotatedField annotatedField : this._classDef.fields()) {
            String name = annotatedField.getName();
            String simpleName = null;
            if (annotationIntrospector != null) {
                if (this._forSerialization) {
                    PropertyName propertyNameFindNameForSerialization = annotationIntrospector.findNameForSerialization(annotatedField);
                    if (propertyNameFindNameForSerialization != null) {
                        simpleName = propertyNameFindNameForSerialization.getSimpleName();
                    }
                } else {
                    PropertyName propertyNameFindNameForDeserialization = annotationIntrospector.findNameForDeserialization(annotatedField);
                    if (propertyNameFindNameForDeserialization != null) {
                        simpleName = propertyNameFindNameForDeserialization.getSimpleName();
                    }
                }
            }
            if ("".equals(simpleName)) {
                simpleName = name;
            }
            boolean zIsFieldVisible = simpleName != null;
            if (!zIsFieldVisible) {
                zIsFieldVisible = this._visibilityChecker.isFieldVisible(annotatedField);
            }
            boolean z10 = annotationIntrospector != null && annotationIntrospector.hasIgnoreMarker(annotatedField);
            if (!z6 || simpleName != null || z10 || !Modifier.isFinal(annotatedField.getModifiers())) {
                _property(name).addField(annotatedField, simpleName, zIsFieldVisible, z10);
            }
        }
    }

    protected void _addGetterMethod(AnnotatedMethod annotatedMethod, AnnotationIntrospector annotationIntrospector) {
        String strOkNameForGetter;
        boolean zIsGetterVisible;
        if (annotationIntrospector != null) {
            if (annotationIntrospector.hasAnyGetterAnnotation(annotatedMethod)) {
                if (this._anyGetters == null) {
                    this._anyGetters = new LinkedList<>();
                }
                this._anyGetters.add(annotatedMethod);
                return;
            } else if (annotationIntrospector.hasAsValueAnnotation(annotatedMethod)) {
                if (this._jsonValueGetters == null) {
                    this._jsonValueGetters = new LinkedList<>();
                }
                this._jsonValueGetters.add(annotatedMethod);
                return;
            }
        }
        PropertyName propertyNameFindNameForSerialization = annotationIntrospector == null ? null : annotationIntrospector.findNameForSerialization(annotatedMethod);
        String simpleName = propertyNameFindNameForSerialization != null ? propertyNameFindNameForSerialization.getSimpleName() : null;
        if (simpleName == null) {
            strOkNameForGetter = BeanUtil.okNameForRegularGetter(annotatedMethod, annotatedMethod.getName());
            if (strOkNameForGetter == null) {
                strOkNameForGetter = BeanUtil.okNameForIsGetter(annotatedMethod, annotatedMethod.getName());
                if (strOkNameForGetter == null) {
                    return;
                } else {
                    zIsGetterVisible = this._visibilityChecker.isIsGetterVisible(annotatedMethod);
                }
            } else {
                zIsGetterVisible = this._visibilityChecker.isGetterVisible(annotatedMethod);
            }
        } else {
            strOkNameForGetter = BeanUtil.okNameForGetter(annotatedMethod);
            if (strOkNameForGetter == null) {
                strOkNameForGetter = annotatedMethod.getName();
            }
            if (simpleName.length() == 0) {
                simpleName = strOkNameForGetter;
            }
            zIsGetterVisible = true;
        }
        _property(strOkNameForGetter).addGetter(annotatedMethod, simpleName, zIsGetterVisible, annotationIntrospector == null ? false : annotationIntrospector.hasIgnoreMarker(annotatedMethod));
    }

    protected void _addInjectables() {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector == null) {
            return;
        }
        for (AnnotatedMember annotatedMember : this._classDef.fields()) {
            _doAddInjectable(annotationIntrospector.findInjectableValueId(annotatedMember), annotatedMember);
        }
        for (AnnotatedMethod annotatedMethod : this._classDef.memberMethods()) {
            if (annotatedMethod.getParameterCount() == 1) {
                _doAddInjectable(annotationIntrospector.findInjectableValueId(annotatedMethod), annotatedMethod);
            }
        }
    }

    protected void _addMethods() {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        for (AnnotatedMethod annotatedMethod : this._classDef.memberMethods()) {
            int parameterCount = annotatedMethod.getParameterCount();
            if (parameterCount == 0) {
                _addGetterMethod(annotatedMethod, annotationIntrospector);
            } else if (parameterCount == 1) {
                _addSetterMethod(annotatedMethod, annotationIntrospector);
            } else if (parameterCount == 2 && annotationIntrospector != null && annotationIntrospector.hasAnySetterAnnotation(annotatedMethod)) {
                if (this._anySetters == null) {
                    this._anySetters = new LinkedList<>();
                }
                this._anySetters.add(annotatedMethod);
            }
        }
    }

    protected void _doAddInjectable(Object obj, AnnotatedMember annotatedMember) {
        if (obj == null) {
            return;
        }
        if (this._injectables == null) {
            this._injectables = new LinkedHashMap<>();
        }
        if (this._injectables.put(obj, annotatedMember) == null) {
            return;
        }
        throw new IllegalArgumentException("Duplicate injectable value with id '" + String.valueOf(obj) + "' (of type " + obj.getClass().getName() + ")");
    }

    protected POJOPropertyBuilder _property(String str) {
        POJOPropertyBuilder pOJOPropertyBuilder = this._properties.get(str);
        if (pOJOPropertyBuilder != null) {
            return pOJOPropertyBuilder;
        }
        POJOPropertyBuilder pOJOPropertyBuilder2 = new POJOPropertyBuilder(new PropertyName(str), this._annotationIntrospector, this._forSerialization);
        this._properties.put(str, pOJOPropertyBuilder2);
        return pOJOPropertyBuilder2;
    }

    protected void _removeUnwantedProperties() {
        Iterator<Map.Entry<String, POJOPropertyBuilder>> it = this._properties.entrySet().iterator();
        boolean z6 = !this._config.isEnabled(MapperFeature.INFER_PROPERTY_MUTATORS);
        while (it.hasNext()) {
            POJOPropertyBuilder value = it.next().getValue();
            if (value.anyVisible()) {
                if (value.anyIgnorals()) {
                    if (value.isExplicitlyIncluded()) {
                        value.removeIgnored();
                        if (!this._forSerialization && !value.couldDeserialize()) {
                            _addIgnored(value.getName());
                        }
                    } else {
                        it.remove();
                        _addIgnored(value.getName());
                    }
                }
                value.removeNonVisible(z6);
            } else {
                it.remove();
            }
        }
    }

    protected void _renameProperties() {
        Iterator<Map.Entry<String, POJOPropertyBuilder>> it = this._properties.entrySet().iterator();
        LinkedList<POJOPropertyBuilder> linkedList = null;
        while (it.hasNext()) {
            POJOPropertyBuilder value = it.next().getValue();
            String strFindNewName = value.findNewName();
            if (strFindNewName != null) {
                if (linkedList == null) {
                    linkedList = new LinkedList();
                }
                linkedList.add(value.withSimpleName(strFindNewName));
                it.remove();
            }
        }
        if (linkedList != null) {
            for (POJOPropertyBuilder pOJOPropertyBuilder : linkedList) {
                String name = pOJOPropertyBuilder.getName();
                POJOPropertyBuilder pOJOPropertyBuilder2 = this._properties.get(name);
                if (pOJOPropertyBuilder2 == null) {
                    this._properties.put(name, pOJOPropertyBuilder);
                } else {
                    pOJOPropertyBuilder2.addAll(pOJOPropertyBuilder);
                }
                _updateCreatorProperty(pOJOPropertyBuilder, this._creatorProperties);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00a5  */
    protected void _renameUsing(PropertyNamingStrategy propertyNamingStrategy) {
        String strNameForGetterMethod;
        POJOPropertyBuilder[] pOJOPropertyBuilderArr = (POJOPropertyBuilder[]) this._properties.values().toArray(new POJOPropertyBuilder[this._properties.size()]);
        this._properties.clear();
        for (POJOPropertyBuilder pOJOPropertyBuilderWithSimpleName : pOJOPropertyBuilderArr) {
            PropertyName fullName = pOJOPropertyBuilderWithSimpleName.getFullName();
            if (this._forSerialization) {
                if (pOJOPropertyBuilderWithSimpleName.hasGetter()) {
                    strNameForGetterMethod = propertyNamingStrategy.nameForGetterMethod(this._config, pOJOPropertyBuilderWithSimpleName.getGetter(), fullName.getSimpleName());
                } else if (pOJOPropertyBuilderWithSimpleName.hasField()) {
                    strNameForGetterMethod = propertyNamingStrategy.nameForField(this._config, pOJOPropertyBuilderWithSimpleName.getField(), fullName.getSimpleName());
                } else {
                    strNameForGetterMethod = null;
                }
            } else if (pOJOPropertyBuilderWithSimpleName.hasSetter()) {
                strNameForGetterMethod = propertyNamingStrategy.nameForSetterMethod(this._config, pOJOPropertyBuilderWithSimpleName.getSetter(), fullName.getSimpleName());
            } else if (pOJOPropertyBuilderWithSimpleName.hasConstructorParameter()) {
                strNameForGetterMethod = propertyNamingStrategy.nameForConstructorParameter(this._config, pOJOPropertyBuilderWithSimpleName.getConstructorParameter(), fullName.getSimpleName());
            } else if (pOJOPropertyBuilderWithSimpleName.hasField()) {
                strNameForGetterMethod = propertyNamingStrategy.nameForField(this._config, pOJOPropertyBuilderWithSimpleName.getField(), fullName.getSimpleName());
            } else if (pOJOPropertyBuilderWithSimpleName.hasGetter()) {
                strNameForGetterMethod = propertyNamingStrategy.nameForGetterMethod(this._config, pOJOPropertyBuilderWithSimpleName.getGetter(), fullName.getSimpleName());
            } else {
                strNameForGetterMethod = null;
            }
            if (strNameForGetterMethod == null || fullName.hasSimpleName(strNameForGetterMethod)) {
                strNameForGetterMethod = fullName.getSimpleName();
            } else {
                pOJOPropertyBuilderWithSimpleName = pOJOPropertyBuilderWithSimpleName.withSimpleName(strNameForGetterMethod);
            }
            POJOPropertyBuilder pOJOPropertyBuilder = this._properties.get(strNameForGetterMethod);
            if (pOJOPropertyBuilder == null) {
                this._properties.put(strNameForGetterMethod, pOJOPropertyBuilderWithSimpleName);
            } else {
                pOJOPropertyBuilder.addAll(pOJOPropertyBuilderWithSimpleName);
            }
            _updateCreatorProperty(pOJOPropertyBuilderWithSimpleName, this._creatorProperties);
        }
    }

    protected void _renameWithWrappers() {
        PropertyName propertyNameFindWrapperName;
        Iterator<Map.Entry<String, POJOPropertyBuilder>> it = this._properties.entrySet().iterator();
        LinkedList<POJOPropertyBuilder> linkedList = null;
        while (it.hasNext()) {
            POJOPropertyBuilder value = it.next().getValue();
            AnnotatedMember primaryMember = value.getPrimaryMember();
            if (primaryMember != null && (propertyNameFindWrapperName = this._annotationIntrospector.findWrapperName(primaryMember)) != null && propertyNameFindWrapperName.hasSimpleName() && !propertyNameFindWrapperName.equals(value.getFullName())) {
                if (linkedList == null) {
                    linkedList = new LinkedList();
                }
                linkedList.add(value.withName(propertyNameFindWrapperName));
                it.remove();
            }
        }
        if (linkedList != null) {
            for (POJOPropertyBuilder pOJOPropertyBuilder : linkedList) {
                String name = pOJOPropertyBuilder.getName();
                POJOPropertyBuilder pOJOPropertyBuilder2 = this._properties.get(name);
                if (pOJOPropertyBuilder2 == null) {
                    this._properties.put(name, pOJOPropertyBuilder);
                } else {
                    pOJOPropertyBuilder2.addAll(pOJOPropertyBuilder);
                }
            }
        }
    }

    protected void _sortProperties() {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        Boolean boolFindSerializationSortAlphabetically = annotationIntrospector == null ? null : annotationIntrospector.findSerializationSortAlphabetically(this._classDef);
        boolean zShouldSortPropertiesAlphabetically = boolFindSerializationSortAlphabetically == null ? this._config.shouldSortPropertiesAlphabetically() : boolFindSerializationSortAlphabetically.booleanValue();
        String[] strArrFindSerializationPropertyOrder = annotationIntrospector != null ? annotationIntrospector.findSerializationPropertyOrder(this._classDef) : null;
        if (!zShouldSortPropertiesAlphabetically && this._creatorProperties == null && strArrFindSerializationPropertyOrder == null) {
            return;
        }
        int size = this._properties.size();
        Map treeMap = zShouldSortPropertiesAlphabetically ? new TreeMap() : new LinkedHashMap(size + size);
        for (POJOPropertyBuilder pOJOPropertyBuilder : this._properties.values()) {
            treeMap.put(pOJOPropertyBuilder.getName(), pOJOPropertyBuilder);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(size + size);
        if (strArrFindSerializationPropertyOrder != null) {
            for (String name : strArrFindSerializationPropertyOrder) {
                POJOPropertyBuilder pOJOPropertyBuilder2 = (POJOPropertyBuilder) treeMap.get(name);
                if (pOJOPropertyBuilder2 == null) {
                    for (POJOPropertyBuilder pOJOPropertyBuilder3 : this._properties.values()) {
                        if (name.equals(pOJOPropertyBuilder3.getInternalName())) {
                            name = pOJOPropertyBuilder3.getName();
                            pOJOPropertyBuilder2 = pOJOPropertyBuilder3;
                            break;
                        }
                    }
                }
                if (pOJOPropertyBuilder2 != null) {
                    linkedHashMap.put(name, pOJOPropertyBuilder2);
                }
            }
        }
        Collection<POJOPropertyBuilder> collectionValues = this._creatorProperties;
        if (collectionValues != null) {
            if (zShouldSortPropertiesAlphabetically) {
                TreeMap treeMap2 = new TreeMap();
                for (POJOPropertyBuilder pOJOPropertyBuilder4 : this._creatorProperties) {
                    treeMap2.put(pOJOPropertyBuilder4.getName(), pOJOPropertyBuilder4);
                }
                collectionValues = treeMap2.values();
            }
            for (POJOPropertyBuilder pOJOPropertyBuilder5 : collectionValues) {
                linkedHashMap.put(pOJOPropertyBuilder5.getName(), pOJOPropertyBuilder5);
            }
        }
        linkedHashMap.putAll(treeMap);
        this._properties.clear();
        this._properties.putAll(linkedHashMap);
    }

    protected void _updateCreatorProperty(POJOPropertyBuilder pOJOPropertyBuilder, List<POJOPropertyBuilder> list) {
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (list.get(i10).getInternalName().equals(pOJOPropertyBuilder.getInternalName())) {
                    list.set(i10, pOJOPropertyBuilder);
                    return;
                }
            }
        }
    }

    public POJOPropertiesCollector collect() {
        this._properties.clear();
        _addFields();
        _addMethods();
        _addCreators();
        _addInjectables();
        _removeUnwantedProperties();
        _renameProperties();
        PropertyNamingStrategy propertyNamingStrategy_findNamingStrategy = _findNamingStrategy();
        if (propertyNamingStrategy_findNamingStrategy != null) {
            _renameUsing(propertyNamingStrategy_findNamingStrategy);
        }
        Iterator<POJOPropertyBuilder> it = this._properties.values().iterator();
        while (it.hasNext()) {
            it.next().trimByVisibility();
        }
        Iterator<POJOPropertyBuilder> it2 = this._properties.values().iterator();
        while (it2.hasNext()) {
            it2.next().mergeAnnotations(this._forSerialization);
        }
        if (this._config.isEnabled(MapperFeature.USE_WRAPPER_NAME_AS_PROPERTY_NAME)) {
            _renameWithWrappers();
        }
        _sortProperties();
        return this;
    }

    public Class<?> findPOJOBuilderClass() {
        return this._annotationIntrospector.findPOJOBuilder(this._classDef);
    }

    public AnnotatedMember getAnyGetter() {
        LinkedList<AnnotatedMember> linkedList = this._anyGetters;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'any-getters' defined (" + this._anyGetters.get(0) + " vs " + this._anyGetters.get(1) + ")");
        }
        return this._anyGetters.getFirst();
    }

    public AnnotatedMethod getAnySetterMethod() {
        LinkedList<AnnotatedMethod> linkedList = this._anySetters;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'any-setters' defined (" + this._anySetters.get(0) + " vs " + this._anySetters.get(1) + ")");
        }
        return this._anySetters.getFirst();
    }

    public AnnotatedMethod getJsonValueMethod() {
        LinkedList<AnnotatedMethod> linkedList = this._jsonValueGetters;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple value properties defined (" + this._jsonValueGetters.get(0) + " vs " + this._jsonValueGetters.get(1) + ")");
        }
        return this._jsonValueGetters.get(0);
    }

    public ObjectIdInfo getObjectIdInfo() {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector == null) {
            return null;
        }
        ObjectIdInfo objectIdInfoFindObjectIdInfo = annotationIntrospector.findObjectIdInfo(this._classDef);
        return objectIdInfoFindObjectIdInfo != null ? this._annotationIntrospector.findObjectReferenceInfo(this._classDef, objectIdInfoFindObjectIdInfo) : objectIdInfoFindObjectIdInfo;
    }

    public List<BeanPropertyDefinition> getProperties() {
        return new ArrayList(this._properties.values());
    }

    protected void reportProblem(String str) {
        throw new IllegalArgumentException("Problem with definition of " + this._classDef + ": " + str);
    }

    protected POJOPropertiesCollector(MapperConfig<?> mapperConfig, boolean z6, JavaType javaType, AnnotatedClass annotatedClass, String str) {
        this._config = mapperConfig;
        this._forSerialization = z6;
        this._type = javaType;
        this._classDef = annotatedClass;
        this._mutatorPrefix = str == null ? "set" : str;
        AnnotationIntrospector annotationIntrospector = mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null;
        this._annotationIntrospector = annotationIntrospector;
        if (annotationIntrospector == null) {
            this._visibilityChecker = mapperConfig.getDefaultVisibilityChecker();
        } else {
            this._visibilityChecker = annotationIntrospector.findAutoDetectVisibility(annotatedClass, mapperConfig.getDefaultVisibilityChecker());
        }
    }
}
