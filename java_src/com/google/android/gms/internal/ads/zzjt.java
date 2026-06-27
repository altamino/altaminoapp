package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzjt implements zzkf {
    private final zzkf zzapz;
    private final zzkf zzaqa;
    private final zzkf zzaqb;
    private zzkf zzaqc;

    public zzjt(Context context, String str) {
        this(context, null, str, false);
    }

    private zzjt(Context context, zzke zzkeVar, String str, boolean z) {
        this(context, null, new zzjs(str, null, null, 8000, 8000, false));
    }

    private zzjt(Context context, zzke zzkeVar, zzkf zzkfVar) {
        this.zzapz = (zzkf) zzkh.checkNotNull(zzkfVar);
        this.zzaqa = new zzjv(null);
        this.zzaqb = new zzjm(context, null);
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final long zza(zzjq zzjqVar) throws IOException {
        zzkh.checkState(this.zzaqc == null);
        String scheme = zzjqVar.uri.getScheme();
        if ("http".equals(scheme) || "https".equals(scheme)) {
            this.zzaqc = this.zzapz;
        } else if ("file".equals(scheme)) {
            if (zzjqVar.uri.getPath().startsWith("/android_asset/")) {
                this.zzaqc = this.zzaqb;
            } else {
                this.zzaqc = this.zzaqa;
            }
        } else if ("asset".equals(scheme)) {
            this.zzaqc = this.zzaqb;
        } else {
            throw new zzju(scheme);
        }
        return this.zzaqc.zza(zzjqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        return this.zzaqc.read(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final void close() throws IOException {
        zzkf zzkfVar = this.zzaqc;
        if (zzkfVar != null) {
            try {
                zzkfVar.close();
            } finally {
                this.zzaqc = null;
            }
        }
    }
}
