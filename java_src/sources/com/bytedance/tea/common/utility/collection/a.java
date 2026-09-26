package com.bytedance.tea.common.utility.collection;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes10.dex */
public class a<E> implements Iterable<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakHashMap<E, Object> f915a = new WeakHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f916b = new Object();

    public boolean a() {
        return this.f915a.isEmpty();
    }

    public int b() {
        return this.f915a.size();
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        ArrayList arrayList = new ArrayList(this.f915a.size());
        for (E e : this.f915a.keySet()) {
            if (e != null) {
                arrayList.add(e);
            }
        }
        return arrayList.iterator();
    }
}
