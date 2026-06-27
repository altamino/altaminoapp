package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ConfigurationInfo;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"POSSIBLE_VARIABLE_NAME_TYPO"})
/* renamed from: com.facebook.ads.redexgen.X.Bx, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0455Bx extends C0454Bw {
    private static byte[] A04;

    @Nullable
    private ConfigurationInfo A00;
    private final ActivityManager.RunningAppProcessInfo A01;
    private final ActivityManager A02;
    private final Context A03;

    static {
        A04();
    }

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 42);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A04 = new byte[]{125, 127, 104, 117, 106, 117, 104, 101};
    }

    public C0455Bx(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        this.A03 = context;
        this.A02 = (ActivityManager) this.A03.getSystemService(A03(0, 8, 54));
        if (this.A02 != null) {
            this.A00 = this.A02.getDeviceConfigurationInfo();
        }
        this.A01 = new ActivityManager.RunningAppProcessInfo();
    }

    public final InterfaceC0442Bk A0G() {
        return new C0451Bt(this);
    }

    public final InterfaceC0442Bk A0H() {
        return new C0452Bu(this);
    }

    public final InterfaceC0442Bk A0I() {
        return new C0447Bp(this);
    }

    public final InterfaceC0442Bk A0J() {
        return new C0448Bq(this);
    }

    public final InterfaceC0442Bk A0K() {
        return new C0449Br(this);
    }

    public final InterfaceC0442Bk A0L() {
        return new C0446Bo(this);
    }

    public final InterfaceC0442Bk A0M() {
        return new C0450Bs(this);
    }

    public final InterfaceC0442Bk A0N() {
        return new C0445Bn(this);
    }

    public final InterfaceC0442Bk A0O() {
        return new C0453Bv(this);
    }

    public final InterfaceC0442Bk A0P() {
        return new C0443Bl(this);
    }

    public final InterfaceC0442Bk A0Q() {
        return new C0444Bm(this);
    }
}
