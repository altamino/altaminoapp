package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.TelephonyManager;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"POSSIBLE_VARIABLE_NAME_TYPO"})
/* loaded from: assets/assets/audience_network.dex */
public final class EV extends C0454Bw {
    private static byte[] A01;
    private final TelephonyManager A00;

    static {
        A04();
    }

    private static String A03(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_UNKNOWN);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A01 = new byte[]{20, 12, 19, 18, 9};
    }

    public EV(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        this.A00 = (TelephonyManager) context.getSystemService(A03(0, 5, 63));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int A00(CellInfo cellInfo) {
        int level = 0;
        char c = cellInfo == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new NullPointerException();
                case 3:
                    if (Build.VERSION.SDK_INT < 18) {
                        c = 14;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    cellInfo = cellInfo;
                    if (!(cellInfo instanceof CellInfoCdma)) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    cellInfo = cellInfo;
                    level = ((CellInfoCdma) cellInfo).getCellSignalStrength().getLevel();
                    c = 6;
                    break;
                case 6:
                    return level;
                case 7:
                    cellInfo = cellInfo;
                    if (!(cellInfo instanceof CellInfoGsm)) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    cellInfo = cellInfo;
                    level = ((CellInfoGsm) cellInfo).getCellSignalStrength().getLevel();
                    c = 6;
                    break;
                case '\t':
                    cellInfo = cellInfo;
                    if (!(cellInfo instanceof CellInfoLte)) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    cellInfo = cellInfo;
                    level = ((CellInfoLte) cellInfo).getCellSignalStrength().getLevel();
                    c = 6;
                    break;
                case 11:
                    cellInfo = cellInfo;
                    if (!(cellInfo instanceof CellInfoWcdma)) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    cellInfo = cellInfo;
                    level = ((CellInfoWcdma) cellInfo).getCellSignalStrength().getLevel();
                    c = 6;
                    break;
                case '\r':
                    throw new UnsupportedOperationException(cellInfo.getClass().getSimpleName());
                case 14:
                    throw new UnsupportedOperationException();
            }
        }
    }

    public final InterfaceC0442Bk A0G() {
        return new EL(this);
    }

    @SuppressLint({"MissingPermission", "CatchGeneralException"})
    public final InterfaceC0442Bk A0H() {
        return new EM(this);
    }

    public final InterfaceC0442Bk A0I() {
        return new EQ(this);
    }

    public final InterfaceC0442Bk A0J() {
        return new ER(this);
    }

    public final InterfaceC0442Bk A0K() {
        return new EP(this);
    }

    public final InterfaceC0442Bk A0L() {
        return new EO(this);
    }

    public final InterfaceC0442Bk A0M() {
        return new EU(this);
    }

    public final InterfaceC0442Bk A0N() {
        return new EI(this);
    }

    public final InterfaceC0442Bk A0O() {
        return new ES(this);
    }

    public final InterfaceC0442Bk A0P() {
        return new ET(this);
    }

    public final InterfaceC0442Bk A0Q() {
        return new EJ(this);
    }

    public final InterfaceC0442Bk A0R() {
        return new EK(this);
    }

    @SuppressLint({"MissingPermission", "CatchGeneralException"})
    public final InterfaceC0442Bk A0S() {
        return new EN(this);
    }
}
