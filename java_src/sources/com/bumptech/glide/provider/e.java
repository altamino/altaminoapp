package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class e {
    private final List<String> bucketPriorityList = new ArrayList();
    private final Map<String, List<a<?, ?>>> decoders = new HashMap();

    private static class a<T, R> {
        private final Class<T> dataClass;
        final k<T, R> decoder;
        final Class<R> resourceClass;

        public boolean a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.dataClass.isAssignableFrom(cls) && cls2.isAssignableFrom(this.resourceClass);
        }

        public a(@NonNull Class<T> cls, @NonNull Class<R> cls2, k<T, R> kVar) {
            this.dataClass = cls;
            this.resourceClass = cls2;
            this.decoder = kVar;
        }
    }

    @NonNull
    private synchronized List<a<?, ?>> c(@NonNull String str) {
        List<a<?, ?>> arrayList;
        try {
            if (!this.bucketPriorityList.contains(str)) {
                this.bucketPriorityList.add(str);
            }
            arrayList = this.decoders.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.decoders.put(str, arrayList);
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public synchronized <T, R> void a(@NonNull String str, @NonNull k<T, R> kVar, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        c(str).add(new a<>(cls, cls2, kVar));
    }

    @NonNull
    public synchronized <T, R> List<k<T, R>> b(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.bucketPriorityList.iterator();
        while (it.hasNext()) {
            List<a<?, ?>> list = this.decoders.get(it.next());
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.a(cls, cls2)) {
                        arrayList.add(aVar.decoder);
                    }
                }
            }
        }
        return arrayList;
    }

    @NonNull
    public synchronized <T, R> List<Class<R>> d(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.bucketPriorityList.iterator();
        while (it.hasNext()) {
            List<a<?, ?>> list = this.decoders.get(it.next());
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.a(cls, cls2) && !arrayList.contains(aVar.resourceClass)) {
                        arrayList.add(aVar.resourceClass);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized void e(@NonNull List<String> list) {
        try {
            ArrayList<String> arrayList = new ArrayList(this.bucketPriorityList);
            this.bucketPriorityList.clear();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                this.bucketPriorityList.add(it.next());
            }
            for (String str : arrayList) {
                if (!list.contains(str)) {
                    this.bucketPriorityList.add(str);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
