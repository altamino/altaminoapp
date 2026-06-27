package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes2.dex */
final class zzqf {
    private final zznp zzbbf;
    private final zznn[] zzbix;
    private zznn zzbiy;

    public zzqf(zznn[] zznnVarArr, zznp zznpVar) {
        this.zzbix = zznnVarArr;
        this.zzbbf = zznpVar;
    }

    public final zznn zza(zzno zznoVar, Uri uri) throws InterruptedException, IOException {
        zznn zznnVar = this.zzbiy;
        if (zznnVar != null) {
            return zznnVar;
        }
        zznn[] zznnVarArr = this.zzbix;
        int length = zznnVarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            zznn zznnVar2 = zznnVarArr[i];
            try {
            } catch (EOFException unused) {
            } finally {
                zznoVar.zzig();
            }
            if (zznnVar2.zza(zznoVar)) {
                this.zzbiy = zznnVar2;
                break;
            }
            i++;
        }
        zznn zznnVar3 = this.zzbiy;
        if (zznnVar3 == null) {
            String strZza = zzsy.zza(this.zzbix);
            StringBuilder sb = new StringBuilder(String.valueOf(strZza).length() + 58);
            sb.append("None of the available extractors (");
            sb.append(strZza);
            sb.append(") could read the stream.");
            throw new zzrc(sb.toString(), uri);
        }
        zznnVar3.zza(this.zzbbf);
        return this.zzbiy;
    }

    public final void release() {
        zznn zznnVar = this.zzbiy;
        if (zznnVar != null) {
            zznnVar.release();
            this.zzbiy = null;
        }
    }
}
