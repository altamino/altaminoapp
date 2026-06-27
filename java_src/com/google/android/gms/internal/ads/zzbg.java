package com.google.android.gms.internal.ads;

import android.support.v4.view.MotionEventCompat;
import java.nio.ByteBuffer;
import java.util.Date;

/* loaded from: classes2.dex */
public final class zzbg extends zzdst {
    private Date zzcq;
    private Date zzcr;
    private long zzcs;
    private long zzct;
    private double zzcu;
    private float zzcv;
    private zzdtd zzcw;
    private long zzcx;
    private int zzcy;
    private int zzcz;
    private int zzda;
    private int zzdb;
    private int zzdc;
    private int zzdd;

    public zzbg() {
        super("mvhd");
        this.zzcu = 1.0d;
        this.zzcv = 1.0f;
        this.zzcw = zzdtd.zzhuc;
    }

    public final long zzr() {
        return this.zzcs;
    }

    public final long getDuration() {
        return this.zzct;
    }

    @Override // com.google.android.gms.internal.ads.zzdsr
    public final void zzg(ByteBuffer byteBuffer) {
        zzo(byteBuffer);
        if (getVersion() == 1) {
            this.zzcq = zzdsy.zzfx(zzbc.zzc(byteBuffer));
            this.zzcr = zzdsy.zzfx(zzbc.zzc(byteBuffer));
            this.zzcs = zzbc.zza(byteBuffer);
            this.zzct = zzbc.zzc(byteBuffer);
        } else {
            this.zzcq = zzdsy.zzfx(zzbc.zza(byteBuffer));
            this.zzcr = zzdsy.zzfx(zzbc.zza(byteBuffer));
            this.zzcs = zzbc.zza(byteBuffer);
            this.zzct = zzbc.zza(byteBuffer);
        }
        this.zzcu = zzbc.zzd(byteBuffer);
        byteBuffer.get(new byte[2]);
        this.zzcv = ((short) ((r0[1] & 255) | ((short) (0 | ((r0[0] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK))))) / 256.0f;
        zzbc.zzb(byteBuffer);
        zzbc.zza(byteBuffer);
        zzbc.zza(byteBuffer);
        this.zzcw = zzdtd.zzp(byteBuffer);
        this.zzcy = byteBuffer.getInt();
        this.zzcz = byteBuffer.getInt();
        this.zzda = byteBuffer.getInt();
        this.zzdb = byteBuffer.getInt();
        this.zzdc = byteBuffer.getInt();
        this.zzdd = byteBuffer.getInt();
        this.zzcx = zzbc.zza(byteBuffer);
    }

    public final String toString() {
        return "MovieHeaderBox[creationTime=" + this.zzcq + ";modificationTime=" + this.zzcr + ";timescale=" + this.zzcs + ";duration=" + this.zzct + ";rate=" + this.zzcu + ";volume=" + this.zzcv + ";matrix=" + this.zzcw + ";nextTrackId=" + this.zzcx + "]";
    }
}
