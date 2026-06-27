package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class HU {
    private static final AtomicReference<HU> A0F = new AtomicReference<>();
    private final Context A00;
    private final C0544Fi A01;
    private final C0557Fv A02;
    private final C0561Fz A03;
    private final G4 A04;
    private final GC A05;
    private final GO A06;
    private final GT A07;
    private final C0563Gb A08;
    private final C0586Gy A09;
    private final H2 A0A;
    private final H4 A0B;
    private final HK A0C;
    private final HT A0D;
    private final List<InterfaceC0552Fq> A0E = new ArrayList();

    private HU(Context context, C0544Fi c0544Fi) {
        this.A00 = context;
        this.A01 = c0544Fi;
        this.A02 = new C0557Fv(this.A00);
        this.A03 = new C0561Fz(this.A00, c0544Fi.A0b());
        this.A04 = new G4(this.A00);
        this.A05 = new GC(this.A00);
        this.A06 = new GO(this.A00, c0544Fi.A0V());
        this.A07 = new GT(this.A00);
        this.A08 = new C0563Gb(this.A00);
        this.A09 = new C0586Gy(this.A00, this.A01.A0U());
        this.A0A = new H2(this.A00);
        this.A0B = new H4(this.A00);
        this.A0C = new HK(this.A00);
        this.A0D = new HT(this.A00);
        A01();
    }

    @Nullable
    public static HU A00(Context context, C0544Fi c0544Fi) {
        if (A0F.get() == null) {
            A0F.set(new HU(context, c0544Fi));
        }
        return A0F.get();
    }

    private void A01() {
        HU hu = this;
        char c = hu.A01.A0X() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    hu = hu;
                    hu.A0E.add(hu.A02.A07());
                    hu.A0E.add(hu.A02.A08());
                    hu.A0E.add(hu.A02.A09());
                    c = 3;
                    break;
                case 3:
                    hu = hu;
                    if (!hu.A01.A0Y()) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    hu = hu;
                    hu.A0E.add(hu.A03.A07());
                    hu.A0E.add(hu.A03.A09());
                    hu.A0E.add(hu.A03.A08());
                    c = 5;
                    break;
                case 5:
                    hu = hu;
                    if (!hu.A01.A0Z()) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    hu = hu;
                    hu.A0E.add(hu.A04.A08());
                    hu.A0E.add(hu.A04.A07());
                    hu.A0E.add(hu.A04.A09());
                    hu.A0E.add(hu.A04.A0A());
                    c = 7;
                    break;
                case 7:
                    hu = hu;
                    if (!hu.A01.A0a()) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    hu = hu;
                    hu.A0E.add(hu.A05.A07());
                    hu.A0E.add(hu.A05.A08());
                    hu.A0E.add(hu.A05.A09());
                    hu.A0E.add(hu.A05.A0A());
                    hu.A0E.add(hu.A05.A0B());
                    hu.A0E.add(hu.A05.A0C());
                    hu.A0E.add(hu.A05.A0D());
                    c = '\t';
                    break;
                case '\t':
                    hu = hu;
                    if (!hu.A01.A0c()) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    hu = hu;
                    hu.A0E.add(hu.A06.A07());
                    hu.A0E.add(hu.A06.A09());
                    hu.A0E.add(hu.A06.A0A());
                    hu.A0E.add(hu.A06.A0B());
                    hu.A0E.add(hu.A06.A0C());
                    hu.A0E.add(hu.A06.A0D());
                    hu.A0E.add(hu.A06.A0E());
                    hu.A0E.add(hu.A06.A0F());
                    hu.A0E.add(hu.A06.A0G());
                    hu.A0E.add(hu.A06.A0H());
                    hu.A0E.add(hu.A06.A08());
                    c = 11;
                    break;
                case 11:
                    hu = hu;
                    if (!hu.A01.A0e()) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    hu = hu;
                    hu.A0E.add(hu.A07.A07());
                    hu.A0E.add(hu.A07.A08());
                    hu.A0E.add(hu.A07.A09());
                    hu.A0E.add(hu.A07.A0A());
                    c = '\r';
                    break;
                case '\r':
                    hu = hu;
                    if (!hu.A01.A0g()) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    hu = hu;
                    hu.A0E.add(hu.A08.A08());
                    hu.A0E.add(hu.A08.A07());
                    hu.A0E.add(hu.A08.A09());
                    hu.A0E.add(hu.A08.A0B());
                    hu.A0E.add(hu.A08.A0A());
                    hu.A0E.add(hu.A08.A0C());
                    c = 15;
                    break;
                case 15:
                    hu = hu;
                    if (!hu.A01.A0j()) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    hu = hu;
                    hu.A0E.add(hu.A09.A07());
                    hu.A0E.add(hu.A09.A08());
                    hu.A0E.add(hu.A09.A09());
                    hu.A0E.add(hu.A09.A0A());
                    hu.A0E.add(hu.A09.A0B());
                    hu.A0E.add(hu.A09.A0C());
                    hu.A0E.add(hu.A09.A0D());
                    hu.A0E.add(hu.A09.A0E());
                    hu.A0E.add(hu.A09.A0F());
                    hu.A0E.add(hu.A09.A0G());
                    hu.A0E.add(hu.A09.A0H());
                    hu.A0E.add(hu.A09.A0I());
                    hu.A0E.add(hu.A09.A0J());
                    hu.A0E.add(hu.A09.A0K());
                    hu.A0E.add(hu.A09.A0L());
                    hu.A0E.add(hu.A09.A0M());
                    hu.A0E.add(hu.A09.A0N());
                    hu.A0E.add(hu.A09.A0O());
                    hu.A0E.add(hu.A09.A0P());
                    hu.A0E.add(hu.A09.A0Q());
                    hu.A0E.add(hu.A09.A0R());
                    hu.A0E.add(hu.A09.A0S());
                    c = 17;
                    break;
                case 17:
                    hu = hu;
                    if (!hu.A01.A0k()) {
                        c = 19;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    hu = hu;
                    hu.A0E.add(hu.A0A.A07());
                    hu.A0E.add(hu.A0A.A08());
                    hu.A0E.add(hu.A0A.A09());
                    c = 19;
                    break;
                case 19:
                    hu = hu;
                    if (!hu.A01.A0m()) {
                        c = 21;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    hu = hu;
                    hu.A0E.add(hu.A0B.A0D());
                    c = 21;
                    break;
                case 21:
                    hu = hu;
                    if (!hu.A01.A0n()) {
                        c = 25;
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    hu = hu;
                    hu.A0E.add(hu.A0C.A0F());
                    hu.A0E.add(hu.A0C.A0G());
                    hu.A0E.add(hu.A0C.A0H());
                    hu.A0E.add(hu.A0C.A0I());
                    hu.A0E.add(hu.A0C.A0J());
                    hu.A0E.add(hu.A0C.A0K());
                    if (!hu.A01.A0l()) {
                        c = 24;
                        break;
                    } else {
                        c = 23;
                        break;
                    }
                case 23:
                    hu = hu;
                    hu.A0E.add(hu.A0C.A0L());
                    c = 24;
                    break;
                case 24:
                    hu = hu;
                    hu.A0E.add(hu.A0C.A0M());
                    hu.A0E.add(hu.A0C.A0N());
                    hu.A0E.add(hu.A0C.A0O());
                    hu.A0E.add(hu.A0C.A0P());
                    hu.A0E.add(hu.A0C.A0R());
                    hu.A0E.add(hu.A0C.A0Q());
                    hu.A0E.add(hu.A0C.A0S());
                    hu.A0E.add(hu.A0C.A0T());
                    c = 25;
                    break;
                case 25:
                    hu = hu;
                    if (!hu.A01.A0o()) {
                        c = 27;
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 26:
                    hu = hu;
                    hu.A0E.add(hu.A0D.A07());
                    hu.A0E.add(hu.A0D.A08());
                    hu.A0E.add(hu.A0D.A09());
                    hu.A0E.add(hu.A0D.A0A());
                    hu.A0E.add(hu.A0D.A0B());
                    hu.A0E.add(hu.A0D.A0C());
                    hu.A0E.add(hu.A0D.A0D());
                    hu.A0E.add(hu.A0D.A0E());
                    c = 27;
                    break;
                case 27:
                    return;
            }
        }
    }

    public final List<InterfaceC0552Fq> A02() {
        return Collections.unmodifiableList(this.A0E);
    }
}
