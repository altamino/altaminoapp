package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class StdSubtypeResolver extends SubtypeResolver implements Serializable {
    private static final long serialVersionUID = 1;
    protected LinkedHashSet<NamedType> _registeredSubtypes;

    @Override // com.fasterxml.jackson.databind.jsontype.SubtypeResolver
    @Deprecated
    public Collection<NamedType> collectAndResolveSubtypes(AnnotatedMember annotatedMember, MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector) {
        return collectAndResolveSubtypes(annotatedMember, mapperConfig, annotationIntrospector, null);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.SubtypeResolver
    public void registerSubtypes(NamedType... namedTypeArr) {
        if (this._registeredSubtypes == null) {
            this._registeredSubtypes = new LinkedHashSet<>();
        }
        for (NamedType namedType : namedTypeArr) {
            this._registeredSubtypes.add(namedType);
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.SubtypeResolver
    public Collection<NamedType> collectAndResolveSubtypes(AnnotatedMember annotatedMember, MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector, JavaType javaType) {
        Class<?> rawType = javaType == null ? annotatedMember.getRawType() : javaType.getRawClass();
        HashMap<NamedType, NamedType> map = new HashMap<>();
        LinkedHashSet<NamedType> linkedHashSet = this._registeredSubtypes;
        if (linkedHashSet != null) {
            for (NamedType namedType : linkedHashSet) {
                if (rawType.isAssignableFrom(namedType.getType())) {
                    _collectAndResolve(AnnotatedClass.constructWithoutSuperTypes(namedType.getType(), annotationIntrospector, mapperConfig), namedType, mapperConfig, annotationIntrospector, map);
                }
            }
        }
        List<NamedType> listFindSubtypes = annotationIntrospector.findSubtypes(annotatedMember);
        if (listFindSubtypes != null) {
            for (NamedType namedType2 : listFindSubtypes) {
                _collectAndResolve(AnnotatedClass.constructWithoutSuperTypes(namedType2.getType(), annotationIntrospector, mapperConfig), namedType2, mapperConfig, annotationIntrospector, map);
            }
        }
        _collectAndResolve(AnnotatedClass.constructWithoutSuperTypes(rawType, annotationIntrospector, mapperConfig), new NamedType(rawType, null), mapperConfig, annotationIntrospector, map);
        return new ArrayList(map.values());
    }

    protected void _collectAndResolve(AnnotatedClass annotatedClass, NamedType namedType, MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector, HashMap<NamedType, NamedType> map) {
        NamedType namedType2;
        String strFindTypeName;
        if (!namedType.hasName() && (strFindTypeName = annotationIntrospector.findTypeName(annotatedClass)) != null) {
            namedType = new NamedType(namedType.getType(), strFindTypeName);
        }
        if (map.containsKey(namedType)) {
            if (namedType.hasName() && !map.get(namedType).hasName()) {
                map.put(namedType, namedType);
                return;
            }
            return;
        }
        map.put(namedType, namedType);
        List<NamedType> listFindSubtypes = annotationIntrospector.findSubtypes(annotatedClass);
        if (listFindSubtypes != null && !listFindSubtypes.isEmpty()) {
            for (NamedType namedType3 : listFindSubtypes) {
                AnnotatedClass annotatedClassConstructWithoutSuperTypes = AnnotatedClass.constructWithoutSuperTypes(namedType3.getType(), annotationIntrospector, mapperConfig);
                if (!namedType3.hasName()) {
                    namedType2 = new NamedType(namedType3.getType(), annotationIntrospector.findTypeName(annotatedClassConstructWithoutSuperTypes));
                } else {
                    namedType2 = namedType3;
                }
                _collectAndResolve(annotatedClassConstructWithoutSuperTypes, namedType2, mapperConfig, annotationIntrospector, map);
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.SubtypeResolver
    public void registerSubtypes(Class<?>... clsArr) {
        NamedType[] namedTypeArr = new NamedType[clsArr.length];
        int length = clsArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            namedTypeArr[i10] = new NamedType(clsArr[i10]);
        }
        registerSubtypes(namedTypeArr);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.SubtypeResolver
    public Collection<NamedType> collectAndResolveSubtypes(AnnotatedClass annotatedClass, MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector) {
        HashMap<NamedType, NamedType> map = new HashMap<>();
        if (this._registeredSubtypes != null) {
            Class<?> rawType = annotatedClass.getRawType();
            for (NamedType namedType : this._registeredSubtypes) {
                if (rawType.isAssignableFrom(namedType.getType())) {
                    _collectAndResolve(AnnotatedClass.constructWithoutSuperTypes(namedType.getType(), annotationIntrospector, mapperConfig), namedType, mapperConfig, annotationIntrospector, map);
                }
            }
        }
        _collectAndResolve(annotatedClass, new NamedType(annotatedClass.getRawType(), null), mapperConfig, annotationIntrospector, map);
        return new ArrayList(map.values());
    }
}
