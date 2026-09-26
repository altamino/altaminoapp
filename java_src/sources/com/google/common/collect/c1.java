package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
final class c1 {

    static final class b<T> {
        private final Field field;

        private b(Field field) {
            this.field = field;
            field.setAccessible(true);
        }

        void a(T t5, int i10) {
            try {
                this.field.set(t5, Integer.valueOf(i10));
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }

        void b(T t5, Object obj) {
            try {
                this.field.set(t5, obj);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <K, V> void b(m0<K, V> m0Var, ObjectInputStream objectInputStream, int i10) throws IOException, ClassNotFoundException {
        for (int i11 = 0; i11 < i10; i11++) {
            Collection collection = m0Var.get(objectInputStream.readObject());
            int i12 = objectInputStream.readInt();
            for (int i13 = 0; i13 < i12; i13++) {
                collection.add(objectInputStream.readObject());
            }
        }
    }

    static <T> b<T> a(Class<T> cls, String str) {
        try {
            return new b<>(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }

    static int c(ObjectInputStream objectInputStream) throws IOException {
        return objectInputStream.readInt();
    }

    static <K, V> void d(m0<K, V> m0Var, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(m0Var.b().size());
        for (Map.Entry<K, Collection<V>> entry : m0Var.b().entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(entry.getValue().size());
            Iterator<V> it = entry.getValue().iterator();
            while (it.hasNext()) {
                objectOutputStream.writeObject(it.next());
            }
        }
    }
}
