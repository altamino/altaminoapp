package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.annotation.Nullable;
import android.util.Log;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class I1 {
    private static byte[] A02;
    private static final String A03;
    private static volatile I1 A04;
    private final Context A00;
    private final Map<String, C0603Hp> A01 = Collections.synchronizedMap(new HashMap());

    private static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 39);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A08() {
        A02 = new byte[]{-37, -19, -19, -33, -18, -76, -87, -87, -87, -29, -2, 6, 9, 2, 1, -67, 17, 12, -67, 0, 12, 13, 22, -67, 9, 12, 0, -2, 9, -67, 6, 10, -2, 4, 2, -67, 6, 11, 17, 12, -67, 0, -2, 0, 5, 2, -67, -59, 18, 15, 9, -38, -87, -62, -75, -74, -64, -71, 116, -56, -61, 116, -53, -58, -67, -56, -71, 116, -74, -67, -56, -63, -75, -60, 116, -56, -61, 116, -70, -67, -64, -71, 116, 124, -55, -58, -64, -111, 10, 13, 16, 9, -34, -45, -45, -76, -51, -64, -63, -53, -60, 127, -45, -50, 127, -42, -47, -56, -45, -60, 127, -63, -56, -45, -52, -64, -49, 127, -45, -50, 127, -50, -44, -45, -49, -44, -45, 127, -46, -45, -47, -60, -64, -52, -83, -78, 12, 5, 2, 5, 6, 14, 5, -32, -28, -40, -34, -36, -123, -57, -59, -66, -48, -17, -14, -82, -3, 3, 2, -2, 3, 2, -82, -14, -13, 1, 2, -9, -4, -17, 2, -9, -3, -4, -82, -74, -12, -9, -6, -13, -53, -120, -90, -88, -83, -86, 101, -86, -73, -73, -76, -73, 115, 101, -121, -82, -71, -78, -90, -75, 101, -82, -72, 101, -77, -70, -79, -79, 115, -5, -2, -16, -13};
    }

    static {
        A08();
        A03 = I1.class.getSimpleName();
    }

    private I1(Context context) {
        this.A00 = context;
    }

    private int A00(String str, @Nullable Bitmap bitmap) throws IOException {
        int size;
        if (bitmap == null) {
            A0A(null);
            return 0;
        }
        File file = new File(this.A00.getCacheDir(), str.hashCode() + A07(148, 4, 48));
        ByteArrayOutputStream byteArrayOutputStream = null;
        FileOutputStream fileOutputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream2);
                    size = byteArrayOutputStream2.size();
                    if (size >= 3145728) {
                        A09(byteArrayOutputStream2);
                        A09(null);
                        size = 0;
                    } else {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        try {
                            byteArrayOutputStream2.writeTo(fileOutputStream2);
                            fileOutputStream2.flush();
                            A09(byteArrayOutputStream2);
                            A09(fileOutputStream2);
                        } catch (FileNotFoundException e) {
                            e = e;
                            fileOutputStream = fileOutputStream2;
                            byteArrayOutputStream = byteArrayOutputStream2;
                            Log.e(A03, A07(Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, 29, 103) + file.getAbsolutePath() + A07(134, 2, 93), e);
                            A0A(e);
                            A09(byteArrayOutputStream);
                            A09(fileOutputStream);
                            size = 0;
                            return size;
                        } catch (IOException e2) {
                            e = e2;
                            fileOutputStream = fileOutputStream2;
                            byteArrayOutputStream = byteArrayOutputStream2;
                            A0A(e);
                            Log.e(A03, A07(52, 36, 45) + str + A07(134, 2, 93), e);
                            A09(byteArrayOutputStream);
                            A09(fileOutputStream);
                            size = 0;
                            return size;
                        } catch (OutOfMemoryError e3) {
                            e = e3;
                            fileOutputStream = fileOutputStream2;
                            byteArrayOutputStream = byteArrayOutputStream2;
                            A0A(e);
                            Log.e(A03, A07(95, 39, 56), e);
                            A09(byteArrayOutputStream);
                            A09(fileOutputStream);
                            size = 0;
                            return size;
                        } catch (Throwable th) {
                            oome = th;
                            fileOutputStream = fileOutputStream2;
                            byteArrayOutputStream = byteArrayOutputStream2;
                            A09(byteArrayOutputStream);
                            A09(fileOutputStream);
                            throw oome;
                        }
                    }
                } catch (FileNotFoundException e4) {
                    e = e4;
                    byteArrayOutputStream = byteArrayOutputStream2;
                } catch (IOException e5) {
                    e = e5;
                    byteArrayOutputStream = byteArrayOutputStream2;
                } catch (OutOfMemoryError e6) {
                    e = e6;
                    byteArrayOutputStream = byteArrayOutputStream2;
                } catch (Throwable th2) {
                    oome = th2;
                    byteArrayOutputStream = byteArrayOutputStream2;
                }
            } catch (Throwable th3) {
                oome = th3;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
        } catch (IOException e8) {
            e = e8;
        } catch (OutOfMemoryError e9) {
            e = e9;
        }
        return size;
    }

    @Nullable
    private final Bitmap A01(C0603Hp c0603Hp, int i, int i2, String str) throws Throwable {
        String str2 = str;
        I1 i1 = this;
        I9 i9 = null;
        File file = null;
        String str3 = null;
        Bitmap bitmapA04 = null;
        char c = IA.A09() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    str2 = str2;
                    if (!A07(209, 4, 104).equals(str2)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    i1 = i1;
                    c0603Hp = c0603Hp;
                    i1.A01.put(c0603Hp.A07, c0603Hp);
                    c = 4;
                    break;
                case 4:
                    i1 = i1;
                    c0603Hp = c0603Hp;
                    str2 = str2;
                    str3 = c0603Hp.A07;
                    i9 = new I9(c0603Hp.A05, c0603Hp.A06, A07(143, 5, 80), str2, str3);
                    file = new File(i1.A00.getCacheDir(), str3.hashCode() + A07(148, 4, 48));
                    if (!file.exists()) {
                        c = 5;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case 5:
                    str3 = str3;
                    i9 = i9;
                    IA.A05(i9, false);
                    if (!str3.startsWith(A07(88, 7, 125))) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    i1 = i1;
                    str3 = str3;
                    bitmapA04 = i1.A04(str3, i2, i);
                    c = 7;
                    break;
                case 7:
                    return bitmapA04;
                case '\b':
                    i1 = i1;
                    c0603Hp = c0603Hp;
                    str2 = str2;
                    bitmapA04 = i1.A02(c0603Hp, str2);
                    c = 7;
                    break;
                case '\t':
                    i1 = i1;
                    i9 = i9;
                    IA.A05(i9, true);
                    if (!i1.A0B(i2, i)) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    file = file;
                    bitmapA04 = C0769Oe.A03(file.getAbsolutePath(), i2, i);
                    c = 7;
                    break;
                case 11:
                    file = file;
                    bitmapA04 = BitmapFactory.decodeFile(file.getAbsolutePath());
                    c = 7;
                    break;
            }
        }
    }

    @Nullable
    private Bitmap A02(C0603Hp c0603Hp, String str) throws Throwable {
        String str2 = str;
        C0603Hp c0603Hp2 = c0603Hp;
        I1 i1 = this;
        Throwable e = null;
        long jCurrentTimeMillis = 0;
        Throwable e2 = null;
        InputStream inputStreamOpen = null;
        Bitmap bitmapA02 = null;
        Throwable th = null;
        String string = null;
        int iA00 = 0;
        String str3 = c0603Hp2.A07;
        int i = c0603Hp2.A03;
        int i2 = c0603Hp2.A04;
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        IOException e3 = null;
        char c = str3.startsWith(A07(0, 9, 83)) ? (char) 2 : (char) 24;
        while (true) {
            switch (c) {
                case 2:
                    inputStreamOpen = null;
                    c = 3;
                    break;
                case 3:
                    i1 = i1;
                    inputStreamOpen = i1.A00.getAssets().open(str3.substring(9));
                    if (!i1.A0B(i, i2)) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    inputStreamOpen = inputStreamOpen;
                    bitmapA02 = C0769Oe.A02(inputStreamOpen, i, i2);
                    c = 29;
                    break;
                case 11:
                    try {
                        inputStreamOpen = inputStreamOpen;
                        bitmapA02 = BitmapFactory.decodeStream(inputStreamOpen);
                        c = 29;
                        break;
                    } catch (IOException e4) {
                        e2 = e4;
                        c = 18;
                        break;
                    } catch (OutOfMemoryError e5) {
                        e = e5;
                        c = 14;
                        break;
                    }
                case 14:
                    i1 = i1;
                    e = e;
                    i1.A0A(e);
                    bitmapA02 = null;
                    if (inputStreamOpen == null) {
                        c = '$';
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    A09(inputStreamOpen);
                    c = '$';
                    break;
                case 18:
                    try {
                        i1 = i1;
                        e2 = e2;
                        i1.A0A(e2);
                        bitmapA02 = null;
                        if (inputStreamOpen == null) {
                            c = '$';
                            break;
                        } else {
                            c = 20;
                            break;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (inputStreamOpen == null) {
                            c = 23;
                            break;
                        } else {
                            c = 22;
                            break;
                        }
                    }
                case 20:
                    A09(inputStreamOpen);
                    c = '$';
                    break;
                case 22:
                    A09(inputStreamOpen);
                    c = 23;
                    break;
                case 23:
                    throw th;
                case 24:
                    i1 = i1;
                    if (!i1.A0B(i, i2)) {
                        c = 28;
                        break;
                    } else {
                        c = 25;
                        break;
                    }
                case 25:
                    try {
                        i1 = i1;
                        str3 = str3;
                        bitmapA02 = i1.A05(str3, i, i2);
                        c = 31;
                        break;
                    } catch (IOException e6) {
                        e3 = e6;
                        i1.A0A(e3);
                        bitmapA02 = i1.A03(str3);
                        c = 31;
                        break;
                    }
                case 28:
                    i1 = i1;
                    str3 = str3;
                    bitmapA02 = i1.A03(str3);
                    c = 31;
                    break;
                case 29:
                    inputStreamOpen = inputStreamOpen;
                    if (inputStreamOpen == null) {
                        c = 31;
                        break;
                    } else {
                        c = 30;
                        break;
                    }
                case 30:
                    inputStreamOpen = inputStreamOpen;
                    A09(inputStreamOpen);
                    c = 31;
                    break;
                case 31:
                    if (e3 == null) {
                        c = '\'';
                        break;
                    } else {
                        c = ' ';
                        break;
                    }
                case ' ':
                    string = e3.toString();
                    c = '!';
                    break;
                case '!':
                    bitmapA02 = bitmapA02;
                    if (bitmapA02 == null) {
                        c = '&';
                        break;
                    } else {
                        c = '\"';
                        break;
                    }
                case '\"':
                    i1 = i1;
                    str3 = str3;
                    bitmapA02 = bitmapA02;
                    iA00 = i1.A00(str3, bitmapA02);
                    jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                    if (iA00 <= 0) {
                        c = '%';
                        break;
                    } else {
                        c = '#';
                        break;
                    }
                case '#':
                    c0603Hp2 = c0603Hp2;
                    str2 = str2;
                    IA.A04(c0603Hp2, str2, IA.A02, string, Integer.valueOf(iA00), Long.valueOf(jCurrentTimeMillis));
                    c = '$';
                    break;
                case '$':
                    return bitmapA02;
                case '%':
                    c0603Hp2 = c0603Hp2;
                    str2 = str2;
                    IA.A04(c0603Hp2, str2, IA.A01, string, null, null);
                    c = '$';
                    break;
                case '&':
                    c0603Hp2 = c0603Hp2;
                    str2 = str2;
                    IA.A04(c0603Hp2, str2, IA.A03, string, null, null);
                    c = '$';
                    break;
                case '\'':
                    string = null;
                    c = '!';
                    break;
            }
        }
    }

    @Nullable
    private Bitmap A03(String str) {
        I1 i1 = this;
        byte[] bArrA3G = null;
        C5e c5eA6W = null;
        C0716Mc c0716McA0J = null;
        byte[] bArrA04 = null;
        Bitmap bitmapDecodeByteArray = null;
        char c = K1.A17(i1.A00) ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    i1 = i1;
                    str = str;
                    c5eA6W = C0780Op.A04(i1.A00).A6W(str, new C3U());
                    if (c5eA6W == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c5eA6W = c5eA6W;
                    bArrA3G = c5eA6W.A3G();
                    if (bArrA3G == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    bArrA3G = bArrA3G;
                    bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrA3G, 0, bArrA3G.length);
                    c = 5;
                    break;
                case 5:
                    return bitmapDecodeByteArray;
                case 6:
                    i1 = i1;
                    str = str;
                    bitmapDecodeByteArray = null;
                    c0716McA0J = C0780Op.A00(i1.A00).A0J(str, null);
                    if (c0716McA0J == null) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0716McA0J = c0716McA0J;
                    bArrA04 = c0716McA0J.A04();
                    if (bArrA04 == null) {
                        c = 5;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    bArrA04 = bArrA04;
                    bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrA04, 0, bArrA04.length);
                    c = 5;
                    break;
            }
        }
    }

    @Nullable
    private Bitmap A04(String str, int i, int i2) {
        Bitmap bitmapDecodeStream;
        try {
            if (A0B(i, i2)) {
                bitmapDecodeStream = C0769Oe.A03(str.substring(A07(88, 7, 125).length()), i, i2);
            } else {
                bitmapDecodeStream = BitmapFactory.decodeStream(new FileInputStream(str.substring(A07(88, 7, 125).length())), null, null);
            }
            A00(str, bitmapDecodeStream);
            return bitmapDecodeStream;
        } catch (IOException e) {
            Log.e(A03, A07(9, 43, 118) + str + A07(134, 2, 93), e);
            return null;
        }
    }

    private Bitmap A05(String str, int i, int i2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setDoInput(true);
        httpURLConnection.connect();
        InputStream inputStream = httpURLConnection.getInputStream();
        Bitmap bitmapA02 = C0769Oe.A02(inputStream, i, i2);
        A09(inputStream);
        return bitmapA02;
    }

    public static I1 A06(Context context) {
        if (A04 == null) {
            Context applicationContext = context.getApplicationContext();
            synchronized (I1.class) {
                if (A04 == null) {
                    A04 = new I1(applicationContext);
                }
            }
        }
        return A04;
    }

    private static void A09(@Nullable Closeable closeable) throws IOException {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    private void A0A(Throwable th) {
        I1 i1 = this;
        char c = th != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i1 = i1;
                    th = th;
                    P7.A07(i1.A00, A07(143, 5, 80), P8.A1D, new PA(th));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    i1 = i1;
                    P7.A07(i1.A00, A07(143, 5, 80), P8.A1D, new PA(A07(181, 28, 30)));
                    c = 3;
                    break;
            }
        }
    }

    private boolean A0B(int i, int i2) {
        I1 i1 = this;
        boolean z = false;
        char c = i > 0 ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 <= 0) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    i1 = i1;
                    if (!K1.A15(i1.A00)) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    @Nullable
    public final Bitmap A0C(C0603Hp c0603Hp) {
        return A01(c0603Hp, c0603Hp.A04, c0603Hp.A03, c0603Hp.A01);
    }

    @Nullable
    public final Bitmap A0D(String str, int i, int i2, String str2) {
        String str3 = str;
        I1 i1 = this;
        Bitmap bitmapA01 = null;
        C0603Hp c0603Hp = i1.A01.get(str3);
        char c = IA.A09() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0603Hp = c0603Hp;
                    if (c0603Hp == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    i1 = i1;
                    str2 = str2;
                    c0603Hp = c0603Hp;
                    bitmapA01 = i1.A01(c0603Hp, i2, i, str2);
                    c = 4;
                    break;
                case 4:
                    return bitmapA01;
                case 5:
                    i1 = i1;
                    str3 = str3;
                    str2 = str2;
                    bitmapA01 = i1.A01(new C0603Hp(str3, i, i2, A07(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 7, 112), A07(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 7, 112)), i2, i, str2);
                    c = 4;
                    break;
            }
        }
    }

    public final String A0E(String str) {
        File file = new File(this.A00.getCacheDir(), str.hashCode() + A07(148, 4, 48));
        return file.exists() ? file.getPath() : str;
    }
}
