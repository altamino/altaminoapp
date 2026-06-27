package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class zzfi {
    private static final String TAG = "zzfi";
    private final String className;
    private final zzdy zzvd;
    private final String zzzu;
    private final Class<?>[] zzzx;
    private final int zzzv = 2;
    private volatile Method zzzw = null;
    private CountDownLatch zzzy = new CountDownLatch(1);

    public zzfi(zzdy zzdyVar, String str, String str2, Class<?>... clsArr) {
        this.zzvd = zzdyVar;
        this.className = str;
        this.zzzu = str2;
        this.zzzx = clsArr;
        this.zzvd.zzch().submit(new zzfj(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzdb() {
        try {
            Class clsLoadClass = this.zzvd.zzci().loadClass(zzb(this.zzvd.zzck(), this.className));
            if (clsLoadClass == null) {
                return;
            }
            this.zzzw = clsLoadClass.getMethod(zzb(this.zzvd.zzck(), this.zzzu), this.zzzx);
            if (this.zzzw == null) {
            }
        } catch (zzdk unused) {
        } catch (UnsupportedEncodingException unused2) {
        } catch (ClassNotFoundException unused3) {
        } catch (NoSuchMethodException unused4) {
        } catch (NullPointerException unused5) {
        } finally {
            this.zzzy.countDown();
        }
    }

    private final String zzb(byte[] bArr, String str) throws zzdk, UnsupportedEncodingException {
        return new String(this.zzvd.zzcj().zza(bArr, str), C.UTF8_NAME);
    }

    public final Method zzdc() {
        if (this.zzzw != null) {
            return this.zzzw;
        }
        try {
            if (this.zzzy.await(2L, TimeUnit.SECONDS)) {
                return this.zzzw;
            }
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }
}
