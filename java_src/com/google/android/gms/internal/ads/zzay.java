package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public abstract class zzay implements zzba {
    private static Logger zzcn = Logger.getLogger(zzay.class.getName());
    private ThreadLocal<ByteBuffer> zzco = new zzaz(this);

    public abstract zzbd zza(String str, byte[] bArr, String str2);

    @Override // com.google.android.gms.internal.ads.zzba
    public final zzbd zza(zzdsw zzdswVar, zzbe zzbeVar) throws IOException {
        int i;
        long size;
        long jPosition = zzdswVar.position();
        this.zzco.get().rewind().limit(8);
        do {
            i = zzdswVar.read(this.zzco.get());
            if (i == 8) {
                this.zzco.get().rewind();
                long jZza = zzbc.zza(this.zzco.get());
                byte[] bArr = null;
                if (jZza < 8 && jZza > 1) {
                    Logger logger = zzcn;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(jZza);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                String strZzf = zzbc.zzf(this.zzco.get());
                if (jZza == 1) {
                    this.zzco.get().limit(16);
                    zzdswVar.read(this.zzco.get());
                    this.zzco.get().position(8);
                    size = zzbc.zzc(this.zzco.get()) - 16;
                } else {
                    size = jZza == 0 ? zzdswVar.size() - zzdswVar.position() : jZza - 8;
                }
                if ("uuid".equals(strZzf)) {
                    this.zzco.get().limit(this.zzco.get().limit() + 16);
                    zzdswVar.read(this.zzco.get());
                    bArr = new byte[16];
                    for (int iPosition = this.zzco.get().position() - 16; iPosition < this.zzco.get().position(); iPosition++) {
                        bArr[iPosition - (this.zzco.get().position() - 16)] = this.zzco.get().get(iPosition);
                    }
                    size -= 16;
                }
                long j = size;
                zzbd zzbdVarZza = zza(strZzf, bArr, zzbeVar instanceof zzbd ? ((zzbd) zzbeVar).getType() : "");
                zzbdVarZza.zza(zzbeVar);
                this.zzco.get().rewind();
                zzbdVarZza.zza(zzdswVar, this.zzco.get(), j, this);
                return zzbdVarZza;
            }
        } while (i >= 0);
        zzdswVar.zzff(jPosition);
        throw new EOFException();
    }
}
