package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.os.Process;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"POSSIBLE_VARIABLE_NAME_TYPO"})
/* renamed from: com.facebook.ads.redexgen.X.Ck, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0468Ck extends C0454Bw {
    private static byte[] A01;

    @Nullable
    private final BluetoothAdapter A00;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 13);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{-48, -35, -45, -31, -34, -40, -45, -99, -33, -44, -31, -36, -40, -30, -30, -40, -34, -35, -99, -79, -69, -60, -76, -61, -66, -66, -61, -73};
    }

    public C0468Ck(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        this.A00 = A03(context) ? BluetoothAdapter.getDefaultAdapter() : null;
    }

    private static boolean A03(Context context) {
        boolean z = false;
        char c = context.checkPermission(A01(0, 28, 98), Process.myPid(), Process.myUid()) == 0 ? (char) 2 : (char) 4;
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

    @SuppressLint({"MissingPermission", "CatchGeneralException"})
    public final InterfaceC0442Bk A0G() {
        return new C0463Cf(this);
    }

    @SuppressLint({"MissingPermission", "CatchGeneralException"})
    public final InterfaceC0442Bk A0H() {
        return new C0464Cg(this);
    }

    @SuppressLint({"MissingPermission"})
    public final InterfaceC0442Bk A0I() {
        return new C0465Ch(this);
    }
}
