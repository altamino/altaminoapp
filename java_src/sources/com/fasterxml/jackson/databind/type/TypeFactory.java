package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class TypeFactory implements Serializable {
    private static final long serialVersionUID = 1;
    protected transient HierarchicType _cachedArrayListType;
    protected transient HierarchicType _cachedHashMapType;
    protected final TypeModifier[] _modifiers;
    protected final TypeParser _parser;
    protected final LRUMap<ClassKey, JavaType> _typeCache;
    private static final JavaType[] NO_TYPES = new JavaType[0];
    protected static final TypeFactory instance = new TypeFactory();
    protected static final SimpleType CORE_TYPE_STRING = new SimpleType(String.class);
    protected static final SimpleType CORE_TYPE_BOOL = new SimpleType(Boolean.TYPE);
    protected static final SimpleType CORE_TYPE_INT = new SimpleType(Integer.TYPE);
    protected static final SimpleType CORE_TYPE_LONG = new SimpleType(Long.TYPE);

    private TypeFactory() {
        this._typeCache = new LRUMap<>(16, 100);
        this._parser = new TypeParser(this);
        this._modifiers = null;
    }

    public static TypeFactory defaultInstance() {
        return instance;
    }

    protected synchronized HierarchicType _arrayListSuperInterfaceChain(HierarchicType hierarchicType) {
        try {
            if (this._cachedArrayListType == null) {
                HierarchicType hierarchicTypeDeepCloneWithoutSubtype = hierarchicType.deepCloneWithoutSubtype();
                _doFindSuperInterfaceChain(hierarchicTypeDeepCloneWithoutSubtype, List.class);
                this._cachedArrayListType = hierarchicTypeDeepCloneWithoutSubtype.getSuperType();
            }
            HierarchicType hierarchicTypeDeepCloneWithoutSubtype2 = this._cachedArrayListType.deepCloneWithoutSubtype();
            hierarchicType.setSuperType(hierarchicTypeDeepCloneWithoutSubtype2);
            hierarchicTypeDeepCloneWithoutSubtype2.setSubType(hierarchicType);
        } catch (Throwable th) {
            throw th;
        }
        return hierarchicType;
    }

    protected synchronized HierarchicType _hashMapSuperInterfaceChain(HierarchicType hierarchicType) {
        try {
            if (this._cachedHashMapType == null) {
                HierarchicType hierarchicTypeDeepCloneWithoutSubtype = hierarchicType.deepCloneWithoutSubtype();
                _doFindSuperInterfaceChain(hierarchicTypeDeepCloneWithoutSubtype, Map.class);
                this._cachedHashMapType = hierarchicTypeDeepCloneWithoutSubtype.getSuperType();
            }
            HierarchicType hierarchicTypeDeepCloneWithoutSubtype2 = this._cachedHashMapType.deepCloneWithoutSubtype();
            hierarchicType.setSuperType(hierarchicTypeDeepCloneWithoutSubtype2);
            hierarchicTypeDeepCloneWithoutSubtype2.setSubType(hierarchicType);
        } catch (Throwable th) {
            throw th;
        }
        return hierarchicType;
    }

    public ArrayType constructArrayType(Class<?> cls) {
        return ArrayType.construct(_constructType(cls, null), null, null);
    }

    public CollectionLikeType constructCollectionLikeType(Class<?> cls, Class<?> cls2) {
        return CollectionLikeType.construct(cls, constructType(cls2));
    }

    public CollectionType constructCollectionType(Class<? extends Collection> cls, Class<?> cls2) {
        return CollectionType.construct((Class<?>) cls, constructType(cls2));
    }

    public MapLikeType constructMapLikeType(Class<?> cls, JavaType javaType, JavaType javaType2) {
        return MapLikeType.construct(cls, javaType, javaType2);
    }

    public MapType constructMapType(Class<? extends Map> cls, JavaType javaType, JavaType javaType2) {
        return MapType.construct((Class<?>) cls, javaType, javaType2);
    }

    public JavaType constructParametricType(Class<?> cls, Class<?>... clsArr) {
        int length = clsArr.length;
        JavaType[] javaTypeArr = new JavaType[length];
        for (int i10 = 0; i10 < length; i10++) {
            javaTypeArr[i10] = _fromClass(clsArr[i10], null);
        }
        return constructParametricType(cls, javaTypeArr);
    }

    public JavaType constructType(Type type) {
        return _constructType(type, null);
    }

    public JavaType[] findTypeParameters(JavaType javaType, Class<?> cls) {
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass != cls) {
            return findTypeParameters(rawClass, cls, new TypeBindings(this, javaType));
        }
        int iContainedTypeCount = javaType.containedTypeCount();
        if (iContainedTypeCount == 0) {
            return null;
        }
        JavaType[] javaTypeArr = new JavaType[iContainedTypeCount];
        for (int i10 = 0; i10 < iContainedTypeCount; i10++) {
            javaTypeArr[i10] = javaType.containedType(i10);
        }
        return javaTypeArr;
    }

    private JavaType _collectionType(Class<?> cls) {
        JavaType[] javaTypeArrFindTypeParameters = findTypeParameters(cls, Collection.class);
        if (javaTypeArrFindTypeParameters == null) {
            return CollectionType.construct(cls, _unknownType());
        }
        if (javaTypeArrFindTypeParameters.length == 1) {
            return CollectionType.construct(cls, javaTypeArrFindTypeParameters[0]);
        }
        throw new IllegalArgumentException("Strange Collection type " + cls.getName() + ": can not determine type parameters");
    }

    private JavaType _mapType(Class<?> cls) {
        JavaType[] javaTypeArrFindTypeParameters = findTypeParameters(cls, Map.class);
        if (javaTypeArrFindTypeParameters == null) {
            return MapType.construct(cls, _unknownType(), _unknownType());
        }
        if (javaTypeArrFindTypeParameters.length == 2) {
            return MapType.construct(cls, javaTypeArrFindTypeParameters[0], javaTypeArrFindTypeParameters[1]);
        }
        throw new IllegalArgumentException("Strange Map type " + cls.getName() + ": can not determine type parameters");
    }

    public static Class<?> rawClass(Type type) {
        return type instanceof Class ? (Class) type : defaultInstance().constructType(type).getRawClass();
    }

    protected JavaType _constructType(Type type, TypeBindings typeBindings) {
        JavaType javaType_fromWildcard;
        if (type instanceof Class) {
            javaType_fromWildcard = _fromClass((Class) type, typeBindings);
        } else if (type instanceof ParameterizedType) {
            javaType_fromWildcard = _fromParamType((ParameterizedType) type, typeBindings);
        } else {
            if (type instanceof JavaType) {
                return (JavaType) type;
            }
            if (type instanceof GenericArrayType) {
                javaType_fromWildcard = _fromArrayType((GenericArrayType) type, typeBindings);
            } else if (type instanceof TypeVariable) {
                javaType_fromWildcard = _fromVariable((TypeVariable) type, typeBindings);
            } else {
                if (!(type instanceof WildcardType)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unrecognized Type: ");
                    sb.append(type == null ? "[null]" : type.toString());
                    throw new IllegalArgumentException(sb.toString());
                }
                javaType_fromWildcard = _fromWildcard((WildcardType) type, typeBindings);
            }
        }
        if (this._modifiers != null && !javaType_fromWildcard.isContainerType()) {
            for (TypeModifier typeModifier : this._modifiers) {
                javaType_fromWildcard = typeModifier.modifyType(javaType_fromWildcard, type, typeBindings, this);
            }
        }
        return javaType_fromWildcard;
    }

    protected HierarchicType _findSuperClassChain(Type type, Class<?> cls) {
        HierarchicType hierarchicType_findSuperClassChain;
        HierarchicType hierarchicType = new HierarchicType(type);
        Class<?> rawClass = hierarchicType.getRawClass();
        if (rawClass == cls) {
            return hierarchicType;
        }
        Type genericSuperclass = rawClass.getGenericSuperclass();
        if (genericSuperclass == null || (hierarchicType_findSuperClassChain = _findSuperClassChain(genericSuperclass, cls)) == null) {
            return null;
        }
        hierarchicType_findSuperClassChain.setSubType(hierarchicType);
        hierarchicType.setSuperType(hierarchicType_findSuperClassChain);
        return hierarchicType;
    }

    protected HierarchicType _findSuperInterfaceChain(Type type, Class<?> cls) {
        HierarchicType hierarchicType = new HierarchicType(type);
        Class<?> rawClass = hierarchicType.getRawClass();
        if (rawClass == cls) {
            return new HierarchicType(type);
        }
        if (rawClass == HashMap.class && cls == Map.class) {
            return _hashMapSuperInterfaceChain(hierarchicType);
        }
        return (rawClass == ArrayList.class && cls == List.class) ? _arrayListSuperInterfaceChain(hierarchicType) : _doFindSuperInterfaceChain(hierarchicType, cls);
    }

    protected JavaType _fromClass(Class<?> cls, TypeBindings typeBindings) {
        JavaType javaType;
        SimpleType simpleType;
        JavaType javaType_collectionType;
        if (cls == String.class) {
            return CORE_TYPE_STRING;
        }
        if (cls == Boolean.TYPE) {
            return CORE_TYPE_BOOL;
        }
        if (cls == Integer.TYPE) {
            return CORE_TYPE_INT;
        }
        if (cls == Long.TYPE) {
            return CORE_TYPE_LONG;
        }
        ClassKey classKey = new ClassKey(cls);
        synchronized (this._typeCache) {
            javaType = this._typeCache.get(classKey);
        }
        if (javaType != null) {
            return javaType;
        }
        if (cls.isArray()) {
            javaType_collectionType = ArrayType.construct(_constructType(cls.getComponentType(), null), null, null);
        } else {
            if (cls.isEnum()) {
                simpleType = new SimpleType(cls);
            } else if (Map.class.isAssignableFrom(cls)) {
                javaType_collectionType = _mapType(cls);
            } else if (Collection.class.isAssignableFrom(cls)) {
                javaType_collectionType = _collectionType(cls);
            } else {
                simpleType = new SimpleType(cls);
            }
            javaType_collectionType = simpleType;
        }
        synchronized (this._typeCache) {
            this._typeCache.put(classKey, javaType_collectionType);
        }
        return javaType_collectionType;
    }

    protected JavaType _fromVariable(TypeVariable<?> typeVariable, TypeBindings typeBindings) {
        if (typeBindings == null) {
            return _unknownType();
        }
        String name = typeVariable.getName();
        JavaType javaTypeFindType = typeBindings.findType(name);
        if (javaTypeFindType != null) {
            return javaTypeFindType;
        }
        Type[] bounds = typeVariable.getBounds();
        typeBindings._addPlaceholder(name);
        return _constructType(bounds[0], typeBindings);
    }

    protected JavaType _resolveVariableViaSubTypes(HierarchicType hierarchicType, String str, TypeBindings typeBindings) {
        if (hierarchicType != null && hierarchicType.isGeneric()) {
            TypeVariable<Class<?>>[] typeParameters = hierarchicType.getRawClass().getTypeParameters();
            int length = typeParameters.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (str.equals(typeParameters[i10].getName())) {
                    Type type = hierarchicType.asGeneric().getActualTypeArguments()[i10];
                    return type instanceof TypeVariable ? _resolveVariableViaSubTypes(hierarchicType.getSubType(), ((TypeVariable) type).getName(), typeBindings) : _constructType(type, typeBindings);
                }
            }
        }
        return _unknownType();
    }

    protected JavaType _unknownType() {
        return new SimpleType(Object.class);
    }

    public ArrayType constructArrayType(JavaType javaType) {
        return ArrayType.construct(javaType, null, null);
    }

    public CollectionLikeType constructCollectionLikeType(Class<?> cls, JavaType javaType) {
        return CollectionLikeType.construct(cls, javaType);
    }

    public CollectionType constructCollectionType(Class<? extends Collection> cls, JavaType javaType) {
        return CollectionType.construct((Class<?>) cls, javaType);
    }

    public JavaType constructFromCanonical(String str) throws IllegalArgumentException {
        return this._parser.parse(str);
    }

    public MapLikeType constructMapLikeType(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        return MapType.construct(cls, constructType(cls2), constructType(cls3));
    }

    public MapType constructMapType(Class<? extends Map> cls, Class<?> cls2, Class<?> cls3) {
        return MapType.construct((Class<?>) cls, constructType(cls2), constructType(cls3));
    }

    public JavaType constructType(Type type, TypeBindings typeBindings) {
        return _constructType(type, typeBindings);
    }

    public JavaType moreSpecificType(JavaType javaType, JavaType javaType2) {
        Class<?> rawClass;
        Class<?> rawClass2;
        if (javaType == null) {
            return javaType2;
        }
        return (javaType2 == null || (rawClass = javaType.getRawClass()) == (rawClass2 = javaType2.getRawClass()) || !rawClass.isAssignableFrom(rawClass2)) ? javaType : javaType2;
    }

    public JavaType uncheckedSimpleType(Class<?> cls) {
        return new SimpleType(cls);
    }

    public TypeFactory withModifier(TypeModifier typeModifier) {
        TypeModifier[] typeModifierArr = this._modifiers;
        return typeModifierArr == null ? new TypeFactory(this._parser, new TypeModifier[]{typeModifier}) : new TypeFactory(this._parser, (TypeModifier[]) ArrayBuilders.insertInListNoDup(typeModifierArr, typeModifier));
    }

    public static JavaType unknownType() {
        return defaultInstance()._unknownType();
    }

    protected HierarchicType _doFindSuperInterfaceChain(HierarchicType hierarchicType, Class<?> cls) {
        HierarchicType hierarchicType_findSuperInterfaceChain;
        Class<?> rawClass = hierarchicType.getRawClass();
        Type[] genericInterfaces = rawClass.getGenericInterfaces();
        if (genericInterfaces != null) {
            for (Type type : genericInterfaces) {
                HierarchicType hierarchicType_findSuperInterfaceChain2 = _findSuperInterfaceChain(type, cls);
                if (hierarchicType_findSuperInterfaceChain2 != null) {
                    hierarchicType_findSuperInterfaceChain2.setSubType(hierarchicType);
                    hierarchicType.setSuperType(hierarchicType_findSuperInterfaceChain2);
                    return hierarchicType;
                }
            }
        }
        Type genericSuperclass = rawClass.getGenericSuperclass();
        if (genericSuperclass != null && (hierarchicType_findSuperInterfaceChain = _findSuperInterfaceChain(genericSuperclass, cls)) != null) {
            hierarchicType_findSuperInterfaceChain.setSubType(hierarchicType);
            hierarchicType.setSuperType(hierarchicType_findSuperInterfaceChain);
            return hierarchicType;
        }
        return null;
    }

    protected HierarchicType _findSuperTypeChain(Class<?> cls, Class<?> cls2) {
        if (cls2.isInterface()) {
            return _findSuperInterfaceChain(cls, cls2);
        }
        return _findSuperClassChain(cls, cls2);
    }

    protected JavaType _fromArrayType(GenericArrayType genericArrayType, TypeBindings typeBindings) {
        return ArrayType.construct(_constructType(genericArrayType.getGenericComponentType(), typeBindings), null, null);
    }

    protected JavaType _fromParamType(ParameterizedType parameterizedType, TypeBindings typeBindings) {
        int length;
        JavaType[] javaTypeArr;
        Class<?> cls = (Class) parameterizedType.getRawType();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (actualTypeArguments == null) {
            length = 0;
        } else {
            length = actualTypeArguments.length;
        }
        if (length == 0) {
            javaTypeArr = NO_TYPES;
        } else {
            JavaType[] javaTypeArr2 = new JavaType[length];
            for (int i10 = 0; i10 < length; i10++) {
                javaTypeArr2[i10] = _constructType(actualTypeArguments[i10], typeBindings);
            }
            javaTypeArr = javaTypeArr2;
        }
        if (Map.class.isAssignableFrom(cls)) {
            JavaType[] javaTypeArrFindTypeParameters = findTypeParameters(constructSimpleType(cls, javaTypeArr), Map.class);
            if (javaTypeArrFindTypeParameters.length == 2) {
                return MapType.construct(cls, javaTypeArrFindTypeParameters[0], javaTypeArrFindTypeParameters[1]);
            }
            throw new IllegalArgumentException("Could not find 2 type parameters for Map class " + cls.getName() + " (found " + javaTypeArrFindTypeParameters.length + ")");
        }
        if (Collection.class.isAssignableFrom(cls)) {
            JavaType[] javaTypeArrFindTypeParameters2 = findTypeParameters(constructSimpleType(cls, javaTypeArr), Collection.class);
            if (javaTypeArrFindTypeParameters2.length == 1) {
                return CollectionType.construct(cls, javaTypeArrFindTypeParameters2[0]);
            }
            throw new IllegalArgumentException("Could not find 1 type parameter for Collection class " + cls.getName() + " (found " + javaTypeArrFindTypeParameters2.length + ")");
        }
        if (length == 0) {
            return new SimpleType(cls);
        }
        return constructSimpleType(cls, javaTypeArr);
    }

    protected JavaType _fromParameterizedClass(Class<?> cls, List<JavaType> list) {
        JavaType javaType_unknownType;
        if (cls.isArray()) {
            return ArrayType.construct(_constructType(cls.getComponentType(), null), null, null);
        }
        if (cls.isEnum()) {
            return new SimpleType(cls);
        }
        if (Map.class.isAssignableFrom(cls)) {
            if (list.size() > 0) {
                JavaType javaType = list.get(0);
                if (list.size() >= 2) {
                    javaType_unknownType = list.get(1);
                } else {
                    javaType_unknownType = _unknownType();
                }
                return MapType.construct(cls, javaType, javaType_unknownType);
            }
            return _mapType(cls);
        }
        if (Collection.class.isAssignableFrom(cls)) {
            if (list.size() >= 1) {
                return CollectionType.construct(cls, list.get(0));
            }
            return _collectionType(cls);
        }
        if (list.size() == 0) {
            return new SimpleType(cls);
        }
        return constructSimpleType(cls, (JavaType[]) list.toArray(new JavaType[list.size()]));
    }

    protected JavaType _fromWildcard(WildcardType wildcardType, TypeBindings typeBindings) {
        return _constructType(wildcardType.getUpperBounds()[0], typeBindings);
    }

    public CollectionLikeType constructRawCollectionLikeType(Class<?> cls) {
        return CollectionLikeType.construct(cls, unknownType());
    }

    public CollectionType constructRawCollectionType(Class<? extends Collection> cls) {
        return CollectionType.construct((Class<?>) cls, unknownType());
    }

    public MapLikeType constructRawMapLikeType(Class<?> cls) {
        return MapLikeType.construct(cls, unknownType(), unknownType());
    }

    public MapType constructRawMapType(Class<? extends Map> cls) {
        return MapType.construct((Class<?>) cls, unknownType(), unknownType());
    }

    public JavaType constructSimpleType(Class<?> cls, JavaType[] javaTypeArr) {
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        if (typeParameters.length == javaTypeArr.length) {
            String[] strArr = new String[typeParameters.length];
            int length = typeParameters.length;
            for (int i10 = 0; i10 < length; i10++) {
                strArr[i10] = typeParameters[i10].getName();
            }
            return new SimpleType(cls, strArr, javaTypeArr, null, null, false);
        }
        throw new IllegalArgumentException("Parameter type mismatch for " + cls.getName() + ": expected " + typeParameters.length + " parameters, was given " + javaTypeArr.length);
    }

    public JavaType constructSpecializedType(JavaType javaType, Class<?> cls) {
        if (javaType.getRawClass() == cls) {
            return javaType;
        }
        if ((javaType instanceof SimpleType) && (cls.isArray() || Map.class.isAssignableFrom(cls) || Collection.class.isAssignableFrom(cls))) {
            if (javaType.getRawClass().isAssignableFrom(cls)) {
                JavaType javaType_fromClass = _fromClass(cls, new TypeBindings(this, javaType.getRawClass()));
                Object valueHandler = javaType.getValueHandler();
                if (valueHandler != null) {
                    javaType_fromClass = javaType_fromClass.withValueHandler(valueHandler);
                }
                Object typeHandler = javaType.getTypeHandler();
                if (typeHandler != null) {
                    return javaType_fromClass.withTypeHandler(typeHandler);
                }
                return javaType_fromClass;
            }
            throw new IllegalArgumentException("Class " + cls.getClass().getName() + " not subtype of " + javaType);
        }
        return javaType.narrowBy(cls);
    }

    public JavaType constructType(TypeReference<?> typeReference) {
        return _constructType(typeReference.getType(), null);
    }

    protected TypeFactory(TypeParser typeParser, TypeModifier[] typeModifierArr) {
        this._typeCache = new LRUMap<>(16, 100);
        this._parser = typeParser;
        this._modifiers = typeModifierArr;
    }

    public JavaType constructType(Type type, Class<?> cls) {
        return _constructType(type, cls == null ? null : new TypeBindings(this, cls));
    }

    public JavaType constructParametricType(Class<?> cls, JavaType... javaTypeArr) {
        if (cls.isArray()) {
            if (javaTypeArr.length == 1) {
                return constructArrayType(javaTypeArr[0]);
            }
            throw new IllegalArgumentException("Need exactly 1 parameter type for arrays (" + cls.getName() + ")");
        }
        if (Map.class.isAssignableFrom(cls)) {
            if (javaTypeArr.length == 2) {
                return constructMapType((Class<? extends Map>) cls, javaTypeArr[0], javaTypeArr[1]);
            }
            throw new IllegalArgumentException("Need exactly 2 parameter types for Map types (" + cls.getName() + ")");
        }
        if (Collection.class.isAssignableFrom(cls)) {
            if (javaTypeArr.length == 1) {
                return constructCollectionType((Class<? extends Collection>) cls, javaTypeArr[0]);
            }
            throw new IllegalArgumentException("Need exactly 1 parameter type for Collection types (" + cls.getName() + ")");
        }
        return constructSimpleType(cls, javaTypeArr);
    }

    public JavaType constructType(Type type, JavaType javaType) {
        return _constructType(type, javaType == null ? null : new TypeBindings(this, javaType));
    }

    public JavaType[] findTypeParameters(Class<?> cls, Class<?> cls2) {
        return findTypeParameters(cls, cls2, new TypeBindings(this, cls));
    }

    public JavaType[] findTypeParameters(Class<?> cls, Class<?> cls2, TypeBindings typeBindings) {
        HierarchicType hierarchicType_findSuperTypeChain = _findSuperTypeChain(cls, cls2);
        if (hierarchicType_findSuperTypeChain != null) {
            while (hierarchicType_findSuperTypeChain.getSuperType() != null) {
                hierarchicType_findSuperTypeChain = hierarchicType_findSuperTypeChain.getSuperType();
                Class<?> rawClass = hierarchicType_findSuperTypeChain.getRawClass();
                TypeBindings typeBindings2 = new TypeBindings(this, rawClass);
                if (hierarchicType_findSuperTypeChain.isGeneric()) {
                    Type[] actualTypeArguments = hierarchicType_findSuperTypeChain.asGeneric().getActualTypeArguments();
                    TypeVariable<Class<?>>[] typeParameters = rawClass.getTypeParameters();
                    int length = actualTypeArguments.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        typeBindings2.addBinding(typeParameters[i10].getName(), _constructType(actualTypeArguments[i10], typeBindings));
                    }
                }
                typeBindings = typeBindings2;
            }
            if (hierarchicType_findSuperTypeChain.isGeneric()) {
                return typeBindings.typesAsArray();
            }
            return null;
        }
        throw new IllegalArgumentException("Class " + cls.getName() + " is not a subtype of " + cls2.getName());
    }
}
