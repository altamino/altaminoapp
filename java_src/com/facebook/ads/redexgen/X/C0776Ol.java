package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ol, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0776Ol extends AbstractC02102g<C0765Oa> {
    private static final int A04 = (int) (250.0f * OY.A01);
    private int A00 = 0;
    private boolean A01 = false;
    private final int A02;
    private final List<String> A03;

    public C0776Ol(List<String> list, int i) {
        this.A03 = list;
        this.A02 = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC02102g
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C0765Oa A0I(ViewGroup viewGroup, int i) {
        return new C0765Oa(new C0774Oj(viewGroup.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC02102g
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final void A0J(C0765Oa c0765Oa, int i) {
        C0776Ol c0776Ol = this;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        String str = c0776Ol.A03.get(i);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        char c = c0776Ol.A00 == 2 ? (char) 2 : (char) 11;
        while (true) {
            switch (c) {
                case 2:
                    c0776Ol = c0776Ol;
                    if (!c0776Ol.A01) {
                        c = 11;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    i2 = A04;
                    c = 4;
                    break;
                case 4:
                    if (i != 0) {
                        c = '\n';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    i3 = i2;
                    c = 6;
                    break;
                case 6:
                    c0776Ol = c0776Ol;
                    if (i < c0776Ol.A03() - 1) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0776Ol = c0776Ol;
                    i4 = c0776Ol.A02 * 4;
                    c = '\b';
                    break;
                case '\b':
                    C0765Oa c0765Oa2 = c0765Oa;
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = marginLayoutParams;
                    marginLayoutParams2.setMargins(i3, 0, i4, 0);
                    c0765Oa2.A0l().setLayoutParams(marginLayoutParams2);
                    c0765Oa2.A0l().A00(str);
                    return;
                case '\t':
                    c0776Ol = c0776Ol;
                    i4 = c0776Ol.A02;
                    c = '\b';
                    break;
                case '\n':
                    c0776Ol = c0776Ol;
                    i3 = c0776Ol.A02;
                    c = 6;
                    break;
                case 11:
                    c0776Ol = c0776Ol;
                    i2 = c0776Ol.A02 * 4;
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02102g
    public final int A03() {
        return this.A03.size();
    }

    public final void A0K(int i, boolean z) {
        this.A00 = i;
        this.A01 = z;
    }
}
