package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2h, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC02112h extends AbstractC02102g<PT> {
    private static final int A04 = (int) (4.0f * OY.A01);

    @Nullable
    private InterfaceC02092f A00;
    public final List<L8> A01;
    private final int A02;
    private final AbstractC02052b A03 = new AbstractC02052b() { // from class: com.facebook.ads.redexgen.X.2c
        @Override // com.facebook.ads.redexgen.X.AbstractC02052b
        public final void A02() {
            if (this.A00.A00 == null) {
                return;
            }
            this.A00.A00.A51();
        }
    };

    public AbstractC02112h(C0805Po c0805Po, List<L8> list) {
        this.A02 = c0805Po.getChildSpacing();
        this.A01 = list;
    }

    private ViewGroup.MarginLayoutParams A00(int i) {
        AbstractC02112h abstractC02112h = this;
        int i2 = 0;
        int i3 = 0;
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        char c = i == 0 ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    abstractC02112h = abstractC02112h;
                    i3 = abstractC02112h.A02 * 2;
                    c = 3;
                    break;
                case 3:
                    abstractC02112h = abstractC02112h;
                    if (i < abstractC02112h.A01.size() - 1) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    abstractC02112h = abstractC02112h;
                    i2 = abstractC02112h.A02 * 2;
                    c = 5;
                    break;
                case 5:
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = marginLayoutParams;
                    marginLayoutParams2.setMargins(i3, 0, i2, 0);
                    return marginLayoutParams2;
                case 6:
                    abstractC02112h = abstractC02112h;
                    i2 = abstractC02112h.A02;
                    c = 5;
                    break;
                case 7:
                    abstractC02112h = abstractC02112h;
                    i3 = abstractC02112h.A02;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02102g
    public final int A03() {
        return this.A01.size();
    }

    public final void A0K(ImageView imageView, final int i) {
        final L8 l8 = this.A01.get(i);
        L9 adCoverImage = l8.getAdCoverImage();
        if (adCoverImage != null) {
            SM smA04 = new SM(imageView).A04();
            smA04.A06(new InterfaceC02072d() { // from class: com.facebook.ads.redexgen.X.2e
                @Override // com.facebook.ads.redexgen.X.InterfaceC02072d
                public final void A5P(boolean z) {
                    if (i == 0) {
                        l8.A1I(this.A01.A03);
                    }
                    l8.A1L(z, true);
                }
            });
            smA04.A07(adCoverImage.getUrl());
        }
    }

    public final void A0L(InterfaceC02092f interfaceC02092f) {
        this.A00 = interfaceC02092f;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02102g
    /* renamed from: A0M, reason: merged with bridge method [inline-methods] */
    public void A0J(PT pt, int i) {
        pt.A0l().setLayoutParams(A00(i));
    }
}
