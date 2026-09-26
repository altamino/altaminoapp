package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.util.Annotations;
import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class AnnotationMap implements Annotations {
    protected HashMap<Class<? extends Annotation>, Annotation> _annotations;

    public AnnotationMap() {
    }

    private AnnotationMap(HashMap<Class<? extends Annotation>, Annotation> map) {
        this._annotations = map;
    }

    public static AnnotationMap merge(AnnotationMap annotationMap, AnnotationMap annotationMap2) {
        HashMap<Class<? extends Annotation>, Annotation> map;
        HashMap<Class<? extends Annotation>, Annotation> map2;
        if (annotationMap == null || (map = annotationMap._annotations) == null || map.isEmpty()) {
            return annotationMap2;
        }
        if (annotationMap2 == null || (map2 = annotationMap2._annotations) == null || map2.isEmpty()) {
            return annotationMap;
        }
        HashMap map3 = new HashMap();
        for (Annotation annotation : annotationMap2._annotations.values()) {
            map3.put(annotation.annotationType(), annotation);
        }
        for (Annotation annotation2 : annotationMap._annotations.values()) {
            map3.put(annotation2.annotationType(), annotation2);
        }
        return new AnnotationMap(map3);
    }

    protected final void _add(Annotation annotation) {
        if (this._annotations == null) {
            this._annotations = new HashMap<>();
        }
        this._annotations.put(annotation.annotationType(), annotation);
    }

    public void addIfNotPresent(Annotation annotation) {
        HashMap<Class<? extends Annotation>, Annotation> map = this._annotations;
        if (map == null || !map.containsKey(annotation.annotationType())) {
            _add(annotation);
        }
    }

    public Iterable<Annotation> annotations() {
        HashMap<Class<? extends Annotation>, Annotation> map = this._annotations;
        return (map == null || map.size() == 0) ? Collections.emptyList() : this._annotations.values();
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public <A extends Annotation> A get(Class<A> cls) {
        HashMap<Class<? extends Annotation>, Annotation> map = this._annotations;
        if (map == null) {
            return null;
        }
        return (A) map.get(cls);
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public int size() {
        HashMap<Class<? extends Annotation>, Annotation> map = this._annotations;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public String toString() {
        HashMap<Class<? extends Annotation>, Annotation> map = this._annotations;
        return map == null ? "[null]" : map.toString();
    }

    public void add(Annotation annotation) {
        _add(annotation);
    }
}
