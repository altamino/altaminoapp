package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.facebook.ads.internal.util.process.ProcessUtils;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class IQ extends SQLiteOpenHelper {
    private static byte[] A01;
    public static final String A02;
    private final IP A00;

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 4);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{5, 7, 20, 18, 24, 20, 117, 51, 58, 39, 48, 60, 50, 59, 10, 62, 48, 44, 38, 117, 104, 117, 26, 27, 110, 78, 67, 91, 74, 93, 47, 91, 78, 77, 67, 74, 47, 106, 121, 106, 97, 123, 124, 47, 78, 75, 75, 47, 76, 64, 67, 90, 66, 65, 47, 62, 59, 44, 122, 44, 113, 59, 61, 27, 127, 126, 125, 122, 110, 119, 111, 27, 11, 7, 66, 103, 71, 98, 119, 98, 97, 98, 112, 102, 75, 102, 111, 115, 102, 113, 35, 96, 98, 109, 35, 109, 108, 119, 35, 97, 102, 35, 109, 118, 111, 111, 82, 68, 89, 70, 54, 66, 87, 84, 90, 83, 54, 95, 80, 54, 83, 78, 95, 69, 66, 69, 54, 117, 100, 119, 101, 126, 115, 101};
    }

    static {
        A02();
        A02 = IQ.class.getSimpleName();
    }

    public IQ(Context context, IP ip) {
        super(context, A01(context), (SQLiteDatabase.CursorFactory) null, 4);
        if (ip == null) {
            throw new IllegalArgumentException(A00(74, 32, 7));
        }
        this.A00 = ip;
    }

    private static String A01(Context context) {
        String processName = null;
        String str = String.format(Locale.US, A00(55, 8, 91), A00(134, 0, 22));
        char c = !K1.A1o(context) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return str;
                case 3:
                    context = context;
                    String processName2 = context.getPackageName();
                    processName = ProcessUtils.getProcessName(context);
                    if (!processName2.equals(processName)) {
                        c = 4;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 4:
                    processName = processName;
                    if (!TextUtils.isEmpty(processName)) {
                        c = 5;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 5:
                    processName = processName;
                    str = String.format(Locale.US, A00(55, 8, 91), '_' + processName);
                    c = 2;
                    break;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        IJ[] ijArrA0M = this.A00.A0M();
        int length = ijArrA0M.length;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    sQLiteDatabase = sQLiteDatabase;
                    ijArrA0M = ijArrA0M;
                    ijArrA0M[i].A08(sQLiteDatabase);
                    i++;
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
        IJ[] ijArrA0M = this.A00.A0M();
        int length = ijArrA0M.length;
        int i3 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i3 >= length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    sQLiteDatabase = sQLiteDatabase;
                    ijArrA0M = ijArrA0M;
                    IJ ij = ijArrA0M[i3];
                    ij.A09(sQLiteDatabase);
                    ij.A08(sQLiteDatabase);
                    i3++;
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) throws SQLException {
        super.onOpen(sQLiteDatabase);
        if (!sQLiteDatabase.isReadOnly()) {
            sQLiteDatabase.execSQL(A00(0, 25, 81));
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
        char c = i == 2 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 < 3) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    sQLiteDatabase = sQLiteDatabase;
                    sQLiteDatabase.execSQL(A00(106, 28, 18));
                    c = 4;
                    break;
                case 4:
                    if (i > 3) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    if (i2 < 4) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    sQLiteDatabase = sQLiteDatabase;
                    II ii = IK.A01;
                    sQLiteDatabase.execSQL(A00(25, 30, 11) + ii.A01 + A00(73, 1, 35) + ii.A02 + A00(63, 10, 63));
                    c = 7;
                    break;
                case 7:
                    return;
            }
        }
    }
}
