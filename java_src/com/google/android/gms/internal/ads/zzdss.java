package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public class zzdss extends zzdsu implements zzbd {
    private String type;
    private long zzajx;
    private zzbe zzhth;
    private boolean zzhtp;

    public zzdss(String str) {
        this.type = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbd
    public final void zza(zzbe zzbeVar) {
        this.zzhth = zzbeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbd
    public final String getType() {
        return this.type;
    }

    @Override // com.google.android.gms.internal.ads.zzbd
    public final void zza(zzdsw zzdswVar, ByteBuffer byteBuffer, long j, zzba zzbaVar) throws IOException {
        this.zzajx = zzdswVar.position() - byteBuffer.remaining();
        this.zzhtp = byteBuffer.remaining() == 16;
        zza(zzdswVar, j, zzbaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdsu
    public final void zza(zzdsw zzdswVar, long j, zzba zzbaVar) throws IOException {
        this.zzhtn = zzdswVar;
        this.zzhtt = zzdswVar.position();
        this.zzbkn = this.zzhtt - ((this.zzhtp || 8 + j >= IjkMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8);
        zzdswVar.zzff(zzdswVar.position() + j);
        this.zzbdz = zzdswVar.position();
        this.zzhtr = zzbaVar;
    }
}
