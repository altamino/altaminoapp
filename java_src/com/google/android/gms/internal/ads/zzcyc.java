package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class zzcyc {
    public static ParcelFileDescriptor zze(final InputStream inputStream) throws IOException {
        ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
        final ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptorArrCreatePipe[1];
        zzaxg.zzdvp.execute(new Runnable(inputStream, parcelFileDescriptor2) { // from class: com.google.android.gms.internal.ads.zzcyd
            private final InputStream zzglm;
            private final ParcelFileDescriptor zzgln;

            {
                this.zzglm = inputStream;
                this.zzgln = parcelFileDescriptor2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzcyc.zza(this.zzglm, this.zzgln);
            }
        });
        return parcelFileDescriptor;
    }

    static final /* synthetic */ void zza(InputStream inputStream, ParcelFileDescriptor parcelFileDescriptor) {
        try {
            try {
                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor);
                try {
                    IOUtils.copyStream(inputStream, autoCloseOutputStream);
                    autoCloseOutputStream.close();
                    if (inputStream != null) {
                        zza((Throwable) null, inputStream);
                    }
                } finally {
                }
            } catch (IOException unused) {
            }
        } finally {
        }
    }

    private static /* synthetic */ void zza(Throwable th, InputStream inputStream) throws IOException {
        if (th == null) {
            inputStream.close();
            return;
        }
        try {
            inputStream.close();
        } catch (Throwable th2) {
            zzdmb.zza(th, th2);
        }
    }
}
