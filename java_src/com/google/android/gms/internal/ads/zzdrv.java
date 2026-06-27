package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public final class zzdrv {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");
    public static final Object zzhnw = new Object();

    public static void zza(zzdrr zzdrrVar, zzdrr zzdrrVar2) {
        zzdrt zzdrtVar = zzdrrVar.zzhno;
        if (zzdrtVar != null) {
            zzdrrVar2.zzhno = (zzdrt) zzdrtVar.clone();
        }
    }
}
