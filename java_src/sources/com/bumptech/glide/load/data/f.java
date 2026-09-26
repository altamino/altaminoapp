package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class f {
    private static final e.a<?> DEFAULT_FACTORY = new a();
    private final Map<Class<?>, e.a<?>> rewinders = new HashMap();

    class a implements e.a<Object> {
        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public Class<Object> a() {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public e<Object> b(@NonNull Object obj) {
            return new b(obj);
        }

        a() {
        }
    }

    @NonNull
    public synchronized <T> e<T> a(@NonNull T t5) {
        e.a<?> aVar;
        try {
            com.bumptech.glide.util.j.d(t5);
            aVar = this.rewinders.get(t5.getClass());
            if (aVar == null) {
                for (e.a<?> aVar2 : this.rewinders.values()) {
                    if (aVar2.a().isAssignableFrom(t5.getClass())) {
                        aVar = aVar2;
                        break;
                    }
                }
            }
            if (aVar == null) {
                aVar = DEFAULT_FACTORY;
            }
        } catch (Throwable th) {
            throw th;
        }
        return (e<T>) aVar.b(t5);
    }

    public synchronized void b(@NonNull e.a<?> aVar) {
        this.rewinders.put(aVar.a(), aVar);
    }

    private static final class b implements e<Object> {
        private final Object data;

        @Override // com.bumptech.glide.load.data.e
        @NonNull
        public Object a() {
            return this.data;
        }

        @Override // com.bumptech.glide.load.data.e
        public void b() {
        }

        b(@NonNull Object obj) {
            this.data = obj;
        }
    }
}
