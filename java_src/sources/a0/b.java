package a0;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import c.f.b.e.q5;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.File;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.text.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private static String f31b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private static String f32c;
    private static long e;

    @NotNull
    private static final ReentrantLock f;
    private static final Condition g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final b f30a = new b();

    @NotNull
    private static final m d = o.a(C0001b.q);

    public static final class a extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f33a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ File f34b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, File file, String str) {
            super(str);
            this.f33a = context;
            this.f34b = file;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ReentrantLock reentrantLock = b.f;
            Context context = this.f33a;
            File file = this.f34b;
            reentrantLock.lock();
            try {
                if (b.f31b == null) {
                    b.f31b = b.f30a.j(context);
                    b.g.signalAll();
                    file.delete();
                    c cVar = c.f35a;
                    String str = b.f31b;
                    t.g(str);
                    cVar.c(file, str);
                }
                l0 l0Var = l0.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    /* JADX INFO: renamed from: a0.b$b, reason: collision with other inner class name */
    static final class C0001b extends v implements e8.a<String> {
        public static final C0001b q = new C0001b();

        C0001b() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        public final String invoke() {
            return a0.a.f27c + b.f32c;
        }
    }

    public static final long m() {
        return e;
    }

    public static final boolean q() {
        return f31b != null;
    }

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        f = reentrantLock;
        g = reentrantLock.newCondition();
    }

    private final String i() {
        String str = Build.BOARD + Build.BRAND + Build.SUPPORTED_ABIS[0] + Build.DEVICE + Build.MANUFACTURER + Build.MODEL + Build.PRODUCT;
        t.i(str, "toString(...)");
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String j(Context context) {
        String string = context.getString(r0.a.dsc);
        t.i(string, "getString(...)");
        String string2 = context.getString(r0.a.dsv);
        t.i(string2, "getString(...)");
        return q5.d(o(context), string, Integer.parseInt(string2));
    }

    @NotNull
    public static final String k() {
        String str = f31b;
        if (str != null) {
            return str;
        }
        if (t.e(Looper.myLooper(), Looper.getMainLooper())) {
            return n();
        }
        ReentrantLock reentrantLock = f;
        reentrantLock.lock();
        while (f31b == null) {
            try {
                try {
                    g.await();
                } catch (InterruptedException unused) {
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        l0 l0Var = l0.INSTANCE;
        reentrantLock.unlock();
        String str2 = f31b;
        t.g(str2);
        return str2;
    }

    private final File l(Context context) {
        return new File(context.getFilesDir(), a0.a.d);
    }

    @NotNull
    public static final String n() {
        return (String) d.getValue();
    }

    public static final void p(@NotNull Context context) {
        t.j(context, "context");
        File fileL = f30a.l(context);
        try {
            String strB = c.f35a.b(fileL);
            if (strB != null && kotlin.text.t.K(strB, a0.a.f, false, 2, null) && strB.length() == 82 && Pattern.compile(a0.a.g, 2).matcher(strB).matches()) {
                f31b = strB;
                e = fileL.lastModified();
            } else if (strB != null) {
                Log.e("dcid", "mlfrmd dvcid: " + strB);
            }
        } catch (Exception unused) {
        }
        if (f31b == null) {
            f32c = String.valueOf(((long) f30a.toString().hashCode()) + System.currentTimeMillis());
            e = System.currentTimeMillis();
            new a(context, fileL, a0.a.h).start();
        }
    }

    private b() {
    }

    private final String g(Context context) {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            t.i(advertisingIdInfo, "getAdvertisingIdInfo(...)");
            return advertisingIdInfo.getId();
        } catch (Exception unused) {
            return null;
        }
    }

    private final String h(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception unused) {
            return null;
        }
    }

    private final byte[] o(Context context) {
        String strI = i();
        Charset charset = d.UTF_8;
        byte[] bytes = strI.getBytes(charset);
        t.i(bytes, "getBytes(...)");
        String strG = g(context);
        byte[] bytes2 = new byte[1];
        if (strG != null && !TextUtils.isEmpty(strG)) {
            bytes2 = strG.getBytes(charset);
            t.i(bytes2, "getBytes(...)");
        }
        String strH = h(context);
        byte[] bytes3 = new byte[1];
        if (strH != null && !TextUtils.isEmpty(strH)) {
            bytes3 = strH.getBytes(charset);
            t.i(bytes3, "getBytes(...)");
        }
        int length = bytes.length;
        int length2 = bytes2.length;
        int length3 = bytes3.length;
        int iMax = Math.max(Math.max(length, length2), length3);
        byte[] bArr = new byte[iMax];
        System.arraycopy(bytes, 0, bArr, 0, length);
        byte[] bArr2 = new byte[iMax];
        System.arraycopy(bytes2, 0, bArr2, 0, length2);
        byte[] bArr3 = new byte[iMax];
        System.arraycopy(bytes3, 0, bArr3, 0, length3);
        byte[] bArr4 = new byte[iMax];
        byte[] bArr5 = new byte[iMax];
        byte[] bArr6 = new byte[iMax];
        for (int i10 = 0; i10 < iMax; i10++) {
            bArr4[i10] = (byte) (bArr2[i10] ^ bArr3[i10]);
            bArr5[i10] = (byte) (bArr[i10] ^ bArr2[i10]);
            bArr6[i10] = (byte) (bArr[i10] ^ bArr3[i10]);
        }
        byte[] bArr7 = new byte[(iMax * 4) + 6];
        System.arraycopy(ByteBuffer.allocate(2).putShort((short) length).array(), 0, bArr7, 0, 2);
        System.arraycopy(ByteBuffer.allocate(2).putShort((short) length2).array(), 0, bArr7, 2, 2);
        System.arraycopy(ByteBuffer.allocate(2).putShort((short) length3).array(), 0, bArr7, 4, 2);
        for (int i11 = 0; i11 < iMax; i11++) {
            int i12 = i11 * 3;
            bArr7[i12 + 6] = bArr[i11];
            bArr7[i12 + 7] = bArr5[i11];
            bArr7[i12 + 8] = bArr6[i11];
        }
        System.arraycopy(bArr4, 0, bArr7, (iMax * 3) + 6, iMax);
        return bArr7;
    }
}
