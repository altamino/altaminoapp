package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class g<K, V> extends h<K, V> {
    private static final int DEFAULT_VALUES_PER_KEY = 3;
    private static final long serialVersionUID = 0;
    transient int expectedValuesPerKey;

    private g() {
        this(12, 3);
    }

    private g(int i10, int i11) {
        super(u0.c(i10));
        k.b(i11, "expectedValuesPerKey");
        this.expectedValuesPerKey = i11;
    }

    public static <K, V> g<K, V> E() {
        return new g<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.c, com.google.common.collect.d
    /* JADX INFO: renamed from: D */
    public List<V> t() {
        return new ArrayList(this.expectedValuesPerKey);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.expectedValuesPerKey = 3;
        int iC = c1.c(objectInputStream);
        z(m.u());
        c1.b(this, objectInputStream, iC);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        c1.d(this, objectOutputStream);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.f, com.google.common.collect.m0
    /* JADX INFO: renamed from: a */
    public /* bridge */ /* synthetic */ Collection o() {
        return super.o();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.f, com.google.common.collect.m0
    public /* bridge */ /* synthetic */ Map b() {
        return super.b();
    }

    @Override // com.google.common.collect.f, com.google.common.collect.m0
    public /* bridge */ /* synthetic */ boolean c(Object obj, Object obj2) {
        return super.c(obj, obj2);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.m0
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ boolean d(Object obj) {
        return super.d(obj);
    }

    @Override // com.google.common.collect.c, com.google.common.collect.f
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.c, com.google.common.collect.d, com.google.common.collect.m0
    /* JADX INFO: renamed from: get */
    public /* bridge */ /* synthetic */ List q(Object obj) {
        return super.q(obj);
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.f, com.google.common.collect.m0
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ Set j() {
        return super.j();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.c, com.google.common.collect.d, com.google.common.collect.f, com.google.common.collect.m0
    public /* bridge */ /* synthetic */ boolean put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.f, com.google.common.collect.m0
    public /* bridge */ /* synthetic */ boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.m0
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.d, com.google.common.collect.f, com.google.common.collect.m0
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }
}
