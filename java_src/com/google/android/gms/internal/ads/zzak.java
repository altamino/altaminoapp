package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class zzak implements zzm {
    private static final boolean DEBUG = zzag.DEBUG;

    @Deprecated
    private final zzas zzbp;
    private final zzaj zzbq;
    private final zzal zzbr;

    @Deprecated
    public zzak(zzas zzasVar) {
        this(zzasVar, new zzal(4096));
    }

    @Deprecated
    private zzak(zzas zzasVar, zzal zzalVar) {
        this.zzbp = zzasVar;
        this.zzbq = new zzai(zzasVar);
        this.zzbr = zzalVar;
    }

    public zzak(zzaj zzajVar) {
        this(zzajVar, new zzal(4096));
    }

    private zzak(zzaj zzajVar, zzal zzalVar) {
        this.zzbq = zzajVar;
        this.zzbp = zzajVar;
        this.zzbr = zzalVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0202 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0197  */
    @Override // com.google.android.gms.internal.ads.zzm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.ads.zzp zzc(com.google.android.gms.internal.ads.zzr<?> r22) throws java.io.IOException, com.google.android.gms.internal.ads.zzaf {
        /*
            Method dump skipped, instructions count: 565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzak.zzc(com.google.android.gms.internal.ads.zzr):com.google.android.gms.internal.ads.zzp");
    }

    private static void zza(String str, zzr<?> zzrVar, zzaf zzafVar) throws zzaf {
        zzac zzacVarZzj = zzrVar.zzj();
        int iZzi = zzrVar.zzi();
        try {
            zzacVarZzj.zza(zzafVar);
            zzrVar.zzb(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(iZzi)));
        } catch (zzaf e) {
            zzrVar.zzb(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(iZzi)));
            throw e;
        }
    }

    private final byte[] zza(InputStream inputStream, int i) throws IOException, zzad {
        zzaw zzawVar = new zzaw(this.zzbr, i);
        try {
            if (inputStream == null) {
                throw new zzad();
            }
            byte[] bArrZzc = this.zzbr.zzc(1024);
            while (true) {
                int i2 = inputStream.read(bArrZzc);
                if (i2 == -1) {
                    break;
                }
                zzawVar.write(bArrZzc, 0, i2);
            }
            byte[] byteArray = zzawVar.toByteArray();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                    zzag.v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.zzbr.zza(bArrZzc);
            zzawVar.close();
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                    zzag.v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.zzbr.zza(null);
            zzawVar.close();
            throw th;
        }
    }
}
