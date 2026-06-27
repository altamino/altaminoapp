package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class zzjm implements zzkf {
    private final AssetManager zzaoy;
    private final zzke zzaoz;
    private String zzapa;
    private InputStream zzapb;
    private long zzapc;
    private boolean zzapd;

    public zzjm(Context context, zzke zzkeVar) {
        this.zzaoy = context.getAssets();
        this.zzaoz = zzkeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final long zza(zzjq zzjqVar) throws EOFException, zzjn {
        try {
            this.zzapa = zzjqVar.uri.toString();
            String path = zzjqVar.uri.getPath();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            this.zzapb = this.zzaoy.open(path, 1);
            zzkh.checkState(this.zzapb.skip(zzjqVar.zzahv) == zzjqVar.zzahv);
            this.zzapc = zzjqVar.zzcd == -1 ? this.zzapb.available() : zzjqVar.zzcd;
            if (this.zzapc < 0) {
                throw new EOFException();
            }
            this.zzapd = true;
            zzke zzkeVar = this.zzaoz;
            if (zzkeVar != null) {
                zzkeVar.zzgc();
            }
            return this.zzapc;
        } catch (IOException e) {
            throw new zzjn(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.zzapc;
        if (j == 0) {
            return -1;
        }
        try {
            int i3 = this.zzapb.read(bArr, i, (int) Math.min(j, i2));
            if (i3 > 0) {
                this.zzapc -= i3;
                zzke zzkeVar = this.zzaoz;
                if (zzkeVar != null) {
                    zzkeVar.zzab(i3);
                }
            }
            return i3;
        } catch (IOException e) {
            throw new zzjn(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final void close() throws zzjn {
        InputStream inputStream = this.zzapb;
        if (inputStream != null) {
            try {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    throw new zzjn(e);
                }
            } finally {
                this.zzapb = null;
                if (this.zzapd) {
                    this.zzapd = false;
                    zzke zzkeVar = this.zzaoz;
                    if (zzkeVar != null) {
                        zzkeVar.zzgd();
                    }
                }
            }
        }
    }
}
