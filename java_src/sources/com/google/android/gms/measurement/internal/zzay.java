package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.narvii.util.ws.WsMessage;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public final class zzay {
    public static final zzay zza = new zzay((Boolean) null, 100);
    private final int zzb;
    private final String zzc;
    private final Boolean zzd;
    private final String zze;
    private final EnumMap<zzih.zza, Boolean> zzf;

    zzay(Boolean bool, int i10) {
        this(bool, i10, (Boolean) null, (String) null);
    }

    public final int zza() {
        return this.zzb;
    }

    public final Boolean zzd() {
        return this.zzd;
    }

    public final String zze() {
        return this.zze;
    }

    public final String zzf() {
        return this.zzc;
    }

    private zzay(EnumMap<zzih.zza, Boolean> enumMap, int i10) {
        this(enumMap, i10, (Boolean) null, (String) null);
    }

    public static zzay zza(Bundle bundle, int i10) {
        if (bundle == null) {
            return new zzay((Boolean) null, i10);
        }
        EnumMap enumMap = new EnumMap(zzih.zza.class);
        for (zzih.zza zzaVar : zzig.DMA.zza()) {
            enumMap.put(zzaVar, zzih.zzb(bundle.getString(zzaVar.zze)));
        }
        return new zzay((EnumMap<zzih.zza, Boolean>) enumMap, i10, bundle.containsKey("is_dma_region") ? Boolean.valueOf(bundle.getString("is_dma_region")) : null, bundle.getString("cps_display_str"));
    }

    private final String zzh() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.zzb);
        for (zzih.zza zzaVar : zzig.DMA.zza()) {
            sb.append(":");
            sb.append(zzih.zza(this.zzf.get(zzaVar)));
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzay)) {
            return false;
        }
        zzay zzayVar = (zzay) obj;
        if (this.zzc.equalsIgnoreCase(zzayVar.zzc) && zzax.zza(this.zzd, zzayVar.zzd)) {
            return zzax.zza(this.zze, zzayVar.zze);
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        Boolean bool = this.zzd;
        if (bool == null) {
            i10 = 3;
        } else {
            i10 = bool == Boolean.TRUE ? 7 : 13;
        }
        String str = this.zze;
        return this.zzc.hashCode() + (i10 * 29) + ((str == null ? 17 : str.hashCode()) * WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(zzih.zza(this.zzb));
        for (zzih.zza zzaVar : zzig.DMA.zza()) {
            sb.append(",");
            sb.append(zzaVar.zze);
            sb.append("=");
            Boolean bool = this.zzf.get(zzaVar);
            if (bool == null) {
                sb.append("uninitialized");
            } else {
                sb.append(bool.booleanValue() ? "granted" : "denied");
            }
        }
        if (this.zzd != null) {
            sb.append(",isDmaRegion=");
            sb.append(this.zzd);
        }
        if (this.zze != null) {
            sb.append(",cpsDisplayStr=");
            sb.append(this.zze);
        }
        return sb.toString();
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        Iterator it = this.zzf.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Boolean bool = (Boolean) entry.getValue();
            if (bool != null) {
                bundle.putString(((zzih.zza) entry.getKey()).zze, zzih.zza(bool.booleanValue()));
            }
        }
        Boolean bool2 = this.zzd;
        if (bool2 != null) {
            bundle.putString("is_dma_region", bool2.toString());
        }
        String str = this.zze;
        if (str != null) {
            bundle.putString("cps_display_str", str);
        }
        return bundle;
    }

    public final Boolean zzc() {
        return this.zzf.get(zzih.zza.AD_USER_DATA);
    }

    public final boolean zzg() {
        Iterator<Boolean> it = this.zzf.values().iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                return true;
            }
        }
        return false;
    }

    zzay(Boolean bool, int i10, Boolean bool2, String str) {
        EnumMap<zzih.zza, Boolean> enumMap = new EnumMap<>(zzih.zza.class);
        this.zzf = enumMap;
        enumMap.put(zzih.zza.AD_USER_DATA, bool);
        this.zzb = i10;
        this.zzc = zzh();
        this.zzd = bool2;
        this.zze = str;
    }

    private zzay(EnumMap<zzih.zza, Boolean> enumMap, int i10, Boolean bool, String str) {
        EnumMap<zzih.zza, Boolean> enumMap2 = new EnumMap<>(zzih.zza.class);
        this.zzf = enumMap2;
        enumMap2.putAll(enumMap);
        this.zzb = i10;
        this.zzc = zzh();
        this.zzd = bool;
        this.zze = str;
    }

    public static zzay zza(String str) {
        if (str == null || str.length() <= 0) {
            return zza;
        }
        String[] strArrSplit = str.split(":");
        int i10 = Integer.parseInt(strArrSplit[0]);
        EnumMap enumMap = new EnumMap(zzih.zza.class);
        zzih.zza[] zzaVarArrZza = zzig.DMA.zza();
        int length = zzaVarArrZza.length;
        int i11 = 1;
        int i12 = 0;
        while (i12 < length) {
            enumMap.put(zzaVarArrZza[i12], zzih.zza(strArrSplit[i11].charAt(0)));
            i12++;
            i11++;
        }
        return new zzay((EnumMap<zzih.zza, Boolean>) enumMap, i10);
    }

    public static Boolean zza(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        return zzih.zzb(bundle.getString("ad_personalization"));
    }
}
