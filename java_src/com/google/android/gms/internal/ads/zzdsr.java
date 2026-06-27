package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public abstract class zzdsr implements zzbd {
    private static zzdtc zzcp = zzdtc.zzm(zzdsr.class);
    private String type;
    private long zzajx;
    private zzbe zzhth;
    private ByteBuffer zzhtk;
    private long zzhtl;
    private zzdsw zzhtn;
    private long zzhtm = -1;
    private ByteBuffer zzhto = null;
    private boolean zzhtj = true;
    boolean zzhti = true;

    private final synchronized void zzbbb() {
        if (!this.zzhtj) {
            try {
                zzdtc zzdtcVar = zzcp;
                String strValueOf = String.valueOf(this.type);
                zzdtcVar.zzhc(strValueOf.length() != 0 ? "mem mapping ".concat(strValueOf) : new String("mem mapping "));
                this.zzhtk = this.zzhtn.zzi(this.zzhtl, this.zzhtm);
                this.zzhtj = true;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    protected abstract void zzg(ByteBuffer byteBuffer);

    protected zzdsr(String str) {
        this.type = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbd
    public final void zza(zzdsw zzdswVar, ByteBuffer byteBuffer, long j, zzba zzbaVar) throws IOException {
        this.zzhtl = zzdswVar.position();
        this.zzajx = this.zzhtl - byteBuffer.remaining();
        this.zzhtm = j;
        this.zzhtn = zzdswVar;
        zzdswVar.zzff(zzdswVar.position() + j);
        this.zzhtj = false;
        this.zzhti = false;
        zzbbc();
    }

    public final synchronized void zzbbc() {
        zzbbb();
        zzdtc zzdtcVar = zzcp;
        String strValueOf = String.valueOf(this.type);
        zzdtcVar.zzhc(strValueOf.length() != 0 ? "parsing details of ".concat(strValueOf) : new String("parsing details of "));
        if (this.zzhtk != null) {
            ByteBuffer byteBuffer = this.zzhtk;
            this.zzhti = true;
            byteBuffer.rewind();
            zzg(byteBuffer);
            if (byteBuffer.remaining() > 0) {
                this.zzhto = byteBuffer.slice();
            }
            this.zzhtk = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbd
    public final String getType() {
        return this.type;
    }

    @Override // com.google.android.gms.internal.ads.zzbd
    public final void zza(zzbe zzbeVar) {
        this.zzhth = zzbeVar;
    }
}
