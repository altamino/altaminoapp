package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.68, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass68 {
    private float A00;
    private EnumC02865g A01;
    private Map<String, String> A02;

    public AnonymousClass68(EnumC02865g enumC02865g) {
        this(enumC02865g, 0.0f);
    }

    public AnonymousClass68(EnumC02865g enumC02865g, float f) {
        this(enumC02865g, f, null);
    }

    public AnonymousClass68(EnumC02865g enumC02865g, float f, Map<String, String> map) {
        this.A01 = enumC02865g;
        this.A00 = f;
        if (map != null) {
            this.A02 = map;
        } else {
            Map<String, String> windowParams = new HashMap<>();
            this.A02 = windowParams;
        }
    }

    public final float A00() {
        return this.A00;
    }

    public final int A01() {
        return this.A01.A02();
    }

    public final Map<String, String> A02() {
        return this.A02;
    }

    public final boolean A03() {
        boolean z = false;
        char c = this.A01 == EnumC02865g.A0I ? (char) 2 : (char) 4;
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
}
