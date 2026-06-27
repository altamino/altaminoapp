package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.net.Socket;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class N0 {
    private final InterfaceC0723Mk A00;
    private final C0726Mn A01;
    private final String A02;
    private volatile C0730Mr A05;
    private final AtomicInteger A04 = new AtomicInteger(0);
    private final List<InterfaceC0723Mk> A03 = new CopyOnWriteArrayList();

    public N0(String str, C0726Mn c0726Mn) {
        this.A02 = (String) N3.A00(str);
        this.A01 = (C0726Mn) N3.A00(c0726Mn);
        this.A00 = new HandlerC0738Mz(str, this.A03);
    }

    private C0730Mr A00() throws C0724Ml {
        C0730Mr c0730Mr = new C0730Mr(new N1(this.A02), new N9(this.A01.A00(this.A02), this.A01.A00));
        c0730Mr.A0G(this.A00);
        return c0730Mr;
    }

    private synchronized void A01() {
        if (this.A04.decrementAndGet() <= 0) {
            this.A05.A0E();
            this.A05 = null;
        }
    }

    private synchronized void A02() throws C0724Ml {
        this.A05 = this.A05 == null ? A00() : this.A05;
    }

    public final int A03() {
        return this.A04.get();
    }

    public final void A04() {
        this.A03.clear();
        if (this.A05 != null) {
            this.A05.A0G(null);
            this.A05.A0E();
            this.A05 = null;
        }
        this.A04.set(0);
    }

    public final void A05(C0728Mp c0728Mp, Socket socket) throws IOException, C0724Ml {
        A02();
        try {
            this.A04.incrementAndGet();
            this.A05.A0H(c0728Mp, socket);
        } finally {
            A01();
        }
    }
}
