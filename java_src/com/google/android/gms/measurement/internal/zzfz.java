package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzbl;
import com.google.android.gms.internal.measurement.zzbt;
import com.google.android.gms.internal.measurement.zzin;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.pushservice.PushNotificationService;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes2.dex */
public final class zzfz extends zzfs {
    zzfz(zzft zzftVar) {
        super(zzftVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzfs
    protected final boolean zzak() {
        return false;
    }

    final void zza(zzbt.zzh.zza zzaVar, Object obj) throws IllegalStateException {
        Preconditions.checkNotNull(obj);
        zzaVar.zziw().zzix().zziy();
        if (obj instanceof String) {
            zzaVar.zzbz((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzaVar.zzao(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.zzc(((Double) obj).doubleValue());
        } else {
            zzad().zzda().zza("Ignoring invalid (type) user attribute value", obj);
        }
    }

    final void zza(zzbt.zzd.zza zzaVar, Object obj) throws IllegalStateException {
        Preconditions.checkNotNull(obj);
        zzaVar.zzhv().zzhw().zzhx();
        if (obj instanceof String) {
            zzaVar.zzbx((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzaVar.zzaj(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.zzb(((Double) obj).doubleValue());
        } else {
            zzad().zzda().zza("Ignoring invalid (type) event param value", obj);
        }
    }

    final byte[] zza(com.google.android.gms.internal.measurement.zzcg zzcgVar) throws IllegalStateException {
        try {
            byte[] bArr = new byte[zzcgVar.zzly()];
            zzin zzinVarZzk = zzin.zzk(bArr, 0, bArr.length);
            zzcgVar.zza(zzinVarZzk);
            zzinVarZzk.zzlk();
            return bArr;
        } catch (IOException e) {
            zzad().zzda().zza("Data loss. Failed to serialize batch", e);
            return null;
        }
    }

    static zzbt.zzd zza(com.google.android.gms.internal.measurement.zzcf zzcfVar, String str) {
        for (zzbt.zzd zzdVar : zzcfVar.zzxi) {
            if (zzdVar.getName().equals(str)) {
                return zzdVar;
            }
        }
        return null;
    }

    static Object zzb(com.google.android.gms.internal.measurement.zzcf zzcfVar, String str) {
        zzbt.zzd zzdVarZza = zza(zzcfVar, str);
        if (zzdVarZza == null) {
            return null;
        }
        if (zzdVarZza.zzhk()) {
            return zzdVarZza.zzhl();
        }
        if (zzdVarZza.zzhn()) {
            return Long.valueOf(zzdVarZza.zzho());
        }
        if (zzdVarZza.zzhq()) {
            return Double.valueOf(zzdVarZza.zzhr());
        }
        return null;
    }

    static zzbt.zzd[] zza(zzbt.zzd[] zzdVarArr, String str, Object obj) {
        for (int i = 0; i < zzdVarArr.length; i++) {
            zzbt.zzd.zza zzaVarZzmh = zzdVarArr[i].zzmh();
            if (str.equals(zzaVarZzmh.getName())) {
                zzaVarZzmh.zzhw().zzhv().zzhx();
                if (obj instanceof Long) {
                    zzaVarZzmh.zzaj(((Long) obj).longValue());
                } else if (obj instanceof String) {
                    zzaVarZzmh.zzbx((String) obj);
                } else if (obj instanceof Double) {
                    zzaVarZzmh.zzb(((Double) obj).doubleValue());
                }
                zzdVarArr[i] = (zzbt.zzd) zzaVarZzmh.zzmr();
                return zzdVarArr;
            }
        }
        zzbt.zzd[] zzdVarArr2 = new zzbt.zzd[zzdVarArr.length + 1];
        System.arraycopy(zzdVarArr, 0, zzdVarArr2, 0, zzdVarArr.length);
        zzbt.zzd.zza zzaVarZzbw = zzbt.zzd.zzht().zzbw(str);
        if (obj instanceof Long) {
            zzaVarZzbw.zzaj(((Long) obj).longValue());
        } else if (obj instanceof String) {
            zzaVarZzbw.zzbx((String) obj);
        } else if (obj instanceof Double) {
            zzaVarZzbw.zzb(((Double) obj).doubleValue());
        }
        zzdVarArr2[zzdVarArr.length] = (zzbt.zzd) zzaVarZzbw.zzmr();
        return zzdVarArr2;
    }

    final String zzb(com.google.android.gms.internal.measurement.zzcg zzcgVar) {
        com.google.android.gms.internal.measurement.zzch[] zzchVarArr;
        com.google.android.gms.internal.measurement.zzcf[] zzcfVarArr;
        String str;
        com.google.android.gms.internal.measurement.zzcf[] zzcfVarArr2;
        int i;
        int i2;
        String str2;
        com.google.android.gms.internal.measurement.zzch[] zzchVarArr2;
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        com.google.android.gms.internal.measurement.zzch[] zzchVarArr3 = zzcgVar.zzxl;
        if (zzchVarArr3 != null) {
            int length = zzchVarArr3.length;
            int i3 = 0;
            while (i3 < length) {
                com.google.android.gms.internal.measurement.zzch zzchVar = zzchVarArr3[i3];
                if (zzchVar == null || zzchVar == null) {
                    zzchVarArr = zzchVarArr3;
                } else {
                    zza(sb, 1);
                    sb.append("bundle {\n");
                    zza(sb, 1, "protocol_version", zzchVar.zzxn);
                    zza(sb, 1, "platform", zzchVar.zzxv);
                    zza(sb, 1, "gmp_version", zzchVar.zzxz);
                    zza(sb, 1, "uploading_gmp_version", zzchVar.zzya);
                    zza(sb, 1, "dynamite_version", zzchVar.zzys);
                    zza(sb, 1, "config_version", zzchVar.zzyl);
                    zza(sb, 1, "gmp_app_id", zzchVar.zzch);
                    zza(sb, 1, "admob_app_id", zzchVar.zzxf);
                    zza(sb, 1, "app_id", zzchVar.zzcf);
                    zza(sb, 1, "app_version", zzchVar.zzcn);
                    zza(sb, 1, "app_version_major", zzchVar.zzyh);
                    zza(sb, 1, "firebase_instance_id", zzchVar.zzcj);
                    zza(sb, 1, "dev_cert_hash", zzchVar.zzyd);
                    zza(sb, 1, "app_store", zzchVar.zzcp);
                    zza(sb, 1, "upload_timestamp_millis", zzchVar.zzxq);
                    zza(sb, 1, "start_timestamp_millis", zzchVar.zzxr);
                    zza(sb, 1, "end_timestamp_millis", zzchVar.zzxs);
                    zza(sb, 1, "previous_bundle_start_timestamp_millis", zzchVar.zzxt);
                    zza(sb, 1, "previous_bundle_end_timestamp_millis", zzchVar.zzxu);
                    zza(sb, 1, "app_instance_id", zzchVar.zzcg);
                    zza(sb, 1, "resettable_device_id", zzchVar.zzyb);
                    zza(sb, 1, "device_id", zzchVar.zzyk);
                    zza(sb, 1, "ds_id", zzchVar.zzyn);
                    zza(sb, 1, "limited_ad_tracking", zzchVar.zzyc);
                    zza(sb, 1, "os_version", zzchVar.zzxw);
                    zza(sb, 1, "device_model", zzchVar.zzxx);
                    zza(sb, 1, "user_default_language", zzchVar.zzex);
                    zza(sb, 1, "time_zone_offset_minutes", zzchVar.zzxy);
                    zza(sb, 1, "bundle_sequential_index", zzchVar.zzye);
                    zza(sb, 1, "service_upload", zzchVar.zzyf);
                    zza(sb, 1, "health_monitor", zzchVar.zzdn);
                    Long l = zzchVar.zzym;
                    if (l != null && l.longValue() != 0) {
                        zza(sb, 1, "android_id", zzchVar.zzym);
                    }
                    Integer num = zzchVar.zzyp;
                    if (num != null) {
                        zza(sb, 1, IjkMediaPlayer.OnNativeInvokeListener.ARG_RETRY_COUNTER, num);
                    }
                    zzbt.zzh[] zzhVarArr = zzchVar.zzxp;
                    String str4 = "string_value";
                    String str5 = AppMeasurementSdk.ConditionalUserProperty.NAME;
                    int i4 = 2;
                    if (zzhVarArr != null) {
                        for (zzbt.zzh zzhVar : zzhVarArr) {
                            if (zzhVar != null) {
                                zza(sb, 2);
                                sb.append("user_property {\n");
                                zza(sb, 2, "set_timestamp_millis", zzhVar.zzis() ? Long.valueOf(zzhVar.zzit()) : null);
                                zza(sb, 2, AppMeasurementSdk.ConditionalUserProperty.NAME, zzaa().zzan(zzhVar.getName()));
                                zza(sb, 2, "string_value", zzhVar.zzhl());
                                zza(sb, 2, "int_value", zzhVar.zzhn() ? Long.valueOf(zzhVar.zzho()) : null);
                                zza(sb, 2, "double_value", zzhVar.zzhq() ? Double.valueOf(zzhVar.zzhr()) : null);
                                zza(sb, 2);
                                sb.append("}\n");
                            }
                        }
                    }
                    zzbt.zza[] zzaVarArr = zzchVar.zzyg;
                    String str6 = zzchVar.zzcf;
                    if (zzaVarArr != null) {
                        int length2 = zzaVarArr.length;
                        int i5 = 0;
                        while (i5 < length2) {
                            zzbt.zza zzaVar = zzaVarArr[i5];
                            if (zzaVar != null) {
                                zza(sb, i4);
                                sb.append("audience_membership {\n");
                                if (zzaVar.zzgu()) {
                                    i = i5;
                                    zza(sb, i4, "audience_id", Integer.valueOf(zzaVar.zzgv()));
                                } else {
                                    i = i5;
                                }
                                if (zzaVar.zzgz()) {
                                    zza(sb, i4, "new_audience", Boolean.valueOf(zzaVar.zzha()));
                                }
                                i2 = length2;
                                str2 = str5;
                                zzchVarArr2 = zzchVarArr3;
                                str3 = str4;
                                zza(sb, 2, "current_data", zzaVar.zzgw(), str6);
                                zza(sb, 2, "previous_data", zzaVar.zzgy(), str6);
                                zza(sb, 2);
                                sb.append("}\n");
                            } else {
                                i = i5;
                                i2 = length2;
                                str2 = str5;
                                zzchVarArr2 = zzchVarArr3;
                                str3 = str4;
                            }
                            i5 = i + 1;
                            str4 = str3;
                            zzchVarArr3 = zzchVarArr2;
                            length2 = i2;
                            str5 = str2;
                            i4 = 2;
                        }
                    }
                    String str7 = str5;
                    zzchVarArr = zzchVarArr3;
                    int i6 = 2;
                    String str8 = str4;
                    com.google.android.gms.internal.measurement.zzcf[] zzcfVarArr3 = zzchVar.zzxo;
                    if (zzcfVarArr3 != null) {
                        int length3 = zzcfVarArr3.length;
                        int i7 = 0;
                        while (i7 < length3) {
                            com.google.android.gms.internal.measurement.zzcf zzcfVar = zzcfVarArr3[i7];
                            if (zzcfVar != null) {
                                zza(sb, i6);
                                sb.append("event {\n");
                                str = str7;
                                zza(sb, i6, str, zzaa().zzal(zzcfVar.name));
                                zza(sb, i6, "timestamp_millis", zzcfVar.zzxj);
                                zza(sb, i6, "previous_timestamp_millis", zzcfVar.zzxk);
                                zza(sb, i6, "count", zzcfVar.count);
                                zzbt.zzd[] zzdVarArr = zzcfVar.zzxi;
                                if (zzdVarArr != null) {
                                    int length4 = zzdVarArr.length;
                                    int i8 = 0;
                                    while (i8 < length4) {
                                        zzbt.zzd zzdVar = zzdVarArr[i8];
                                        if (zzdVar != null) {
                                            zza(sb, 3);
                                            sb.append("param {\n");
                                            zzcfVarArr2 = zzcfVarArr3;
                                            zza(sb, 3, str, zzaa().zzam(zzdVar.getName()));
                                            zza(sb, 3, str8, zzdVar.zzhl());
                                            zza(sb, 3, "int_value", zzdVar.zzhn() ? Long.valueOf(zzdVar.zzho()) : null);
                                            zza(sb, 3, "double_value", zzdVar.zzhq() ? Double.valueOf(zzdVar.zzhr()) : null);
                                            zza(sb, 3);
                                            sb.append("}\n");
                                        } else {
                                            zzcfVarArr2 = zzcfVarArr3;
                                        }
                                        i8++;
                                        zzcfVarArr3 = zzcfVarArr2;
                                        i6 = 2;
                                    }
                                }
                                zzcfVarArr = zzcfVarArr3;
                                zza(sb, i6);
                                sb.append("}\n");
                            } else {
                                zzcfVarArr = zzcfVarArr3;
                                str = str7;
                            }
                            i7++;
                            str7 = str;
                            zzcfVarArr3 = zzcfVarArr;
                        }
                    }
                    zza(sb, 1);
                    sb.append("}\n");
                }
                i3++;
                zzchVarArr3 = zzchVarArr;
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    final String zza(com.google.android.gms.internal.measurement.zzby zzbyVar) {
        if (zzbyVar == null) {
            return PushNotificationService.NO_GROUP;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        zza(sb, 0, "filter_id", zzbyVar.zzwa);
        zza(sb, 0, "event_name", zzaa().zzal(zzbyVar.zzwb));
        zza(sb, 1, "event_count_filter", zzbyVar.zzwe);
        sb.append("  filters {\n");
        for (com.google.android.gms.internal.measurement.zzbz zzbzVar : zzbyVar.zzwc) {
            zza(sb, 2, zzbzVar);
        }
        zza(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    final String zzb(com.google.android.gms.internal.measurement.zzcb zzcbVar) {
        if (zzcbVar == null) {
            return PushNotificationService.NO_GROUP;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        zza(sb, 0, "filter_id", zzcbVar.zzwa);
        zza(sb, 0, "property_name", zzaa().zzan(zzcbVar.zzwq));
        zza(sb, 1, zzcbVar.zzwr);
        sb.append("}\n");
        return sb.toString();
    }

    private final void zza(StringBuilder sb, int i, String str, zzbt.zzf zzfVar, String str2) {
        if (zzfVar == null) {
            return;
        }
        zza(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (zzfVar.zzid() != 0) {
            zza(sb, 4);
            sb.append("results: ");
            int i2 = 0;
            for (Long l : zzfVar.zzic()) {
                int i3 = i2 + 1;
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i2 = i3;
            }
            sb.append('\n');
        }
        if (zzfVar.zzib() != 0) {
            zza(sb, 4);
            sb.append("status: ");
            int i4 = 0;
            for (Long l2 : zzfVar.zzia()) {
                int i5 = i4 + 1;
                if (i4 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i4 = i5;
            }
            sb.append('\n');
        }
        if (zzaf().zzt(str2)) {
            if (zzfVar.zzif() != 0) {
                zza(sb, 4);
                sb.append("dynamic_filter_timestamps: {");
                int i6 = 0;
                for (zzbt.zzb zzbVar : zzfVar.zzie()) {
                    int i7 = i6 + 1;
                    if (i6 != 0) {
                        sb.append(", ");
                    }
                    sb.append(zzbVar.zzhd() ? Integer.valueOf(zzbVar.getIndex()) : null);
                    sb.append(":");
                    sb.append(zzbVar.zzhe() ? Long.valueOf(zzbVar.zzhf()) : null);
                    i6 = i7;
                }
                sb.append("}\n");
            }
            if (zzfVar.zzih() != 0) {
                zza(sb, 4);
                sb.append("sequence_filter_timestamps: {");
                int i8 = 0;
                for (zzbt.zzg zzgVar : zzfVar.zzig()) {
                    int i9 = i8 + 1;
                    if (i8 != 0) {
                        sb.append(", ");
                    }
                    sb.append(zzgVar.zzhd() ? Integer.valueOf(zzgVar.getIndex()) : null);
                    sb.append(": [");
                    Iterator<Long> it = zzgVar.zzil().iterator();
                    int i10 = 0;
                    while (it.hasNext()) {
                        long jLongValue = it.next().longValue();
                        int i11 = i10 + 1;
                        if (i10 != 0) {
                            sb.append(", ");
                        }
                        sb.append(jLongValue);
                        i10 = i11;
                    }
                    sb.append("]");
                    i8 = i9;
                }
                sb.append("}\n");
            }
        }
        zza(sb, 3);
        sb.append("}\n");
    }

    private final void zza(StringBuilder sb, int i, String str, com.google.android.gms.internal.measurement.zzca zzcaVar) {
        if (zzcaVar == null) {
            return;
        }
        zza(sb, i);
        sb.append(str);
        sb.append(" {\n");
        zzbl.zza.zzb zzbVar = zzcaVar.zzwk;
        if (zzbVar != null) {
            zza(sb, i, "comparison_type", zzbVar.name());
        }
        zza(sb, i, "match_as_float", zzcaVar.zzwl);
        zza(sb, i, "comparison_value", zzcaVar.zzwm);
        zza(sb, i, "min_comparison_value", zzcaVar.zzwn);
        zza(sb, i, "max_comparison_value", zzcaVar.zzwo);
        zza(sb, i);
        sb.append("}\n");
    }

    private final void zza(StringBuilder sb, int i, com.google.android.gms.internal.measurement.zzbz zzbzVar) {
        if (zzbzVar == null) {
            return;
        }
        zza(sb, i);
        sb.append("filter {\n");
        zza(sb, i, "complement", zzbzVar.zzwi);
        zza(sb, i, "param_name", zzaa().zzam(zzbzVar.zzwj));
        int i2 = i + 1;
        com.google.android.gms.internal.measurement.zzcc zzccVar = zzbzVar.zzwg;
        if (zzccVar != null) {
            zza(sb, i2);
            sb.append("string_filter");
            sb.append(" {\n");
            zzbl.zzb.EnumC0021zzb enumC0021zzb = zzccVar.zzws;
            if (enumC0021zzb != null) {
                zza(sb, i2, "match_type", enumC0021zzb.name());
            }
            zza(sb, i2, "expression", zzccVar.zzwt);
            zza(sb, i2, "case_sensitive", zzccVar.zzwu);
            if (zzccVar.zzwv.length > 0) {
                zza(sb, i2 + 1);
                sb.append("expression_list {\n");
                for (String str : zzccVar.zzwv) {
                    zza(sb, i2 + 2);
                    sb.append(str);
                    sb.append("\n");
                }
                sb.append("}\n");
            }
            zza(sb, i2);
            sb.append("}\n");
        }
        zza(sb, i2, "number_filter", zzbzVar.zzwh);
        zza(sb, i);
        sb.append("}\n");
    }

    private static void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    private static void zza(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        zza(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
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
            zzad().zzda().zzaq("Failed to load parcelable from buffer");
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    final boolean zze(zzaj zzajVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzajVar);
        Preconditions.checkNotNull(zzmVar);
        if (!TextUtils.isEmpty(zzmVar.zzch) || !TextUtils.isEmpty(zzmVar.zzcv)) {
            return true;
        }
        zzag();
        return false;
    }

    static boolean zzbl(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    static boolean zza(List<Long> list, int i) {
        if (i < (list.size() << 6)) {
            return ((1 << (i % 64)) & list.get(i / 64).longValue()) != 0;
        }
        return false;
    }

    static List<Long> zza(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            long j = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i << 6) + i2;
                if (i3 < bitSet.length()) {
                    if (bitSet.get(i3)) {
                        j |= 1 << i2;
                    }
                }
            }
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    final boolean zzb(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(zzz().currentTimeMillis() - j) > j2;
    }

    final long zza(byte[] bArr) throws IllegalStateException, NoSuchAlgorithmException {
        Preconditions.checkNotNull(bArr);
        zzab().zzq();
        MessageDigest messageDigest = zzgd.getMessageDigest();
        if (messageDigest == null) {
            zzad().zzda().zzaq("Failed to get MD5");
            return 0L;
        }
        return zzgd.zzd(messageDigest.digest(bArr));
    }

    final byte[] zzb(byte[] bArr) throws IllegalStateException, IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int i = gZIPInputStream.read(bArr2);
                if (i > 0) {
                    byteArrayOutputStream.write(bArr2, 0, i);
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            zzad().zzda().zza("Failed to ungzip content", e);
            throw e;
        }
    }

    final byte[] zzc(byte[] bArr) throws IllegalStateException, IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            zzad().zzda().zza("Failed to gzip content", e);
            throw e;
        }
    }

    final int[] zzgj() throws IllegalStateException, NumberFormatException {
        Map<String, String> mapZzk = zzal.zzk(this.zzkt.getContext());
        if (mapZzk == null || mapZzk.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int iIntValue = zzal.zzhp.get(null).intValue();
        for (Map.Entry<String, String> entry : mapZzk.entrySet()) {
            if (entry.getKey().startsWith("measurement.id.")) {
                try {
                    int i = Integer.parseInt(entry.getValue());
                    if (i != 0) {
                        arrayList.add(Integer.valueOf(i));
                        if (arrayList.size() >= iIntValue) {
                            zzad().zzdd().zza("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e) {
                    zzad().zzdd().zza("Experiment ID NumberFormatException", e);
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            iArr[i3] = ((Integer) obj).intValue();
            i3++;
        }
        return iArr;
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
