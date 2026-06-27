package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.util.Log;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"POSSIBLE_VARIABLE_NAME_TYPO"})
/* renamed from: com.facebook.ads.redexgen.X.Dz, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0509Dz extends C0454Bw {
    private static byte[] A07;
    private static final String A08;
    private final Context A00;

    @Nullable
    private final PackageInfo A01;

    @Nullable
    private final PackageManager A02;
    private final C0430Ay A03;

    @Nullable
    private final ActivityInfo[] A04;

    @Nullable
    private final ServiceInfo[] A05;

    @Nullable
    private final String[] A06;

    private static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 48);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A07 = new byte[]{122, 94, 68, 68, 94, 89, 80, 23, 103, 86, 84, 92, 86, 80, 82, 23, 103, 82, 69, 90, 94, 68, 68, 94, 88, 89, 68};
    }

    static {
        A06();
        A08 = C0509Dz.class.getSimpleName();
    }

    public C0509Dz(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        this.A00 = context;
        this.A03 = c0430Ay;
        this.A01 = A01(context);
        this.A02 = context.getPackageManager();
        this.A04 = A07(context);
        this.A05 = A09(context);
        this.A06 = A0B(context);
    }

    @Nullable
    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    private PackageInfo A01(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(A08, A05(0, 27, 7), e);
            return null;
        }
    }

    @Nullable
    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    private ActivityInfo[] A07(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 1).activities;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(A08, A05(0, 27, 7), e);
            return null;
        }
    }

    @Nullable
    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    private ServiceInfo[] A09(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 4).services;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(A08, A05(0, 27, 7), e);
            return null;
        }
    }

    @Nullable
    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    private String[] A0B(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(A08, A05(0, 27, 7), e);
            return null;
        }
    }

    public final InterfaceC0442Bk A0G() {
        return new C0507Dx(this);
    }

    public final InterfaceC0442Bk A0H() {
        return new C0506Dw(this);
    }

    public final InterfaceC0442Bk A0I() {
        return new C0508Dy(this);
    }

    public final InterfaceC0442Bk A0J() {
        return new C0505Dv(this);
    }

    public final InterfaceC0442Bk A0K() {
        return new C0500Dq(this);
    }

    public final InterfaceC0442Bk A0L() {
        return new C0496Dm(this);
    }

    public final InterfaceC0442Bk A0M() {
        return new C0501Dr(this);
    }

    public final InterfaceC0442Bk A0N() {
        return new C0504Du(this);
    }

    public final InterfaceC0442Bk A0O() {
        return new C0502Ds(this);
    }

    public final InterfaceC0442Bk A0P() {
        return new C0503Dt(this);
    }

    public final InterfaceC0442Bk A0Q() {
        return new C0499Dp(this);
    }

    public final InterfaceC0442Bk A0R() {
        return new C0498Do(this);
    }

    public final InterfaceC0442Bk A0S() {
        return new C0497Dn(this);
    }

    public final InterfaceC0442Bk A0T() {
        return new C0494Dk(this);
    }

    public final InterfaceC0442Bk A0U() {
        return new C0493Dj(this);
    }

    public final InterfaceC0442Bk A0V() {
        return new C0495Dl(this);
    }

    public final InterfaceC0442Bk A0W() {
        return new C0491Dh(this);
    }

    public final InterfaceC0442Bk A0X() {
        return new C0490Dg(this);
    }

    public final InterfaceC0442Bk A0Y() {
        return new C0492Di(this);
    }
}
