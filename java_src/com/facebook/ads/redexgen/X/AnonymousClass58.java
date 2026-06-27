package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.58, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass58<K, V> implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {
    private static byte[] A04;
    public int A00;
    public final /* synthetic */ AbstractC02814z A03;
    public boolean A02 = false;
    public int A01 = -1;

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 79);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A04 = new byte[]{68, 120, 121, 99, 48, 115, 127, 126, 100, 113, 121, 126, 117, 98, 48, 116, 127, 117, 99, 48, 126, 127, 100, 48, 99, 101, 96, 96, 127, 98, 100, 48, 98, 117, 100, 113, 121, 126, 121, 126, 119, 48, 93, 113, 96, 62, 85, 126, 100, 98, 105, 48, 127, 114, 122, 117, 115, 100, 99, 44};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.58 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$MapIterator */
    public AnonymousClass58(AbstractC02814z abstractC02814z) {
        this.A03 = abstractC02814z;
        this.A00 = abstractC02814z.A04() - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.58 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$MapIterator */
    @Override // java.util.Iterator
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final Map.Entry<K, V> next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.A01++;
        this.A02 = true;
        return this;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.58 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$MapIterator */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        AnonymousClass58<K, V> anonymousClass58 = this;
        Map.Entry entry = null;
        int i = 1;
        boolean z = 0;
        char c = !anonymousClass58.A02 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalStateException(A00(0, 59, 95));
                case 3:
                    obj = obj;
                    if (!(obj instanceof Map.Entry)) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    return z;
                case 5:
                    anonymousClass58 = anonymousClass58;
                    obj = obj;
                    z = 0;
                    z = 0;
                    entry = (Map.Entry) obj;
                    if (!AnonymousClass53.A04(entry.getKey(), anonymousClass58.A03.A07(anonymousClass58.A01, 0))) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    anonymousClass58 = anonymousClass58;
                    entry = entry;
                    if (!AnonymousClass53.A04(entry.getValue(), anonymousClass58.A03.A07(anonymousClass58.A01, i))) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    z = i;
                    c = 4;
                    break;
                case '\b':
                    i = z ? 1 : 0;
                    c = 7;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.58 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$MapIterator */
    @Override // java.util.Map.Entry
    public final K getKey() {
        if (!this.A02) {
            throw new IllegalStateException(A00(0, 59, 95));
        }
        return (K) this.A03.A07(this.A01, 0);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.58 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$MapIterator */
    @Override // java.util.Map.Entry
    public final V getValue() {
        if (!this.A02) {
            throw new IllegalStateException(A00(0, 59, 95));
        }
        return (V) this.A03.A07(this.A01, 1);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.58 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$MapIterator */
    @Override // java.util.Iterator
    public final boolean hasNext() {
        boolean z = false;
        char c = this.A01 < this.A00 ? (char) 2 : (char) 4;
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

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.58 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$MapIterator */
    @Override // java.util.Map.Entry
    public final int hashCode() {
        AnonymousClass58<K, V> anonymousClass58 = this;
        int iHashCode = 0;
        Object objA07 = null;
        Object objA072 = null;
        int iHashCode2 = 0;
        char c = !anonymousClass58.A02 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalStateException(A00(0, 59, 95));
                case 3:
                    anonymousClass58 = anonymousClass58;
                    iHashCode2 = 0;
                    objA07 = anonymousClass58.A03.A07(anonymousClass58.A01, 0);
                    objA072 = anonymousClass58.A03.A07(anonymousClass58.A01, 1);
                    if (objA07 != null) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    iHashCode = iHashCode2;
                    c = 5;
                    break;
                case 5:
                    objA072 = objA072;
                    if (objA072 != null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    return iHashCode2 ^ iHashCode;
                case 7:
                    objA072 = objA072;
                    iHashCode2 = objA072.hashCode();
                    c = 6;
                    break;
                case '\b':
                    objA07 = objA07;
                    iHashCode = objA07.hashCode();
                    c = 5;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.58 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$MapIterator */
    @Override // java.util.Iterator
    public final void remove() {
        if (!this.A02) {
            throw new IllegalStateException();
        }
        this.A03.A0E(this.A01);
        this.A01--;
        this.A00--;
        this.A02 = false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.58 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$MapIterator */
    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        if (!this.A02) {
            throw new IllegalStateException(A00(0, 59, 95));
        }
        return (V) this.A03.A08(this.A01, v);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.58 != com.facebook.ads.internal.androidx.support.v4.util.MapCollections<K, V>$MapIterator */
    public final String toString() {
        return getKey() + A00(59, 1, 94) + getValue();
    }
}
