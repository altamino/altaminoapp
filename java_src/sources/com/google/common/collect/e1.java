package com.google.common.collect;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
class e1 extends f1.e<Object> {
    final /* synthetic */ Set val$set1;
    final /* synthetic */ Set val$set2;

    class a extends b<Object> {
        final Iterator<Object> itr1;
        final Iterator<Object> itr2;

        a() {
            this.itr1 = e1.this.val$set1.iterator();
            this.itr2 = e1.this.val$set2.iterator();
        }

        @Override // com.google.common.collect.b
        protected Object a() {
            if (this.itr1.hasNext()) {
                return this.itr1.next();
            }
            while (this.itr2.hasNext()) {
                Object next = this.itr2.next();
                if (!e1.this.val$set1.contains(next)) {
                    return next;
                }
            }
            return b();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public l1<Object> iterator() {
        return new a();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.val$set1.contains(obj) || this.val$set2.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.val$set1.isEmpty() && this.val$set2.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        int size = this.val$set1.size();
        Iterator it = this.val$set2.iterator();
        while (it.hasNext()) {
            if (!this.val$set1.contains(it.next())) {
                size++;
            }
        }
        return size;
    }
}
