package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.AsyncTask;
import android.os.Looper;
import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class IP {
    private static byte[] A04;
    private static final String A05;
    private static final Lock A06;
    private static final Lock A07;
    private static final ReentrantReadWriteLock A08;
    private SQLiteOpenHelper A00;
    private final Context A01;
    private final IU A03 = new IU(this);
    private final IK A02 = new IK(this);

    private static String A05(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 110);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A07() {
        A04 = new byte[]{-62, -56, 29, 59, 72, 72, 73, 78, -6, 61, 59, 70, 70, -6, 65, 63, 78, 30, 59, 78, 59, 60, 59, 77, 63, -6, 64, 76, 73, 71, -6, 78, 66, 63, -6, 47, 35, -6, 78, 66, 76, 63, 59, 62, -5, 60, 46, 53, 46, 44, 61, 9, 93, 88, 84, 78, 87, 92, 23, -81, -110, -66, -69, -65, -69, -58, -110, 7, 58, 44, 59, 7, -6, 41, 44, 30, 31, 44, -6, 28, 51, -6, 19, 36, 19, 28, 34, 33, -18, -23, -27, -33, -24, -19, -73, -26, -27, -73, -55, -26, -55, -42, -40, -13, 25, 37, 34, 32, -13, 1, -2, 17, -2, -1, -2, 16, 2, -53, -85, -52, -34, -50, 44, 39, 27, 24, 43, 28, -9, 3, -9, -75, -45, -75, -44, -31, 24, 9, 6, 19, 6, -31, -84, -42, -37, -43, -38, -84};
    }

    static {
        A07();
        A05 = A05(45, 14, 123) + IU.A02.A01 + A05(129, 2, 105) + A05(88, 6, 12) + A05(59, 1, 19) + IU.A01.A01 + A05(129, 2, 105) + A05(82, 6, 64) + A05(59, 1, 19) + IK.A03.A01 + A05(129, 2, 105) + A05(82, 6, 64) + A05(59, 1, 19) + IK.A04.A01 + A05(129, 2, 105) + A05(82, 6, 64) + A05(59, 1, 19) + IK.A09.A01 + A05(129, 2, 105) + A05(82, 6, 64) + A05(59, 1, 19) + IK.A07.A01 + A05(129, 2, 105) + A05(82, 6, 64) + A05(59, 1, 19) + IK.A06.A01 + A05(129, 2, 105) + A05(82, 6, 64) + A05(59, 1, 19) + IK.A05.A01 + A05(129, 2, 105) + A05(82, 6, 64) + A05(59, 1, 19) + IK.A02.A01 + A05(129, 2, 105) + A05(82, 6, 64) + A05(59, 1, 19) + IK.A01.A01 + A05(103, 6, 101) + A05(82, 6, 64) + A05(ScriptIntrinsicBLAS.RIGHT, 6, 30) + A05(88, 6, 12) + A05(94, 4, 41) + A05(82, 6, 64) + A05(59, 1, 19) + IK.A08.A01 + A05(98, 3, 59) + A05(88, 6, 12) + A05(59, 1, 19) + IU.A02.A01 + A05(72, 10, 108) + A05(82, 6, 64) + A05(59, 1, 19) + IK.A07.A01 + A05(118, 4, 29);
        A08 = new ReentrantReadWriteLock();
        A06 = A08.readLock();
        A07 = A08.writeLock();
    }

    public IP(Context context) {
        this.A01 = context;
    }

    private synchronized SQLiteDatabase A01() {
        if (this.A00 == null) {
            this.A00 = new IQ(this.A01, this);
        }
        return this.A00.getWritableDatabase();
    }

    private synchronized SQLiteDatabase A02() {
        SQLiteException e = null;
        for (int i = 0; i < 10; i++) {
            try {
            } catch (SQLiteException e2) {
                e = e2;
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException unused) {
                }
            }
        }
        P7.A07(this.A01, A05(109, 8, 47), P8.A0g, new PA(e));
        throw e;
        return A01();
    }

    public final int A08(int i) {
        A07.lock();
        try {
            return A0E().delete(A05(82, 6, 64), IK.A01.A01 + A05(131, 4, 39), new String[]{String.valueOf(i - 1)});
        } finally {
            A07.unlock();
        }
    }

    public final Cursor A09() {
        A06.lock();
        try {
            return this.A02.A0C();
        } finally {
            A06.unlock();
        }
    }

    public final Cursor A0A() {
        A06.lock();
        try {
            return this.A02.A0D();
        } finally {
            A06.unlock();
        }
    }

    public final Cursor A0B() {
        A06.lock();
        try {
            return this.A03.A0C();
        } finally {
            A06.unlock();
        }
    }

    public final Cursor A0C(int i) {
        A06.lock();
        try {
            return A0E().rawQuery(A05 + A05(60, 7, 4) + String.valueOf(i), null);
        } finally {
            A06.unlock();
        }
    }

    public final Cursor A0D(String str) {
        A06.lock();
        try {
            return this.A02.A0E(str);
        } finally {
            A06.unlock();
        }
    }

    public final SQLiteDatabase A0E() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException(A05(2, 43, 108));
        }
        return A02();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.IH != com.facebook.ads.internal.database.AdDatabaseCallback<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.IL != com.facebook.ads.internal.database.AdDatabaseQuery<T> */
    public final <T> AsyncTask A0F(IL<T> il, IH<T> ih) {
        return NV.A00(O4.A06, new IO(this.A01.getApplicationContext(), il, ih), new Void[0]);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.IH != com.facebook.ads.internal.database.AdDatabaseCallback<java.lang.String> */
    public final AsyncTask A0G(String str, int i, String str2, double d, double d2, String str3, Map<String, String> map, IH<String> ih) {
        return A0F(new IN(this, str, i, str2, d, d2, str3, map), ih);
    }

    public final void A0H() {
        A07.lock();
        try {
            this.A02.A0A();
            this.A03.A0A();
        } finally {
            A07.unlock();
        }
    }

    public final void A0I() {
        A07.lock();
        try {
            this.A03.A0E();
        } finally {
            A07.unlock();
        }
    }

    public final synchronized void A0J() {
        for (IJ ij : A0M()) {
            ij.A07();
        }
        if (this.A00 != null) {
            this.A00.close();
            this.A00 = null;
        }
    }

    public final boolean A0K(String str) {
        A07.lock();
        try {
            return this.A02.A0G(str);
        } finally {
            A07.unlock();
        }
    }

    public final boolean A0L(String str) throws SQLException {
        boolean z;
        A07.lock();
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(A05(122, 7, 105)).append(A05(82, 6, 64)).append(A05(67, 5, 121)).append(IK.A01.A01).append(A05(117, 1, 32)).append(IK.A01.A01).append(A05(0, 2, 41)).append(A05(135, 7, 83)).append(IK.A03.A01).append(A05(101, 2, 43));
            A0E().execSQL(sb.toString(), new String[]{str});
            z = true;
        } catch (SQLiteException unused) {
            z = false;
        }
        A07.unlock();
        return z;
    }

    public final IJ[] A0M() {
        return new IJ[]{this.A03, this.A02};
    }
}
