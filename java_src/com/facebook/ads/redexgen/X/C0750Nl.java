package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Nl, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0750Nl extends AnonymousClass27 {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ QL A02;
    public final /* synthetic */ EnumC03216q A03;

    public C0750Nl(QL ql, EnumC03216q enumC03216q, int i, int i2) {
        this.A02 = ql;
        this.A03 = enumC03216q;
        this.A01 = i;
        this.A00 = i2;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        C0750Nl c0750Nl = this;
        char c = c0750Nl.A03 == EnumC03216q.A07 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0750Nl = c0750Nl;
                    c0750Nl.A02.A0B(KW.A0n);
                    c0750Nl.A02.A0A.A02(QL.A0F);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0750Nl = c0750Nl;
                    if (c0750Nl.A03 != EnumC03216q.A03) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0750Nl = c0750Nl;
                    c0750Nl.A02.A0B(KW.A0i);
                    c0750Nl.A02.A03 = true;
                    c0750Nl.A02.A0A.A02(QL.A0D);
                    c = 3;
                    break;
                case 6:
                    c0750Nl = c0750Nl;
                    if (c0750Nl.A03 != EnumC03216q.A06) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0750Nl = c0750Nl;
                    c0750Nl.A02.A0B(KW.A0h);
                    c0750Nl.A02.A03 = true;
                    c0750Nl.A02.A07.removeCallbacksAndMessages(null);
                    c0750Nl.A02.A0A.A02(new LN(c0750Nl.A01, c0750Nl.A01));
                    c = 3;
                    break;
                case '\b':
                    c0750Nl = c0750Nl;
                    if (c0750Nl.A03 != EnumC03216q.A0A) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c0750Nl = c0750Nl;
                    c0750Nl.A02.A0B(KW.A0l);
                    c0750Nl.A02.A0A.A02(QL.A0E);
                    c0750Nl.A02.A07.removeCallbacksAndMessages(null);
                    c0750Nl.A02.A09();
                    c = 3;
                    break;
                case '\n':
                    c0750Nl = c0750Nl;
                    if (c0750Nl.A03 != EnumC03216q.A05) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c0750Nl = c0750Nl;
                    c0750Nl.A02.A0B(KW.A0k);
                    c0750Nl.A02.A0A.A02(new KF(c0750Nl.A00));
                    c0750Nl.A02.A07.removeCallbacksAndMessages(null);
                    c = 3;
                    break;
                case '\f':
                    c0750Nl = c0750Nl;
                    if (c0750Nl.A03 != EnumC03216q.A04) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c0750Nl = c0750Nl;
                    c0750Nl.A02.A0B(KW.A0j);
                    c0750Nl.A02.A0A.A02(QL.A0H);
                    c0750Nl.A02.A07.removeCallbacksAndMessages(null);
                    c = 3;
                    break;
                case 14:
                    c0750Nl = c0750Nl;
                    if (c0750Nl.A03 != EnumC03216q.A09) {
                        c = 3;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c0750Nl = c0750Nl;
                    c0750Nl.A02.A0B(KW.A0h);
                    c0750Nl.A02.A03 = true;
                    c0750Nl.A02.A07.removeCallbacksAndMessages(null);
                    c0750Nl.A02.A0A.A02(new LN(c0750Nl.A00, c0750Nl.A01));
                    c = 3;
                    break;
            }
        }
    }
}
