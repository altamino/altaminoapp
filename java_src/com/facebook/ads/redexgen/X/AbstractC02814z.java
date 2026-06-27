package com.facebook.ads.redexgen.X;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4z, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC02814z<K, V> {

    /* JADX WARN: Incorrect inner types in field signature: Lcom/facebook/ads/redexgen/X/4z<TK;TV;>.EntrySet; */
    public AnonymousClass56 A00;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/facebook/ads/redexgen/X/4z<TK;TV;>.KeySet; */
    public AnonymousClass57 A01;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/facebook/ads/redexgen/X/4z<TK;TV;>.ValuesCollection; */
    public AnonymousClass59 A02;

    public abstract int A04();

    public abstract int A05(Object obj);

    public abstract int A06(Object obj);

    public abstract Object A07(int i, int i2);

    public abstract V A08(int i, V v);

    public abstract Map<K, V> A0A();

    public abstract void A0D();

    public abstract void A0E(int i);

    public abstract void A0F(K k, V v);

    public static <K, V> boolean A00(Map<K, V> map, Collection<?> collection) {
        boolean z = false;
        Iterator<?> it = collection.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    map = map;
                    it = it;
                    if (!map.containsKey(it.next())) {
                        c = 4;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 4:
                    z = false;
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    z = true;
                    c = 5;
                    break;
            }
        }
    }

    public static <K, V> boolean A01(Map<K, V> map, Collection<?> collection) {
        boolean z = false;
        int size = map.size();
        Iterator<?> it = collection.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    map = map;
                    it = it;
                    map.remove(it.next());
                    c = 2;
                    break;
                case 4:
                    map = map;
                    if (size == map.size()) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = true;
                    c = 6;
                    break;
                case 6:
                    return z;
                case 7:
                    z = false;
                    c = 6;
                    break;
            }
        }
    }

    public static <K, V> boolean A02(Map<K, V> map, Collection<?> collection) {
        boolean z = false;
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    collection = collection;
                    it = it;
                    if (!collection.contains(it.next())) {
                        c = 4;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 4:
                    it = it;
                    it.remove();
                    c = 2;
                    break;
                case 5:
                    map = map;
                    if (size == map.size()) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    z = true;
                    c = 7;
                    break;
                case 7:
                    return z;
                case '\b':
                    z = false;
                    c = 7;
                    break;
            }
        }
    }

    public static <T> boolean A03(Set<T> set, Object obj) {
        Set set2 = null;
        boolean z = true;
        boolean z2 = false;
        char c = set == obj ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 4:
                    obj = obj;
                    if (obj instanceof Set) {
                        set2 = (Set) obj;
                        c = 6;
                        break;
                    } else {
                        return z2;
                    }
                case 6:
                    set = set;
                    if (set.size() != set2.size()) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    try {
                        set = set;
                        set2 = set2;
                        if (!set.containsAll(set2)) {
                            c = 11;
                            break;
                        } else {
                            c = '\f';
                            break;
                        }
                    } catch (ClassCastException | NullPointerException unused) {
                        return z2;
                    }
                case 11:
                    z2 = false;
                    z = false;
                    c = '\f';
                    break;
                case '\f':
                    return z;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4z != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V> */
    public final Collection<V> A09() {
        if (this.A02 == null) {
            this.A02 = new Collection<V>() { // from class: com.facebook.ads.redexgen.X.59
                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.59 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$ValuesCollection */
                @Override // java.util.Collection
                public final boolean add(V v) {
                    throw new UnsupportedOperationException();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.59 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$ValuesCollection */
                @Override // java.util.Collection
                public final boolean addAll(Collection<? extends V> collection) {
                    throw new UnsupportedOperationException();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.59 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$ValuesCollection */
                @Override // java.util.Collection
                public final void clear() {
                    this.A00.A0D();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.59 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$ValuesCollection */
                @Override // java.util.Collection
                public final boolean contains(Object obj) {
                    boolean z = false;
                    char c = this.A00.A06(obj) >= 0 ? (char) 2 : (char) 4;
                    while (true) {
                        switch (c) {
                            case 2:
                                z = true;
                                c = 3;
                                break;
                            case 3:
                                return z;
                            case 4:
                                z = false;
                                c = 3;
                                break;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.59 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$ValuesCollection */
                @Override // java.util.Collection
                public final boolean containsAll(Collection<?> collection) {
                    AnonymousClass59<V> anonymousClass59 = this;
                    boolean z = false;
                    Iterator<?> it = collection.iterator();
                    char c = 2;
                    while (true) {
                        switch (c) {
                            case 2:
                                it = it;
                                if (!it.hasNext()) {
                                    c = 6;
                                    break;
                                } else {
                                    c = 3;
                                    break;
                                }
                            case 3:
                                anonymousClass59 = anonymousClass59;
                                it = it;
                                if (!anonymousClass59.contains(it.next())) {
                                    c = 4;
                                    break;
                                } else {
                                    c = 2;
                                    break;
                                }
                            case 4:
                                z = false;
                                c = 5;
                                break;
                            case 5:
                                return z;
                            case 6:
                                z = true;
                                c = 5;
                                break;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.59 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$ValuesCollection */
                @Override // java.util.Collection
                public final boolean isEmpty() {
                    boolean z = false;
                    char c = this.A00.A04() == 0 ? (char) 2 : (char) 4;
                    while (true) {
                        switch (c) {
                            case 2:
                                z = true;
                                c = 3;
                                break;
                            case 3:
                                return z;
                            case 4:
                                z = false;
                                c = 3;
                                break;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.59 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$ValuesCollection */
                @Override // java.util.Collection, java.lang.Iterable
                public final Iterator<V> iterator() {
                    return new AnonymousClass55(this.A00, 1);
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.59 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$ValuesCollection */
                @Override // java.util.Collection
                public final boolean remove(Object obj) {
                    AnonymousClass59<V> anonymousClass59 = this;
                    boolean z = false;
                    int iA06 = anonymousClass59.A00.A06(obj);
                    char c = iA06 >= 0 ? (char) 2 : (char) 4;
                    while (true) {
                        switch (c) {
                            case 2:
                                anonymousClass59 = anonymousClass59;
                                anonymousClass59.A00.A0E(iA06);
                                z = true;
                                c = 3;
                                break;
                            case 3:
                                return z;
                            case 4:
                                z = false;
                                c = 3;
                                break;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.59 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$ValuesCollection */
                @Override // java.util.Collection
                public final boolean removeAll(Collection<?> collection) {
                    AnonymousClass59<V> anonymousClass59 = this;
                    int iA04 = anonymousClass59.A00.A04();
                    boolean z = false;
                    int i = 0;
                    int i2 = 2;
                    while (true) {
                        switch (i2) {
                            case 2:
                                if (i >= iA04) {
                                    i2 = 6;
                                    break;
                                } else {
                                    i2 = 3;
                                    break;
                                }
                            case 3:
                                anonymousClass59 = anonymousClass59;
                                collection = collection;
                                Object cur = anonymousClass59.A00.A07(i, 1);
                                if (!collection.contains(cur)) {
                                    i2 = 5;
                                    break;
                                } else {
                                    i2 = 4;
                                    break;
                                }
                            case 4:
                                anonymousClass59 = anonymousClass59;
                                anonymousClass59.A00.A0E(i);
                                i--;
                                iA04--;
                                z = true;
                                i2 = 5;
                                break;
                            case 5:
                                i++;
                                i2 = 2;
                                break;
                            case 6:
                                return z;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.59 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$ValuesCollection */
                @Override // java.util.Collection
                public final boolean retainAll(Collection<?> collection) {
                    AnonymousClass59<V> anonymousClass59 = this;
                    int iA04 = anonymousClass59.A00.A04();
                    boolean z = false;
                    int i = 0;
                    int i2 = 2;
                    while (true) {
                        switch (i2) {
                            case 2:
                                if (i >= iA04) {
                                    i2 = 6;
                                    break;
                                } else {
                                    i2 = 3;
                                    break;
                                }
                            case 3:
                                anonymousClass59 = anonymousClass59;
                                collection = collection;
                                Object cur = anonymousClass59.A00.A07(i, 1);
                                if (!collection.contains(cur)) {
                                    i2 = 4;
                                    break;
                                } else {
                                    i2 = 5;
                                    break;
                                }
                            case 4:
                                anonymousClass59 = anonymousClass59;
                                anonymousClass59.A00.A0E(i);
                                i--;
                                iA04--;
                                z = true;
                                i2 = 5;
                                break;
                            case 5:
                                i++;
                                i2 = 2;
                                break;
                            case 6:
                                return z;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.59 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$ValuesCollection */
                @Override // java.util.Collection
                public final int size() {
                    return this.A00.A04();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.59 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$ValuesCollection */
                @Override // java.util.Collection
                public final Object[] toArray() {
                    return this.A00.A0G(1);
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.59 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$ValuesCollection */
                @Override // java.util.Collection
                public final <T> T[] toArray(T[] tArr) {
                    return (T[]) this.A00.A0H(tArr, 1);
                }
            };
        }
        return this.A02;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4z != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V> */
    public final Set<Map.Entry<K, V>> A0B() {
        if (this.A00 == null) {
            this.A00 = new Set<Map.Entry<K, V>>() { // from class: com.facebook.ads.redexgen.X.56
                /* JADX INFO: Access modifiers changed from: private */
                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                /* renamed from: A00, reason: merged with bridge method [inline-methods] */
                public final boolean add(Map.Entry<K, V> entry) {
                    throw new UnsupportedOperationException();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
                    AnonymousClass56<K, V> anonymousClass56 = this;
                    boolean z = false;
                    int iA04 = anonymousClass56.A00.A04();
                    Iterator<? extends Map.Entry<K, V>> it = collection.iterator();
                    char c = 2;
                    while (true) {
                        switch (c) {
                            case 2:
                                it = it;
                                if (!it.hasNext()) {
                                    c = 4;
                                    break;
                                } else {
                                    c = 3;
                                    break;
                                }
                            case 3:
                                anonymousClass56 = anonymousClass56;
                                it = it;
                                Map.Entry<K, V> next = it.next();
                                anonymousClass56.A00.A0F(next.getKey(), next.getValue());
                                c = 2;
                                break;
                            case 4:
                                anonymousClass56 = anonymousClass56;
                                if (iA04 == anonymousClass56.A00.A04()) {
                                    c = 7;
                                    break;
                                } else {
                                    c = 5;
                                    break;
                                }
                            case 5:
                                z = true;
                                c = 6;
                                break;
                            case 6:
                                return z;
                            case 7:
                                z = false;
                                c = 6;
                                break;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                public final void clear() {
                    this.A00.A0D();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean contains(Object obj) {
                    AnonymousClass56<K, V> anonymousClass56 = this;
                    Map.Entry entry = null;
                    int iA05 = 0;
                    boolean zA04 = false;
                    int index = !(obj instanceof Map.Entry) ? 2 : 3;
                    while (true) {
                        switch (index) {
                            case 2:
                                return zA04;
                            case 3:
                                anonymousClass56 = anonymousClass56;
                                obj = obj;
                                entry = (Map.Entry) obj;
                                iA05 = anonymousClass56.A00.A05(entry.getKey());
                                if (iA05 < 0) {
                                    index = 2;
                                    break;
                                } else {
                                    index = 4;
                                    break;
                                }
                            case 4:
                                anonymousClass56 = anonymousClass56;
                                entry = entry;
                                zA04 = AnonymousClass53.A04(anonymousClass56.A00.A07(iA05, 1), entry.getValue());
                                index = 2;
                                break;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean containsAll(Collection<?> collection) {
                    AnonymousClass56<K, V> anonymousClass56 = this;
                    boolean z = false;
                    Iterator<?> it = collection.iterator();
                    char c = 2;
                    while (true) {
                        switch (c) {
                            case 2:
                                it = it;
                                if (!it.hasNext()) {
                                    c = 6;
                                    break;
                                } else {
                                    c = 3;
                                    break;
                                }
                            case 3:
                                anonymousClass56 = anonymousClass56;
                                it = it;
                                if (!anonymousClass56.contains(it.next())) {
                                    c = 4;
                                    break;
                                } else {
                                    c = 2;
                                    break;
                                }
                            case 4:
                                z = false;
                                c = 5;
                                break;
                            case 5:
                                return z;
                            case 6:
                                z = true;
                                c = 5;
                                break;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean equals(Object obj) {
                    return AbstractC02814z.A03(this, obj);
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                public final int hashCode() {
                    AnonymousClass56<K, V> anonymousClass56 = this;
                    int result = 0;
                    Object objA07 = null;
                    int iHashCode = 0;
                    Object objA072 = null;
                    int i = 0;
                    int iA04 = anonymousClass56.A00.A04() - 1;
                    char c = 2;
                    while (true) {
                        switch (c) {
                            case 2:
                                if (iA04 < 0) {
                                    c = '\n';
                                    break;
                                } else {
                                    c = 3;
                                    break;
                                }
                            case 3:
                                anonymousClass56 = anonymousClass56;
                                objA072 = anonymousClass56.A00.A07(iA04, 0);
                                objA07 = anonymousClass56.A00.A07(iA04, 1);
                                if (objA072 != null) {
                                    c = '\t';
                                    break;
                                } else {
                                    c = 4;
                                    break;
                                }
                            case 4:
                                result = 0;
                                c = 5;
                                break;
                            case 5:
                                objA07 = objA07;
                                if (objA07 != null) {
                                    c = '\b';
                                    break;
                                } else {
                                    c = 6;
                                    break;
                                }
                            case 6:
                                iHashCode = 0;
                                c = 7;
                                break;
                            case 7:
                                i += iHashCode ^ result;
                                iA04--;
                                c = 2;
                                break;
                            case '\b':
                                objA07 = objA07;
                                iHashCode = objA07.hashCode();
                                c = 7;
                                break;
                            case '\t':
                                objA072 = objA072;
                                result = objA072.hashCode();
                                c = 5;
                                break;
                            case '\n':
                                return i;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean isEmpty() {
                    boolean z = false;
                    char c = this.A00.A04() == 0 ? (char) 2 : (char) 4;
                    while (true) {
                        switch (c) {
                            case 2:
                                z = true;
                                c = 3;
                                break;
                            case 3:
                                return z;
                            case 4:
                                z = false;
                                c = 3;
                                break;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection, java.lang.Iterable
                public final Iterator<Map.Entry<K, V>> iterator() {
                    return new AnonymousClass58(this.A00);
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean remove(Object obj) {
                    throw new UnsupportedOperationException();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean removeAll(Collection<?> collection) {
                    throw new UnsupportedOperationException();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean retainAll(Collection<?> collection) {
                    throw new UnsupportedOperationException();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                public final int size() {
                    return this.A00.A04();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                public final Object[] toArray() {
                    throw new UnsupportedOperationException();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.56 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$EntrySet */
                @Override // java.util.Set, java.util.Collection
                public final <T> T[] toArray(T[] tArr) {
                    throw new UnsupportedOperationException();
                }
            };
        }
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4z != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V> */
    public final Set<K> A0C() {
        if (this.A01 == null) {
            this.A01 = new Set<K>() { // from class: com.facebook.ads.redexgen.X.57
                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean add(K k) {
                    throw new UnsupportedOperationException();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean addAll(Collection<? extends K> collection) {
                    throw new UnsupportedOperationException();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final void clear() {
                    this.A00.A0D();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean contains(Object obj) {
                    boolean z = false;
                    char c = this.A00.A05(obj) >= 0 ? (char) 2 : (char) 4;
                    while (true) {
                        switch (c) {
                            case 2:
                                z = true;
                                c = 3;
                                break;
                            case 3:
                                return z;
                            case 4:
                                z = false;
                                c = 3;
                                break;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean containsAll(Collection<?> collection) {
                    return AbstractC02814z.A00(this.A00.A0A(), collection);
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean equals(Object obj) {
                    return AbstractC02814z.A03(this, obj);
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final int hashCode() {
                    AnonymousClass57<K> anonymousClass57 = this;
                    int iHashCode = 0;
                    Object objA07 = null;
                    int i = 0;
                    int result = anonymousClass57.A00.A04();
                    int i2 = result - 1;
                    int result2 = 2;
                    while (true) {
                        switch (result2) {
                            case 2:
                                if (i2 < 0) {
                                    result2 = 7;
                                    break;
                                } else {
                                    result2 = 3;
                                    break;
                                }
                            case 3:
                                anonymousClass57 = anonymousClass57;
                                objA07 = anonymousClass57.A00.A07(i2, 0);
                                if (objA07 != null) {
                                    result2 = 6;
                                    break;
                                } else {
                                    result2 = 4;
                                    break;
                                }
                            case 4:
                                iHashCode = 0;
                                result2 = 5;
                                break;
                            case 5:
                                i += iHashCode;
                                i2--;
                                result2 = 2;
                                break;
                            case 6:
                                objA07 = objA07;
                                iHashCode = objA07.hashCode();
                                result2 = 5;
                                break;
                            case 7:
                                return i;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean isEmpty() {
                    boolean z = false;
                    char c = this.A00.A04() == 0 ? (char) 2 : (char) 4;
                    while (true) {
                        switch (c) {
                            case 2:
                                z = true;
                                c = 3;
                                break;
                            case 3:
                                return z;
                            case 4:
                                z = false;
                                c = 3;
                                break;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection, java.lang.Iterable
                public final Iterator<K> iterator() {
                    return new AnonymousClass55(this.A00, 0);
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean remove(Object obj) {
                    AnonymousClass57<K> anonymousClass57 = this;
                    boolean z = false;
                    int iA05 = anonymousClass57.A00.A05(obj);
                    char c = iA05 >= 0 ? (char) 2 : (char) 4;
                    while (true) {
                        switch (c) {
                            case 2:
                                anonymousClass57 = anonymousClass57;
                                anonymousClass57.A00.A0E(iA05);
                                z = true;
                                c = 3;
                                break;
                            case 3:
                                return z;
                            case 4:
                                z = false;
                                c = 3;
                                break;
                        }
                    }
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean removeAll(Collection<?> collection) {
                    return AbstractC02814z.A01(this.A00.A0A(), collection);
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final boolean retainAll(Collection<?> collection) {
                    return AbstractC02814z.A02(this.A00.A0A(), collection);
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final int size() {
                    return this.A00.A04();
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final Object[] toArray() {
                    return this.A00.A0G(0);
                }

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.57 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$KeySet */
                @Override // java.util.Set, java.util.Collection
                public final <T> T[] toArray(T[] tArr) {
                    return (T[]) this.A00.A0H(tArr, 0);
                }
            };
        }
        return this.A01;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4z != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V> */
    public final Object[] A0G(int i) {
        AbstractC02814z<K, V> abstractC02814z = this;
        int iA04 = abstractC02814z.A04();
        Object[] objArr = new Object[iA04];
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 >= iA04) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    abstractC02814z = abstractC02814z;
                    objArr = objArr;
                    objArr[i2] = abstractC02814z.A07(i2, i);
                    i2++;
                    c = 2;
                    break;
                case 4:
                    return objArr;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4z != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V> */
    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T[] A0H(T[] tArr, int i) {
        AbstractC02814z<K, V> abstractC02814z = this;
        int i2 = 0;
        int iA04 = abstractC02814z.A04();
        char c = tArr.length < iA04 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), iA04);
                    c = 3;
                    break;
                case 3:
                    i2 = 0;
                    c = 4;
                    break;
                case 4:
                    if (i2 >= iA04) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    abstractC02814z = abstractC02814z;
                    tArr = tArr;
                    tArr[i2] = abstractC02814z.A07(i2, i);
                    i2++;
                    c = 4;
                    break;
                case 6:
                    tArr = tArr;
                    if (tArr.length <= iA04) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    tArr = (T[]) tArr;
                    tArr[iA04] = 0;
                    c = '\b';
                    break;
                case '\b':
                    return (T[]) tArr;
            }
        }
    }
}
