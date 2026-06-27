package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.gms.internal.ads.zzdgr;
import com.google.android.gms.internal.ads.zzdha;
import com.google.android.gms.internal.ads.zzdhc;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
final class zzdch {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);

    public static zzdhc zzc(zzdha zzdhaVar) {
        zzdhc.zza zzaVarZzev = zzdhc.zzass().zzev(zzdhaVar.zzash());
        for (zzdha.zzb zzbVar : zzdhaVar.zzasi()) {
            zzaVarZzev.zzb((zzdhc.zzb) zzdhc.zzb.zzasu().zzgq(zzbVar.zzasn().zzart()).zzc(zzbVar.zzaso()).zzc(zzbVar.zzanw()).zzew(zzbVar.zzasp()).zzaya());
        }
        return (zzdhc) zzaVarZzev.zzaya();
    }

    public static void zzd(zzdha zzdhaVar) throws GeneralSecurityException {
        int iZzash = zzdhaVar.zzash();
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        for (zzdha.zzb zzbVar : zzdhaVar.zzasi()) {
            if (zzbVar.zzaso() != zzdgu.DESTROYED) {
                i++;
                if (!zzbVar.zzasm()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzbVar.zzasp())));
                }
                if (zzbVar.zzanw() == zzdhm.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzbVar.zzasp())));
                }
                if (zzbVar.zzaso() == zzdgu.UNKNOWN_STATUS) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzbVar.zzasp())));
                }
                if (zzbVar.zzaso() == zzdgu.ENABLED && zzbVar.zzasp() == iZzash) {
                    if (z) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z = true;
                }
                if (zzbVar.zzasn().zzarv() != zzdgr.zzb.ASYMMETRIC_PUBLIC) {
                    z2 = false;
                }
            }
        }
        if (i == 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        if (!z && !z2) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
    }

    public static byte[] zzg(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr);
            if (i != -1) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }
}
