package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class B6<T> {
    private final int A00;
    private final LinkedBlockingDeque<T> A01;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.B6 != com.facebook.ads.internal.botdetection.interval.buffer.CircularBuffer<T> */
    public B6(int i) {
        this.A01 = new LinkedBlockingDeque<>(i);
        this.A00 = i;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.B6 != com.facebook.ads.internal.botdetection.interval.buffer.CircularBuffer<T> */
    public final synchronized int A00() {
        return this.A01.remainingCapacity();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.B6 != com.facebook.ads.internal.botdetection.interval.buffer.CircularBuffer<T> */
    @Nullable
    public final synchronized T A01() {
        T tPeekFirst;
        if (!this.A01.isEmpty()) {
            tPeekFirst = this.A01.peekFirst();
        } else {
            tPeekFirst = null;
        }
        return tPeekFirst;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.B6 != com.facebook.ads.internal.botdetection.interval.buffer.CircularBuffer<T> */
    @Nullable
    public final synchronized T A02() {
        T tPeekLast;
        if (!this.A01.isEmpty()) {
            tPeekLast = this.A01.peekLast();
        } else {
            tPeekLast = null;
        }
        return tPeekLast;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.B6 != com.facebook.ads.internal.botdetection.interval.buffer.CircularBuffer<T> */
    public final synchronized List<T> A03() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<T> it = this.A01.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.B6 != com.facebook.ads.internal.botdetection.interval.buffer.CircularBuffer<T> */
    public final synchronized void A04(T t) {
        if (this.A00 > 0) {
            if (!this.A01.isEmpty() && A00() == 0) {
                this.A01.removeFirst();
            }
            this.A01.offer(t);
        }
    }
}
