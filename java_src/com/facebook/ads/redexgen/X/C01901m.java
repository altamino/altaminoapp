package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdPlacementType;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1m, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C01901m {
    private static InterfaceC01851h A00;

    public final InterfaceC01851h A00(AdPlacementType adPlacementType) {
        InterfaceC01851h anonymousClass26 = null;
        char c = A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass26 = A00;
                    c = 3;
                    break;
                case 3:
                    return anonymousClass26;
                case 4:
                    adPlacementType = adPlacementType;
                    switch (C01891l.A00[adPlacementType.ordinal()]) {
                        case 1:
                            c = 6;
                            break;
                        case 2:
                            c = 7;
                            break;
                        case 3:
                            c = '\b';
                            break;
                        case 4:
                            c = '\t';
                            break;
                        case 5:
                            c = '\n';
                            break;
                        case 6:
                            c = 11;
                            break;
                        default:
                            c = 5;
                            break;
                    }
                case 5:
                    anonymousClass26 = null;
                    c = 3;
                    break;
                case 6:
                    anonymousClass26 = new C01961s();
                    c = 3;
                    break;
                case 7:
                    anonymousClass26 = new AnonymousClass26();
                    c = 3;
                    break;
                case '\b':
                    anonymousClass26 = new AnonymousClass29();
                    c = 3;
                    break;
                case '\t':
                    anonymousClass26 = new AnonymousClass29() { // from class: com.facebook.ads.redexgen.X.2A
                        @Override // com.facebook.ads.redexgen.X.AnonymousClass29, com.facebook.ads.redexgen.X.InterfaceC01851h
                        public final AdPlacementType A3d() {
                            return AdPlacementType.NATIVE_BANNER;
                        }
                    };
                    c = 3;
                    break;
                case '\n':
                    anonymousClass26 = new AnonymousClass24();
                    c = 3;
                    break;
                case 11:
                    anonymousClass26 = new C2H();
                    c = 3;
                    break;
            }
        }
    }
}
