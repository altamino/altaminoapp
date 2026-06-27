package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzbt;
import com.google.android.gms.internal.measurement.zziv;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public class zzft implements zzcv {
    private static volatile zzft zzrt;
    private boolean zzce;
    private final zzby zzl;
    private zzbs zzru;
    private zzay zzrv;
    private zzw zzrw;
    private zzbd zzrx;
    private zzfp zzry;
    private zzo zzrz;
    private final zzfz zzsa;
    private zzea zzsb;
    private boolean zzsc;
    private boolean zzsd;

    @VisibleForTesting
    private long zzse;
    private List<Runnable> zzsf;
    private int zzsg;
    private int zzsh;
    private boolean zzsi;
    private boolean zzsj;
    private boolean zzsk;
    private FileLock zzsl;
    private FileChannel zzsm;
    private List<Long> zzsn;
    private List<Long> zzso;
    private long zzsp;

    class zza implements zzy {
        com.google.android.gms.internal.measurement.zzch zzst;
        List<Long> zzsu;
        List<com.google.android.gms.internal.measurement.zzcf> zzsv;
        private long zzsw;

        private zza() {
        }

        @Override // com.google.android.gms.measurement.internal.zzy
        public final void zzb(com.google.android.gms.internal.measurement.zzch zzchVar) {
            Preconditions.checkNotNull(zzchVar);
            this.zzst = zzchVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzy
        public final boolean zza(long j, com.google.android.gms.internal.measurement.zzcf zzcfVar) {
            Preconditions.checkNotNull(zzcfVar);
            if (this.zzsv == null) {
                this.zzsv = new ArrayList();
            }
            if (this.zzsu == null) {
                this.zzsu = new ArrayList();
            }
            if (this.zzsv.size() > 0 && zza(this.zzsv.get(0)) != zza(zzcfVar)) {
                return false;
            }
            long jZzly = this.zzsw + zzcfVar.zzly();
            if (jZzly >= Math.max(0, zzal.zzgl.get(null).intValue())) {
                return false;
            }
            this.zzsw = jZzly;
            this.zzsv.add(zzcfVar);
            this.zzsu.add(Long.valueOf(j));
            return this.zzsv.size() < Math.max(1, zzal.zzgm.get(null).intValue());
        }

        private static long zza(com.google.android.gms.internal.measurement.zzcf zzcfVar) {
            return ((zzcfVar.zzxj.longValue() / 1000) / 60) / 60;
        }

        /* synthetic */ zza(zzft zzftVar, zzfu zzfuVar) {
            this();
        }
    }

    public static zzft zzm(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzrt == null) {
            synchronized (zzft.class) {
                if (zzrt == null) {
                    zzrt = new zzft(new zzfy(context));
                }
            }
        }
        return zzrt;
    }

    private zzft(zzfy zzfyVar) {
        this(zzfyVar, null);
    }

    private zzft(zzfy zzfyVar, zzby zzbyVar) throws IllegalStateException {
        this.zzce = false;
        Preconditions.checkNotNull(zzfyVar);
        this.zzl = zzby.zza(zzfyVar.zzno, (com.google.android.gms.internal.measurement.zzy) null);
        this.zzsp = -1L;
        zzfz zzfzVar = new zzfz(this);
        zzfzVar.zzai();
        this.zzsa = zzfzVar;
        zzay zzayVar = new zzay(this);
        zzayVar.zzai();
        this.zzrv = zzayVar;
        zzbs zzbsVar = new zzbs(this);
        zzbsVar.zzai();
        this.zzru = zzbsVar;
        this.zzl.zzac().zza(new zzfu(this, zzfyVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzfy zzfyVar) throws IllegalStateException {
        this.zzl.zzac().zzq();
        zzw zzwVar = new zzw(this);
        zzwVar.zzai();
        this.zzrw = zzwVar;
        this.zzl.zzaf().zza(this.zzru);
        zzo zzoVar = new zzo(this);
        zzoVar.zzai();
        this.zzrz = zzoVar;
        zzea zzeaVar = new zzea(this);
        zzeaVar.zzai();
        this.zzsb = zzeaVar;
        zzfp zzfpVar = new zzfp(this);
        zzfpVar.zzai();
        this.zzry = zzfpVar;
        this.zzrx = new zzbd(this);
        if (this.zzsg != this.zzsh) {
            this.zzl.zzad().zzda().zza("Not all upload components initialized", Integer.valueOf(this.zzsg), Integer.valueOf(this.zzsh));
        }
        this.zzce = true;
    }

    protected final void start() throws IllegalStateException {
        this.zzl.zzac().zzq();
        zzdo().zzca();
        if (this.zzl.zzae().zzlb.get() == 0) {
            this.zzl.zzae().zzlb.set(this.zzl.zzz().currentTimeMillis());
        }
        zzgc();
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public final zzq zzag() {
        return this.zzl.zzag();
    }

    public final zzt zzaf() {
        return this.zzl.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public final zzau zzad() {
        return this.zzl.zzad();
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public final zzbt zzac() {
        return this.zzl.zzac();
    }

    public final zzbs zzdp() {
        zza(this.zzru);
        return this.zzru;
    }

    public final zzay zzfu() {
        zza(this.zzrv);
        return this.zzrv;
    }

    public final zzw zzdo() {
        zza(this.zzrw);
        return this.zzrw;
    }

    private final zzbd zzfv() {
        zzbd zzbdVar = this.zzrx;
        if (zzbdVar != null) {
            return zzbdVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    private final zzfp zzfw() {
        zza(this.zzry);
        return this.zzry;
    }

    public final zzo zzdn() {
        zza(this.zzrz);
        return this.zzrz;
    }

    public final zzea zzfx() {
        zza(this.zzsb);
        return this.zzsb;
    }

    public final zzfz zzdm() {
        zza(this.zzsa);
        return this.zzsa;
    }

    public final zzas zzaa() {
        return this.zzl.zzaa();
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public final Context getContext() {
        return this.zzl.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public final Clock zzz() {
        return this.zzl.zzz();
    }

    public final zzgd zzab() {
        return this.zzl.zzab();
    }

    private final void zzq() {
        this.zzl.zzac().zzq();
    }

    final void zzfy() {
        if (!this.zzce) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    private static void zza(zzfs zzfsVar) {
        if (zzfsVar == null) {
            throw new IllegalStateException("Upload Component not created");
        }
        if (zzfsVar.isInitialized()) {
            return;
        }
        String strValueOf = String.valueOf(zzfsVar.getClass());
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
        sb.append("Component not initialized: ");
        sb.append(strValueOf);
        throw new IllegalStateException(sb.toString());
    }

    final void zze(zzm zzmVar) {
        zzq();
        zzfy();
        Preconditions.checkNotEmpty(zzmVar.packageName);
        zzg(zzmVar);
    }

    private final long zzfz() {
        long jCurrentTimeMillis = this.zzl.zzz().currentTimeMillis();
        zzbf zzbfVarZzae = this.zzl.zzae();
        zzbfVarZzae.zzah();
        zzbfVarZzae.zzq();
        long jNextInt = zzbfVarZzae.zzlf.get();
        if (jNextInt == 0) {
            jNextInt = 1 + zzbfVarZzae.zzab().zzgl().nextInt(86400000);
            zzbfVarZzae.zzlf.set(jNextInt);
        }
        return ((((jCurrentTimeMillis + jNextInt) / 1000) / 60) / 60) / 24;
    }

    final void zzd(zzaj zzajVar, String str) throws IllegalStateException {
        zzg zzgVarZzae = zzdo().zzae(str);
        if (zzgVarZzae == null || TextUtils.isEmpty(zzgVarZzae.zzas())) {
            this.zzl.zzad().zzdh().zza("No app data available; dropping event", str);
            return;
        }
        Boolean boolZzc = zzc(zzgVarZzae);
        if (boolZzc == null) {
            if (!"_ui".equals(zzajVar.name)) {
                this.zzl.zzad().zzdd().zza("Could not find package. appId", zzau.zzao(str));
            }
        } else if (!boolZzc.booleanValue()) {
            this.zzl.zzad().zzda().zza("App version does not match; dropping event. appId", zzau.zzao(str));
            return;
        }
        zzc(zzajVar, new zzm(str, zzgVarZzae.getGmpAppId(), zzgVarZzae.zzas(), zzgVarZzae.zzat(), zzgVarZzae.zzau(), zzgVarZzae.zzav(), zzgVarZzae.zzaw(), (String) null, zzgVarZzae.isMeasurementEnabled(), false, zzgVarZzae.getFirebaseInstanceId(), zzgVarZzae.zzbk(), 0L, 0, zzgVarZzae.zzbl(), zzgVarZzae.zzbm(), false, zzgVarZzae.zzao(), zzgVarZzae.zzbn(), zzgVarZzae.zzax()));
    }

    final void zzc(zzaj zzajVar, zzm zzmVar) {
        List<zzr> listZzb;
        List<zzr> listZzb2;
        List<zzr> listZzb3;
        Preconditions.checkNotNull(zzmVar);
        Preconditions.checkNotEmpty(zzmVar.packageName);
        zzq();
        zzfy();
        String str = zzmVar.packageName;
        long j = zzajVar.zzfp;
        if (zzdm().zze(zzajVar, zzmVar)) {
            if (!zzmVar.zzcr) {
                zzg(zzmVar);
                return;
            }
            zzdo().beginTransaction();
            try {
                zzw zzwVarZzdo = zzdo();
                Preconditions.checkNotEmpty(str);
                zzwVarZzdo.zzq();
                zzwVarZzdo.zzah();
                if (j < 0) {
                    zzwVarZzdo.zzad().zzdd().zza("Invalid time querying timed out conditional properties", zzau.zzao(str), Long.valueOf(j));
                    listZzb = Collections.emptyList();
                } else {
                    listZzb = zzwVarZzdo.zzb("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
                }
                for (zzr zzrVar : listZzb) {
                    if (zzrVar != null) {
                        this.zzl.zzad().zzdh().zza("User property timed out", zzrVar.packageName, this.zzl.zzaa().zzan(zzrVar.zzdv.name), zzrVar.zzdv.getValue());
                        if (zzrVar.zzdw != null) {
                            zzd(new zzaj(zzrVar.zzdw, j), zzmVar);
                        }
                        zzdo().zzg(str, zzrVar.zzdv.name);
                    }
                }
                zzw zzwVarZzdo2 = zzdo();
                Preconditions.checkNotEmpty(str);
                zzwVarZzdo2.zzq();
                zzwVarZzdo2.zzah();
                if (j < 0) {
                    zzwVarZzdo2.zzad().zzdd().zza("Invalid time querying expired conditional properties", zzau.zzao(str), Long.valueOf(j));
                    listZzb2 = Collections.emptyList();
                } else {
                    listZzb2 = zzwVarZzdo2.zzb("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(listZzb2.size());
                for (zzr zzrVar2 : listZzb2) {
                    if (zzrVar2 != null) {
                        this.zzl.zzad().zzdh().zza("User property expired", zzrVar2.packageName, this.zzl.zzaa().zzan(zzrVar2.zzdv.name), zzrVar2.zzdv.getValue());
                        zzdo().zzd(str, zzrVar2.zzdv.name);
                        if (zzrVar2.zzdy != null) {
                            arrayList.add(zzrVar2.zzdy);
                        }
                        zzdo().zzg(str, zzrVar2.zzdv.name);
                    }
                }
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    zzd(new zzaj((zzaj) obj, j), zzmVar);
                }
                zzw zzwVarZzdo3 = zzdo();
                String str2 = zzajVar.name;
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotEmpty(str2);
                zzwVarZzdo3.zzq();
                zzwVarZzdo3.zzah();
                if (j < 0) {
                    zzwVarZzdo3.zzad().zzdd().zza("Invalid time querying triggered conditional properties", zzau.zzao(str), zzwVarZzdo3.zzaa().zzal(str2), Long.valueOf(j));
                    listZzb3 = Collections.emptyList();
                } else {
                    listZzb3 = zzwVarZzdo3.zzb("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
                }
                ArrayList arrayList2 = new ArrayList(listZzb3.size());
                for (zzr zzrVar3 : listZzb3) {
                    if (zzrVar3 != null) {
                        zzga zzgaVar = zzrVar3.zzdv;
                        zzgc zzgcVar = new zzgc(zzrVar3.packageName, zzrVar3.origin, zzgaVar.name, j, zzgaVar.getValue());
                        if (zzdo().zza(zzgcVar)) {
                            this.zzl.zzad().zzdh().zza("User property triggered", zzrVar3.packageName, this.zzl.zzaa().zzan(zzgcVar.name), zzgcVar.value);
                        } else {
                            this.zzl.zzad().zzda().zza("Too many active user properties, ignoring", zzau.zzao(zzrVar3.packageName), this.zzl.zzaa().zzan(zzgcVar.name), zzgcVar.value);
                        }
                        if (zzrVar3.zzdx != null) {
                            arrayList2.add(zzrVar3.zzdx);
                        }
                        zzrVar3.zzdv = new zzga(zzgcVar);
                        zzrVar3.active = true;
                        zzdo().zza(zzrVar3);
                    }
                }
                zzd(zzajVar, zzmVar);
                int size2 = arrayList2.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj2 = arrayList2.get(i2);
                    i2++;
                    zzd(new zzaj((zzaj) obj2, j), zzmVar);
                }
                zzdo().setTransactionSuccessful();
            } finally {
                zzdo().endTransaction();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:209:0x0801 A[Catch: all -> 0x0874, TryCatch #0 {all -> 0x0874, blocks: (B:32:0x010c, B:35:0x011b, B:83:0x02bb, B:85:0x02fa, B:87:0x02ff, B:88:0x0318, B:92:0x0329, B:94:0x033e, B:96:0x0345, B:97:0x035e, B:101:0x0381, B:105:0x03a9, B:106:0x03c2, B:110:0x03d2, B:113:0x03f5, B:114:0x0413, B:117:0x041d, B:119:0x042b, B:121:0x0437, B:123:0x043d, B:124:0x0448, B:126:0x0450, B:128:0x0460, B:130:0x046e, B:131:0x0477, B:133:0x0483, B:134:0x049a, B:136:0x04c3, B:139:0x04d3, B:142:0x050f, B:144:0x0537, B:148:0x0587, B:150:0x05a3, B:153:0x05af, B:157:0x05bf, B:159:0x05d9, B:160:0x05e3, B:162:0x05f1, B:164:0x05fb, B:166:0x05ff, B:178:0x0669, B:180:0x06b9, B:182:0x06bf, B:183:0x06c2, B:185:0x06ce, B:186:0x0735, B:187:0x0754, B:189:0x075a, B:191:0x0794, B:192:0x079c, B:194:0x07a4, B:195:0x07aa, B:197:0x07b0, B:207:0x07fb, B:209:0x0801, B:212:0x081b, B:214:0x082f, B:201:0x07c3, B:203:0x07e6, B:211:0x0805, B:167:0x060c, B:169:0x061e, B:171:0x0622, B:173:0x0634, B:177:0x0667, B:174:0x064c, B:176:0x0652, B:156:0x05b9, B:152:0x05ab, B:147:0x0580, B:143:0x0529, B:39:0x0129, B:42:0x013c, B:44:0x0153, B:50:0x016f, B:53:0x019a, B:55:0x01a0, B:57:0x01ae, B:59:0x01ba, B:61:0x01c4, B:63:0x01cf, B:66:0x01d6, B:74:0x026b, B:76:0x0275, B:80:0x02ac, B:67:0x0205, B:68:0x0224, B:73:0x0250, B:72:0x023f, B:60:0x01bf, B:51:0x0174, B:52:0x0190), top: B:221:0x010c, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02ac A[Catch: all -> 0x0874, TRY_LEAVE, TryCatch #0 {all -> 0x0874, blocks: (B:32:0x010c, B:35:0x011b, B:83:0x02bb, B:85:0x02fa, B:87:0x02ff, B:88:0x0318, B:92:0x0329, B:94:0x033e, B:96:0x0345, B:97:0x035e, B:101:0x0381, B:105:0x03a9, B:106:0x03c2, B:110:0x03d2, B:113:0x03f5, B:114:0x0413, B:117:0x041d, B:119:0x042b, B:121:0x0437, B:123:0x043d, B:124:0x0448, B:126:0x0450, B:128:0x0460, B:130:0x046e, B:131:0x0477, B:133:0x0483, B:134:0x049a, B:136:0x04c3, B:139:0x04d3, B:142:0x050f, B:144:0x0537, B:148:0x0587, B:150:0x05a3, B:153:0x05af, B:157:0x05bf, B:159:0x05d9, B:160:0x05e3, B:162:0x05f1, B:164:0x05fb, B:166:0x05ff, B:178:0x0669, B:180:0x06b9, B:182:0x06bf, B:183:0x06c2, B:185:0x06ce, B:186:0x0735, B:187:0x0754, B:189:0x075a, B:191:0x0794, B:192:0x079c, B:194:0x07a4, B:195:0x07aa, B:197:0x07b0, B:207:0x07fb, B:209:0x0801, B:212:0x081b, B:214:0x082f, B:201:0x07c3, B:203:0x07e6, B:211:0x0805, B:167:0x060c, B:169:0x061e, B:171:0x0622, B:173:0x0634, B:177:0x0667, B:174:0x064c, B:176:0x0652, B:156:0x05b9, B:152:0x05ab, B:147:0x0580, B:143:0x0529, B:39:0x0129, B:42:0x013c, B:44:0x0153, B:50:0x016f, B:53:0x019a, B:55:0x01a0, B:57:0x01ae, B:59:0x01ba, B:61:0x01c4, B:63:0x01cf, B:66:0x01d6, B:74:0x026b, B:76:0x0275, B:80:0x02ac, B:67:0x0205, B:68:0x0224, B:73:0x0250, B:72:0x023f, B:60:0x01bf, B:51:0x0174, B:52:0x0190), top: B:221:0x010c, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzd(com.google.android.gms.measurement.internal.zzaj r27, com.google.android.gms.measurement.internal.zzm r28) throws java.lang.IllegalStateException {
        /*
            Method dump skipped, instructions count: 2176
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzft.zzd(com.google.android.gms.measurement.internal.zzaj, com.google.android.gms.measurement.internal.zzm):void");
    }

    final void zzga() {
        zzg zzgVarZzae;
        String str;
        zzq();
        zzfy();
        this.zzsk = true;
        try {
            this.zzl.zzag();
            Boolean boolZzfi = this.zzl.zzu().zzfi();
            if (boolZzfi == null) {
                this.zzl.zzad().zzdd().zzaq("Upload data called on the client side before use of service was decided");
                return;
            }
            if (boolZzfi.booleanValue()) {
                this.zzl.zzad().zzda().zzaq("Upload called in the client side when service should be used");
                return;
            }
            if (this.zzse > 0) {
                zzgc();
                return;
            }
            zzq();
            if (this.zzsn != null) {
                this.zzl.zzad().zzdi().zzaq("Uploading requested multiple times");
                return;
            }
            if (!zzfu().zzdl()) {
                this.zzl.zzad().zzdi().zzaq("Network not connected, ignoring upload request");
                zzgc();
                return;
            }
            long jCurrentTimeMillis = this.zzl.zzz().currentTimeMillis();
            zzd((String) null, jCurrentTimeMillis - zzt.zzbt());
            long j = this.zzl.zzae().zzlb.get();
            if (j != 0) {
                this.zzl.zzad().zzdh().zza("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(jCurrentTimeMillis - j)));
            }
            String strZzby = zzdo().zzby();
            if (!TextUtils.isEmpty(strZzby)) {
                if (this.zzsp == -1) {
                    this.zzsp = zzdo().zzcf();
                }
                List<Pair<com.google.android.gms.internal.measurement.zzch, Long>> listZza = zzdo().zza(strZzby, this.zzl.zzaf().zzb(strZzby, zzal.zzgj), Math.max(0, this.zzl.zzaf().zzb(strZzby, zzal.zzgk)));
                if (!listZza.isEmpty()) {
                    Iterator<Pair<com.google.android.gms.internal.measurement.zzch, Long>> it = listZza.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            str = null;
                            break;
                        }
                        com.google.android.gms.internal.measurement.zzch zzchVar = (com.google.android.gms.internal.measurement.zzch) it.next().first;
                        if (!TextUtils.isEmpty(zzchVar.zzyb)) {
                            str = zzchVar.zzyb;
                            break;
                        }
                    }
                    if (str != null) {
                        int i = 0;
                        while (true) {
                            if (i >= listZza.size()) {
                                break;
                            }
                            com.google.android.gms.internal.measurement.zzch zzchVar2 = (com.google.android.gms.internal.measurement.zzch) listZza.get(i).first;
                            if (!TextUtils.isEmpty(zzchVar2.zzyb) && !zzchVar2.zzyb.equals(str)) {
                                listZza = listZza.subList(0, i);
                                break;
                            }
                            i++;
                        }
                    }
                    com.google.android.gms.internal.measurement.zzcg zzcgVar = new com.google.android.gms.internal.measurement.zzcg();
                    zzcgVar.zzxl = new com.google.android.gms.internal.measurement.zzch[listZza.size()];
                    ArrayList arrayList = new ArrayList(listZza.size());
                    boolean z = zzt.zzbv() && this.zzl.zzaf().zzk(strZzby);
                    for (int i2 = 0; i2 < zzcgVar.zzxl.length; i2++) {
                        zzcgVar.zzxl[i2] = (com.google.android.gms.internal.measurement.zzch) listZza.get(i2).first;
                        arrayList.add((Long) listZza.get(i2).second);
                        zzcgVar.zzxl[i2].zzya = Long.valueOf(this.zzl.zzaf().zzav());
                        zzcgVar.zzxl[i2].zzxq = Long.valueOf(jCurrentTimeMillis);
                        com.google.android.gms.internal.measurement.zzch zzchVar3 = zzcgVar.zzxl[i2];
                        this.zzl.zzag();
                        zzchVar3.zzyf = false;
                        if (!z) {
                            zzcgVar.zzxl[i2].zzyn = null;
                        }
                        if (this.zzl.zzaf().zze(strZzby, zzal.zziu)) {
                            zzcgVar.zzxl[i2].zzyt = Long.valueOf(zzdm().zza(zziv.zzb(zzcgVar.zzxl[i2])));
                        }
                    }
                    String strZzb = this.zzl.zzad().isLoggable(2) ? zzdm().zzb(zzcgVar) : null;
                    byte[] bArrZza = zzdm().zza(zzcgVar);
                    String str2 = zzal.zzgt.get(null);
                    try {
                        URL url = new URL(str2);
                        Preconditions.checkArgument(!arrayList.isEmpty());
                        if (this.zzsn != null) {
                            this.zzl.zzad().zzda().zzaq("Set uploading progress before finishing the previous upload");
                        } else {
                            this.zzsn = new ArrayList(arrayList);
                        }
                        this.zzl.zzae().zzlc.set(jCurrentTimeMillis);
                        this.zzl.zzad().zzdi().zza("Uploading data. app, uncompressed size, data", zzcgVar.zzxl.length > 0 ? zzcgVar.zzxl[0].zzcf : "?", Integer.valueOf(bArrZza.length), strZzb);
                        this.zzsj = true;
                        zzay zzayVarZzfu = zzfu();
                        zzfv zzfvVar = new zzfv(this, strZzby);
                        zzayVarZzfu.zzq();
                        zzayVarZzfu.zzah();
                        Preconditions.checkNotNull(url);
                        Preconditions.checkNotNull(bArrZza);
                        Preconditions.checkNotNull(zzfvVar);
                        zzayVarZzfu.zzac().zzb(new zzbc(zzayVarZzfu, strZzby, url, bArrZza, null, zzfvVar));
                    } catch (MalformedURLException unused) {
                        this.zzl.zzad().zzda().zza("Failed to parse upload URL. Not uploading. appId", zzau.zzao(strZzby), str2);
                    }
                }
            } else {
                this.zzsp = -1L;
                String strZzu = zzdo().zzu(jCurrentTimeMillis - zzt.zzbt());
                if (!TextUtils.isEmpty(strZzu) && (zzgVarZzae = zzdo().zzae(strZzu)) != null) {
                    zzb(zzgVarZzae);
                }
            }
        } finally {
            this.zzsk = false;
            zzgd();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x025e A[Catch: all -> 0x0ede, TRY_ENTER, TryCatch #15 {all -> 0x0ede, blocks: (B:3:0x000b, B:26:0x008a, B:109:0x0261, B:111:0x0265, B:117:0x0273, B:118:0x02a2, B:121:0x02b2, B:124:0x02ce, B:126:0x0301, B:132:0x0315, B:134:0x031d, B:308:0x079e, B:136:0x0343, B:139:0x0357, B:167:0x03b3, B:169:0x03b7, B:171:0x03c1, B:174:0x03ca, B:176:0x03e0, B:180:0x03fb, B:177:0x03e9, B:179:0x03f5, B:184:0x0418, B:186:0x045f, B:187:0x04a4, B:190:0x04d7, B:192:0x04dc, B:194:0x04ea, B:196:0x04f3, B:197:0x04f9, B:199:0x04fc, B:200:0x0505, B:201:0x0508, B:203:0x050d, B:206:0x0517, B:208:0x054a, B:209:0x0565, B:211:0x056a, B:213:0x0578, B:217:0x058b, B:214:0x0580, B:220:0x0592, B:222:0x05ad, B:223:0x05cc, B:224:0x05e3, B:227:0x05f5, B:228:0x05fa, B:230:0x05fd, B:236:0x061d, B:233:0x060e, B:239:0x0623, B:241:0x062b, B:243:0x0633, B:260:0x0685, B:261:0x06a4, B:263:0x06a8, B:265:0x06ba, B:267:0x06c2, B:270:0x06cf, B:272:0x06e8, B:294:0x073e, B:296:0x0746, B:298:0x074a, B:301:0x0750, B:303:0x075b, B:304:0x0773, B:307:0x0793, B:305:0x077a, B:278:0x06f8, B:280:0x0704, B:283:0x070f, B:285:0x0728, B:248:0x065b, B:252:0x066b, B:254:0x0671, B:257:0x067c, B:146:0x0377, B:149:0x0381, B:152:0x038b, B:313:0x07bc, B:315:0x07c8, B:317:0x07d3, B:329:0x0811, B:319:0x07e7, B:321:0x07f0, B:323:0x07f6, B:326:0x0802, B:328:0x080c, B:330:0x0814, B:332:0x081c, B:334:0x0828, B:336:0x0836, B:339:0x083b, B:341:0x087e, B:342:0x08a9, B:344:0x08ae, B:346:0x08bc, B:350:0x08c8, B:353:0x08e8, B:347:0x08c2, B:340:0x0861, B:354:0x0900, B:356:0x0910, B:358:0x092d, B:360:0x0939, B:362:0x093f, B:364:0x0949, B:365:0x097b, B:367:0x0980, B:369:0x0990, B:373:0x099c, B:370:0x0996, B:374:0x09b4, B:380:0x09fe, B:382:0x0a11, B:383:0x0a20, B:385:0x0a24, B:387:0x0a30, B:388:0x0a3f, B:390:0x0a43, B:392:0x0a4b, B:394:0x0a63, B:405:0x0aac, B:407:0x0ab6, B:409:0x0ac4, B:411:0x0ac8, B:426:0x0b06, B:429:0x0b18, B:433:0x0b40, B:435:0x0b50, B:444:0x0ba3, B:446:0x0bab, B:448:0x0baf, B:450:0x0bb3, B:452:0x0bb7, B:456:0x0bcc, B:458:0x0bea, B:459:0x0bf3, B:466:0x0c1b, B:413:0x0ad6, B:415:0x0ada, B:417:0x0ae4, B:419:0x0ae8, B:422:0x0af8, B:53:0x0135, B:69:0x01c7, B:77:0x01f2, B:85:0x0212, B:108:0x025e, B:95:0x0234, B:45:0x00e7, B:56:0x013e), top: B:587:0x000b, inners: #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0265 A[Catch: all -> 0x0ede, TryCatch #15 {all -> 0x0ede, blocks: (B:3:0x000b, B:26:0x008a, B:109:0x0261, B:111:0x0265, B:117:0x0273, B:118:0x02a2, B:121:0x02b2, B:124:0x02ce, B:126:0x0301, B:132:0x0315, B:134:0x031d, B:308:0x079e, B:136:0x0343, B:139:0x0357, B:167:0x03b3, B:169:0x03b7, B:171:0x03c1, B:174:0x03ca, B:176:0x03e0, B:180:0x03fb, B:177:0x03e9, B:179:0x03f5, B:184:0x0418, B:186:0x045f, B:187:0x04a4, B:190:0x04d7, B:192:0x04dc, B:194:0x04ea, B:196:0x04f3, B:197:0x04f9, B:199:0x04fc, B:200:0x0505, B:201:0x0508, B:203:0x050d, B:206:0x0517, B:208:0x054a, B:209:0x0565, B:211:0x056a, B:213:0x0578, B:217:0x058b, B:214:0x0580, B:220:0x0592, B:222:0x05ad, B:223:0x05cc, B:224:0x05e3, B:227:0x05f5, B:228:0x05fa, B:230:0x05fd, B:236:0x061d, B:233:0x060e, B:239:0x0623, B:241:0x062b, B:243:0x0633, B:260:0x0685, B:261:0x06a4, B:263:0x06a8, B:265:0x06ba, B:267:0x06c2, B:270:0x06cf, B:272:0x06e8, B:294:0x073e, B:296:0x0746, B:298:0x074a, B:301:0x0750, B:303:0x075b, B:304:0x0773, B:307:0x0793, B:305:0x077a, B:278:0x06f8, B:280:0x0704, B:283:0x070f, B:285:0x0728, B:248:0x065b, B:252:0x066b, B:254:0x0671, B:257:0x067c, B:146:0x0377, B:149:0x0381, B:152:0x038b, B:313:0x07bc, B:315:0x07c8, B:317:0x07d3, B:329:0x0811, B:319:0x07e7, B:321:0x07f0, B:323:0x07f6, B:326:0x0802, B:328:0x080c, B:330:0x0814, B:332:0x081c, B:334:0x0828, B:336:0x0836, B:339:0x083b, B:341:0x087e, B:342:0x08a9, B:344:0x08ae, B:346:0x08bc, B:350:0x08c8, B:353:0x08e8, B:347:0x08c2, B:340:0x0861, B:354:0x0900, B:356:0x0910, B:358:0x092d, B:360:0x0939, B:362:0x093f, B:364:0x0949, B:365:0x097b, B:367:0x0980, B:369:0x0990, B:373:0x099c, B:370:0x0996, B:374:0x09b4, B:380:0x09fe, B:382:0x0a11, B:383:0x0a20, B:385:0x0a24, B:387:0x0a30, B:388:0x0a3f, B:390:0x0a43, B:392:0x0a4b, B:394:0x0a63, B:405:0x0aac, B:407:0x0ab6, B:409:0x0ac4, B:411:0x0ac8, B:426:0x0b06, B:429:0x0b18, B:433:0x0b40, B:435:0x0b50, B:444:0x0ba3, B:446:0x0bab, B:448:0x0baf, B:450:0x0bb3, B:452:0x0bb7, B:456:0x0bcc, B:458:0x0bea, B:459:0x0bf3, B:466:0x0c1b, B:413:0x0ad6, B:415:0x0ada, B:417:0x0ae4, B:419:0x0ae8, B:422:0x0af8, B:53:0x0135, B:69:0x01c7, B:77:0x01f2, B:85:0x0212, B:108:0x025e, B:95:0x0234, B:45:0x00e7, B:56:0x013e), top: B:587:0x000b, inners: #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0273 A[Catch: all -> 0x0ede, TryCatch #15 {all -> 0x0ede, blocks: (B:3:0x000b, B:26:0x008a, B:109:0x0261, B:111:0x0265, B:117:0x0273, B:118:0x02a2, B:121:0x02b2, B:124:0x02ce, B:126:0x0301, B:132:0x0315, B:134:0x031d, B:308:0x079e, B:136:0x0343, B:139:0x0357, B:167:0x03b3, B:169:0x03b7, B:171:0x03c1, B:174:0x03ca, B:176:0x03e0, B:180:0x03fb, B:177:0x03e9, B:179:0x03f5, B:184:0x0418, B:186:0x045f, B:187:0x04a4, B:190:0x04d7, B:192:0x04dc, B:194:0x04ea, B:196:0x04f3, B:197:0x04f9, B:199:0x04fc, B:200:0x0505, B:201:0x0508, B:203:0x050d, B:206:0x0517, B:208:0x054a, B:209:0x0565, B:211:0x056a, B:213:0x0578, B:217:0x058b, B:214:0x0580, B:220:0x0592, B:222:0x05ad, B:223:0x05cc, B:224:0x05e3, B:227:0x05f5, B:228:0x05fa, B:230:0x05fd, B:236:0x061d, B:233:0x060e, B:239:0x0623, B:241:0x062b, B:243:0x0633, B:260:0x0685, B:261:0x06a4, B:263:0x06a8, B:265:0x06ba, B:267:0x06c2, B:270:0x06cf, B:272:0x06e8, B:294:0x073e, B:296:0x0746, B:298:0x074a, B:301:0x0750, B:303:0x075b, B:304:0x0773, B:307:0x0793, B:305:0x077a, B:278:0x06f8, B:280:0x0704, B:283:0x070f, B:285:0x0728, B:248:0x065b, B:252:0x066b, B:254:0x0671, B:257:0x067c, B:146:0x0377, B:149:0x0381, B:152:0x038b, B:313:0x07bc, B:315:0x07c8, B:317:0x07d3, B:329:0x0811, B:319:0x07e7, B:321:0x07f0, B:323:0x07f6, B:326:0x0802, B:328:0x080c, B:330:0x0814, B:332:0x081c, B:334:0x0828, B:336:0x0836, B:339:0x083b, B:341:0x087e, B:342:0x08a9, B:344:0x08ae, B:346:0x08bc, B:350:0x08c8, B:353:0x08e8, B:347:0x08c2, B:340:0x0861, B:354:0x0900, B:356:0x0910, B:358:0x092d, B:360:0x0939, B:362:0x093f, B:364:0x0949, B:365:0x097b, B:367:0x0980, B:369:0x0990, B:373:0x099c, B:370:0x0996, B:374:0x09b4, B:380:0x09fe, B:382:0x0a11, B:383:0x0a20, B:385:0x0a24, B:387:0x0a30, B:388:0x0a3f, B:390:0x0a43, B:392:0x0a4b, B:394:0x0a63, B:405:0x0aac, B:407:0x0ab6, B:409:0x0ac4, B:411:0x0ac8, B:426:0x0b06, B:429:0x0b18, B:433:0x0b40, B:435:0x0b50, B:444:0x0ba3, B:446:0x0bab, B:448:0x0baf, B:450:0x0bb3, B:452:0x0bb7, B:456:0x0bcc, B:458:0x0bea, B:459:0x0bf3, B:466:0x0c1b, B:413:0x0ad6, B:415:0x0ada, B:417:0x0ae4, B:419:0x0ae8, B:422:0x0af8, B:53:0x0135, B:69:0x01c7, B:77:0x01f2, B:85:0x0212, B:108:0x025e, B:95:0x0234, B:45:0x00e7, B:56:0x013e), top: B:587:0x000b, inners: #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x06a7  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x06ba A[Catch: all -> 0x0ede, TryCatch #15 {all -> 0x0ede, blocks: (B:3:0x000b, B:26:0x008a, B:109:0x0261, B:111:0x0265, B:117:0x0273, B:118:0x02a2, B:121:0x02b2, B:124:0x02ce, B:126:0x0301, B:132:0x0315, B:134:0x031d, B:308:0x079e, B:136:0x0343, B:139:0x0357, B:167:0x03b3, B:169:0x03b7, B:171:0x03c1, B:174:0x03ca, B:176:0x03e0, B:180:0x03fb, B:177:0x03e9, B:179:0x03f5, B:184:0x0418, B:186:0x045f, B:187:0x04a4, B:190:0x04d7, B:192:0x04dc, B:194:0x04ea, B:196:0x04f3, B:197:0x04f9, B:199:0x04fc, B:200:0x0505, B:201:0x0508, B:203:0x050d, B:206:0x0517, B:208:0x054a, B:209:0x0565, B:211:0x056a, B:213:0x0578, B:217:0x058b, B:214:0x0580, B:220:0x0592, B:222:0x05ad, B:223:0x05cc, B:224:0x05e3, B:227:0x05f5, B:228:0x05fa, B:230:0x05fd, B:236:0x061d, B:233:0x060e, B:239:0x0623, B:241:0x062b, B:243:0x0633, B:260:0x0685, B:261:0x06a4, B:263:0x06a8, B:265:0x06ba, B:267:0x06c2, B:270:0x06cf, B:272:0x06e8, B:294:0x073e, B:296:0x0746, B:298:0x074a, B:301:0x0750, B:303:0x075b, B:304:0x0773, B:307:0x0793, B:305:0x077a, B:278:0x06f8, B:280:0x0704, B:283:0x070f, B:285:0x0728, B:248:0x065b, B:252:0x066b, B:254:0x0671, B:257:0x067c, B:146:0x0377, B:149:0x0381, B:152:0x038b, B:313:0x07bc, B:315:0x07c8, B:317:0x07d3, B:329:0x0811, B:319:0x07e7, B:321:0x07f0, B:323:0x07f6, B:326:0x0802, B:328:0x080c, B:330:0x0814, B:332:0x081c, B:334:0x0828, B:336:0x0836, B:339:0x083b, B:341:0x087e, B:342:0x08a9, B:344:0x08ae, B:346:0x08bc, B:350:0x08c8, B:353:0x08e8, B:347:0x08c2, B:340:0x0861, B:354:0x0900, B:356:0x0910, B:358:0x092d, B:360:0x0939, B:362:0x093f, B:364:0x0949, B:365:0x097b, B:367:0x0980, B:369:0x0990, B:373:0x099c, B:370:0x0996, B:374:0x09b4, B:380:0x09fe, B:382:0x0a11, B:383:0x0a20, B:385:0x0a24, B:387:0x0a30, B:388:0x0a3f, B:390:0x0a43, B:392:0x0a4b, B:394:0x0a63, B:405:0x0aac, B:407:0x0ab6, B:409:0x0ac4, B:411:0x0ac8, B:426:0x0b06, B:429:0x0b18, B:433:0x0b40, B:435:0x0b50, B:444:0x0ba3, B:446:0x0bab, B:448:0x0baf, B:450:0x0bb3, B:452:0x0bb7, B:456:0x0bcc, B:458:0x0bea, B:459:0x0bf3, B:466:0x0c1b, B:413:0x0ad6, B:415:0x0ada, B:417:0x0ae4, B:419:0x0ae8, B:422:0x0af8, B:53:0x0135, B:69:0x01c7, B:77:0x01f2, B:85:0x0212, B:108:0x025e, B:95:0x0234, B:45:0x00e7, B:56:0x013e), top: B:587:0x000b, inners: #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0733 A[PHI: r2
  0x0733: PHI (r2v76 com.google.android.gms.internal.measurement.zzcf) = 
  (r2v70 com.google.android.gms.internal.measurement.zzcf)
  (r2v70 com.google.android.gms.internal.measurement.zzcf)
  (r2v80 com.google.android.gms.internal.measurement.zzcf)
 binds: [B:279:0x0702, B:281:0x070b, B:277:0x06f5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0736  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0791  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x07e5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0122 A[Catch: SQLiteException -> 0x0238, all -> 0x0ed2, TRY_LEAVE, TryCatch #0 {SQLiteException -> 0x0238, blocks: (B:49:0x00f6, B:51:0x0122, B:55:0x013a, B:56:0x013e, B:57:0x0142, B:59:0x0148, B:60:0x0159, B:62:0x0165, B:64:0x0187, B:63:0x017a, B:93:0x0221), top: B:571:0x00f6 }] */
    /* JADX WARN: Removed duplicated region for block: B:555:0x0ec1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x013a A[Catch: SQLiteException -> 0x0238, all -> 0x0ed2, TRY_ENTER, TRY_LEAVE, TryCatch #0 {SQLiteException -> 0x0238, blocks: (B:49:0x00f6, B:51:0x0122, B:55:0x013a, B:56:0x013e, B:57:0x0142, B:59:0x0148, B:60:0x0159, B:62:0x0165, B:64:0x0187, B:63:0x017a, B:93:0x0221), top: B:571:0x00f6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzd(java.lang.String r45, long r46) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 3819
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzft.zzd(java.lang.String, long):boolean");
    }

    private final boolean zza(com.google.android.gms.internal.measurement.zzcf zzcfVar, com.google.android.gms.internal.measurement.zzcf zzcfVar2) {
        Preconditions.checkArgument("_e".equals(zzcfVar.name));
        zzdm();
        zzbt.zzd zzdVarZza = zzfz.zza(zzcfVar, "_sc");
        String strZzhl = zzdVarZza == null ? null : zzdVarZza.zzhl();
        zzdm();
        zzbt.zzd zzdVarZza2 = zzfz.zza(zzcfVar2, "_pc");
        String strZzhl2 = zzdVarZza2 != null ? zzdVarZza2.zzhl() : null;
        if (strZzhl2 == null || !strZzhl2.equals(strZzhl)) {
            return false;
        }
        zzdm();
        zzbt.zzd zzdVarZza3 = zzfz.zza(zzcfVar, "_et");
        if (zzdVarZza3.zzhn() && zzdVarZza3.zzho() > 0) {
            long jZzho = zzdVarZza3.zzho();
            zzdm();
            zzbt.zzd zzdVarZza4 = zzfz.zza(zzcfVar2, "_et");
            if (zzdVarZza4 != null && zzdVarZza4.zzho() > 0) {
                jZzho += zzdVarZza4.zzho();
            }
            zzdm();
            zzcfVar2.zzxi = zzfz.zza(zzcfVar2.zzxi, "_et", Long.valueOf(jZzho));
            zzdm();
            zzcfVar.zzxi = zzfz.zza(zzcfVar.zzxi, "_fr", (Object) 1L);
        }
        return true;
    }

    @VisibleForTesting
    private static zzbt.zzd[] zza(zzbt.zzd[] zzdVarArr, String str) {
        int i = 0;
        while (true) {
            if (i >= zzdVarArr.length) {
                i = -1;
                break;
            }
            if (str.equals(zzdVarArr[i].getName())) {
                break;
            }
            i++;
        }
        return i < 0 ? zzdVarArr : zza(zzdVarArr, i);
    }

    @VisibleForTesting
    private static zzbt.zzd[] zza(zzbt.zzd[] zzdVarArr, int i) {
        zzbt.zzd[] zzdVarArr2 = new zzbt.zzd[zzdVarArr.length - 1];
        if (i > 0) {
            System.arraycopy(zzdVarArr, 0, zzdVarArr2, 0, i);
        }
        if (i < zzdVarArr2.length) {
            System.arraycopy(zzdVarArr, i + 1, zzdVarArr2, i, zzdVarArr2.length - i);
        }
        return zzdVarArr2;
    }

    @VisibleForTesting
    private static zzbt.zzd[] zza(zzbt.zzd[] zzdVarArr, int i, String str) {
        for (zzbt.zzd zzdVar : zzdVarArr) {
            if ("_err".equals(zzdVar.getName())) {
                return zzdVarArr;
            }
        }
        zzbt.zzd[] zzdVarArr2 = new zzbt.zzd[zzdVarArr.length + 2];
        System.arraycopy(zzdVarArr, 0, zzdVarArr2, 0, zzdVarArr.length);
        zzbt.zzd zzdVar2 = (zzbt.zzd) zzbt.zzd.zzht().zzbw("_err").zzaj(Long.valueOf(i).longValue()).zzmr();
        zzbt.zzd zzdVar3 = (zzbt.zzd) zzbt.zzd.zzht().zzbw("_ev").zzbx(str).zzmr();
        zzdVarArr2[zzdVarArr2.length - 2] = zzdVar2;
        zzdVarArr2[zzdVarArr2.length - 1] = zzdVar3;
        return zzdVarArr2;
    }

    @VisibleForTesting
    final void zza(int i, Throwable th, byte[] bArr, String str) throws IllegalStateException {
        zzw zzwVarZzdo;
        long jLongValue;
        zzq();
        zzfy();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } finally {
                this.zzsj = false;
                zzgd();
            }
        }
        List<Long> list = this.zzsn;
        this.zzsn = null;
        boolean z = true;
        if ((i == 200 || i == 204) && th == null) {
            try {
                this.zzl.zzae().zzlb.set(this.zzl.zzz().currentTimeMillis());
                this.zzl.zzae().zzlc.set(0L);
                zzgc();
                this.zzl.zzad().zzdi().zza("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                zzdo().beginTransaction();
                try {
                    for (Long l : list) {
                        try {
                            zzwVarZzdo = zzdo();
                            jLongValue = l.longValue();
                            zzwVarZzdo.zzq();
                            zzwVarZzdo.zzah();
                            try {
                            } catch (SQLiteException e) {
                                zzwVarZzdo.zzad().zzda().zza("Failed to delete a bundle in a queue table", e);
                                throw e;
                            }
                        } catch (SQLiteException e2) {
                            if (this.zzso == null || !this.zzso.contains(l)) {
                                throw e2;
                            }
                        }
                        if (zzwVarZzdo.getWritableDatabase().delete("queue", "rowid=?", new String[]{String.valueOf(jLongValue)}) != 1) {
                            throw new SQLiteException("Deleted fewer rows from queue than expected");
                        }
                    }
                    zzdo().setTransactionSuccessful();
                    zzdo().endTransaction();
                    this.zzso = null;
                    if (zzfu().zzdl() && zzgb()) {
                        zzga();
                    } else {
                        this.zzsp = -1L;
                        zzgc();
                    }
                    this.zzse = 0L;
                } catch (Throwable th2) {
                    zzdo().endTransaction();
                    throw th2;
                }
            } catch (SQLiteException e3) {
                this.zzl.zzad().zzda().zza("Database error while trying to delete uploaded bundles", e3);
                this.zzse = this.zzl.zzz().elapsedRealtime();
                this.zzl.zzad().zzdi().zza("Disable upload, time", Long.valueOf(this.zzse));
            }
        } else {
            this.zzl.zzad().zzdi().zza("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.zzl.zzae().zzlc.set(this.zzl.zzz().currentTimeMillis());
            if (i != 503 && i != 429) {
                z = false;
            }
            if (z) {
                this.zzl.zzae().zzld.set(this.zzl.zzz().currentTimeMillis());
            }
            if (this.zzl.zzaf().zzo(str)) {
                zzdo().zza(list);
            }
            zzgc();
        }
    }

    private final boolean zzgb() {
        zzq();
        zzfy();
        return zzdo().zzcd() || !TextUtils.isEmpty(zzdo().zzby());
    }

    private final void zzb(zzg zzgVar) throws IllegalStateException {
        zzq();
        if (TextUtils.isEmpty(zzgVar.getGmpAppId()) && (!zzt.zzbx() || TextUtils.isEmpty(zzgVar.zzao()))) {
            zzb(zzgVar.zzan(), 204, null, null, null);
            return;
        }
        zzt zztVarZzaf = this.zzl.zzaf();
        Uri.Builder builder = new Uri.Builder();
        String gmpAppId = zzgVar.getGmpAppId();
        if (TextUtils.isEmpty(gmpAppId) && zzt.zzbx()) {
            gmpAppId = zzgVar.zzao();
        }
        ArrayMap arrayMap = null;
        Uri.Builder builderEncodedAuthority = builder.scheme(zzal.zzgh.get(null)).encodedAuthority(zzal.zzgi.get(null));
        String strValueOf = String.valueOf(gmpAppId);
        builderEncodedAuthority.path(strValueOf.length() != 0 ? "config/app/".concat(strValueOf) : new String("config/app/")).appendQueryParameter("app_instance_id", zzgVar.getAppInstanceId()).appendQueryParameter("platform", "android").appendQueryParameter("gmp_version", String.valueOf(zztVarZzaf.zzav()));
        String string = builder.build().toString();
        try {
            URL url = new URL(string);
            this.zzl.zzad().zzdi().zza("Fetching remote configuration", zzgVar.zzan());
            com.google.android.gms.internal.measurement.zzce zzceVarZzay = zzdp().zzay(zzgVar.zzan());
            String strZzaz = zzdp().zzaz(zzgVar.zzan());
            if (zzceVarZzay != null && !TextUtils.isEmpty(strZzaz)) {
                arrayMap = new ArrayMap();
                arrayMap.put("If-Modified-Since", strZzaz);
            }
            this.zzsi = true;
            zzay zzayVarZzfu = zzfu();
            String strZzan = zzgVar.zzan();
            zzfw zzfwVar = new zzfw(this);
            zzayVarZzfu.zzq();
            zzayVarZzfu.zzah();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(zzfwVar);
            zzayVarZzfu.zzac().zzb(new zzbc(zzayVarZzfu, strZzan, url, null, arrayMap, zzfwVar));
        } catch (MalformedURLException unused) {
            this.zzl.zzad().zzda().zza("Failed to parse config URL. Not fetching. appId", zzau.zzao(zzgVar.zzan()), string);
        }
    }

    @VisibleForTesting
    final void zzb(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) throws IllegalStateException {
        zzq();
        zzfy();
        Preconditions.checkNotEmpty(str);
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } finally {
                this.zzsi = false;
                zzgd();
            }
        }
        this.zzl.zzad().zzdi().zza("onConfigFetched. Response size", Integer.valueOf(bArr.length));
        zzdo().beginTransaction();
        try {
            zzg zzgVarZzae = zzdo().zzae(str);
            boolean z = true;
            boolean z2 = (i == 200 || i == 204 || i == 304) && th == null;
            if (zzgVarZzae == null) {
                this.zzl.zzad().zzdd().zza("App does not exist in onConfigFetched. appId", zzau.zzao(str));
            } else if (z2 || i == 404) {
                List<String> list = map != null ? map.get("Last-Modified") : null;
                String str2 = (list == null || list.size() <= 0) ? null : list.get(0);
                if (i == 404 || i == 304) {
                    if (zzdp().zzay(str) == null && !zzdp().zza(str, null, null)) {
                        return;
                    }
                } else if (!zzdp().zza(str, bArr, str2)) {
                    return;
                }
                zzgVarZzae.zzl(this.zzl.zzz().currentTimeMillis());
                zzdo().zza(zzgVarZzae);
                if (i == 404) {
                    this.zzl.zzad().zzdf().zza("Config not found. Using empty config. appId", str);
                } else {
                    this.zzl.zzad().zzdi().zza("Successfully fetched config. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                }
                if (zzfu().zzdl() && zzgb()) {
                    zzga();
                } else {
                    zzgc();
                }
            } else {
                zzgVarZzae.zzm(this.zzl.zzz().currentTimeMillis());
                zzdo().zza(zzgVarZzae);
                this.zzl.zzad().zzdi().zza("Fetching config failed. code, error", Integer.valueOf(i), th);
                zzdp().zzba(str);
                this.zzl.zzae().zzlc.set(this.zzl.zzz().currentTimeMillis());
                if (i != 503 && i != 429) {
                    z = false;
                }
                if (z) {
                    this.zzl.zzae().zzld.set(this.zzl.zzz().currentTimeMillis());
                }
                zzgc();
            }
            zzdo().setTransactionSuccessful();
        } finally {
            zzdo().endTransaction();
        }
    }

    private final void zzgc() throws IllegalStateException {
        long jMax;
        long jMax2;
        zzq();
        zzfy();
        if (zzgg() || this.zzl.zzaf().zza(zzal.zzip)) {
            if (this.zzse > 0) {
                long jAbs = 3600000 - Math.abs(this.zzl.zzz().elapsedRealtime() - this.zzse);
                if (jAbs > 0) {
                    this.zzl.zzad().zzdi().zza("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(jAbs));
                    zzfv().unregister();
                    zzfw().cancel();
                    return;
                }
                this.zzse = 0L;
            }
            if (!this.zzl.zzet() || !zzgb()) {
                this.zzl.zzad().zzdi().zzaq("Nothing to upload or uploading impossible");
                zzfv().unregister();
                zzfw().cancel();
                return;
            }
            long jCurrentTimeMillis = this.zzl.zzz().currentTimeMillis();
            long jMax3 = Math.max(0L, zzal.zzhd.get(null).longValue());
            boolean z = zzdo().zzce() || zzdo().zzbz();
            if (z) {
                String strZzbu = this.zzl.zzaf().zzbu();
                if (!TextUtils.isEmpty(strZzbu) && !".none.".equals(strZzbu)) {
                    jMax = Math.max(0L, zzal.zzgy.get(null).longValue());
                } else {
                    jMax = Math.max(0L, zzal.zzgx.get(null).longValue());
                }
            } else {
                jMax = Math.max(0L, zzal.zzgw.get(null).longValue());
            }
            long j = this.zzl.zzae().zzlb.get();
            long j2 = this.zzl.zzae().zzlc.get();
            long j3 = jMax;
            long jMax4 = Math.max(zzdo().zzcb(), zzdo().zzcc());
            if (jMax4 == 0) {
                jMax2 = 0;
            } else {
                long jAbs2 = jCurrentTimeMillis - Math.abs(jMax4 - jCurrentTimeMillis);
                long jAbs3 = jCurrentTimeMillis - Math.abs(j - jCurrentTimeMillis);
                long jAbs4 = jCurrentTimeMillis - Math.abs(j2 - jCurrentTimeMillis);
                long jMax5 = Math.max(jAbs3, jAbs4);
                long jMin = jAbs2 + jMax3;
                if (z && jMax5 > 0) {
                    jMin = Math.min(jAbs2, jMax5) + j3;
                }
                jMax2 = !zzdm().zzb(jMax5, j3) ? jMax5 + j3 : jMin;
                if (jAbs4 != 0 && jAbs4 >= jAbs2) {
                    for (int i = 0; i < Math.min(20, Math.max(0, zzal.zzhf.get(null).intValue())); i++) {
                        jMax2 += Math.max(0L, zzal.zzhe.get(null).longValue()) * (1 << i);
                        if (jMax2 > jAbs4) {
                            break;
                        }
                    }
                    jMax2 = 0;
                }
            }
            if (jMax2 == 0) {
                this.zzl.zzad().zzdi().zzaq("Next upload time is 0");
                zzfv().unregister();
                zzfw().cancel();
                return;
            }
            if (!zzfu().zzdl()) {
                this.zzl.zzad().zzdi().zzaq("No network");
                zzfv().zzdq();
                zzfw().cancel();
                return;
            }
            long j4 = this.zzl.zzae().zzld.get();
            long jMax6 = Math.max(0L, zzal.zzgu.get(null).longValue());
            if (!zzdm().zzb(j4, jMax6)) {
                jMax2 = Math.max(jMax2, j4 + jMax6);
            }
            zzfv().unregister();
            long jCurrentTimeMillis2 = jMax2 - this.zzl.zzz().currentTimeMillis();
            if (jCurrentTimeMillis2 <= 0) {
                jCurrentTimeMillis2 = Math.max(0L, zzal.zzgz.get(null).longValue());
                this.zzl.zzae().zzlb.set(this.zzl.zzz().currentTimeMillis());
            }
            this.zzl.zzad().zzdi().zza("Upload scheduled in approximately ms", Long.valueOf(jCurrentTimeMillis2));
            zzfw().zzv(jCurrentTimeMillis2);
        }
    }

    final void zzf(Runnable runnable) {
        zzq();
        if (this.zzsf == null) {
            this.zzsf = new ArrayList();
        }
        this.zzsf.add(runnable);
    }

    private final void zzgd() throws IllegalStateException {
        zzq();
        if (this.zzsi || this.zzsj || this.zzsk) {
            this.zzl.zzad().zzdi().zza("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzsi), Boolean.valueOf(this.zzsj), Boolean.valueOf(this.zzsk));
            return;
        }
        this.zzl.zzad().zzdi().zzaq("Stopping uploading service(s)");
        List<Runnable> list = this.zzsf;
        if (list == null) {
            return;
        }
        Iterator<Runnable> it = list.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        this.zzsf.clear();
    }

    private final Boolean zzc(zzg zzgVar) {
        try {
            if (zzgVar.zzat() != -2147483648L) {
                if (zzgVar.zzat() == Wrappers.packageManager(this.zzl.getContext()).getPackageInfo(zzgVar.zzan(), 0).versionCode) {
                    return true;
                }
            } else {
                String str = Wrappers.packageManager(this.zzl.getContext()).getPackageInfo(zzgVar.zzan(), 0).versionName;
                if (zzgVar.zzas() != null && zzgVar.zzas().equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @VisibleForTesting
    private final boolean zzge() throws IllegalStateException {
        zzq();
        try {
            this.zzsm = new RandomAccessFile(new File(this.zzl.getContext().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.zzsl = this.zzsm.tryLock();
            if (this.zzsl != null) {
                this.zzl.zzad().zzdi().zzaq("Storage concurrent access okay");
                return true;
            }
            this.zzl.zzad().zzda().zzaq("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e) {
            this.zzl.zzad().zzda().zza("Failed to acquire storage lock", e);
            return false;
        } catch (IOException e2) {
            this.zzl.zzad().zzda().zza("Failed to access storage lock file", e2);
            return false;
        }
    }

    @VisibleForTesting
    private final int zza(FileChannel fileChannel) throws IllegalStateException, IOException {
        zzq();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzl.zzad().zzda().zzaq("Bad channel to read from");
            return 0;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0L);
            int i = fileChannel.read(byteBufferAllocate);
            if (i == 4) {
                byteBufferAllocate.flip();
                return byteBufferAllocate.getInt();
            }
            if (i != -1) {
                this.zzl.zzad().zzdd().zza("Unexpected data length. Bytes read", Integer.valueOf(i));
            }
            return 0;
        } catch (IOException e) {
            this.zzl.zzad().zzda().zza("Failed to read from channel", e);
            return 0;
        }
    }

    @VisibleForTesting
    private final boolean zza(int i, FileChannel fileChannel) throws IllegalStateException, IOException {
        zzq();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzl.zzad().zzda().zzaq("Bad channel to read from");
            return false;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.flip();
        try {
            fileChannel.truncate(0L);
            fileChannel.write(byteBufferAllocate);
            fileChannel.force(true);
            if (fileChannel.size() != 4) {
                this.zzl.zzad().zzda().zza("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            }
            return true;
        } catch (IOException e) {
            this.zzl.zzad().zzda().zza("Failed to write to channel", e);
            return false;
        }
    }

    final void zzgf() {
        zzq();
        zzfy();
        if (!this.zzsd) {
            this.zzsd = true;
            zzq();
            zzfy();
            if ((this.zzl.zzaf().zza(zzal.zzip) || zzgg()) && zzge()) {
                int iZza = zza(this.zzsm);
                int iZzcx = this.zzl.zzt().zzcx();
                zzq();
                if (iZza > iZzcx) {
                    this.zzl.zzad().zzda().zza("Panic: can't downgrade version. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzcx));
                } else if (iZza < iZzcx) {
                    if (zza(iZzcx, this.zzsm)) {
                        this.zzl.zzad().zzdi().zza("Storage version upgraded. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzcx));
                    } else {
                        this.zzl.zzad().zzda().zza("Storage version upgrade failed. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzcx));
                    }
                }
            }
        }
        if (this.zzsc || this.zzl.zzaf().zza(zzal.zzip)) {
            return;
        }
        this.zzl.zzad().zzdg().zzaq("This instance being marked as an uploader");
        this.zzsc = true;
        zzgc();
    }

    private final boolean zzgg() {
        zzq();
        zzfy();
        return this.zzsc;
    }

    @VisibleForTesting
    final void zzd(zzm zzmVar) throws IllegalStateException {
        if (this.zzsn != null) {
            this.zzso = new ArrayList();
            this.zzso.addAll(this.zzsn);
        }
        zzw zzwVarZzdo = zzdo();
        String str = zzmVar.packageName;
        Preconditions.checkNotEmpty(str);
        zzwVarZzdo.zzq();
        zzwVarZzdo.zzah();
        try {
            SQLiteDatabase writableDatabase = zzwVarZzdo.getWritableDatabase();
            String[] strArr = {str};
            int iDelete = writableDatabase.delete("apps", "app_id=?", strArr) + 0 + writableDatabase.delete("events", "app_id=?", strArr) + writableDatabase.delete("user_attributes", "app_id=?", strArr) + writableDatabase.delete("conditional_properties", "app_id=?", strArr) + writableDatabase.delete("raw_events", "app_id=?", strArr) + writableDatabase.delete("raw_events_metadata", "app_id=?", strArr) + writableDatabase.delete("queue", "app_id=?", strArr) + writableDatabase.delete("audience_filter_values", "app_id=?", strArr) + writableDatabase.delete("main_event_params", "app_id=?", strArr);
            if (iDelete > 0) {
                zzwVarZzdo.zzad().zzdi().zza("Reset analytics data. app, records", str, Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e) {
            zzwVarZzdo.zzad().zzda().zza("Error resetting analytics data. appId, error", zzau.zzao(str), e);
        }
        zzm zzmVarZza = zza(this.zzl.getContext(), zzmVar.packageName, zzmVar.zzch, zzmVar.zzcr, zzmVar.zzct, zzmVar.zzcu, zzmVar.zzdp, zzmVar.zzcv);
        if (!this.zzl.zzaf().zzs(zzmVar.packageName) || zzmVar.zzcr) {
            zzf(zzmVarZza);
        }
    }

    private final zzm zza(Context context, String str, String str2, boolean z, boolean z2, boolean z3, long j, String str3) throws IllegalStateException {
        String installerPackageName;
        int i;
        String str4;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            this.zzl.zzad().zzda().zzaq("PackageManager is null, can not log app install information");
            return null;
        }
        try {
            installerPackageName = packageManager.getInstallerPackageName(str);
        } catch (IllegalArgumentException unused) {
            this.zzl.zzad().zzda().zza("Error retrieving installer package name. appId", zzau.zzao(str));
            installerPackageName = "Unknown";
        }
        if (installerPackageName == null) {
            installerPackageName = "manual_install";
        } else if ("com.android.vending".equals(installerPackageName)) {
            installerPackageName = "";
        }
        String str5 = installerPackageName;
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 0);
            if (packageInfo != null) {
                CharSequence applicationLabel = Wrappers.packageManager(context).getApplicationLabel(str);
                if (!TextUtils.isEmpty(applicationLabel)) {
                    applicationLabel.toString();
                }
                String str6 = packageInfo.versionName;
                i = packageInfo.versionCode;
                str4 = str6;
            } else {
                i = Integer.MIN_VALUE;
                str4 = "Unknown";
            }
            this.zzl.zzag();
            return new zzm(str, str2, str4, i, str5, this.zzl.zzaf().zzav(), this.zzl.zzab().zzc(context, str), (String) null, z, false, "", 0L, this.zzl.zzaf().zzu(str) ? j : 0L, 0, z2, z3, false, str3, (Boolean) null, 0L);
        } catch (PackageManager.NameNotFoundException unused2) {
            this.zzl.zzad().zzda().zza("Error retrieving newly installed package info. appId, appName", zzau.zzao(str), "Unknown");
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zzb(com.google.android.gms.measurement.internal.zzga r13, com.google.android.gms.measurement.internal.zzm r14) throws java.lang.IllegalStateException {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzft.zzb(com.google.android.gms.measurement.internal.zzga, com.google.android.gms.measurement.internal.zzm):void");
    }

    final void zzc(zzga zzgaVar, zzm zzmVar) throws IllegalStateException {
        zzq();
        zzfy();
        if (TextUtils.isEmpty(zzmVar.zzch) && TextUtils.isEmpty(zzmVar.zzcv)) {
            return;
        }
        if (!zzmVar.zzcr) {
            zzg(zzmVar);
            return;
        }
        if (this.zzl.zzaf().zze(zzmVar.packageName, zzal.zzin)) {
            if ("_npa".equals(zzgaVar.name) && zzmVar.zzcw != null) {
                this.zzl.zzad().zzdh().zzaq("Falling back to manifest metadata value for ad personalization");
                zzb(new zzga("_npa", this.zzl.zzz().currentTimeMillis(), Long.valueOf(zzmVar.zzcw.booleanValue() ? 1L : 0L), "auto"), zzmVar);
                return;
            }
            this.zzl.zzad().zzdh().zza("Removing user property", this.zzl.zzaa().zzan(zzgaVar.name));
            zzdo().beginTransaction();
            try {
                zzg(zzmVar);
                zzdo().zzd(zzmVar.packageName, zzgaVar.name);
                zzdo().setTransactionSuccessful();
                this.zzl.zzad().zzdh().zza("User property removed", this.zzl.zzaa().zzan(zzgaVar.name));
                return;
            } finally {
            }
        }
        this.zzl.zzad().zzdh().zza("Removing user property", this.zzl.zzaa().zzan(zzgaVar.name));
        zzdo().beginTransaction();
        try {
            zzg(zzmVar);
            zzdo().zzd(zzmVar.packageName, zzgaVar.name);
            zzdo().setTransactionSuccessful();
            this.zzl.zzad().zzdh().zza("User property removed", this.zzl.zzaa().zzan(zzgaVar.name));
        } finally {
        }
    }

    final void zzb(zzfs zzfsVar) {
        this.zzsg++;
    }

    final void zzgh() {
        this.zzsh++;
    }

    final zzby zzgi() {
        return this.zzl;
    }

    final void zzf(zzm zzmVar) throws IllegalStateException {
        String str;
        String str2;
        int i;
        zzaf zzafVarZzc;
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo;
        boolean z;
        zzgc zzgcVarZze;
        zzq();
        zzfy();
        Preconditions.checkNotNull(zzmVar);
        Preconditions.checkNotEmpty(zzmVar.packageName);
        if (TextUtils.isEmpty(zzmVar.zzch) && TextUtils.isEmpty(zzmVar.zzcv)) {
            return;
        }
        zzg zzgVarZzae = zzdo().zzae(zzmVar.packageName);
        if (zzgVarZzae != null && TextUtils.isEmpty(zzgVarZzae.getGmpAppId()) && !TextUtils.isEmpty(zzmVar.zzch)) {
            zzgVarZzae.zzl(0L);
            zzdo().zza(zzgVarZzae);
            zzdp().zzbb(zzmVar.packageName);
        }
        if (!zzmVar.zzcr) {
            zzg(zzmVar);
            return;
        }
        long jCurrentTimeMillis = zzmVar.zzdp;
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = this.zzl.zzz().currentTimeMillis();
        }
        if (this.zzl.zzaf().zze(zzmVar.packageName, zzal.zzin)) {
            this.zzl.zzy().zzcr();
        }
        int i2 = zzmVar.zzdq;
        if (i2 != 0 && i2 != 1) {
            this.zzl.zzad().zzdd().zza("Incorrect app type, assuming installed app. appId, appType", zzau.zzao(zzmVar.packageName), Integer.valueOf(i2));
            i2 = 0;
        }
        zzdo().beginTransaction();
        try {
            if (!this.zzl.zzaf().zze(zzmVar.packageName, zzal.zzin) || ((zzgcVarZze = zzdo().zze(zzmVar.packageName, "_npa")) != null && !"auto".equals(zzgcVarZze.origin))) {
                str = "_sysu";
                str2 = "_sys";
                i = 1;
            } else if (zzmVar.zzcw != null) {
                str = "_sysu";
                str2 = "_sys";
                i = 1;
                zzga zzgaVar = new zzga("_npa", jCurrentTimeMillis, Long.valueOf(zzmVar.zzcw.booleanValue() ? 1L : 0L), "auto");
                if (zzgcVarZze == null || !zzgcVarZze.value.equals(zzgaVar.zzsy)) {
                    zzb(zzgaVar, zzmVar);
                }
            } else {
                str = "_sysu";
                str2 = "_sys";
                i = 1;
                if (zzgcVarZze != null) {
                    zzc(new zzga("_npa", jCurrentTimeMillis, null, "auto"), zzmVar);
                }
            }
            zzg zzgVarZzae2 = zzdo().zzae(zzmVar.packageName);
            if (zzgVarZzae2 != null) {
                this.zzl.zzab();
                if (zzgd.zza(zzmVar.zzch, zzgVarZzae2.getGmpAppId(), zzmVar.zzcv, zzgVarZzae2.zzao())) {
                    this.zzl.zzad().zzdd().zza("New GMP App Id passed in. Removing cached database data. appId", zzau.zzao(zzgVarZzae2.zzan()));
                    zzw zzwVarZzdo = zzdo();
                    String strZzan = zzgVarZzae2.zzan();
                    zzwVarZzdo.zzah();
                    zzwVarZzdo.zzq();
                    Preconditions.checkNotEmpty(strZzan);
                    try {
                        SQLiteDatabase writableDatabase = zzwVarZzdo.getWritableDatabase();
                        String[] strArr = new String[i];
                        strArr[0] = strZzan;
                        int iDelete = writableDatabase.delete("events", "app_id=?", strArr) + 0 + writableDatabase.delete("user_attributes", "app_id=?", strArr) + writableDatabase.delete("conditional_properties", "app_id=?", strArr) + writableDatabase.delete("apps", "app_id=?", strArr) + writableDatabase.delete("raw_events", "app_id=?", strArr) + writableDatabase.delete("raw_events_metadata", "app_id=?", strArr) + writableDatabase.delete("event_filters", "app_id=?", strArr) + writableDatabase.delete("property_filters", "app_id=?", strArr) + writableDatabase.delete("audience_filter_values", "app_id=?", strArr);
                        if (iDelete > 0) {
                            zzwVarZzdo.zzad().zzdi().zza("Deleted application data. app, records", strZzan, Integer.valueOf(iDelete));
                        }
                    } catch (SQLiteException e) {
                        zzwVarZzdo.zzad().zzda().zza("Error deleting application data. appId, error", zzau.zzao(strZzan), e);
                    }
                    zzgVarZzae2 = null;
                }
            }
            if (zzgVarZzae2 != null) {
                if (zzgVarZzae2.zzat() != -2147483648L) {
                    if (zzgVarZzae2.zzat() != zzmVar.zzco) {
                        Bundle bundle = new Bundle();
                        bundle.putString("_pv", zzgVarZzae2.zzas());
                        zzc(new zzaj("_au", new zzag(bundle), "auto", jCurrentTimeMillis), zzmVar);
                    }
                } else if (zzgVarZzae2.zzas() != null && !zzgVarZzae2.zzas().equals(zzmVar.zzcn)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("_pv", zzgVarZzae2.zzas());
                    zzc(new zzaj("_au", new zzag(bundle2), "auto", jCurrentTimeMillis), zzmVar);
                }
            }
            zzg(zzmVar);
            if (i2 == 0) {
                zzafVarZzc = zzdo().zzc(zzmVar.packageName, "_f");
            } else {
                zzafVarZzc = i2 == i ? zzdo().zzc(zzmVar.packageName, "_v") : null;
            }
            if (zzafVarZzc == null) {
                long j = ((jCurrentTimeMillis / 3600000) + 1) * 3600000;
                if (i2 == 0) {
                    zzb(new zzga("_fot", jCurrentTimeMillis, Long.valueOf(j), "auto"), zzmVar);
                    if (this.zzl.zzaf().zzw(zzmVar.zzch)) {
                        zzq();
                        this.zzl.zzej().zzaw(zzmVar.packageName);
                    }
                    zzq();
                    zzfy();
                    Bundle bundle3 = new Bundle();
                    bundle3.putLong("_c", 1L);
                    bundle3.putLong("_r", 1L);
                    bundle3.putLong("_uwa", 0L);
                    bundle3.putLong("_pfo", 0L);
                    String str3 = str2;
                    bundle3.putLong(str3, 0L);
                    bundle3.putLong(str, 0L);
                    if (this.zzl.zzaf().zzac(zzmVar.packageName)) {
                        bundle3.putLong("_et", 1L);
                    }
                    if (this.zzl.zzaf().zzs(zzmVar.packageName) && zzmVar.zzdr) {
                        bundle3.putLong("_dac", 1L);
                    }
                    if (this.zzl.getContext().getPackageManager() == null) {
                        this.zzl.zzad().zzda().zza("PackageManager is null, first open report might be inaccurate. appId", zzau.zzao(zzmVar.packageName));
                    } else {
                        try {
                            packageInfo = Wrappers.packageManager(this.zzl.getContext()).getPackageInfo(zzmVar.packageName, 0);
                        } catch (PackageManager.NameNotFoundException e2) {
                            this.zzl.zzad().zzda().zza("Package info is null, first open report might be inaccurate. appId", zzau.zzao(zzmVar.packageName), e2);
                            packageInfo = null;
                        }
                        if (packageInfo != null && packageInfo.firstInstallTime != 0) {
                            if (packageInfo.firstInstallTime != packageInfo.lastUpdateTime) {
                                bundle3.putLong("_uwa", 1L);
                                z = false;
                            } else {
                                z = true;
                            }
                            zzb(new zzga("_fi", jCurrentTimeMillis, Long.valueOf(z ? 1L : 0L), "auto"), zzmVar);
                        }
                        try {
                            applicationInfo = Wrappers.packageManager(this.zzl.getContext()).getApplicationInfo(zzmVar.packageName, 0);
                        } catch (PackageManager.NameNotFoundException e3) {
                            this.zzl.zzad().zzda().zza("Application info is null, first open report might be inaccurate. appId", zzau.zzao(zzmVar.packageName), e3);
                            applicationInfo = null;
                        }
                        if (applicationInfo != null) {
                            if ((i & applicationInfo.flags) != 0) {
                                bundle3.putLong(str3, 1L);
                            }
                            if ((applicationInfo.flags & 128) != 0) {
                                bundle3.putLong(str, 1L);
                            }
                        }
                    }
                    zzw zzwVarZzdo2 = zzdo();
                    String str4 = zzmVar.packageName;
                    Preconditions.checkNotEmpty(str4);
                    zzwVarZzdo2.zzq();
                    zzwVarZzdo2.zzah();
                    long jZzj = zzwVarZzdo2.zzj(str4, "first_open_count");
                    if (jZzj >= 0) {
                        bundle3.putLong("_pfo", jZzj);
                    }
                    zzc(new zzaj("_f", new zzag(bundle3), "auto", jCurrentTimeMillis), zzmVar);
                } else if (i2 == i) {
                    zzb(new zzga("_fvt", jCurrentTimeMillis, Long.valueOf(j), "auto"), zzmVar);
                    zzq();
                    zzfy();
                    Bundle bundle4 = new Bundle();
                    bundle4.putLong("_c", 1L);
                    bundle4.putLong("_r", 1L);
                    if (this.zzl.zzaf().zzac(zzmVar.packageName)) {
                        bundle4.putLong("_et", 1L);
                    }
                    if (this.zzl.zzaf().zzs(zzmVar.packageName) && zzmVar.zzdr) {
                        bundle4.putLong("_dac", 1L);
                    }
                    zzc(new zzaj("_v", new zzag(bundle4), "auto", jCurrentTimeMillis), zzmVar);
                }
                if (!this.zzl.zzaf().zze(zzmVar.packageName, zzal.zzim)) {
                    Bundle bundle5 = new Bundle();
                    bundle5.putLong("_et", 1L);
                    if (this.zzl.zzaf().zzac(zzmVar.packageName)) {
                        bundle5.putLong("_fr", 1L);
                    }
                    zzc(new zzaj("_e", new zzag(bundle5), "auto", jCurrentTimeMillis), zzmVar);
                }
            } else if (zzmVar.zzdo) {
                zzc(new zzaj("_cd", new zzag(new Bundle()), "auto", jCurrentTimeMillis), zzmVar);
            }
            zzdo().setTransactionSuccessful();
        } finally {
            zzdo().endTransaction();
        }
    }

    private final zzm zzbk(String str) throws IllegalStateException {
        zzg zzgVarZzae = zzdo().zzae(str);
        if (zzgVarZzae == null || TextUtils.isEmpty(zzgVarZzae.zzas())) {
            this.zzl.zzad().zzdh().zza("No app data available; dropping", str);
            return null;
        }
        Boolean boolZzc = zzc(zzgVarZzae);
        if (boolZzc != null && !boolZzc.booleanValue()) {
            this.zzl.zzad().zzda().zza("App version does not match; dropping. appId", zzau.zzao(str));
            return null;
        }
        return new zzm(str, zzgVarZzae.getGmpAppId(), zzgVarZzae.zzas(), zzgVarZzae.zzat(), zzgVarZzae.zzau(), zzgVarZzae.zzav(), zzgVarZzae.zzaw(), (String) null, zzgVarZzae.isMeasurementEnabled(), false, zzgVarZzae.getFirebaseInstanceId(), zzgVarZzae.zzbk(), 0L, 0, zzgVarZzae.zzbl(), zzgVarZzae.zzbm(), false, zzgVarZzae.zzao(), zzgVarZzae.zzbn(), zzgVarZzae.zzax());
    }

    final void zze(zzr zzrVar) throws IllegalStateException {
        zzm zzmVarZzbk = zzbk(zzrVar.packageName);
        if (zzmVarZzbk != null) {
            zzb(zzrVar, zzmVarZzbk);
        }
    }

    final void zzb(zzr zzrVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzrVar);
        Preconditions.checkNotEmpty(zzrVar.packageName);
        Preconditions.checkNotNull(zzrVar.origin);
        Preconditions.checkNotNull(zzrVar.zzdv);
        Preconditions.checkNotEmpty(zzrVar.zzdv.name);
        zzq();
        zzfy();
        if (TextUtils.isEmpty(zzmVar.zzch) && TextUtils.isEmpty(zzmVar.zzcv)) {
            return;
        }
        if (!zzmVar.zzcr) {
            zzg(zzmVar);
            return;
        }
        zzr zzrVar2 = new zzr(zzrVar);
        boolean z = false;
        zzrVar2.active = false;
        zzdo().beginTransaction();
        try {
            zzr zzrVarZzf = zzdo().zzf(zzrVar2.packageName, zzrVar2.zzdv.name);
            if (zzrVarZzf != null && !zzrVarZzf.origin.equals(zzrVar2.origin)) {
                this.zzl.zzad().zzdd().zza("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzl.zzaa().zzan(zzrVar2.zzdv.name), zzrVar2.origin, zzrVarZzf.origin);
            }
            if (zzrVarZzf != null && zzrVarZzf.active) {
                zzrVar2.origin = zzrVarZzf.origin;
                zzrVar2.creationTimestamp = zzrVarZzf.creationTimestamp;
                zzrVar2.triggerTimeout = zzrVarZzf.triggerTimeout;
                zzrVar2.triggerEventName = zzrVarZzf.triggerEventName;
                zzrVar2.zzdx = zzrVarZzf.zzdx;
                zzrVar2.active = zzrVarZzf.active;
                zzrVar2.zzdv = new zzga(zzrVar2.zzdv.name, zzrVarZzf.zzdv.zzsx, zzrVar2.zzdv.getValue(), zzrVarZzf.zzdv.origin);
            } else if (TextUtils.isEmpty(zzrVar2.triggerEventName)) {
                zzrVar2.zzdv = new zzga(zzrVar2.zzdv.name, zzrVar2.creationTimestamp, zzrVar2.zzdv.getValue(), zzrVar2.zzdv.origin);
                zzrVar2.active = true;
                z = true;
            }
            if (zzrVar2.active) {
                zzga zzgaVar = zzrVar2.zzdv;
                zzgc zzgcVar = new zzgc(zzrVar2.packageName, zzrVar2.origin, zzgaVar.name, zzgaVar.zzsx, zzgaVar.getValue());
                if (zzdo().zza(zzgcVar)) {
                    this.zzl.zzad().zzdh().zza("User property updated immediately", zzrVar2.packageName, this.zzl.zzaa().zzan(zzgcVar.name), zzgcVar.value);
                } else {
                    this.zzl.zzad().zzda().zza("(2)Too many active user properties, ignoring", zzau.zzao(zzrVar2.packageName), this.zzl.zzaa().zzan(zzgcVar.name), zzgcVar.value);
                }
                if (z && zzrVar2.zzdx != null) {
                    zzd(new zzaj(zzrVar2.zzdx, zzrVar2.creationTimestamp), zzmVar);
                }
            }
            if (zzdo().zza(zzrVar2)) {
                this.zzl.zzad().zzdh().zza("Conditional property added", zzrVar2.packageName, this.zzl.zzaa().zzan(zzrVar2.zzdv.name), zzrVar2.zzdv.getValue());
            } else {
                this.zzl.zzad().zzda().zza("Too many conditional properties, ignoring", zzau.zzao(zzrVar2.packageName), this.zzl.zzaa().zzan(zzrVar2.zzdv.name), zzrVar2.zzdv.getValue());
            }
            zzdo().setTransactionSuccessful();
        } finally {
            zzdo().endTransaction();
        }
    }

    final void zzf(zzr zzrVar) throws IllegalStateException {
        zzm zzmVarZzbk = zzbk(zzrVar.packageName);
        if (zzmVarZzbk != null) {
            zzc(zzrVar, zzmVarZzbk);
        }
    }

    final void zzc(zzr zzrVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzrVar);
        Preconditions.checkNotEmpty(zzrVar.packageName);
        Preconditions.checkNotNull(zzrVar.zzdv);
        Preconditions.checkNotEmpty(zzrVar.zzdv.name);
        zzq();
        zzfy();
        if (TextUtils.isEmpty(zzmVar.zzch) && TextUtils.isEmpty(zzmVar.zzcv)) {
            return;
        }
        if (!zzmVar.zzcr) {
            zzg(zzmVar);
            return;
        }
        zzdo().beginTransaction();
        try {
            zzg(zzmVar);
            zzr zzrVarZzf = zzdo().zzf(zzrVar.packageName, zzrVar.zzdv.name);
            if (zzrVarZzf != null) {
                this.zzl.zzad().zzdh().zza("Removing conditional user property", zzrVar.packageName, this.zzl.zzaa().zzan(zzrVar.zzdv.name));
                zzdo().zzg(zzrVar.packageName, zzrVar.zzdv.name);
                if (zzrVarZzf.active) {
                    zzdo().zzd(zzrVar.packageName, zzrVar.zzdv.name);
                }
                if (zzrVar.zzdy != null) {
                    zzd(this.zzl.zzab().zza(zzrVar.packageName, zzrVar.zzdy.name, zzrVar.zzdy.zzfd != null ? zzrVar.zzdy.zzfd.zzct() : null, zzrVarZzf.origin, zzrVar.zzdy.zzfp, true, false), zzmVar);
                }
            } else {
                this.zzl.zzad().zzdd().zza("Conditional user property doesn't exist", zzau.zzao(zzrVar.packageName), this.zzl.zzaa().zzan(zzrVar.zzdv.name));
            }
            zzdo().setTransactionSuccessful();
        } finally {
            zzdo().endTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0188  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzg zzg(com.google.android.gms.measurement.internal.zzm r11) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzft.zzg(com.google.android.gms.measurement.internal.zzm):com.google.android.gms.measurement.internal.zzg");
    }

    final String zzh(zzm zzmVar) throws IllegalStateException {
        try {
            return (String) this.zzl.zzac().zza(new zzfx(this, zzmVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.zzl.zzad().zzda().zza("Failed to get app instance id. appId", zzau.zzao(zzmVar.packageName), e);
            return null;
        }
    }

    final void zzj(boolean z) throws IllegalStateException {
        zzgc();
    }
}
