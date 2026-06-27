package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes2.dex */
public final class zzjv implements zzkf {
    private final zzke zzaoz;
    private long zzapc;
    private boolean zzapd;
    private RandomAccessFile zzaqe;
    private String zzaqf;

    public zzjv() {
        this(null);
    }

    public zzjv(zzke zzkeVar) {
        this.zzaoz = zzkeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final long zza(zzjq zzjqVar) throws IOException {
        try {
            this.zzaqf = zzjqVar.uri.toString();
            this.zzaqe = new RandomAccessFile(zzjqVar.uri.getPath(), "r");
            this.zzaqe.seek(zzjqVar.zzahv);
            this.zzapc = zzjqVar.zzcd == -1 ? this.zzaqe.length() - zzjqVar.zzahv : zzjqVar.zzcd;
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
            throw new zzjw(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.zzapc;
        if (j == 0) {
            return -1;
        }
        try {
            int i3 = this.zzaqe.read(bArr, i, (int) Math.min(j, i2));
            if (i3 > 0) {
                this.zzapc -= i3;
                zzke zzkeVar = this.zzaoz;
                if (zzkeVar != null) {
                    zzkeVar.zzab(i3);
                }
            }
            return i3;
        } catch (IOException e) {
            throw new zzjw(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzjp
    public final void close() throws zzjw {
        RandomAccessFile randomAccessFile = this.zzaqe;
        if (randomAccessFile != null) {
            try {
                try {
                    randomAccessFile.close();
                } catch (IOException e) {
                    throw new zzjw(e);
                }
            } finally {
                this.zzaqe = null;
                this.zzaqf = null;
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
