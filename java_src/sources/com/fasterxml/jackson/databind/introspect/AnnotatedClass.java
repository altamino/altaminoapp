package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class AnnotatedClass extends Annotated {
    private static final AnnotationMap[] NO_ANNOTATION_MAPS = new AnnotationMap[0];
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final Class<?> _class;
    protected AnnotationMap _classAnnotations;
    protected List<AnnotatedConstructor> _constructors;
    protected List<AnnotatedMethod> _creatorMethods;
    protected boolean _creatorsResolved = false;
    protected AnnotatedConstructor _defaultConstructor;
    protected List<AnnotatedField> _fields;
    protected AnnotatedMethodMap _memberMethods;
    protected final ClassIntrospector.MixInResolver _mixInResolver;
    protected final Class<?> _primaryMixIn;
    protected final List<Class<?>> _superTypes;

    private void _addAnnotationsIfNotPresent(AnnotationMap annotationMap, Annotation[] annotationArr) {
        if (annotationArr != null) {
            LinkedList linkedList = null;
            for (Annotation annotation : annotationArr) {
                if (_isAnnotationBundle(annotation)) {
                    if (linkedList == null) {
                        linkedList = new LinkedList();
                    }
                    linkedList.add(annotation.annotationType().getDeclaredAnnotations());
                } else {
                    annotationMap.addIfNotPresent(annotation);
                }
            }
            if (linkedList != null) {
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    _addAnnotationsIfNotPresent(annotationMap, (Annotation[]) it.next());
                }
            }
        }
    }

    protected void _addClassMixIns(AnnotationMap annotationMap, Class<?> cls) {
        ClassIntrospector.MixInResolver mixInResolver = this._mixInResolver;
        if (mixInResolver != null) {
            _addClassMixIns(annotationMap, cls, mixInResolver.findMixInClassFor(cls));
        }
    }

    protected void _addMixOvers(Constructor<?> constructor, AnnotatedConstructor annotatedConstructor, boolean z6) {
        _addOrOverrideAnnotations(annotatedConstructor, constructor.getDeclaredAnnotations());
        if (z6) {
            Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
            int length = parameterAnnotations.length;
            for (int i10 = 0; i10 < length; i10++) {
                for (Annotation annotation : parameterAnnotations[i10]) {
                    annotatedConstructor.addOrOverrideParam(i10, annotation);
                }
            }
        }
    }

    protected AnnotationMap[] _collectRelevantAnnotations(Annotation[][] annotationArr) {
        int length = annotationArr.length;
        AnnotationMap[] annotationMapArr = new AnnotationMap[length];
        for (int i10 = 0; i10 < length; i10++) {
            annotationMapArr[i10] = _collectRelevantAnnotations(annotationArr[i10]);
        }
        return annotationMapArr;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Class<?> getAnnotated() {
        return this._class;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Type getGenericType() {
        return this._class;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Class<?> getRawType() {
        return this._class;
    }

    private void _addOrOverrideAnnotations(AnnotatedMember annotatedMember, Annotation[] annotationArr) {
        if (annotationArr != null) {
            LinkedList linkedList = null;
            for (Annotation annotation : annotationArr) {
                if (_isAnnotationBundle(annotation)) {
                    if (linkedList == null) {
                        linkedList = new LinkedList();
                    }
                    linkedList.add(annotation.annotationType().getDeclaredAnnotations());
                } else {
                    annotatedMember.addOrOverride(annotation);
                }
            }
            if (linkedList != null) {
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    _addOrOverrideAnnotations(annotatedMember, (Annotation[]) it.next());
                }
            }
        }
    }

    private AnnotationMap _emptyAnnotationMap() {
        return new AnnotationMap();
    }

    private AnnotationMap[] _emptyAnnotationMaps(int i10) {
        if (i10 == 0) {
            return NO_ANNOTATION_MAPS;
        }
        AnnotationMap[] annotationMapArr = new AnnotationMap[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            annotationMapArr[i11] = _emptyAnnotationMap();
        }
        return annotationMapArr;
    }

    private final boolean _isAnnotationBundle(Annotation annotation) {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        return annotationIntrospector != null && annotationIntrospector.isAnnotationBundle(annotation);
    }

    public static AnnotatedClass construct(Class<?> cls, AnnotationIntrospector annotationIntrospector, ClassIntrospector.MixInResolver mixInResolver) {
        return new AnnotatedClass(cls, ClassUtil.findSuperTypes(cls, null), annotationIntrospector, mixInResolver, null);
    }

    public static AnnotatedClass constructWithoutSuperTypes(Class<?> cls, AnnotationIntrospector annotationIntrospector, ClassIntrospector.MixInResolver mixInResolver) {
        return new AnnotatedClass(cls, Collections.emptyList(), annotationIntrospector, mixInResolver, null);
    }

    private void resolveClassAnnotations() {
        AnnotationMap annotationMap = new AnnotationMap();
        this._classAnnotations = annotationMap;
        if (this._annotationIntrospector != null) {
            Class<?> cls = this._primaryMixIn;
            if (cls != null) {
                _addClassMixIns(annotationMap, this._class, cls);
            }
            _addAnnotationsIfNotPresent(this._classAnnotations, this._class.getDeclaredAnnotations());
            for (Class<?> cls2 : this._superTypes) {
                _addClassMixIns(this._classAnnotations, cls2);
                _addAnnotationsIfNotPresent(this._classAnnotations, cls2.getDeclaredAnnotations());
            }
            _addClassMixIns(this._classAnnotations, Object.class);
        }
    }

    private void resolveCreators() {
        Constructor<?>[] declaredConstructors = this._class.getDeclaredConstructors();
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (Constructor<?> constructor : declaredConstructors) {
            if (constructor.getParameterTypes().length == 0) {
                this._defaultConstructor = _constructConstructor(constructor, true);
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList(Math.max(10, declaredConstructors.length));
                }
                arrayList2.add(_constructConstructor(constructor, false));
            }
        }
        if (arrayList2 == null) {
            this._constructors = Collections.emptyList();
        } else {
            this._constructors = arrayList2;
        }
        if (this._primaryMixIn != null && (this._defaultConstructor != null || !this._constructors.isEmpty())) {
            _addConstructorMixIns(this._primaryMixIn);
        }
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector != null) {
            AnnotatedConstructor annotatedConstructor = this._defaultConstructor;
            if (annotatedConstructor != null && annotationIntrospector.hasIgnoreMarker(annotatedConstructor)) {
                this._defaultConstructor = null;
            }
            List<AnnotatedConstructor> list = this._constructors;
            if (list != null) {
                int size = list.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    } else if (this._annotationIntrospector.hasIgnoreMarker(this._constructors.get(size))) {
                        this._constructors.remove(size);
                    }
                }
            }
        }
        for (Method method : this._class.getDeclaredMethods()) {
            if (Modifier.isStatic(method.getModifiers())) {
                if (arrayList == null) {
                    arrayList = new ArrayList(8);
                }
                arrayList.add(_constructCreatorMethod(method));
            }
        }
        if (arrayList != null) {
            this._creatorMethods = arrayList;
            Class<?> cls = this._primaryMixIn;
            if (cls != null) {
                _addFactoryMixIns(cls);
            }
            if (this._annotationIntrospector != null) {
                int size2 = this._creatorMethods.size();
                while (true) {
                    size2--;
                    if (size2 < 0) {
                        break;
                    } else if (this._annotationIntrospector.hasIgnoreMarker(this._creatorMethods.get(size2))) {
                        this._creatorMethods.remove(size2);
                    }
                }
            }
        } else {
            this._creatorMethods = Collections.emptyList();
        }
        this._creatorsResolved = true;
    }

    private void resolveFields() {
        Map<String, AnnotatedField> map_findFields = _findFields(this._class, null);
        if (map_findFields == null || map_findFields.size() == 0) {
            this._fields = Collections.emptyList();
            return;
        }
        ArrayList arrayList = new ArrayList(map_findFields.size());
        this._fields = arrayList;
        arrayList.addAll(map_findFields.values());
    }

    private void resolveMemberMethods() {
        Class<?> clsFindMixInClassFor;
        this._memberMethods = new AnnotatedMethodMap();
        AnnotatedMethodMap annotatedMethodMap = new AnnotatedMethodMap();
        _addMemberMethods(this._class, this._memberMethods, this._primaryMixIn, annotatedMethodMap);
        for (Class<?> cls : this._superTypes) {
            ClassIntrospector.MixInResolver mixInResolver = this._mixInResolver;
            _addMemberMethods(cls, this._memberMethods, mixInResolver == null ? null : mixInResolver.findMixInClassFor(cls), annotatedMethodMap);
        }
        ClassIntrospector.MixInResolver mixInResolver2 = this._mixInResolver;
        if (mixInResolver2 != null && (clsFindMixInClassFor = mixInResolver2.findMixInClassFor(Object.class)) != null) {
            _addMethodMixIns(this._class, this._memberMethods, clsFindMixInClassFor, annotatedMethodMap);
        }
        if (this._annotationIntrospector == null || annotatedMethodMap.isEmpty()) {
            return;
        }
        for (AnnotatedMethod annotatedMethod : annotatedMethodMap) {
            try {
                Method declaredMethod = Object.class.getDeclaredMethod(annotatedMethod.getName(), annotatedMethod.getRawParameterTypes());
                if (declaredMethod != null) {
                    AnnotatedMethod annotatedMethod_constructMethod = _constructMethod(declaredMethod);
                    _addMixOvers(annotatedMethod.getAnnotated(), annotatedMethod_constructMethod, false);
                    this._memberMethods.add(annotatedMethod_constructMethod);
                }
            } catch (Exception unused) {
            }
        }
    }

    protected void _addClassMixIns(AnnotationMap annotationMap, Class<?> cls, Class<?> cls2) {
        if (cls2 == null) {
            return;
        }
        _addAnnotationsIfNotPresent(annotationMap, cls2.getDeclaredAnnotations());
        Iterator<Class<?>> it = ClassUtil.findSuperTypes(cls2, cls).iterator();
        while (it.hasNext()) {
            _addAnnotationsIfNotPresent(annotationMap, it.next().getDeclaredAnnotations());
        }
    }

    protected void _addConstructorMixIns(Class<?> cls) {
        List<AnnotatedConstructor> list = this._constructors;
        int size = list == null ? 0 : list.size();
        MemberKey[] memberKeyArr = null;
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            if (constructor.getParameterTypes().length != 0) {
                if (memberKeyArr == null) {
                    memberKeyArr = new MemberKey[size];
                    for (int i10 = 0; i10 < size; i10++) {
                        memberKeyArr[i10] = new MemberKey(this._constructors.get(i10).getAnnotated());
                    }
                }
                MemberKey memberKey = new MemberKey(constructor);
                for (int i11 = 0; i11 < size; i11++) {
                    if (memberKey.equals(memberKeyArr[i11])) {
                        _addMixOvers(constructor, this._constructors.get(i11), true);
                        break;
                    }
                }
            } else {
                AnnotatedConstructor annotatedConstructor = this._defaultConstructor;
                if (annotatedConstructor != null) {
                    _addMixOvers(constructor, annotatedConstructor, false);
                }
            }
        }
    }

    protected void _addFactoryMixIns(Class<?> cls) {
        int size = this._creatorMethods.size();
        MemberKey[] memberKeyArr = null;
        for (Method method : cls.getDeclaredMethods()) {
            if (Modifier.isStatic(method.getModifiers()) && method.getParameterTypes().length != 0) {
                if (memberKeyArr == null) {
                    memberKeyArr = new MemberKey[size];
                    for (int i10 = 0; i10 < size; i10++) {
                        memberKeyArr[i10] = new MemberKey(this._creatorMethods.get(i10).getAnnotated());
                    }
                }
                MemberKey memberKey = new MemberKey(method);
                for (int i11 = 0; i11 < size; i11++) {
                    if (memberKey.equals(memberKeyArr[i11])) {
                        _addMixOvers(method, this._creatorMethods.get(i11), true);
                        break;
                    }
                }
            }
        }
    }

    protected void _addFieldMixIns(Class<?> cls, Class<?> cls2, Map<String, AnnotatedField> map) {
        AnnotatedField annotatedField;
        ArrayList arrayList = new ArrayList();
        arrayList.add(cls2);
        ClassUtil.findSuperTypes(cls2, cls, arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            for (Field field : ((Class) it.next()).getDeclaredFields()) {
                if (_isIncludableField(field) && (annotatedField = map.get(field.getName())) != null) {
                    _addOrOverrideAnnotations(annotatedField, field.getDeclaredAnnotations());
                }
            }
        }
    }

    protected void _addMemberMethods(Class<?> cls, AnnotatedMethodMap annotatedMethodMap, Class<?> cls2, AnnotatedMethodMap annotatedMethodMap2) {
        if (cls2 != null) {
            _addMethodMixIns(cls, annotatedMethodMap, cls2, annotatedMethodMap2);
        }
        if (cls == null) {
            return;
        }
        for (Method method : cls.getDeclaredMethods()) {
            if (_isIncludableMemberMethod(method)) {
                AnnotatedMethod annotatedMethodFind = annotatedMethodMap.find(method);
                if (annotatedMethodFind == null) {
                    AnnotatedMethod annotatedMethod_constructMethod = _constructMethod(method);
                    annotatedMethodMap.add(annotatedMethod_constructMethod);
                    AnnotatedMethod annotatedMethodRemove = annotatedMethodMap2.remove(method);
                    if (annotatedMethodRemove != null) {
                        _addMixOvers(annotatedMethodRemove.getAnnotated(), annotatedMethod_constructMethod, false);
                    }
                } else {
                    _addMixUnders(method, annotatedMethodFind);
                    if (annotatedMethodFind.getDeclaringClass().isInterface() && !method.getDeclaringClass().isInterface()) {
                        annotatedMethodMap.add(annotatedMethodFind.withMethod(method));
                    }
                }
            }
        }
    }

    protected void _addMethodMixIns(Class<?> cls, AnnotatedMethodMap annotatedMethodMap, Class<?> cls2, AnnotatedMethodMap annotatedMethodMap2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(cls2);
        ClassUtil.findSuperTypes(cls2, cls, arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            for (Method method : ((Class) it.next()).getDeclaredMethods()) {
                if (_isIncludableMemberMethod(method)) {
                    AnnotatedMethod annotatedMethodFind = annotatedMethodMap.find(method);
                    if (annotatedMethodFind != null) {
                        _addMixUnders(method, annotatedMethodFind);
                    } else {
                        annotatedMethodMap2.add(_constructMethod(method));
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006f  */
    /* JADX WARN: Instruction removed from duplicated block: B:25:0x006f, please report this as an issue */
    protected AnnotatedConstructor _constructConstructor(Constructor<?> constructor, boolean z6) {
        Annotation[][] annotationArr;
        AnnotationMap[] annotationMapArr_collectRelevantAnnotations;
        if (this._annotationIntrospector == null) {
            return new AnnotatedConstructor(constructor, _emptyAnnotationMap(), _emptyAnnotationMaps(constructor.getParameterTypes().length));
        }
        AnnotationMap[] annotationMapArr_collectRelevantAnnotations2 = null;
        if (z6) {
            return new AnnotatedConstructor(constructor, _collectRelevantAnnotations(constructor.getDeclaredAnnotations()), null);
        }
        Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
        int length = constructor.getParameterTypes().length;
        if (length != parameterAnnotations.length) {
            Class<?> declaringClass = constructor.getDeclaringClass();
            if (declaringClass.isEnum() && length == parameterAnnotations.length + 2) {
                annotationArr = new Annotation[parameterAnnotations.length + 2][];
                System.arraycopy(parameterAnnotations, 0, annotationArr, 2, parameterAnnotations.length);
                annotationMapArr_collectRelevantAnnotations = _collectRelevantAnnotations(annotationArr);
            } else {
                if (declaringClass.isMemberClass() && length == parameterAnnotations.length + 1) {
                    annotationArr = new Annotation[parameterAnnotations.length + 1][];
                    System.arraycopy(parameterAnnotations, 0, annotationArr, 1, parameterAnnotations.length);
                    annotationMapArr_collectRelevantAnnotations = _collectRelevantAnnotations(annotationArr);
                }
                if (annotationMapArr_collectRelevantAnnotations2 == null) {
                    throw new IllegalStateException("Internal error: constructor for " + constructor.getDeclaringClass().getName() + " has mismatch: " + length + " parameters; " + parameterAnnotations.length + " sets of annotations");
                }
            }
            Annotation[][] annotationArr2 = annotationArr;
            annotationMapArr_collectRelevantAnnotations2 = annotationMapArr_collectRelevantAnnotations;
            parameterAnnotations = annotationArr2;
            if (annotationMapArr_collectRelevantAnnotations2 == null) {
                throw new IllegalStateException("Internal error: constructor for " + constructor.getDeclaringClass().getName() + " has mismatch: " + length + " parameters; " + parameterAnnotations.length + " sets of annotations");
            }
        } else {
            annotationMapArr_collectRelevantAnnotations2 = _collectRelevantAnnotations(parameterAnnotations);
        }
        return new AnnotatedConstructor(constructor, _collectRelevantAnnotations(constructor.getDeclaredAnnotations()), annotationMapArr_collectRelevantAnnotations2);
    }

    protected AnnotatedMethod _constructCreatorMethod(Method method) {
        return this._annotationIntrospector == null ? new AnnotatedMethod(method, _emptyAnnotationMap(), _emptyAnnotationMaps(method.getParameterTypes().length)) : new AnnotatedMethod(method, _collectRelevantAnnotations(method.getDeclaredAnnotations()), _collectRelevantAnnotations(method.getParameterAnnotations()));
    }

    protected AnnotatedField _constructField(Field field) {
        return this._annotationIntrospector == null ? new AnnotatedField(field, _emptyAnnotationMap()) : new AnnotatedField(field, _collectRelevantAnnotations(field.getDeclaredAnnotations()));
    }

    protected AnnotatedMethod _constructMethod(Method method) {
        return this._annotationIntrospector == null ? new AnnotatedMethod(method, _emptyAnnotationMap(), null) : new AnnotatedMethod(method, _collectRelevantAnnotations(method.getDeclaredAnnotations()), null);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Iterable<Annotation> annotations() {
        AnnotationMap annotationMap = this._classAnnotations;
        return annotationMap == null ? Collections.emptyList() : annotationMap.annotations();
    }

    public Iterable<AnnotatedField> fields() {
        if (this._fields == null) {
            resolveFields();
        }
        return this._fields;
    }

    public AnnotatedMethod findMethod(String str, Class<?>[] clsArr) {
        if (this._memberMethods == null) {
            resolveMemberMethods();
        }
        return this._memberMethods.find(str, clsArr);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    protected AnnotationMap getAllAnnotations() {
        if (this._classAnnotations == null) {
            resolveClassAnnotations();
        }
        return this._classAnnotations;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        if (this._classAnnotations == null) {
            resolveClassAnnotations();
        }
        return (A) this._classAnnotations.get(cls);
    }

    public Annotations getAnnotations() {
        if (this._classAnnotations == null) {
            resolveClassAnnotations();
        }
        return this._classAnnotations;
    }

    public List<AnnotatedConstructor> getConstructors() {
        if (!this._creatorsResolved) {
            resolveCreators();
        }
        return this._constructors;
    }

    public AnnotatedConstructor getDefaultConstructor() {
        if (!this._creatorsResolved) {
            resolveCreators();
        }
        return this._defaultConstructor;
    }

    public int getFieldCount() {
        if (this._fields == null) {
            resolveFields();
        }
        return this._fields.size();
    }

    public int getMemberMethodCount() {
        if (this._memberMethods == null) {
            resolveMemberMethods();
        }
        return this._memberMethods.size();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public int getModifiers() {
        return this._class.getModifiers();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public String getName() {
        return this._class.getName();
    }

    public List<AnnotatedMethod> getStaticMethods() {
        if (!this._creatorsResolved) {
            resolveCreators();
        }
        return this._creatorMethods;
    }

    public boolean hasAnnotations() {
        if (this._classAnnotations == null) {
            resolveClassAnnotations();
        }
        return this._classAnnotations.size() > 0;
    }

    public Iterable<AnnotatedMethod> memberMethods() {
        if (this._memberMethods == null) {
            resolveMemberMethods();
        }
        return this._memberMethods;
    }

    public String toString() {
        return "[AnnotedClass " + this._class.getName() + "]";
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public AnnotatedClass withAnnotations(AnnotationMap annotationMap) {
        return new AnnotatedClass(this._class, this._superTypes, this._annotationIntrospector, this._mixInResolver, annotationMap);
    }

    private AnnotatedClass(Class<?> cls, List<Class<?>> list, AnnotationIntrospector annotationIntrospector, ClassIntrospector.MixInResolver mixInResolver, AnnotationMap annotationMap) {
        Class<?> clsFindMixInClassFor;
        this._class = cls;
        this._superTypes = list;
        this._annotationIntrospector = annotationIntrospector;
        this._mixInResolver = mixInResolver;
        if (mixInResolver == null) {
            clsFindMixInClassFor = null;
        } else {
            clsFindMixInClassFor = mixInResolver.findMixInClassFor(cls);
        }
        this._primaryMixIn = clsFindMixInClassFor;
        this._classAnnotations = annotationMap;
    }

    private boolean _isIncludableField(Field field) {
        if (field.isSynthetic()) {
            return false;
        }
        int modifiers = field.getModifiers();
        if (Modifier.isStatic(modifiers) || Modifier.isTransient(modifiers)) {
            return false;
        }
        return true;
    }

    protected void _addMixUnders(Method method, AnnotatedMethod annotatedMethod) {
        _addAnnotationsIfNotPresent(annotatedMethod, method.getDeclaredAnnotations());
    }

    protected Map<String, AnnotatedField> _findFields(Class<?> cls, Map<String, AnnotatedField> map) {
        Class<?> clsFindMixInClassFor;
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null) {
            map = _findFields(superclass, map);
            for (Field field : cls.getDeclaredFields()) {
                if (_isIncludableField(field)) {
                    if (map == null) {
                        map = new LinkedHashMap<>();
                    }
                    map.put(field.getName(), _constructField(field));
                }
            }
            ClassIntrospector.MixInResolver mixInResolver = this._mixInResolver;
            if (mixInResolver != null && (clsFindMixInClassFor = mixInResolver.findMixInClassFor(cls)) != null) {
                _addFieldMixIns(superclass, clsFindMixInClassFor, map);
            }
        }
        return map;
    }

    protected boolean _isIncludableMemberMethod(Method method) {
        if (Modifier.isStatic(method.getModifiers()) || method.isSynthetic() || method.isBridge() || method.getParameterTypes().length > 2) {
            return false;
        }
        return true;
    }

    protected AnnotationMap _collectRelevantAnnotations(Annotation[] annotationArr) {
        AnnotationMap annotationMap = new AnnotationMap();
        _addAnnotationsIfNotPresent(annotationMap, annotationArr);
        return annotationMap;
    }

    protected void _addMixOvers(Method method, AnnotatedMethod annotatedMethod, boolean z6) {
        _addOrOverrideAnnotations(annotatedMethod, method.getDeclaredAnnotations());
        if (z6) {
            Annotation[][] parameterAnnotations = method.getParameterAnnotations();
            int length = parameterAnnotations.length;
            for (int i10 = 0; i10 < length; i10++) {
                for (Annotation annotation : parameterAnnotations[i10]) {
                    annotatedMethod.addOrOverrideParam(i10, annotation);
                }
            }
        }
    }

    private void _addAnnotationsIfNotPresent(AnnotatedMember annotatedMember, Annotation[] annotationArr) {
        if (annotationArr != null) {
            LinkedList linkedList = null;
            for (Annotation annotation : annotationArr) {
                if (_isAnnotationBundle(annotation)) {
                    if (linkedList == null) {
                        linkedList = new LinkedList();
                    }
                    linkedList.add(annotation.annotationType().getDeclaredAnnotations());
                } else {
                    annotatedMember.addIfNotPresent(annotation);
                }
            }
            if (linkedList != null) {
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    _addAnnotationsIfNotPresent(annotatedMember, (Annotation[]) it.next());
                }
            }
        }
    }
}
