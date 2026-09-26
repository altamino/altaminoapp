package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.util.Named;

/* JADX INFO: loaded from: classes11.dex */
public abstract class BeanPropertyDefinition implements Named {
    public ObjectIdInfo findObjectIdInfo() {
        return null;
    }

    public AnnotationIntrospector.ReferenceProperty findReferenceType() {
        return null;
    }

    public Class<?>[] findViews() {
        return null;
    }

    public abstract AnnotatedMember getAccessor();

    public abstract AnnotatedParameter getConstructorParameter();

    public abstract AnnotatedField getField();

    public abstract PropertyName getFullName();

    public abstract AnnotatedMethod getGetter();

    public abstract String getInternalName();

    public abstract PropertyMetadata getMetadata();

    public abstract AnnotatedMember getMutator();

    @Override // com.fasterxml.jackson.databind.util.Named
    public abstract String getName();

    public abstract AnnotatedMember getNonConstructorMutator();

    public AnnotatedMember getPrimaryMember() {
        return null;
    }

    public abstract AnnotatedMethod getSetter();

    public abstract PropertyName getWrapperName();

    public abstract boolean hasConstructorParameter();

    public abstract boolean hasField();

    public abstract boolean hasGetter();

    public abstract boolean hasSetter();

    public abstract boolean isExplicitlyIncluded();

    public boolean isTypeId() {
        return false;
    }

    public abstract BeanPropertyDefinition withName(PropertyName propertyName);

    @Deprecated
    public BeanPropertyDefinition withName(String str) {
        return withSimpleName(str);
    }

    public abstract BeanPropertyDefinition withSimpleName(String str);

    public boolean couldDeserialize() {
        if (getMutator() != null) {
            return true;
        }
        return false;
    }

    public boolean couldSerialize() {
        if (getAccessor() != null) {
            return true;
        }
        return false;
    }

    public final boolean isRequired() {
        PropertyMetadata metadata = getMetadata();
        if (metadata != null && metadata.isRequired()) {
            return true;
        }
        return false;
    }
}
