package com.facebook.ads.redexgen.X;

import com.facebook.ads.redexgen.X.AbstractC01971t;
import com.facebook.ads.redexgen.X.C0660Jv;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Jw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0661Jw<T extends AbstractC01971t, E extends C0660Jv> {
    private final Map<Class<E>, List<WeakReference<T>>> A00 = new HashMap();
    private final Queue<E> A01 = new ArrayDeque();

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Jw != com.facebook.ads.internal.events.EventBus<T extends com.facebook.ads.redexgen.X.1t, E extends com.facebook.ads.redexgen.X.Jv> */
    private void A00(E e) {
        C0661Jw<T, E> c0661Jw = this;
        List<WeakReference<T>> subscribers = null;
        Iterator it = null;
        AbstractC01971t abstractC01971t = null;
        char c = c0661Jw.A00 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0661Jw = c0661Jw;
                    e = e;
                    subscribers = c0661Jw.A00.get(e.getClass());
                    if (subscribers == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0661Jw = c0661Jw;
                    subscribers = subscribers;
                    c0661Jw.A01(subscribers);
                    if (!subscribers.isEmpty()) {
                        c = 5;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 5:
                    subscribers = subscribers;
                    it = new ArrayList(subscribers).iterator();
                    c = 6;
                    break;
                case 6:
                    it = it;
                    if (!it.hasNext()) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    it = it;
                    abstractC01971t = (AbstractC01971t) ((WeakReference) it.next()).get();
                    if (abstractC01971t == null) {
                        c = 6;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    e = e;
                    abstractC01971t = abstractC01971t;
                    if (!abstractC01971t.A00(e)) {
                        c = 6;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    e = e;
                    abstractC01971t = abstractC01971t;
                    abstractC01971t.A03(e);
                    c = 6;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Jw != com.facebook.ads.internal.events.EventBus<T extends com.facebook.ads.redexgen.X.1t, E extends com.facebook.ads.redexgen.X.Jv> */
    private void A01(List<WeakReference<T>> list) {
        WeakReference<T> weakReference = null;
        int writePtr = 0;
        int i = 0;
        int size = 0;
        char c = list != null ? (char) 2 : '\n';
        while (true) {
            switch (c) {
                case 2:
                    i = 0;
                    writePtr = 0;
                    c = 3;
                    break;
                case 3:
                    list = list;
                    if (writePtr >= list.size()) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    list = list;
                    weakReference = list.get(writePtr);
                    if (weakReference.get() == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    list = list;
                    weakReference = weakReference;
                    list.set(i, weakReference);
                    i++;
                    c = 6;
                    break;
                case 6:
                    writePtr++;
                    c = 3;
                    break;
                case 7:
                    list = list;
                    size = list.size() - 1;
                    c = '\b';
                    break;
                case '\b':
                    if (size < i) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    list = list;
                    list.remove(size);
                    size--;
                    c = '\b';
                    break;
                case '\n':
                    return;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Jw != com.facebook.ads.internal.events.EventBus<T extends com.facebook.ads.redexgen.X.1t, E extends com.facebook.ads.redexgen.X.Jv> */
    public final synchronized void A02(E e) {
        if (this.A01.isEmpty()) {
            this.A01.add(e);
            while (!this.A01.isEmpty()) {
                E event = this.A01.peek();
                A00(event);
                this.A01.remove();
            }
        } else {
            this.A01.add(e);
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Jw != com.facebook.ads.internal.events.EventBus<T extends com.facebook.ads.redexgen.X.1t, E extends com.facebook.ads.redexgen.X.Jv> */
    public final synchronized void A03(T... tArr) {
        if (tArr != null) {
            for (T t : tArr) {
                A05(t);
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Jw != com.facebook.ads.internal.events.EventBus<T extends com.facebook.ads.redexgen.X.1t, E extends com.facebook.ads.redexgen.X.Jv> */
    public final synchronized void A04(T... tArr) {
        if (tArr != null) {
            for (T t : tArr) {
                A06(t);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
    
        r4 = r3.add(new java.lang.ref.WeakReference<>(r6));
     */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Jw != com.facebook.ads.internal.events.EventBus<T extends com.facebook.ads.redexgen.X.1t, E extends com.facebook.ads.redexgen.X.Jv> */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean A05(T r6) {
        /*
            r5 = this;
            r4 = 0
            monitor-enter(r5)
            if (r6 != 0) goto L6
        L4:
            monitor-exit(r5)
            return r4
        L6:
            java.lang.Class r2 = r6.A01()     // Catch: java.lang.Throwable -> L48
            java.util.Map<java.lang.Class<E extends com.facebook.ads.redexgen.X.Jv>, java.util.List<java.lang.ref.WeakReference<T extends com.facebook.ads.redexgen.X.1t>>> r0 = r5.A00     // Catch: java.lang.Throwable -> L48
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.Throwable -> L48
            if (r0 != 0) goto L1c
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L48
            r1.<init>()     // Catch: java.lang.Throwable -> L48
            java.util.Map<java.lang.Class<E extends com.facebook.ads.redexgen.X.Jv>, java.util.List<java.lang.ref.WeakReference<T extends com.facebook.ads.redexgen.X.1t>>> r0 = r5.A00     // Catch: java.lang.Throwable -> L48
            r0.put(r2, r1)     // Catch: java.lang.Throwable -> L48
        L1c:
            java.util.Map<java.lang.Class<E extends com.facebook.ads.redexgen.X.Jv>, java.util.List<java.lang.ref.WeakReference<T extends com.facebook.ads.redexgen.X.1t>>> r0 = r5.A00     // Catch: java.lang.Throwable -> L48
            java.lang.Object r3 = r0.get(r2)     // Catch: java.lang.Throwable -> L48
            java.util.List r3 = (java.util.List) r3     // Catch: java.lang.Throwable -> L48
            r5.A01(r3)     // Catch: java.lang.Throwable -> L48
            r2 = 0
            int r1 = r3.size()     // Catch: java.lang.Throwable -> L48
        L2c:
            if (r2 >= r1) goto L3e
            java.lang.Object r0 = r3.get(r2)     // Catch: java.lang.Throwable -> L48
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0     // Catch: java.lang.Throwable -> L48
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L48
            if (r0 != r6) goto L3b
            goto L4
        L3b:
            int r2 = r2 + 1
            goto L2c
        L3e:
            java.lang.ref.WeakReference r0 = new java.lang.ref.WeakReference     // Catch: java.lang.Throwable -> L48
            r0.<init>(r6)     // Catch: java.lang.Throwable -> L48
            boolean r4 = r3.add(r0)     // Catch: java.lang.Throwable -> L48
            goto L4
        L48:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0661Jw.A05(com.facebook.ads.redexgen.X.1t):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        r3.get(r2).clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0035, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Jw != com.facebook.ads.internal.events.EventBus<T extends com.facebook.ads.redexgen.X.1t, E extends com.facebook.ads.redexgen.X.Jv> */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean A06(@android.support.annotation.Nullable T r6) {
        /*
            r5 = this;
            r4 = 0
            monitor-enter(r5)
            if (r6 != 0) goto L6
        L4:
            monitor-exit(r5)
            return r4
        L6:
            java.util.Map<java.lang.Class<E extends com.facebook.ads.redexgen.X.Jv>, java.util.List<java.lang.ref.WeakReference<T extends com.facebook.ads.redexgen.X.1t>>> r1 = r5.A00     // Catch: java.lang.Throwable -> L37
            java.lang.Class r0 = r6.A01()     // Catch: java.lang.Throwable -> L37
            java.lang.Object r3 = r1.get(r0)     // Catch: java.lang.Throwable -> L37
            java.util.List r3 = (java.util.List) r3     // Catch: java.lang.Throwable -> L37
            if (r3 != 0) goto L15
            goto L4
        L15:
            r2 = 0
            int r1 = r3.size()     // Catch: java.lang.Throwable -> L37
        L1a:
            if (r2 >= r1) goto L4
            java.lang.Object r0 = r3.get(r2)     // Catch: java.lang.Throwable -> L37
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0     // Catch: java.lang.Throwable -> L37
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L37
            if (r0 != r6) goto L32
            java.lang.Object r0 = r3.get(r2)     // Catch: java.lang.Throwable -> L37
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0     // Catch: java.lang.Throwable -> L37
            r0.clear()     // Catch: java.lang.Throwable -> L37
            goto L35
        L32:
            int r2 = r2 + 1
            goto L1a
        L35:
            r4 = 1
            goto L4
        L37:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0661Jw.A06(com.facebook.ads.redexgen.X.1t):boolean");
    }
}
