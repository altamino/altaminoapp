package com.bumptech.glide.load.resource.transcode;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class f {
    private final List<a<?, ?>> transcoders = new ArrayList();

    private static final class a<Z, R> {
        private final Class<Z> fromClass;
        private final Class<R> toClass;
        final e<Z, R> transcoder;

        public boolean a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.fromClass.isAssignableFrom(cls) && cls2.isAssignableFrom(this.toClass);
        }

        a(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull e<Z, R> eVar) {
            this.fromClass = cls;
            this.toClass = cls2;
            this.transcoder = eVar;
        }
    }

    @NonNull
    public synchronized <Z, R> e<Z, R> a(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return g.b();
        }
        for (a<?, ?> aVar : this.transcoders) {
            if (aVar.a(cls, cls2)) {
                return (e<Z, R>) aVar.transcoder;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    @NonNull
    public synchronized <Z, R> List<Class<R>> b(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        Iterator<a<?, ?>> it = this.transcoders.iterator();
        while (it.hasNext()) {
            if (it.next().a(cls, cls2)) {
                arrayList.add(cls2);
            }
        }
        return arrayList;
    }

    public synchronized <Z, R> void c(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull e<Z, R> eVar) {
        this.transcoders.add(new a<>(cls, cls2, eVar));
    }
}
