package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.util.BeanUtil;

/* JADX INFO: loaded from: classes6.dex */
public class POJOPropertyBuilder extends BeanPropertyDefinition implements Comparable<POJOPropertyBuilder> {
    protected final AnnotationIntrospector _annotationIntrospector;
    protected Linked<AnnotatedParameter> _ctorParameters;
    protected Linked<AnnotatedField> _fields;
    protected final boolean _forSerialization;
    protected Linked<AnnotatedMethod> _getters;
    protected final PropertyName _internalName;
    protected final PropertyName _name;
    protected Linked<AnnotatedMethod> _setters;

    private static final class Linked<T> {
        public final String explicitName;
        public final boolean isMarkedIgnored;
        public final boolean isVisible;
        public final Linked<T> next;
        public final T value;

        /* JADX INFO: Access modifiers changed from: private */
        public Linked<T> append(Linked<T> linked) {
            Linked<T> linked2 = this.next;
            return linked2 == null ? withNext(linked) : withNext(linked2.append(linked));
        }

        public String toString() {
            String str = this.value.toString() + "[visible=" + this.isVisible + "]";
            if (this.next == null) {
                return str;
            }
            return str + ", " + this.next.toString();
        }

        public Linked<T> trimByVisibility() {
            Linked<T> linked = this.next;
            if (linked == null) {
                return this;
            }
            Linked<T> linkedTrimByVisibility = linked.trimByVisibility();
            if (this.explicitName != null) {
                return linkedTrimByVisibility.explicitName == null ? withNext(null) : withNext(linkedTrimByVisibility);
            }
            if (linkedTrimByVisibility.explicitName != null) {
                return linkedTrimByVisibility;
            }
            boolean z6 = this.isVisible;
            if (z6 == linkedTrimByVisibility.isVisible) {
                return withNext(linkedTrimByVisibility);
            }
            return z6 ? withNext(null) : linkedTrimByVisibility;
        }

        public Linked<T> withNext(Linked<T> linked) {
            return linked == this.next ? this : new Linked<>(this.value, linked, this.explicitName, this.isVisible, this.isMarkedIgnored);
        }

        public Linked<T> withValue(T t5) {
            return t5 == this.value ? this : new Linked<>(t5, this.next, this.explicitName, this.isVisible, this.isMarkedIgnored);
        }

        public Linked<T> withoutIgnored() {
            Linked<T> linkedWithoutIgnored;
            if (!this.isMarkedIgnored) {
                Linked<T> linked = this.next;
                return (linked == null || (linkedWithoutIgnored = linked.withoutIgnored()) == this.next) ? this : withNext(linkedWithoutIgnored);
            }
            Linked<T> linked2 = this.next;
            if (linked2 == null) {
                return null;
            }
            return linked2.withoutIgnored();
        }

        public Linked<T> withoutNonVisible() {
            Linked<T> linked = this.next;
            Linked<T> linkedWithoutNonVisible = linked == null ? null : linked.withoutNonVisible();
            return this.isVisible ? withNext(linkedWithoutNonVisible) : linkedWithoutNonVisible;
        }

        public Linked(T t5, Linked<T> linked, String str, boolean z6, boolean z10) {
            this.value = t5;
            this.next = linked;
            if (str == null) {
                this.explicitName = null;
            } else {
                this.explicitName = str.length() == 0 ? null : str;
            }
            this.isVisible = z6;
            this.isMarkedIgnored = z10;
        }
    }

    private interface WithMember<T> {
        T withMember(AnnotatedMember annotatedMember);
    }

    public POJOPropertyBuilder(PropertyName propertyName, AnnotationIntrospector annotationIntrospector, boolean z6) {
        this._internalName = propertyName;
        this._name = propertyName;
        this._annotationIntrospector = annotationIntrospector;
        this._forSerialization = z6;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean couldSerialize() {
        return (this._getters == null && this._fields == null) ? false : true;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public PropertyName getFullName() {
        return this._name;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasConstructorParameter() {
        return this._ctorParameters != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasField() {
        return this._fields != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasGetter() {
        return this._getters != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasSetter() {
        return this._setters != null;
    }

    public void mergeAnnotations(boolean z6) {
        if (z6) {
            Linked<AnnotatedMethod> linked = this._getters;
            if (linked != null) {
                AnnotationMap annotationMap_mergeAnnotations = _mergeAnnotations(0, linked, this._fields, this._ctorParameters, this._setters);
                Linked<AnnotatedMethod> linked2 = this._getters;
                this._getters = linked2.withValue(linked2.value.withAnnotations(annotationMap_mergeAnnotations));
                return;
            } else {
                Linked<AnnotatedField> linked3 = this._fields;
                if (linked3 != null) {
                    AnnotationMap annotationMap_mergeAnnotations2 = _mergeAnnotations(0, linked3, this._ctorParameters, this._setters);
                    Linked<AnnotatedField> linked4 = this._fields;
                    this._fields = linked4.withValue(linked4.value.withAnnotations(annotationMap_mergeAnnotations2));
                    return;
                }
                return;
            }
        }
        Linked<AnnotatedParameter> linked5 = this._ctorParameters;
        if (linked5 != null) {
            AnnotationMap annotationMap_mergeAnnotations3 = _mergeAnnotations(0, linked5, this._setters, this._fields, this._getters);
            Linked<AnnotatedParameter> linked6 = this._ctorParameters;
            this._ctorParameters = linked6.withValue(linked6.value.withAnnotations(annotationMap_mergeAnnotations3));
            return;
        }
        Linked<AnnotatedMethod> linked7 = this._setters;
        if (linked7 != null) {
            AnnotationMap annotationMap_mergeAnnotations4 = _mergeAnnotations(0, linked7, this._fields, this._getters);
            Linked<AnnotatedMethod> linked8 = this._setters;
            this._setters = linked8.withValue(linked8.value.withAnnotations(annotationMap_mergeAnnotations4));
        } else {
            Linked<AnnotatedField> linked9 = this._fields;
            if (linked9 != null) {
                AnnotationMap annotationMap_mergeAnnotations5 = _mergeAnnotations(0, linked9, this._getters);
                Linked<AnnotatedField> linked10 = this._fields;
                this._fields = linked10.withValue(linked10.value.withAnnotations(annotationMap_mergeAnnotations5));
            }
        }
    }

    @Deprecated
    public void removeNonVisible() {
        removeNonVisible(false);
    }

    @Deprecated
    public POJOPropertyBuilder(String str, AnnotationIntrospector annotationIntrospector, boolean z6) {
        this(new PropertyName(str), annotationIntrospector, z6);
    }

    private <T> boolean _anyExplicitNames(Linked<T> linked) {
        while (linked != null) {
            String str = linked.explicitName;
            if (str != null && str.length() > 0) {
                return true;
            }
            linked = linked.next;
        }
        return false;
    }

    private <T> boolean _anyIgnorals(Linked<T> linked) {
        while (linked != null) {
            if (linked.isMarkedIgnored) {
                return true;
            }
            linked = linked.next;
        }
        return false;
    }

    private <T> boolean _anyVisible(Linked<T> linked) {
        while (linked != null) {
            if (linked.isVisible) {
                return true;
            }
            linked = linked.next;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AnnotationMap _mergeAnnotations(int i10, Linked<? extends AnnotatedMember>... linkedArr) {
        AnnotationMap allAnnotations = ((AnnotatedMember) linkedArr[i10].value).getAllAnnotations();
        do {
            i10++;
            if (i10 >= linkedArr.length) {
                return allAnnotations;
            }
        } while (linkedArr[i10] == null);
        return AnnotationMap.merge(allAnnotations, _mergeAnnotations(i10, linkedArr));
    }

    private <T> Linked<T> _removeIgnored(Linked<T> linked) {
        return linked == null ? linked : linked.withoutIgnored();
    }

    private <T> Linked<T> _removeNonVisible(Linked<T> linked) {
        return linked == null ? linked : linked.withoutNonVisible();
    }

    private <T> Linked<T> _trimByVisibility(Linked<T> linked) {
        return linked == null ? linked : linked.trimByVisibility();
    }

    private Linked<? extends AnnotatedMember> findRenamed(Linked<? extends AnnotatedMember> linked, Linked<? extends AnnotatedMember> linked2) {
        Linked linked3 = linked;
        Linked linked4 = linked2;
        while (linked3 != null) {
            String str = linked3.explicitName;
            if (str != null && !str.equals(this._name)) {
                if (linked4 == null) {
                    linked4 = linked3;
                } else if (!str.equals(linked4.explicitName)) {
                    throw new IllegalStateException("Conflicting property name definitions: '" + linked4.explicitName + "' (for " + linked4.value + ") vs '" + linked3.explicitName + "' (for " + linked3.value + ")");
                }
            }
            linked3 = linked3.next;
            linked4 = linked4;
        }
        return linked4;
    }

    private static <T> Linked<T> merge(Linked<T> linked, Linked<T> linked2) {
        if (linked == null) {
            return linked2;
        }
        return linked2 == null ? linked : linked.append(linked2);
    }

    protected String _findDescription() {
        return (String) fromMemberAnnotations(new WithMember<String>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.5
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            public String withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.findPropertyDescription(annotatedMember);
            }
        });
    }

    protected Boolean _findRequired() {
        return (Boolean) fromMemberAnnotations(new WithMember<Boolean>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            public Boolean withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.hasRequiredMarker(annotatedMember);
            }
        });
    }

    public void addAll(POJOPropertyBuilder pOJOPropertyBuilder) {
        this._fields = merge(this._fields, pOJOPropertyBuilder._fields);
        this._ctorParameters = merge(this._ctorParameters, pOJOPropertyBuilder._ctorParameters);
        this._getters = merge(this._getters, pOJOPropertyBuilder._getters);
        this._setters = merge(this._setters, pOJOPropertyBuilder._setters);
    }

    public void addCtor(AnnotatedParameter annotatedParameter, String str, boolean z6, boolean z10) {
        this._ctorParameters = new Linked<>(annotatedParameter, this._ctorParameters, str, z6, z10);
    }

    public void addField(AnnotatedField annotatedField, String str, boolean z6, boolean z10) {
        this._fields = new Linked<>(annotatedField, this._fields, str, z6, z10);
    }

    public void addGetter(AnnotatedMethod annotatedMethod, String str, boolean z6, boolean z10) {
        this._getters = new Linked<>(annotatedMethod, this._getters, str, z6, z10);
    }

    public void addSetter(AnnotatedMethod annotatedMethod, String str, boolean z6, boolean z10) {
        this._setters = new Linked<>(annotatedMethod, this._setters, str, z6, z10);
    }

    public boolean anyIgnorals() {
        return _anyIgnorals(this._fields) || _anyIgnorals(this._getters) || _anyIgnorals(this._setters) || _anyIgnorals(this._ctorParameters);
    }

    public boolean anyVisible() {
        return _anyVisible(this._fields) || _anyVisible(this._getters) || _anyVisible(this._setters) || _anyVisible(this._ctorParameters);
    }

    @Override // java.lang.Comparable
    public int compareTo(POJOPropertyBuilder pOJOPropertyBuilder) {
        if (this._ctorParameters != null) {
            if (pOJOPropertyBuilder._ctorParameters == null) {
                return -1;
            }
        } else if (pOJOPropertyBuilder._ctorParameters != null) {
            return 1;
        }
        return getName().compareTo(pOJOPropertyBuilder.getName());
    }

    public String findNewName() {
        Linked<? extends AnnotatedMember> linkedFindRenamed = findRenamed(this._ctorParameters, findRenamed(this._setters, findRenamed(this._getters, findRenamed(this._fields, null))));
        if (linkedFindRenamed == null) {
            return null;
        }
        return linkedFindRenamed.explicitName;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public ObjectIdInfo findObjectIdInfo() {
        return (ObjectIdInfo) fromMemberAnnotations(new WithMember<ObjectIdInfo>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            public ObjectIdInfo withMember(AnnotatedMember annotatedMember) {
                ObjectIdInfo objectIdInfoFindObjectIdInfo = POJOPropertyBuilder.this._annotationIntrospector.findObjectIdInfo(annotatedMember);
                return objectIdInfoFindObjectIdInfo != null ? POJOPropertyBuilder.this._annotationIntrospector.findObjectReferenceInfo(annotatedMember, objectIdInfoFindObjectIdInfo) : objectIdInfoFindObjectIdInfo;
            }
        });
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotationIntrospector.ReferenceProperty findReferenceType() {
        return (AnnotationIntrospector.ReferenceProperty) fromMemberAnnotations(new WithMember<AnnotationIntrospector.ReferenceProperty>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            public AnnotationIntrospector.ReferenceProperty withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.findReferenceType(annotatedMember);
            }
        });
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public Class<?>[] findViews() {
        return (Class[]) fromMemberAnnotations(new WithMember<Class<?>[]>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.1
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            public Class<?>[] withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.findViews(annotatedMember);
            }
        });
    }

    protected <T> T fromMemberAnnotations(WithMember<T> withMember) {
        Linked<AnnotatedMethod> linked;
        Linked<AnnotatedField> linked2;
        T tWithMember = null;
        if (this._annotationIntrospector == null) {
            return null;
        }
        if (this._forSerialization) {
            Linked<AnnotatedMethod> linked3 = this._getters;
            if (linked3 != null) {
                tWithMember = withMember.withMember(linked3.value);
            }
        } else {
            Linked<AnnotatedParameter> linked4 = this._ctorParameters;
            tWithMember = linked4 != null ? withMember.withMember(linked4.value) : null;
            if (tWithMember == null && (linked = this._setters) != null) {
                tWithMember = withMember.withMember(linked.value);
            }
        }
        return (tWithMember != null || (linked2 = this._fields) == null) ? tWithMember : withMember.withMember(linked2.value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedParameter getConstructorParameter() {
        Linked linked = this._ctorParameters;
        if (linked == null) {
            return null;
        }
        while (!(((AnnotatedParameter) linked.value).getOwner() instanceof AnnotatedConstructor)) {
            linked = linked.next;
            if (linked == null) {
                return this._ctorParameters.value;
            }
        }
        return (AnnotatedParameter) linked.value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedField getField() {
        Linked<AnnotatedField> linked = this._fields;
        if (linked == null) {
            return null;
        }
        AnnotatedField annotatedField = linked.value;
        for (Linked linked2 = linked.next; linked2 != null; linked2 = linked2.next) {
            AnnotatedField annotatedField2 = (AnnotatedField) linked2.value;
            Class<?> declaringClass = annotatedField.getDeclaringClass();
            Class<?> declaringClass2 = annotatedField2.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (declaringClass.isAssignableFrom(declaringClass2)) {
                    annotatedField = annotatedField2;
                } else if (declaringClass2.isAssignableFrom(declaringClass)) {
                }
            }
            throw new IllegalArgumentException("Multiple fields representing property \"" + getName() + "\": " + annotatedField.getFullName() + " vs " + annotatedField2.getFullName());
        }
        return annotatedField;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002a  */
    /* JADX WARN: Code duplicated, block: B:18:0x0036  */
    /* JADX WARN: Code duplicated, block: B:19:0x0038  */
    /* JADX WARN: Code duplicated, block: B:22:0x0043  */
    /* JADX WARN: Code duplicated, block: B:24:0x0046 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0048  */
    /* JADX WARN: Code duplicated, block: B:31:0x004c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x0049 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:16:0x002a, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMethod getGetter() {
        boolean z6;
        Linked<AnnotatedMethod> linked = this._getters;
        if (linked == null) {
            return null;
        }
        AnnotatedMethod annotatedMethod = linked.value;
        for (Linked linked2 = linked.next; linked2 != null; linked2 = linked2.next) {
            AnnotatedMethod annotatedMethod2 = (AnnotatedMethod) linked2.value;
            Class<?> declaringClass = annotatedMethod.getDeclaringClass();
            Class<?> declaringClass2 = annotatedMethod2.getDeclaringClass();
            if (declaringClass == declaringClass2) {
                if (BeanUtil.okNameForIsGetter(annotatedMethod, annotatedMethod.getName()) != null) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (z6 != (BeanUtil.okNameForIsGetter(annotatedMethod2, annotatedMethod2.getName()) != null)) {
                    throw new IllegalArgumentException("Conflicting getter definitions for property \"" + getName() + "\": " + annotatedMethod.getFullName() + " vs " + annotatedMethod2.getFullName());
                }
                if (z6) {
                    annotatedMethod = annotatedMethod2;
                }
            } else if (declaringClass.isAssignableFrom(declaringClass2)) {
                annotatedMethod = annotatedMethod2;
            } else if (declaringClass2.isAssignableFrom(declaringClass)) {
                continue;
            } else {
                if (BeanUtil.okNameForIsGetter(annotatedMethod, annotatedMethod.getName()) != null) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (z6 != (BeanUtil.okNameForIsGetter(annotatedMethod2, annotatedMethod2.getName()) != null)) {
                    throw new IllegalArgumentException("Conflicting getter definitions for property \"" + getName() + "\": " + annotatedMethod.getFullName() + " vs " + annotatedMethod2.getFullName());
                }
                if (z6) {
                    annotatedMethod = annotatedMethod2;
                }
            }
        }
        return annotatedMethod;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public String getInternalName() {
        return this._internalName.getSimpleName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition, com.fasterxml.jackson.databind.util.Named
    public String getName() {
        PropertyName propertyName = this._name;
        if (propertyName == null) {
            return null;
        }
        return propertyName.getSimpleName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMember getPrimaryMember() {
        return this._forSerialization ? getAccessor() : getMutator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMethod getSetter() {
        Linked<AnnotatedMethod> linked = this._setters;
        if (linked == null) {
            return null;
        }
        AnnotatedMethod annotatedMethod = linked.value;
        for (Linked linked2 = linked.next; linked2 != null; linked2 = linked2.next) {
            AnnotatedMethod annotatedMethod2 = (AnnotatedMethod) linked2.value;
            Class<?> declaringClass = annotatedMethod.getDeclaringClass();
            Class<?> declaringClass2 = annotatedMethod2.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (declaringClass.isAssignableFrom(declaringClass2)) {
                    annotatedMethod = annotatedMethod2;
                } else if (declaringClass2.isAssignableFrom(declaringClass)) {
                }
            }
            throw new IllegalArgumentException("Conflicting setter definitions for property \"" + getName() + "\": " + annotatedMethod.getFullName() + " vs " + annotatedMethod2.getFullName());
        }
        return annotatedMethod;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean isExplicitlyIncluded() {
        return _anyExplicitNames(this._fields) || _anyExplicitNames(this._getters) || _anyExplicitNames(this._setters) || _anyExplicitNames(this._ctorParameters);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean isTypeId() {
        Boolean bool = (Boolean) fromMemberAnnotations(new WithMember<Boolean>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            public Boolean withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.isTypeId(annotatedMember);
            }
        });
        return bool != null && bool.booleanValue();
    }

    public void removeIgnored() {
        this._fields = _removeIgnored(this._fields);
        this._getters = _removeIgnored(this._getters);
        this._setters = _removeIgnored(this._setters);
        this._ctorParameters = _removeIgnored(this._ctorParameters);
    }

    public void removeNonVisible(boolean z6) {
        this._getters = _removeNonVisible(this._getters);
        this._ctorParameters = _removeNonVisible(this._ctorParameters);
        if (z6 || this._getters == null) {
            this._fields = _removeNonVisible(this._fields);
            this._setters = _removeNonVisible(this._setters);
        }
    }

    public String toString() {
        return "[Property '" + this._name + "'; ctors: " + this._ctorParameters + ", field(s): " + this._fields + ", getter(s): " + this._getters + ", setter(s): " + this._setters + "]";
    }

    public void trimByVisibility() {
        this._fields = _trimByVisibility(this._fields);
        this._getters = _trimByVisibility(this._getters);
        this._setters = _trimByVisibility(this._setters);
        this._ctorParameters = _trimByVisibility(this._ctorParameters);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public POJOPropertyBuilder withSimpleName(String str) {
        PropertyName propertyNameWithSimpleName = this._name.withSimpleName(str);
        return propertyNameWithSimpleName == this._name ? this : new POJOPropertyBuilder(this, propertyNameWithSimpleName);
    }

    public POJOPropertyBuilder(POJOPropertyBuilder pOJOPropertyBuilder, PropertyName propertyName) {
        this._internalName = pOJOPropertyBuilder._internalName;
        this._name = propertyName;
        this._annotationIntrospector = pOJOPropertyBuilder._annotationIntrospector;
        this._fields = pOJOPropertyBuilder._fields;
        this._ctorParameters = pOJOPropertyBuilder._ctorParameters;
        this._getters = pOJOPropertyBuilder._getters;
        this._setters = pOJOPropertyBuilder._setters;
        this._forSerialization = pOJOPropertyBuilder._forSerialization;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMember getAccessor() {
        AnnotatedMethod getter = getGetter();
        if (getter == null) {
            return getField();
        }
        return getter;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public PropertyMetadata getMetadata() {
        Boolean bool_findRequired = _findRequired();
        String str_findDescription = _findDescription();
        if (bool_findRequired == null) {
            PropertyMetadata propertyMetadata = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
            if (str_findDescription != null) {
                return propertyMetadata.withDescription(str_findDescription);
            }
            return propertyMetadata;
        }
        return PropertyMetadata.construct(bool_findRequired.booleanValue(), _findDescription());
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMember getMutator() {
        AnnotatedParameter constructorParameter = getConstructorParameter();
        if (constructorParameter == null) {
            AnnotatedMethod setter = getSetter();
            if (setter == null) {
                return getField();
            }
            return setter;
        }
        return constructorParameter;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMember getNonConstructorMutator() {
        AnnotatedMethod setter = getSetter();
        if (setter == null) {
            return getField();
        }
        return setter;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public PropertyName getWrapperName() {
        AnnotationIntrospector annotationIntrospector;
        AnnotatedMember primaryMember = getPrimaryMember();
        if (primaryMember != null && (annotationIntrospector = this._annotationIntrospector) != null) {
            return annotationIntrospector.findWrapperName(primaryMember);
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    @Deprecated
    public POJOPropertyBuilder withName(String str) {
        return withSimpleName(str);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public POJOPropertyBuilder withName(PropertyName propertyName) {
        return new POJOPropertyBuilder(this, propertyName);
    }
}
