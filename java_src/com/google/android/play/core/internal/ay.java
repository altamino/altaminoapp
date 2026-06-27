package com.google.android.play.core.internal;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ay<T> {
    private final Object a;
    private final Field b;
    private final Class<T> c;

    ay(Object obj, Field field, Class<T> cls) {
        this.a = obj;
        this.b = field;
        this.c = cls;
    }

    ay(Object obj, Field field, Class<T> cls, byte b) {
        this(obj, field, a(cls));
    }

    private static <T> Class<T[]> a(Class<T> cls) {
        return (Class<T[]>) Array.newInstance((Class<?>) cls, 0).getClass();
    }

    private Class<T> b() {
        return (Class<T>) this.b.getType().getComponentType();
    }

    public final T a() {
        try {
            return this.c.cast(this.b.get(this.a));
        } catch (Exception e) {
            throw new ba(String.format("Failed to get value of field %s of type %s on object of type %s", this.b.getName(), this.a.getClass().getName(), this.c.getName()), e);
        }
    }

    public void a(Collection<T> collection) throws IllegalAccessException, IllegalArgumentException {
        Object[] objArr = (Object[]) a();
        int length = objArr == null ? 0 : objArr.length;
        Object[] objArr2 = (Object[]) Array.newInstance((Class<?>) b(), collection.size() + length);
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            objArr2[length] = it.next();
            length++;
        }
        try {
            this.b.set(this.a, objArr2);
        } catch (Exception e) {
            throw new ba(String.format("Failed to set value of field %s of type %s on object of type %s", this.b.getName(), this.a.getClass().getName(), this.c.getName()), e);
        }
    }

    public void a(T[] tArr) throws IllegalAccessException, IllegalArgumentException {
        a(Arrays.asList(tArr));
    }
}
