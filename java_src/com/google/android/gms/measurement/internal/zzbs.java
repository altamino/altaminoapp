package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzim;
import com.google.android.gms.internal.measurement.zzin;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbs extends zzfs implements zzv {

    @VisibleForTesting
    private static int zzmp = 65535;

    @VisibleForTesting
    private static int zzmq = 2;
    private final Map<String, Map<String, String>> zzmr;
    private final Map<String, Map<String, Boolean>> zzms;
    private final Map<String, Map<String, Boolean>> zzmt;
    private final Map<String, com.google.android.gms.internal.measurement.zzce> zzmu;
    private final Map<String, Map<String, Integer>> zzmv;
    private final Map<String, String> zzmw;

    zzbs(zzft zzftVar) {
        super(zzftVar);
        this.zzmr = new ArrayMap();
        this.zzms = new ArrayMap();
        this.zzmt = new ArrayMap();
        this.zzmu = new ArrayMap();
        this.zzmw = new ArrayMap();
        this.zzmv = new ArrayMap();
    }

    @Override // com.google.android.gms.measurement.internal.zzfs
    protected final boolean zzak() {
        return false;
    }

    private final void zzax(String str) throws IllegalStateException {
        zzah();
        zzq();
        Preconditions.checkNotEmpty(str);
        if (this.zzmu.get(str) == null) {
            byte[] bArrZzag = zzdo().zzag(str);
            if (bArrZzag == null) {
                this.zzmr.put(str, null);
                this.zzms.put(str, null);
                this.zzmt.put(str, null);
                this.zzmu.put(str, null);
                this.zzmw.put(str, null);
                this.zzmv.put(str, null);
                return;
            }
            com.google.android.gms.internal.measurement.zzce zzceVarZza = zza(str, bArrZzag);
            this.zzmr.put(str, zza(zzceVarZza));
            zza(str, zzceVarZza);
            this.zzmu.put(str, zzceVarZza);
            this.zzmw.put(str, null);
        }
    }

    protected final com.google.android.gms.internal.measurement.zzce zzay(String str) {
        zzah();
        zzq();
        Preconditions.checkNotEmpty(str);
        zzax(str);
        return this.zzmu.get(str);
    }

    protected final String zzaz(String str) {
        zzq();
        return this.zzmw.get(str);
    }

    protected final void zzba(String str) {
        zzq();
        this.zzmw.put(str, null);
    }

    final void zzbb(String str) {
        zzq();
        this.zzmu.remove(str);
    }

    final boolean zzbc(String str) {
        zzq();
        Boolean bool = zzay(str).zzxg;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzv
    public final String zzb(String str, String str2) throws IllegalStateException {
        zzq();
        zzax(str);
        Map<String, String> map = this.zzmr.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    private static Map<String, String> zza(com.google.android.gms.internal.measurement.zzce zzceVar) {
        zzbr.zza[] zzaVarArr;
        ArrayMap arrayMap = new ArrayMap();
        if (zzceVar != null && (zzaVarArr = zzceVar.zzxc) != null) {
            for (zzbr.zza zzaVar : zzaVarArr) {
                if (zzaVar != null) {
                    arrayMap.put(zzaVar.getKey(), zzaVar.getValue());
                }
            }
        }
        return arrayMap;
    }

    private final void zza(String str, com.google.android.gms.internal.measurement.zzce zzceVar) throws IllegalStateException {
        com.google.android.gms.internal.measurement.zzcd[] zzcdVarArr;
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        if (zzceVar != null && (zzcdVarArr = zzceVar.zzxd) != null) {
            for (com.google.android.gms.internal.measurement.zzcd zzcdVar : zzcdVarArr) {
                if (TextUtils.isEmpty(zzcdVar.name)) {
                    zzad().zzdd().zzaq("EventConfig contained null event name");
                } else {
                    String strZzbh = zzcx.zzbh(zzcdVar.name);
                    if (!TextUtils.isEmpty(strZzbh)) {
                        zzcdVar.name = strZzbh;
                    }
                    arrayMap.put(zzcdVar.name, zzcdVar.zzwx);
                    arrayMap2.put(zzcdVar.name, zzcdVar.zzwy);
                    Integer num = zzcdVar.zzwz;
                    if (num != null) {
                        if (num.intValue() < zzmq || zzcdVar.zzwz.intValue() > zzmp) {
                            zzad().zzdd().zza("Invalid sampling rate. Event name, sample rate", zzcdVar.name, zzcdVar.zzwz);
                        } else {
                            arrayMap3.put(zzcdVar.name, zzcdVar.zzwz);
                        }
                    }
                }
            }
        }
        this.zzms.put(str, arrayMap);
        this.zzmt.put(str, arrayMap2);
        this.zzmv.put(str, arrayMap3);
    }

    protected final boolean zza(String str, byte[] bArr, String str2) throws IllegalStateException {
        byte[] bArr2;
        zzah();
        zzq();
        Preconditions.checkNotEmpty(str);
        com.google.android.gms.internal.measurement.zzce zzceVarZza = zza(str, bArr);
        if (zzceVarZza == null) {
            return false;
        }
        zza(str, zzceVarZza);
        this.zzmu.put(str, zzceVarZza);
        this.zzmw.put(str, str2);
        this.zzmr.put(str, zza(zzceVarZza));
        zzo zzoVarZzdn = zzdn();
        com.google.android.gms.internal.measurement.zzbx[] zzbxVarArr = zzceVarZza.zzxe;
        Preconditions.checkNotNull(zzbxVarArr);
        for (com.google.android.gms.internal.measurement.zzbx zzbxVar : zzbxVarArr) {
            for (com.google.android.gms.internal.measurement.zzby zzbyVar : zzbxVar.zzvw) {
                String strZzbh = zzcx.zzbh(zzbyVar.zzwb);
                if (strZzbh != null) {
                    zzbyVar.zzwb = strZzbh;
                }
                for (com.google.android.gms.internal.measurement.zzbz zzbzVar : zzbyVar.zzwc) {
                    String strZzbh2 = zzcy.zzbh(zzbzVar.zzwj);
                    if (strZzbh2 != null) {
                        zzbzVar.zzwj = strZzbh2;
                    }
                }
            }
            for (com.google.android.gms.internal.measurement.zzcb zzcbVar : zzbxVar.zzvv) {
                String strZzbh3 = zzcz.zzbh(zzcbVar.zzwq);
                if (strZzbh3 != null) {
                    zzcbVar.zzwq = strZzbh3;
                }
            }
        }
        zzoVarZzdn.zzdo().zza(str, zzbxVarArr);
        try {
            zzceVarZza.zzxe = null;
            bArr2 = new byte[zzceVarZza.zzly()];
            zzceVarZza.zza(zzin.zzk(bArr2, 0, bArr2.length));
        } catch (IOException e) {
            zzad().zzdd().zza("Unable to serialize reduced-size config. Storing full config instead. appId", zzau.zzao(str), e);
            bArr2 = bArr;
        }
        zzw zzwVarZzdo = zzdo();
        Preconditions.checkNotEmpty(str);
        zzwVarZzdo.zzq();
        zzwVarZzdo.zzah();
        new ContentValues().put("remote_config", bArr2);
        try {
            if (zzwVarZzdo.getWritableDatabase().update("apps", r0, "app_id = ?", new String[]{str}) == 0) {
                zzwVarZzdo.zzad().zzda().zza("Failed to update remote config (got 0). appId", zzau.zzao(str));
            }
        } catch (SQLiteException e2) {
            zzwVarZzdo.zzad().zzda().zza("Error storing remote config. appId", zzau.zzao(str), e2);
        }
        return true;
    }

    final boolean zzk(String str, String str2) throws IllegalStateException {
        Boolean bool;
        zzq();
        zzax(str);
        if (zzbe(str) && zzgd.zzbs(str2)) {
            return true;
        }
        if (zzbf(str) && zzgd.zzbm(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zzms.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    final boolean zzl(String str, String str2) throws IllegalStateException {
        Boolean bool;
        zzq();
        zzax(str);
        if ("ecommerce_purchase".equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zzmt.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    final int zzm(String str, String str2) throws IllegalStateException {
        Integer num;
        zzq();
        zzax(str);
        Map<String, Integer> map = this.zzmv.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    final long zzbd(String str) throws IllegalStateException {
        String strZzb = zzb(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(strZzb)) {
            return 0L;
        }
        try {
            return Long.parseLong(strZzb);
        } catch (NumberFormatException e) {
            zzad().zzdd().zza("Unable to parse timezone offset. appId", zzau.zzao(str), e);
            return 0L;
        }
    }

    private final com.google.android.gms.internal.measurement.zzce zza(String str, byte[] bArr) throws IllegalStateException {
        if (bArr == null) {
            return new com.google.android.gms.internal.measurement.zzce();
        }
        zzim zzimVarZzj = zzim.zzj(bArr, 0, bArr.length);
        com.google.android.gms.internal.measurement.zzce zzceVar = new com.google.android.gms.internal.measurement.zzce();
        try {
            zzceVar.zza(zzimVarZzj);
            zzad().zzdi().zza("Parsed config. version, gmp_app_id", zzceVar.zzxa, zzceVar.zzch);
            return zzceVar;
        } catch (IOException e) {
            zzad().zzdd().zza("Unable to merge remote config. appId", zzau.zzao(str), e);
            return new com.google.android.gms.internal.measurement.zzce();
        }
    }

    final boolean zzbe(String str) {
        return IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(zzb(str, "measurement.upload.blacklist_internal"));
    }

    final boolean zzbf(String str) {
        return IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(zzb(str, "measurement.upload.blacklist_public"));
    }

    @Override // com.google.android.gms.measurement.internal.zzfr
    public final /* bridge */ /* synthetic */ zzfz zzdm() {
        return super.zzdm();
    }

    @Override // com.google.android.gms.measurement.internal.zzfr
    public final /* bridge */ /* synthetic */ zzo zzdn() {
        return super.zzdn();
    }

    @Override // com.google.android.gms.measurement.internal.zzfr
    public final /* bridge */ /* synthetic */ zzw zzdo() {
        return super.zzdo();
    }

    @Override // com.google.android.gms.measurement.internal.zzfr
    public final /* bridge */ /* synthetic */ zzbs zzdp() {
        return super.zzdp();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzn() {
        super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzo() {
        super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzp() {
        super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzq() {
        super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzad zzy() {
        return super.zzy();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Clock zzz() {
        return super.zzz();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzas zzaa() {
        return super.zzaa();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzgd zzab() {
        return super.zzab();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzbt zzac() {
        return super.zzac();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzau zzad() {
        return super.zzad();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzbf zzae() {
        return super.zzae();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzt zzaf() {
        return super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzq zzag() {
        return super.zzag();
    }
}
