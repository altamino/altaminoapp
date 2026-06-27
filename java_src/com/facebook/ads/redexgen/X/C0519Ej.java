package com.facebook.ads.redexgen.X;

import java.util.EnumSet;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ej, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0519Ej {
    private final int A00;
    private final InterfaceC0442Bk A01;
    private final EnumSet<EnumC0525Ep> A02;

    public C0519Ej(int i, EnumSet<EnumC0525Ep> enumSet, InterfaceC0442Bk interfaceC0442Bk) {
        this.A00 = i;
        this.A02 = enumSet;
        this.A01 = interfaceC0442Bk;
    }

    public final int A00() {
        return this.A00;
    }

    @Nullable
    public final InterfaceC0442Bk A01(EnumC0522Em enumC0522Em) {
        C0519Ej c0519Ej = this;
        InterfaceC0442Bk interfaceC0442Bk = null;
        char c = c0519Ej.A03(enumC0522Em) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0519Ej = c0519Ej;
                    interfaceC0442Bk = c0519Ej.A01;
                    c = 3;
                    break;
                case 3:
                    return interfaceC0442Bk;
                case 4:
                    interfaceC0442Bk = null;
                    c = 3;
                    break;
            }
        }
    }

    public final EnumSet<EnumC0525Ep> A02() {
        return this.A02;
    }

    public final boolean A03(EnumC0522Em enumC0522Em) {
        C0519Ej c0519Ej = this;
        boolean z = false;
        char c = FH.A0C(enumC0522Em) ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0519Ej = c0519Ej;
                    enumC0522Em = enumC0522Em;
                    if (!c0519Ej.A02.contains(EnumC0525Ep.A00(enumC0522Em.A03()))) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }
}
