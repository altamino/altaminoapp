package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.gms.internal.ads.zzdha;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
public final class zzdca<P> {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private final Class<P> zzgpd;
    private ConcurrentMap<String, List<zzdcb<P>>> zzgpj = new ConcurrentHashMap();
    private zzdcb<P> zzgpk;

    public final zzdcb<P> zzanu() {
        return this.zzgpk;
    }

    private zzdca(Class<P> cls) {
        this.zzgpd = cls;
    }

    public static <P> zzdca<P> zza(Class<P> cls) {
        return new zzdca<>(cls);
    }

    public final void zza(zzdcb<P> zzdcbVar) {
        this.zzgpk = zzdcbVar;
    }

    public final zzdcb<P> zza(P p, zzdha.zzb zzbVar) throws GeneralSecurityException {
        byte[] bArrArray;
        int i = zzdbn.zzgpa[zzbVar.zzanw().ordinal()];
        if (i == 1 || i == 2) {
            bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(zzbVar.zzasp()).array();
        } else if (i == 3) {
            bArrArray = ByteBuffer.allocate(5).put((byte) 1).putInt(zzbVar.zzasp()).array();
        } else if (i == 4) {
            bArrArray = zzdbm.zzgoz;
        } else {
            throw new GeneralSecurityException("unknown output prefix type");
        }
        zzdcb<P> zzdcbVar = new zzdcb<>(p, bArrArray, zzbVar.zzaso(), zzbVar.zzanw());
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzdcbVar);
        String str = new String(zzdcbVar.zzanx(), UTF_8);
        List<zzdcb<P>> listPut = this.zzgpj.put(str, Collections.unmodifiableList(arrayList));
        if (listPut != null) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(listPut);
            arrayList2.add(zzdcbVar);
            this.zzgpj.put(str, Collections.unmodifiableList(arrayList2));
        }
        return zzdcbVar;
    }

    public final Class<P> zzanr() {
        return this.zzgpd;
    }
}
