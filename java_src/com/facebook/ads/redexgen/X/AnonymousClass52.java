package com.facebook.ads.redexgen.X;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.52, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass52<K, V> extends AnonymousClass51<K, V> implements Map<K, V> {
    public AbstractC02814z<K, V> A00;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.52 != com.facebook.ads.internal.androidx.support.v4.util.ArrayMap<K, V> */
    private AbstractC02814z<K, V> A00() {
        if (this.A00 == null) {
            this.A00 = new AbstractC02814z<K, V>() { // from class: com.facebook.ads.redexgen.X.50
                @Override // com.facebook.ads.redexgen.X.AbstractC02814z
                public final int A04() {
                    return ((AnonymousClass51) this.A00).A00;
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC02814z
                public final int A05(Object obj) {
                    return this.A00.A08(obj);
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC02814z
                public final int A06(Object obj) {
                    return this.A00.A07(obj);
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC02814z
                public final Object A07(int i, int i2) {
                    return this.A00.A02[(i << 1) + i2];
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC02814z
                public final V A08(int i, V v) {
                    V value = this.A00.A0C(i, v);
                    return value;
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC02814z
                public final Map<K, V> A0A() {
                    return this.A00;
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC02814z
                public final void A0D() {
                    this.A00.clear();
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC02814z
                public final void A0E(int i) {
                    this.A00.A0A(i);
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC02814z
                public final void A0F(K k, V v) {
                    this.A00.put(k, v);
                }
            };
        }
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.52 != com.facebook.ads.internal.androidx.support.v4.util.ArrayMap<K, V> */
    @Override // java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return A00().A0B();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.52 != com.facebook.ads.internal.androidx.support.v4.util.ArrayMap<K, V> */
    @Override // java.util.Map
    public final Set<K> keySet() {
        return A00().A0C();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.52 != com.facebook.ads.internal.androidx.support.v4.util.ArrayMap<K, V> */
    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        AnonymousClass52 anonymousClass52 = this;
        anonymousClass52.A0D(((AnonymousClass51) anonymousClass52).A00 + map.size());
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
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
                    anonymousClass52 = anonymousClass52;
                    it = it;
                    Map.Entry<? extends K, ? extends V> next = it.next();
                    anonymousClass52.put(next.getKey(), next.getValue());
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.52 != com.facebook.ads.internal.androidx.support.v4.util.ArrayMap<K, V> */
    @Override // java.util.Map
    public final Collection<V> values() {
        return A00().A09();
    }
}
