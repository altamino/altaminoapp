package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class IN extends IM<String> {
    private static byte[] A08;
    public final /* synthetic */ double A00;
    public final /* synthetic */ double A01;
    public final /* synthetic */ int A02;
    public final /* synthetic */ IP A03;
    public final /* synthetic */ String A04;
    public final /* synthetic */ String A05;
    public final /* synthetic */ String A06;
    public final /* synthetic */ Map A07;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 114);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A08 = new byte[]{35, 32, 51, 32, 33, 32, 50, 36};
    }

    public IN(IP ip, String str, int i, String str2, double d, double d2, String str3, Map map) {
        this.A03 = ip;
        this.A05 = str;
        this.A02 = i;
        this.A06 = str2;
        this.A01 = d;
        this.A00 = d2;
        this.A04 = str3;
        this.A07 = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.facebook.ads.redexgen.X.IL
    @Nullable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final String A03() {
        String strA0F;
        IN in = this;
        if (TextUtils.isEmpty(in.A05)) {
            return null;
        }
        IP.A07.lock();
        SQLiteDatabase sQLiteDatabaseA0E = null;
        try {
            try {
                sQLiteDatabaseA0E = in.A03.A0E();
                sQLiteDatabaseA0E.beginTransaction();
                strA0F = in.A03.A02.A0F(in.A03.A03.A0D(in.A05), in.A02, in.A06, in.A01, in.A00, in.A04, in.A07);
                sQLiteDatabaseA0E.setTransactionSuccessful();
                IN in2 = in;
                if (sQLiteDatabaseA0E != null) {
                    in2 = in;
                    if (sQLiteDatabaseA0E.isOpen()) {
                        try {
                            in2 = in;
                            if (sQLiteDatabaseA0E.inTransaction()) {
                                sQLiteDatabaseA0E.endTransaction();
                                in2 = in;
                            }
                        } catch (Exception e) {
                            Context context = in.A03.A01;
                            String strA01 = A01(0, 8, 77);
                            int i = P8.A0k;
                            P7.A07(context, strA01, i, new PA(e));
                            in2 = i;
                        }
                    }
                }
                IP.A07.unlock();
                in = in2;
            } catch (Throwable th) {
                if (sQLiteDatabaseA0E != null && sQLiteDatabaseA0E.isOpen()) {
                    try {
                        if (sQLiteDatabaseA0E.inTransaction()) {
                            sQLiteDatabaseA0E.endTransaction();
                        }
                    } catch (Exception e2) {
                        P7.A07(in.A03.A01, A01(0, 8, 77), P8.A0k, new PA(e2));
                    }
                }
                IP.A07.unlock();
                throw th;
            }
        } catch (Exception e3) {
            in.A01(IR.A05);
            P7.A07(in.A03.A01, A01(0, 8, 77), P8.A0j, new PA(e3));
            IN in3 = in;
            if (sQLiteDatabaseA0E != null) {
                in3 = in;
                if (sQLiteDatabaseA0E.isOpen()) {
                    try {
                        in3 = in;
                        if (sQLiteDatabaseA0E.inTransaction()) {
                            sQLiteDatabaseA0E.endTransaction();
                            in3 = in;
                        }
                    } catch (Exception e4) {
                        Context context2 = in.A03.A01;
                        String strA012 = A01(0, 8, 77);
                        int i2 = P8.A0k;
                        P7.A07(context2, strA012, i2, new PA(e4));
                        in3 = i2;
                    }
                }
            }
            IP.A07.unlock();
            strA0F = null;
            in = in3;
        }
        return strA0F;
    }
}
