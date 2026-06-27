package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzdae {
    private final Clock zzbsa;
    private final String zzbsx;
    private final String zzcig;
    private final String zzdlo;
    private final Executor zzffi;
    private final zzcmu zzfkx;
    private final zzbah zzgnr;
    private final Context zzlj;

    public zzdae(Executor executor, zzbah zzbahVar, zzcmu zzcmuVar, zzbai zzbaiVar, String str, String str2, Context context, Clock clock) {
        this.zzffi = executor;
        this.zzgnr = zzbahVar;
        this.zzfkx = zzcmuVar;
        this.zzbsx = zzbaiVar.zzbsx;
        this.zzdlo = str;
        this.zzcig = str2;
        this.zzlj = context;
        this.zzbsa = clock;
    }

    public final void zza(zzcxu zzcxuVar, zzcxm zzcxmVar, List<String> list) {
        zza(zzcxuVar, zzcxmVar, false, list);
    }

    public final void zza(zzcxu zzcxuVar, zzcxm zzcxmVar, boolean z, List<String> list) {
        ArrayList arrayList = new ArrayList();
        String str = z ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0";
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String strZzc = zzc(zzc(zzc(it.next(), "@gw_adlocid@", zzcxuVar.zzgkx.zzfjp.zzglb), "@gw_adnetrefresh@", str), "@gw_sdkver@", this.zzbsx);
            if (zzcxmVar != null) {
                strZzc = zzavx.zzd(zzc(zzc(zzc(strZzc, "@gw_qdata@", zzcxmVar.zzdfk), "@gw_adnetid@", zzcxmVar.zzatl), "@gw_allocid@", zzcxmVar.zzdej), this.zzlj, zzcxmVar.zzdok);
            }
            arrayList.add(zzc(zzc(zzc(strZzc, "@gw_adnetstatus@", this.zzfkx.zzaku()), "@gw_seqnum@", this.zzdlo), "@gw_sessid@", this.zzcig));
        }
        zzh(arrayList);
    }

    public final void zza(zzcxu zzcxuVar, zzcxm zzcxmVar, List<String> list, zzasr zzasrVar) {
        long jCurrentTimeMillis = this.zzbsa.currentTimeMillis();
        try {
            String type = zzasrVar.getType();
            String string = Integer.toString(zzasrVar.getAmount());
            ArrayList arrayList = new ArrayList();
            String strZzfz = zzfz(zzcxuVar.zzgkx.zzfjp.zzgle);
            String strZzfz2 = zzfz(zzcxuVar.zzgkx.zzfjp.zzglf);
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(zzavx.zzd(zzc(zzc(zzc(zzc(zzc(zzc(it.next(), "@gw_rwd_userid@", Uri.encode(strZzfz)), "@gw_rwd_custom_data@", Uri.encode(strZzfz2)), "@gw_tmstmp@", Long.toString(jCurrentTimeMillis)), "@gw_rwd_itm@", Uri.encode(type)), "@gw_rwd_amt@", string), "@gw_sdkver@", this.zzbsx), this.zzlj, zzcxmVar.zzdok));
            }
            zzh(arrayList);
        } catch (RemoteException unused) {
        }
    }

    public final void zzh(List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            zzed(it.next());
        }
    }

    public final void zzed(final String str) {
        this.zzffi.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzdaf
            private final String zzdbk;
            private final zzdae zzgns;

            {
                this.zzgns = this;
                this.zzdbk = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgns.zzga(this.zzdbk);
            }
        });
    }

    private static String zzc(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }

    private static String zzfz(String str) {
        return (TextUtils.isEmpty(str) || !zzazx.isEnabled()) ? str : "fakeForAdDebugLog";
    }

    final /* synthetic */ void zzga(String str) {
        this.zzgnr.zzed(str);
    }
}
