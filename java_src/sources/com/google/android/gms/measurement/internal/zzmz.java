package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zznp;
import com.google.android.gms.internal.measurement.zzpg;
import com.google.android.gms.internal.measurement.zzps;
import ha.f;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes11.dex */
public final class zzmz extends zzmo {
    static int zza(com.google.android.gms.internal.measurement.zzfi.zzj.zza zzaVar, String str) {
        if (zzaVar == null) {
            return -1;
        }
        for (int i10 = 0; i10 < zzaVar.zzb(); i10++) {
            if (str.equals(zzaVar.zzj(i10).zzg())) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzmo
    protected final boolean zzc() {
        return false;
    }

    static Object zzb(com.google.android.gms.internal.measurement.zzfi.zze zzeVar, String str) {
        com.google.android.gms.internal.measurement.zzfi.zzg zzgVarZza = zza(zzeVar, str);
        if (zzgVarZza == null) {
            return null;
        }
        if (zzgVarZza.zzn()) {
            return zzgVarZza.zzh();
        }
        if (zzgVarZza.zzl()) {
            return Long.valueOf(zzgVarZza.zzd());
        }
        if (zzgVarZza.zzj()) {
            return Double.valueOf(zzgVarZza.zza());
        }
        if (zzgVarZza.zzc() <= 0) {
            return null;
        }
        List<com.google.android.gms.internal.measurement.zzfi.zzg> listZzi = zzgVarZza.zzi();
        ArrayList arrayList = new ArrayList();
        for (com.google.android.gms.internal.measurement.zzfi.zzg zzgVar : listZzi) {
            if (zzgVar != null) {
                Bundle bundle = new Bundle();
                for (com.google.android.gms.internal.measurement.zzfi.zzg zzgVar2 : zzgVar.zzi()) {
                    if (zzgVar2.zzn()) {
                        bundle.putString(zzgVar2.zzg(), zzgVar2.zzh());
                    } else if (zzgVar2.zzl()) {
                        bundle.putLong(zzgVar2.zzg(), zzgVar2.zzd());
                    } else if (zzgVar2.zzj()) {
                        bundle.putDouble(zzgVar2.zzg(), zzgVar2.zza());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    final boolean zzc(String str) {
        Preconditions.checkNotNull(str);
        zzh zzhVarZzd = zzh().zzd(str);
        return zzhVarZzd != null && zzf().zzn() && zzhVarZzd.zzaj() && zzm().zzk(str);
    }

    final List<Integer> zzu() {
        Map<String, String> mapZza = zzbi.zza(this.zzf.zza());
        if (mapZza == null || mapZza.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int iIntValue = zzbi.zzap.zza(null).intValue();
        for (Map.Entry<String, String> entry : mapZza.entrySet()) {
            if (entry.getKey().startsWith("measurement.id.")) {
                try {
                    int i10 = Integer.parseInt(entry.getValue());
                    if (i10 != 0) {
                        arrayList.add(Integer.valueOf(i10));
                        if (arrayList.size() >= iIntValue) {
                            zzj().zzu().zza("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e) {
                    zzj().zzu().zza("Experiment ID NumberFormatException", e);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    zzmz(zzmp zzmpVar) {
        super(zzmpVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzmz g_() {
        return super.g_();
    }

    final long zza(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        return zza(str.getBytes(Charset.forName("UTF-8")));
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzae zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzaf zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzba zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzt zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzao zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzfq zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzfr zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzgd zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzgy zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzgp zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzls zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzml
    public final /* bridge */ /* synthetic */ zzmn zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zznd zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    @WorkerThread
    final long zza(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        zzq().zzt();
        MessageDigest messageDigestZzu = zznd.zzu();
        if (messageDigestZzu == null) {
            zzj().zzg().zza("Failed to get MD5");
            return 0L;
        }
        return zznd.zza(messageDigestZzu.digest(bArr));
    }

    final byte[] zzc(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int i10 = gZIPInputStream.read(bArr2);
                if (i10 > 0) {
                    byteArrayOutputStream.write(bArr2, 0, i10);
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            zzj().zzg().zza("Failed to ungzip content", e);
            throw e;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    private final Bundle zza(Map<String, Object> map, boolean z6) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z6) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj2 = arrayList.get(i10);
                    i10++;
                    arrayList2.add(zza((Map<String, Object>) obj2, false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    static boolean zzb(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    final byte[] zzb(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            zzj().zzg().zza("Failed to gzip content", e);
            throw e;
        }
    }

    final <T extends Parcelable> T zza(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.unmarshall(bArr, 0, bArr.length);
            parcelObtain.setDataPosition(0);
            return creator.createFromParcel(parcelObtain);
        } catch (SafeParcelReader.ParseException unused) {
            zzj().zzg().zza("Failed to load parcelable from buffer");
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    final zzbg zza(com.google.android.gms.internal.measurement.zzad zzadVar) {
        Object obj;
        Bundle bundleZza = zza(zzadVar.zzc(), true);
        String string = (!bundleZza.containsKey("_o") || (obj = bundleZza.get("_o")) == null) ? "app" : obj.toString();
        String strZzb = zzii.zzb(zzadVar.zzb());
        if (strZzb == null) {
            strZzb = zzadVar.zzb();
        }
        return new zzbg(strZzb, new zzbb(bundleZza), string, zzadVar.zza());
    }

    @TargetApi(30)
    final zzmh zza(String str, com.google.android.gms.internal.measurement.zzfi.zzj zzjVar, com.google.android.gms.internal.measurement.zzfi.zze.zza zzaVar, String str2) {
        int iIndexOf;
        if (!zzpg.zza() || !zze().zze(str, zzbi.zzcf)) {
            return null;
        }
        long jCurrentTimeMillis = zzb().currentTimeMillis();
        String[] strArrSplit = zze().zzd(str, zzbi.zzbb).split(",");
        HashSet hashSet = new HashSet(strArrSplit.length);
        for (String str3 : strArrSplit) {
            str3.getClass();
            if (!hashSet.add(str3)) {
                throw new IllegalArgumentException("duplicate element: " + ((Object) str3));
            }
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        zzmn zzmnVarZzo = zzo();
        String strZzf = zzmnVarZzo.zzm().zzf(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(zzmnVarZzo.zze().zzd(str, zzbi.zzav));
        if (!TextUtils.isEmpty(strZzf)) {
            builder.authority(strZzf + "." + zzmnVarZzo.zze().zzd(str, zzbi.zzaw));
        } else {
            builder.authority(zzmnVarZzo.zze().zzd(str, zzbi.zzaw));
        }
        builder.path(zzmnVarZzo.zze().zzd(str, zzbi.zzax));
        zza(builder, "gmp_app_id", zzjVar.zzah(), (Set<String>) setUnmodifiableSet);
        zza(builder, "gmp_version", "82001", (Set<String>) setUnmodifiableSet);
        String strZzy = zzjVar.zzy();
        zzaf zzafVarZze = zze();
        zzfi<Boolean> zzfiVar = zzbi.zzci;
        String str4 = "";
        if (zzafVarZze.zze(str, zzfiVar) && zzm().zzp(str)) {
            strZzy = "";
        }
        zza(builder, "app_instance_id", strZzy, (Set<String>) setUnmodifiableSet);
        zza(builder, "rdid", zzjVar.zzal(), (Set<String>) setUnmodifiableSet);
        zza(builder, "bundle_id", zzjVar.zzx(), (Set<String>) setUnmodifiableSet);
        String strZze = zzaVar.zze();
        String strZza = zzii.zza(strZze);
        if (!TextUtils.isEmpty(strZza)) {
            strZze = strZza;
        }
        zza(builder, "app_event_name", strZze, (Set<String>) setUnmodifiableSet);
        zza(builder, "app_version", String.valueOf(zzjVar.zzb()), (Set<String>) setUnmodifiableSet);
        String strZzaj = zzjVar.zzaj();
        if (!zze().zze(str, zzfiVar) || !zzm().zzt(str)) {
            str4 = strZzaj;
        } else if (zze().zze(str, zzbi.zzbv)) {
            if (!TextUtils.isEmpty(strZzaj) && (iIndexOf = strZzaj.indexOf(".")) != -1) {
                strZzaj = strZzaj.substring(0, iIndexOf);
            }
            str4 = strZzaj;
        }
        zza(builder, "os_version", str4, (Set<String>) setUnmodifiableSet);
        zza(builder, "timestamp", String.valueOf(zzaVar.zzc()), (Set<String>) setUnmodifiableSet);
        if (zzjVar.zzat()) {
            zza(builder, "lat", "1", (Set<String>) setUnmodifiableSet);
        }
        zza(builder, "privacy_sandbox_version", String.valueOf(zzjVar.zza()), (Set<String>) setUnmodifiableSet);
        zza(builder, "trigger_uri_source", "1", (Set<String>) setUnmodifiableSet);
        zza(builder, "trigger_uri_timestamp", String.valueOf(jCurrentTimeMillis), (Set<String>) setUnmodifiableSet);
        if (str2 != null) {
            zza(builder, "request_uuid", str2, (Set<String>) setUnmodifiableSet);
        }
        List<com.google.android.gms.internal.measurement.zzfi.zzg> listZzf = zzaVar.zzf();
        Bundle bundle = new Bundle();
        for (com.google.android.gms.internal.measurement.zzfi.zzg zzgVar : listZzf) {
            String strZzg = zzgVar.zzg();
            if (zzgVar.zzj()) {
                bundle.putString(strZzg, String.valueOf(zzgVar.zza()));
            } else if (zzgVar.zzk()) {
                bundle.putString(strZzg, String.valueOf(zzgVar.zzb()));
            } else if (zzgVar.zzn()) {
                bundle.putString(strZzg, zzgVar.zzh());
            } else if (zzgVar.zzl()) {
                bundle.putString(strZzg, String.valueOf(zzgVar.zzd()));
            }
        }
        zza(builder, zze().zzd(str, zzbi.zzba).split("\\|"), bundle, (Set<String>) setUnmodifiableSet);
        List<com.google.android.gms.internal.measurement.zzfi.zzn> listZzaq = zzjVar.zzaq();
        Bundle bundle2 = new Bundle();
        for (com.google.android.gms.internal.measurement.zzfi.zzn zznVar : listZzaq) {
            String strZzg2 = zznVar.zzg();
            if (zznVar.zzi()) {
                bundle2.putString(strZzg2, String.valueOf(zznVar.zza()));
            } else if (zznVar.zzj()) {
                bundle2.putString(strZzg2, String.valueOf(zznVar.zzb()));
            } else if (zznVar.zzm()) {
                bundle2.putString(strZzg2, zznVar.zzh());
            } else if (zznVar.zzk()) {
                bundle2.putString(strZzg2, String.valueOf(zznVar.zzc()));
            }
        }
        zza(builder, zze().zzd(str, zzbi.zzaz).split("\\|"), bundle2, (Set<String>) setUnmodifiableSet);
        if (zznp.zza() && zze().zza(zzbi.zzcm)) {
            zza(builder, "dma", zzjVar.zzas() ? "1" : "0", (Set<String>) setUnmodifiableSet);
            if (!zzjVar.zzad().isEmpty()) {
                zza(builder, "dma_cps", zzjVar.zzad(), (Set<String>) setUnmodifiableSet);
            }
        }
        return new zzmh(builder.build().toString(), jCurrentTimeMillis, 1);
    }

    final com.google.android.gms.internal.measurement.zzfi.zze zza(zzaz zzazVar) {
        com.google.android.gms.internal.measurement.zzfi.zze.zza zzaVarZza = com.google.android.gms.internal.measurement.zzfi.zze.zze().zza(zzazVar.zzd);
        for (String str : zzazVar.zze) {
            com.google.android.gms.internal.measurement.zzfi.zzg.zza zzaVarZza2 = com.google.android.gms.internal.measurement.zzfi.zzg.zze().zza(str);
            Object objZzc = zzazVar.zze.zzc(str);
            Preconditions.checkNotNull(objZzc);
            zza(zzaVarZza2, objZzc);
            zzaVarZza.zza(zzaVarZza2);
        }
        return (com.google.android.gms.internal.measurement.zzfi.zze) ((com.google.android.gms.internal.measurement.zzix) zzaVarZza.zzab());
    }

    static com.google.android.gms.internal.measurement.zzfi.zzg zza(com.google.android.gms.internal.measurement.zzfi.zze zzeVar, String str) {
        for (com.google.android.gms.internal.measurement.zzfi.zzg zzgVar : zzeVar.zzh()) {
            if (zzgVar.zzg().equals(str)) {
                return zzgVar;
            }
        }
        return null;
    }

    static <BuilderT extends com.google.android.gms.internal.measurement.zzkm> BuilderT zza(BuilderT buildert, byte[] bArr) throws com.google.android.gms.internal.measurement.zzji {
        com.google.android.gms.internal.measurement.zzik zzikVarZza = com.google.android.gms.internal.measurement.zzik.zza();
        if (zzikVarZza != null) {
            return (BuilderT) buildert.zza(bArr, zzikVarZza);
        }
        return (BuilderT) buildert.zza(bArr);
    }

    final String zza(com.google.android.gms.internal.measurement.zzfi.zzi zziVar) {
        com.google.android.gms.internal.measurement.zzfi.zzb zzbVarZzt;
        if (zziVar == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (com.google.android.gms.internal.measurement.zzfi.zzj zzjVar : zziVar.zzd()) {
            if (zzjVar != null) {
                zza(sb, 1);
                sb.append("bundle {\n");
                if (zzjVar.zzbk()) {
                    zza(sb, 1, "protocol_version", Integer.valueOf(zzjVar.zze()));
                }
                if (zzps.zza() && zze().zze(zzjVar.zzx(), zzbi.zzbt) && zzjVar.zzbn()) {
                    zza(sb, 1, "session_stitching_token", zzjVar.zzam());
                }
                zza(sb, 1, "platform", zzjVar.zzak());
                if (zzjVar.zzbf()) {
                    zza(sb, 1, "gmp_version", Long.valueOf(zzjVar.zzm()));
                }
                if (zzjVar.zzbs()) {
                    zza(sb, 1, "uploading_gmp_version", Long.valueOf(zzjVar.zzs()));
                }
                if (zzjVar.zzbd()) {
                    zza(sb, 1, "dynamite_version", Long.valueOf(zzjVar.zzk()));
                }
                if (zzjVar.zzay()) {
                    zza(sb, 1, "config_version", Long.valueOf(zzjVar.zzi()));
                }
                zza(sb, 1, "gmp_app_id", zzjVar.zzah());
                zza(sb, 1, "admob_app_id", zzjVar.zzw());
                zza(sb, 1, "app_id", zzjVar.zzx());
                zza(sb, 1, "app_version", zzjVar.zzaa());
                if (zzjVar.zzav()) {
                    zza(sb, 1, "app_version_major", Integer.valueOf(zzjVar.zzb()));
                }
                zza(sb, 1, "firebase_instance_id", zzjVar.zzag());
                if (zzjVar.zzbc()) {
                    zza(sb, 1, "dev_cert_hash", Long.valueOf(zzjVar.zzj()));
                }
                zza(sb, 1, "app_store", zzjVar.zzz());
                if (zzjVar.zzbr()) {
                    zza(sb, 1, "upload_timestamp_millis", Long.valueOf(zzjVar.zzr()));
                }
                if (zzjVar.zzbo()) {
                    zza(sb, 1, "start_timestamp_millis", Long.valueOf(zzjVar.zzp()));
                }
                if (zzjVar.zzbe()) {
                    zza(sb, 1, "end_timestamp_millis", Long.valueOf(zzjVar.zzl()));
                }
                if (zzjVar.zzbj()) {
                    zza(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzjVar.zzo()));
                }
                if (zzjVar.zzbi()) {
                    zza(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzjVar.zzn()));
                }
                zza(sb, 1, "app_instance_id", zzjVar.zzy());
                zza(sb, 1, "resettable_device_id", zzjVar.zzal());
                zza(sb, 1, "ds_id", zzjVar.zzaf());
                if (zzjVar.zzbh()) {
                    zza(sb, 1, "limited_ad_tracking", Boolean.valueOf(zzjVar.zzat()));
                }
                zza(sb, 1, "os_version", zzjVar.zzaj());
                zza(sb, 1, "device_model", zzjVar.zzae());
                zza(sb, 1, "user_default_language", zzjVar.zzan());
                if (zzjVar.zzbq()) {
                    zza(sb, 1, "time_zone_offset_minutes", Integer.valueOf(zzjVar.zzg()));
                }
                if (zzjVar.zzax()) {
                    zza(sb, 1, "bundle_sequential_index", Integer.valueOf(zzjVar.zzc()));
                }
                if (zzjVar.zzbm()) {
                    zza(sb, 1, "service_upload", Boolean.valueOf(zzjVar.zzau()));
                }
                zza(sb, 1, "health_monitor", zzjVar.zzai());
                if (zzjVar.zzbl()) {
                    zza(sb, 1, "retry_counter", Integer.valueOf(zzjVar.zzf()));
                }
                if (zzjVar.zzba()) {
                    zza(sb, 1, "consent_signals", zzjVar.zzac());
                }
                if (zzjVar.zzbg()) {
                    zza(sb, 1, "is_dma_region", Boolean.valueOf(zzjVar.zzas()));
                }
                if (zzjVar.zzbb()) {
                    zza(sb, 1, "core_platform_services", zzjVar.zzad());
                }
                if (zzjVar.zzaz()) {
                    zza(sb, 1, "consent_diagnostics", zzjVar.zzab());
                }
                if (zzjVar.zzbp()) {
                    zza(sb, 1, "target_os_version", Long.valueOf(zzjVar.zzq()));
                }
                if (zzpg.zza() && zze().zze(zzjVar.zzx(), zzbi.zzcf)) {
                    zza(sb, 1, "ad_services_version", Integer.valueOf(zzjVar.zza()));
                    if (zzjVar.zzaw() && (zzbVarZzt = zzjVar.zzt()) != null) {
                        zza(sb, 2);
                        sb.append("attribution_eligibility_status {\n");
                        zza(sb, 2, "eligible", Boolean.valueOf(zzbVarZzt.zzf()));
                        zza(sb, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(zzbVarZzt.zzh()));
                        zza(sb, 2, "pre_r", Boolean.valueOf(zzbVarZzt.zzi()));
                        zza(sb, 2, "r_extensions_too_old", Boolean.valueOf(zzbVarZzt.zzj()));
                        zza(sb, 2, "adservices_extension_too_old", Boolean.valueOf(zzbVarZzt.zze()));
                        zza(sb, 2, "ad_storage_not_allowed", Boolean.valueOf(zzbVarZzt.zzd()));
                        zza(sb, 2, "measurement_manager_disabled", Boolean.valueOf(zzbVarZzt.zzg()));
                        zza(sb, 2);
                        sb.append("}\n");
                    }
                }
                List<com.google.android.gms.internal.measurement.zzfi.zzn> listZzaq = zzjVar.zzaq();
                if (listZzaq != null) {
                    for (com.google.android.gms.internal.measurement.zzfi.zzn zznVar : listZzaq) {
                        if (zznVar != null) {
                            zza(sb, 2);
                            sb.append("user_property {\n");
                            zza(sb, 2, "set_timestamp_millis", zznVar.zzl() ? Long.valueOf(zznVar.zzd()) : null);
                            zza(sb, 2, "name", zzi().zzc(zznVar.zzg()));
                            zza(sb, 2, "string_value", zznVar.zzh());
                            zza(sb, 2, "int_value", zznVar.zzk() ? Long.valueOf(zznVar.zzc()) : null);
                            zza(sb, 2, "double_value", zznVar.zzi() ? Double.valueOf(zznVar.zza()) : null);
                            zza(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.zzfi.zzc> listZzao = zzjVar.zzao();
                zzjVar.zzx();
                if (listZzao != null) {
                    for (com.google.android.gms.internal.measurement.zzfi.zzc zzcVar : listZzao) {
                        if (zzcVar != null) {
                            zza(sb, 2);
                            sb.append("audience_membership {\n");
                            if (zzcVar.zzg()) {
                                zza(sb, 2, "audience_id", Integer.valueOf(zzcVar.zza()));
                            }
                            if (zzcVar.zzh()) {
                                zza(sb, 2, "new_audience", Boolean.valueOf(zzcVar.zzf()));
                            }
                            zza(sb, 2, "current_data", zzcVar.zzd());
                            if (zzcVar.zzi()) {
                                zza(sb, 2, "previous_data", zzcVar.zze());
                            }
                            zza(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.zzfi.zze> listZzap = zzjVar.zzap();
                if (listZzap != null) {
                    for (com.google.android.gms.internal.measurement.zzfi.zze zzeVar : listZzap) {
                        if (zzeVar != null) {
                            zza(sb, 2);
                            sb.append("event {\n");
                            zza(sb, 2, "name", zzi().zza(zzeVar.zzg()));
                            if (zzeVar.zzk()) {
                                zza(sb, 2, "timestamp_millis", Long.valueOf(zzeVar.zzd()));
                            }
                            if (zzeVar.zzj()) {
                                zza(sb, 2, "previous_timestamp_millis", Long.valueOf(zzeVar.zzc()));
                            }
                            if (zzeVar.zzi()) {
                                zza(sb, 2, f.COUNT_KEY, Integer.valueOf(zzeVar.zza()));
                            }
                            if (zzeVar.zzb() != 0) {
                                zza(sb, 2, zzeVar.zzh());
                            }
                            zza(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                zza(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    final String zza(com.google.android.gms.internal.measurement.zzew.zzb zzbVar) {
        if (zzbVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (zzbVar.zzl()) {
            zza(sb, 0, "filter_id", Integer.valueOf(zzbVar.zzb()));
        }
        zza(sb, 0, "event_name", zzi().zza(zzbVar.zzf()));
        String strZza = zza(zzbVar.zzh(), zzbVar.zzi(), zzbVar.zzj());
        if (!strZza.isEmpty()) {
            zza(sb, 0, "filter_type", strZza);
        }
        if (zzbVar.zzk()) {
            zza(sb, 1, "event_count_filter", zzbVar.zze());
        }
        if (zzbVar.zza() > 0) {
            sb.append("  filters {\n");
            Iterator<com.google.android.gms.internal.measurement.zzew.zzc> it = zzbVar.zzg().iterator();
            while (it.hasNext()) {
                zza(sb, 2, it.next());
            }
        }
        zza(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    private static String zza(boolean z6, boolean z10, boolean z11) {
        StringBuilder sb = new StringBuilder();
        if (z6) {
            sb.append("Dynamic ");
        }
        if (z10) {
            sb.append("Sequence ");
        }
        if (z11) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    final String zza(com.google.android.gms.internal.measurement.zzew.zze zzeVar) {
        if (zzeVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (zzeVar.zzi()) {
            zza(sb, 0, "filter_id", Integer.valueOf(zzeVar.zza()));
        }
        zza(sb, 0, "property_name", zzi().zzc(zzeVar.zze()));
        String strZza = zza(zzeVar.zzf(), zzeVar.zzg(), zzeVar.zzh());
        if (!strZza.isEmpty()) {
            zza(sb, 0, "filter_type", strZza);
        }
        zza(sb, 1, zzeVar.zzb());
        sb.append("}\n");
        return sb.toString();
    }

    final List<Long> zza(List<Long> list, List<Integer> list2) {
        int i10;
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                zzj().zzu().zza("Ignoring negative bit index to be cleared", num);
            } else {
                int iIntValue = num.intValue() / 64;
                if (iIntValue >= arrayList.size()) {
                    zzj().zzu().zza("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(iIntValue, Long.valueOf(((Long) arrayList.get(iIntValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i11 = size2;
            i10 = size;
            size = i11;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i10);
    }

    static List<Long> zza(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i10 = 0; i10 < length; i10++) {
            long j6 = 0;
            for (int i11 = 0; i11 < 64; i11++) {
                int i12 = (i10 << 6) + i11;
                if (i12 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i12)) {
                    j6 |= 1 << i11;
                }
            }
            arrayList.add(Long.valueOf(j6));
        }
        return arrayList;
    }

    final Map<String, Object> zza(Bundle bundle, boolean z6) {
        HashMap map = new HashMap();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            boolean z10 = obj instanceof Parcelable[];
            if (z10 || (obj instanceof ArrayList) || (obj instanceof Bundle)) {
                if (z6) {
                    ArrayList arrayList = new ArrayList();
                    if (z10) {
                        for (Parcelable parcelable : (Parcelable[]) obj) {
                            if (parcelable instanceof Bundle) {
                                arrayList.add(zza((Bundle) parcelable, false));
                            }
                        }
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList2 = (ArrayList) obj;
                        int size = arrayList2.size();
                        int i10 = 0;
                        while (i10 < size) {
                            Object obj2 = arrayList2.get(i10);
                            i10++;
                            if (obj2 instanceof Bundle) {
                                arrayList.add(zza((Bundle) obj2, false));
                            }
                        }
                    } else if (obj instanceof Bundle) {
                        arrayList.add(zza((Bundle) obj, false));
                    }
                    map.put(str, arrayList);
                }
            } else if (obj != null) {
                map.put(str, obj);
            }
        }
        return map;
    }

    static void zza(com.google.android.gms.internal.measurement.zzfi.zze.zza zzaVar, String str, Object obj) {
        List<com.google.android.gms.internal.measurement.zzfi.zzg> listZzf = zzaVar.zzf();
        int i10 = 0;
        while (true) {
            if (i10 >= listZzf.size()) {
                i10 = -1;
                break;
            } else if (str.equals(listZzf.get(i10).zzg())) {
                break;
            } else {
                i10++;
            }
        }
        com.google.android.gms.internal.measurement.zzfi.zzg.zza zzaVarZza = com.google.android.gms.internal.measurement.zzfi.zzg.zze().zza(str);
        if (obj instanceof Long) {
            zzaVarZza.zza(((Long) obj).longValue());
        } else if (obj instanceof String) {
            zzaVarZza.zzb((String) obj);
        } else if (obj instanceof Double) {
            zzaVarZza.zza(((Double) obj).doubleValue());
        }
        if (i10 >= 0) {
            zzaVar.zza(i10, zzaVarZza);
        } else {
            zzaVar.zza(zzaVarZza);
        }
    }

    private static void zza(Uri.Builder builder, String[] strArr, Bundle bundle, Set<String> set) {
        for (String str : strArr) {
            String[] strArrSplit = str.split(",");
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[strArrSplit.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                zza(builder, str3, string, set);
            }
        }
    }

    private static void zza(StringBuilder sb, int i10, String str, com.google.android.gms.internal.measurement.zzfi.zzl zzlVar) {
        if (zzlVar == null) {
            return;
        }
        zza(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (zzlVar.zzb() != 0) {
            zza(sb, 4);
            sb.append("results: ");
            int i11 = 0;
            for (Long l : zzlVar.zzi()) {
                int i12 = i11 + 1;
                if (i11 != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i11 = i12;
            }
            sb.append('\n');
        }
        if (zzlVar.zzd() != 0) {
            zza(sb, 4);
            sb.append("status: ");
            int i13 = 0;
            for (Long l6 : zzlVar.zzk()) {
                int i14 = i13 + 1;
                if (i13 != 0) {
                    sb.append(", ");
                }
                sb.append(l6);
                i13 = i14;
            }
            sb.append('\n');
        }
        if (zzlVar.zza() != 0) {
            zza(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i15 = 0;
            for (com.google.android.gms.internal.measurement.zzfi.zzd zzdVar : zzlVar.zzh()) {
                int i16 = i15 + 1;
                if (i15 != 0) {
                    sb.append(", ");
                }
                sb.append(zzdVar.zzf() ? Integer.valueOf(zzdVar.zza()) : null);
                sb.append(":");
                sb.append(zzdVar.zze() ? Long.valueOf(zzdVar.zzb()) : null);
                i15 = i16;
            }
            sb.append("}\n");
        }
        if (zzlVar.zzc() != 0) {
            zza(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i17 = 0;
            for (com.google.android.gms.internal.measurement.zzfi.zzm zzmVar : zzlVar.zzj()) {
                int i18 = i17 + 1;
                if (i17 != 0) {
                    sb.append(", ");
                }
                sb.append(zzmVar.zzf() ? Integer.valueOf(zzmVar.zzb()) : null);
                sb.append(": [");
                Iterator<Long> it = zzmVar.zze().iterator();
                int i19 = 0;
                while (it.hasNext()) {
                    long jLongValue = it.next().longValue();
                    int i20 = i19 + 1;
                    if (i19 != 0) {
                        sb.append(", ");
                    }
                    sb.append(jLongValue);
                    i19 = i20;
                }
                sb.append("]");
                i17 = i18;
            }
            sb.append("}\n");
        }
        zza(sb, 3);
        sb.append("}\n");
    }

    private final void zza(StringBuilder sb, int i10, List<com.google.android.gms.internal.measurement.zzfi.zzg> list) {
        if (list == null) {
            return;
        }
        int i11 = i10 + 1;
        for (com.google.android.gms.internal.measurement.zzfi.zzg zzgVar : list) {
            if (zzgVar != null) {
                zza(sb, i11);
                sb.append("param {\n");
                zza(sb, i11, "name", zzgVar.zzm() ? zzi().zzb(zzgVar.zzg()) : null);
                zza(sb, i11, "string_value", zzgVar.zzn() ? zzgVar.zzh() : null);
                zza(sb, i11, "int_value", zzgVar.zzl() ? Long.valueOf(zzgVar.zzd()) : null);
                zza(sb, i11, "double_value", zzgVar.zzj() ? Double.valueOf(zzgVar.zza()) : null);
                if (zzgVar.zzc() > 0) {
                    zza(sb, i11, zzgVar.zzi());
                }
                zza(sb, i11);
                sb.append("}\n");
            }
        }
    }

    private final void zza(StringBuilder sb, int i10, com.google.android.gms.internal.measurement.zzew.zzc zzcVar) {
        if (zzcVar == null) {
            return;
        }
        zza(sb, i10);
        sb.append("filter {\n");
        if (zzcVar.zzg()) {
            zza(sb, i10, "complement", Boolean.valueOf(zzcVar.zzf()));
        }
        if (zzcVar.zzi()) {
            zza(sb, i10, "param_name", zzi().zzb(zzcVar.zze()));
        }
        if (zzcVar.zzj()) {
            int i11 = i10 + 1;
            com.google.android.gms.internal.measurement.zzew.zzf zzfVarZzd = zzcVar.zzd();
            if (zzfVarZzd != null) {
                zza(sb, i11);
                sb.append("string_filter");
                sb.append(" {\n");
                if (zzfVarZzd.zzj()) {
                    zza(sb, i11, "match_type", zzfVarZzd.zzb().name());
                }
                if (zzfVarZzd.zzi()) {
                    zza(sb, i11, "expression", zzfVarZzd.zze());
                }
                if (zzfVarZzd.zzh()) {
                    zza(sb, i11, "case_sensitive", Boolean.valueOf(zzfVarZzd.zzg()));
                }
                if (zzfVarZzd.zza() > 0) {
                    zza(sb, i10 + 2);
                    sb.append("expression_list {\n");
                    for (String str : zzfVarZzd.zzf()) {
                        zza(sb, i10 + 3);
                        sb.append(str);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                zza(sb, i11);
                sb.append("}\n");
            }
        }
        if (zzcVar.zzh()) {
            zza(sb, i10 + 1, "number_filter", zzcVar.zzc());
        }
        zza(sb, i10);
        sb.append("}\n");
    }

    private static void zza(StringBuilder sb, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            sb.append("  ");
        }
    }

    private static void zza(StringBuilder sb, int i10, String str, com.google.android.gms.internal.measurement.zzew.zzd zzdVar) {
        if (zzdVar == null) {
            return;
        }
        zza(sb, i10);
        sb.append(str);
        sb.append(" {\n");
        if (zzdVar.zzh()) {
            zza(sb, i10, "comparison_type", zzdVar.zza().name());
        }
        if (zzdVar.zzj()) {
            zza(sb, i10, "match_as_float", Boolean.valueOf(zzdVar.zzg()));
        }
        if (zzdVar.zzi()) {
            zza(sb, i10, "comparison_value", zzdVar.zzd());
        }
        if (zzdVar.zzl()) {
            zza(sb, i10, "min_comparison_value", zzdVar.zzf());
        }
        if (zzdVar.zzk()) {
            zza(sb, i10, "max_comparison_value", zzdVar.zze());
        }
        zza(sb, i10);
        sb.append("}\n");
    }

    private static void zza(Uri.Builder builder, String str, String str2, Set<String> set) {
        if (set.contains(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }

    private static void zza(StringBuilder sb, int i10, String str, Object obj) {
        if (obj == null) {
            return;
        }
        zza(sb, i10 + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    final void zza(com.google.android.gms.internal.measurement.zzfi.zzj.zza zzaVar) {
        zzj().zzp().zza("Checking account type status for ad personalization signals");
        if (zzc(zzaVar.zzr())) {
            zzj().zzc().zza("Turning off ad personalization due to account type");
            com.google.android.gms.internal.measurement.zzfi.zzn zznVar = (com.google.android.gms.internal.measurement.zzfi.zzn) ((com.google.android.gms.internal.measurement.zzix) com.google.android.gms.internal.measurement.zzfi.zzn.zze().zza("_npa").zzb(zzf().zzc()).zza(1L).zzab());
            int i10 = 0;
            while (true) {
                if (i10 < zzaVar.zzb()) {
                    if ("_npa".equals(zzaVar.zzj(i10).zzg())) {
                        zzaVar.zza(i10, zznVar);
                        break;
                    }
                    i10++;
                } else {
                    zzaVar.zza(zznVar);
                    break;
                }
            }
            if (zznp.zza() && zze().zza(zzbi.zzcm)) {
                zzak zzakVarZza = zzak.zza(zzaVar.zzs());
                zzakVarZza.zza(zzih.zza.AD_PERSONALIZATION, zzaj.CHILD_ACCOUNT);
                zzaVar.zzf(zzakVarZza.toString());
            }
        }
    }

    final void zza(com.google.android.gms.internal.measurement.zzfi.zzg.zza zzaVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzaVar.zze().zzc().zzb().zzd();
        if (obj instanceof String) {
            zzaVar.zzb((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzaVar.zza(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            zzaVar.zza(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Bundle[]) {
            ArrayList arrayList = new ArrayList();
            for (Bundle bundle : (Bundle[]) obj) {
                if (bundle != null) {
                    com.google.android.gms.internal.measurement.zzfi.zzg.zza zzaVarZze = com.google.android.gms.internal.measurement.zzfi.zzg.zze();
                    for (String str : bundle.keySet()) {
                        com.google.android.gms.internal.measurement.zzfi.zzg.zza zzaVarZza = com.google.android.gms.internal.measurement.zzfi.zzg.zze().zza(str);
                        Object obj2 = bundle.get(str);
                        if (obj2 instanceof Long) {
                            zzaVarZza.zza(((Long) obj2).longValue());
                        } else if (obj2 instanceof String) {
                            zzaVarZza.zzb((String) obj2);
                        } else if (obj2 instanceof Double) {
                            zzaVarZza.zza(((Double) obj2).doubleValue());
                        }
                        zzaVarZze.zza(zzaVarZza);
                    }
                    if (zzaVarZze.zza() > 0) {
                        arrayList.add((com.google.android.gms.internal.measurement.zzfi.zzg) ((com.google.android.gms.internal.measurement.zzix) zzaVarZze.zzab()));
                    }
                }
            }
            zzaVar.zza(arrayList);
            return;
        }
        zzj().zzg().zza("Ignoring invalid (type) event param value", obj);
    }

    final void zza(com.google.android.gms.internal.measurement.zzfi.zzn.zza zzaVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzaVar.zzc().zzb().zza();
        if (obj instanceof String) {
            zzaVar.zzb((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzaVar.zza(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.zza(((Double) obj).doubleValue());
        } else {
            zzj().zzg().zza("Ignoring invalid (type) user attribute value", obj);
        }
    }

    @WorkerThread
    static boolean zza(zzbg zzbgVar, zzo zzoVar) {
        Preconditions.checkNotNull(zzbgVar);
        Preconditions.checkNotNull(zzoVar);
        return (TextUtils.isEmpty(zzoVar.zzb) && TextUtils.isEmpty(zzoVar.zzp)) ? false : true;
    }

    static boolean zza(List<Long> list, int i10) {
        if (i10 < (list.size() << 6)) {
            return ((1 << (i10 % 64)) & list.get(i10 / 64).longValue()) != 0;
        }
        return false;
    }

    final boolean zza(long j6, long j10) {
        return j6 == 0 || j10 <= 0 || Math.abs(zzb().currentTimeMillis() - j6) > j10;
    }
}
