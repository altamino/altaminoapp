package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzauq implements zzavb {
    private static List<Future<Void>> zzdqz = Collections.synchronizedList(new ArrayList());
    private static ScheduledExecutorService zzdra = Executors.newSingleThreadScheduledExecutor();
    private final zzauy zzdoc;
    private final zzdsj zzdrb;
    private final LinkedHashMap<String, zzdsp> zzdrc;
    private final zzavd zzdrf;
    private boolean zzdrg;
    private final zzave zzdrh;
    private final Context zzlj;
    private final List<String> zzdrd = new ArrayList();
    private final List<String> zzdre = new ArrayList();
    private final Object lock = new Object();
    private HashSet<String> zzdri = new HashSet<>();
    private boolean zzdrj = false;
    private boolean zzdrk = false;
    private boolean zzdrl = false;

    public zzauq(Context context, zzbai zzbaiVar, zzauy zzauyVar, String str, zzavd zzavdVar) {
        Preconditions.checkNotNull(zzauyVar, "SafeBrowsing config is not present.");
        this.zzlj = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzdrc = new LinkedHashMap<>();
        this.zzdrf = zzavdVar;
        this.zzdoc = zzauyVar;
        Iterator<String> it = this.zzdoc.zzdrv.iterator();
        while (it.hasNext()) {
            this.zzdri.add(it.next().toLowerCase(Locale.ENGLISH));
        }
        this.zzdri.remove("cookie".toLowerCase(Locale.ENGLISH));
        zzdsj zzdsjVar = new zzdsj();
        zzdsjVar.zzhrv = 8;
        zzdsjVar.url = str;
        zzdsjVar.zzhrx = str;
        zzdsjVar.zzhrz = new zzdsk();
        zzdsjVar.zzhrz.zzdrr = this.zzdoc.zzdrr;
        zzdsq zzdsqVar = new zzdsq();
        zzdsqVar.zzhte = zzbaiVar.zzbsx;
        zzdsqVar.zzhtg = Boolean.valueOf(Wrappers.packageManager(this.zzlj).isCallerInstantApp());
        long apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzlj);
        if (apkVersion > 0) {
            zzdsqVar.zzhtf = Long.valueOf(apkVersion);
        }
        zzdsjVar.zzhsj = zzdsqVar;
        this.zzdrb = zzdsjVar;
        this.zzdrh = new zzave(this.zzlj, this.zzdoc.zzdry, this);
    }

    static final /* synthetic */ Void zzdo(String str) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzavb
    public final zzauy zzuc() {
        return this.zzdoc;
    }

    @Override // com.google.android.gms.internal.ads.zzavb
    public final void zzdk(String str) {
        synchronized (this.lock) {
            this.zzdrb.zzhsb = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavb
    public final boolean zzud() {
        return PlatformVersion.isAtLeastKitKat() && this.zzdoc.zzdrt && !this.zzdrk;
    }

    @Override // com.google.android.gms.internal.ads.zzavb
    public final void zzj(View view) {
        if (this.zzdoc.zzdrt && !this.zzdrk) {
            com.google.android.gms.ads.internal.zzk.zzlg();
            Bitmap bitmapZzl = zzaxi.zzl(view);
            if (bitmapZzl == null) {
                zzava.zzdp("Failed to capture the webview bitmap.");
            } else {
                this.zzdrk = true;
                zzaxi.zzd(new zzaut(this, bitmapZzl));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0011  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0023 A[Catch: all -> 0x00c6, TryCatch #0 {, blocks: (B:7:0x0007, B:8:0x0009, B:11:0x0013, B:12:0x0021, B:14:0x0023, B:17:0x004d, B:18:0x005a, B:20:0x0060, B:21:0x0066, B:23:0x006c, B:25:0x0075, B:27:0x007b, B:29:0x0084, B:32:0x0093, B:34:0x00ac, B:35:0x00b2, B:36:0x00bf, B:37:0x00c4), top: B:44:0x0007, inners: #1 }] */
    @Override // com.google.android.gms.internal.ads.zzavb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.String r7, java.util.Map<java.lang.String, java.lang.String> r8, int r9) {
        /*
            r6 = this;
            java.lang.Object r0 = r6.lock
            monitor-enter(r0)
            r1 = 3
            if (r9 != r1) goto L9
            r2 = 1
            r6.zzdrl = r2     // Catch: java.lang.Throwable -> Lc6
        L9:
            java.util.LinkedHashMap<java.lang.String, com.google.android.gms.internal.ads.zzdsp> r2 = r6.zzdrc     // Catch: java.lang.Throwable -> Lc6
            boolean r2 = r2.containsKey(r7)     // Catch: java.lang.Throwable -> Lc6
            if (r2 == 0) goto L23
            if (r9 != r1) goto L21
            java.util.LinkedHashMap<java.lang.String, com.google.android.gms.internal.ads.zzdsp> r8 = r6.zzdrc     // Catch: java.lang.Throwable -> Lc6
            java.lang.Object r7 = r8.get(r7)     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zzdsp r7 = (com.google.android.gms.internal.ads.zzdsp) r7     // Catch: java.lang.Throwable -> Lc6
            java.lang.Integer r8 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> Lc6
            r7.zzhtc = r8     // Catch: java.lang.Throwable -> Lc6
        L21:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc6
            return
        L23:
            com.google.android.gms.internal.ads.zzdsp r1 = new com.google.android.gms.internal.ads.zzdsp     // Catch: java.lang.Throwable -> Lc6
            r1.<init>()     // Catch: java.lang.Throwable -> Lc6
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> Lc6
            r1.zzhtc = r9     // Catch: java.lang.Throwable -> Lc6
            java.util.LinkedHashMap<java.lang.String, com.google.android.gms.internal.ads.zzdsp> r9 = r6.zzdrc     // Catch: java.lang.Throwable -> Lc6
            int r9 = r9.size()     // Catch: java.lang.Throwable -> Lc6
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> Lc6
            r1.zzhsw = r9     // Catch: java.lang.Throwable -> Lc6
            r1.url = r7     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zzdsm r9 = new com.google.android.gms.internal.ads.zzdsm     // Catch: java.lang.Throwable -> Lc6
            r9.<init>()     // Catch: java.lang.Throwable -> Lc6
            r1.zzhsx = r9     // Catch: java.lang.Throwable -> Lc6
            java.util.HashSet<java.lang.String> r9 = r6.zzdri     // Catch: java.lang.Throwable -> Lc6
            int r9 = r9.size()     // Catch: java.lang.Throwable -> Lc6
            if (r9 <= 0) goto Lbf
            if (r8 == 0) goto Lbf
            java.util.ArrayList r9 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Lc6
            r9.<init>()     // Catch: java.lang.Throwable -> Lc6
            java.util.Set r8 = r8.entrySet()     // Catch: java.lang.Throwable -> Lc6
            java.util.Iterator r8 = r8.iterator()     // Catch: java.lang.Throwable -> Lc6
        L5a:
            boolean r2 = r8.hasNext()     // Catch: java.lang.Throwable -> Lc6
            if (r2 == 0) goto Lb2
            java.lang.Object r2 = r8.next()     // Catch: java.lang.Throwable -> Lc6
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2     // Catch: java.lang.Throwable -> Lc6
            java.lang.Object r3 = r2.getKey()     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            if (r3 == 0) goto L73
            java.lang.Object r3 = r2.getKey()     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            goto L75
        L73:
            java.lang.String r3 = ""
        L75:
            java.lang.Object r4 = r2.getValue()     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            if (r4 == 0) goto L82
            java.lang.Object r2 = r2.getValue()     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            goto L84
        L82:
            java.lang.String r2 = ""
        L84:
            java.util.Locale r4 = java.util.Locale.ENGLISH     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            java.lang.String r4 = r3.toLowerCase(r4)     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            java.util.HashSet<java.lang.String> r5 = r6.zzdri     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            boolean r4 = r5.contains(r4)     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            if (r4 != 0) goto L93
            goto L5a
        L93:
            com.google.android.gms.internal.ads.zzdsl r4 = new com.google.android.gms.internal.ads.zzdsl     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            r4.<init>()     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            java.lang.String r5 = "UTF-8"
            byte[] r3 = r3.getBytes(r5)     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            r4.zzhsn = r3     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            java.lang.String r3 = "UTF-8"
            byte[] r2 = r2.getBytes(r3)     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            r4.zzhso = r2     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            r9.add(r4)     // Catch: java.io.UnsupportedEncodingException -> Lac java.lang.Throwable -> Lc6
            goto L5a
        Lac:
            java.lang.String r2 = "Cannot convert string to bytes, skip header."
            com.google.android.gms.internal.ads.zzava.zzdp(r2)     // Catch: java.lang.Throwable -> Lc6
            goto L5a
        Lb2:
            int r8 = r9.size()     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zzdsl[] r8 = new com.google.android.gms.internal.ads.zzdsl[r8]     // Catch: java.lang.Throwable -> Lc6
            r9.toArray(r8)     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zzdsm r9 = r1.zzhsx     // Catch: java.lang.Throwable -> Lc6
            r9.zzhsq = r8     // Catch: java.lang.Throwable -> Lc6
        Lbf:
            java.util.LinkedHashMap<java.lang.String, com.google.android.gms.internal.ads.zzdsp> r8 = r6.zzdrc     // Catch: java.lang.Throwable -> Lc6
            r8.put(r7, r1)     // Catch: java.lang.Throwable -> Lc6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc6
            return
        Lc6:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc6
            goto Lca
        Lc9:
            throw r7
        Lca:
            goto Lc9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzauq.zza(java.lang.String, java.util.Map, int):void");
    }

    final void zzdl(String str) {
        synchronized (this.lock) {
            this.zzdrd.add(str);
        }
    }

    final void zzdm(String str) {
        synchronized (this.lock) {
            this.zzdre.add(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavb
    public final String[] zza(String[] strArr) {
        return (String[]) this.zzdrh.zzb(strArr).toArray(new String[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzavb
    public final void zzue() {
        this.zzdrj = true;
    }

    private final zzdsp zzdn(String str) {
        zzdsp zzdspVar;
        synchronized (this.lock) {
            zzdspVar = this.zzdrc.get(str);
        }
        return zzdspVar;
    }

    @Override // com.google.android.gms.internal.ads.zzavb
    public final void zzuf() {
        synchronized (this.lock) {
            zzbbh zzbbhVarZza = zzbar.zza(this.zzdrf.zza(this.zzlj, this.zzdrc.keySet()), new zzbal(this) { // from class: com.google.android.gms.internal.ads.zzaur
                private final zzauq zzdrm;

                {
                    this.zzdrm = this;
                }

                @Override // com.google.android.gms.internal.ads.zzbal
                public final zzbbh zzf(Object obj) {
                    return this.zzdrm.zzh((Map) obj);
                }
            }, zzbbm.zzeaf);
            zzbbh zzbbhVarZza2 = zzbar.zza(zzbbhVarZza, 10L, TimeUnit.SECONDS, zzdra);
            zzbar.zza(zzbbhVarZza, new zzauu(this, zzbbhVarZza2), zzbbm.zzeaf);
            zzdqz.add(zzbbhVarZza2);
        }
    }

    private final zzbbh<Void> zzug() {
        zzbbh<Void> zzbbhVarZza;
        if (!((this.zzdrg && this.zzdoc.zzdrx) || (this.zzdrl && this.zzdoc.zzdrw) || (!this.zzdrg && this.zzdoc.zzdru))) {
            return zzbar.zzm(null);
        }
        synchronized (this.lock) {
            this.zzdrb.zzhsa = new zzdsp[this.zzdrc.size()];
            this.zzdrc.values().toArray(this.zzdrb.zzhsa);
            this.zzdrb.zzhsk = (String[]) this.zzdrd.toArray(new String[0]);
            this.zzdrb.zzhsl = (String[]) this.zzdre.toArray(new String[0]);
            if (zzava.isEnabled()) {
                String str = this.zzdrb.url;
                String str2 = this.zzdrb.zzhsb;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 53 + String.valueOf(str2).length());
                sb.append("Sending SB report\n  url: ");
                sb.append(str);
                sb.append("\n  clickUrl: ");
                sb.append(str2);
                sb.append("\n  resources: \n");
                StringBuilder sb2 = new StringBuilder(sb.toString());
                for (zzdsp zzdspVar : this.zzdrb.zzhsa) {
                    sb2.append("    [");
                    sb2.append(zzdspVar.zzhtd.length);
                    sb2.append("] ");
                    sb2.append(zzdspVar.url);
                }
                zzava.zzdp(sb2.toString());
            }
            zzbbh<String> zzbbhVarZza2 = new zzayu(this.zzlj).zza(1, this.zzdoc.zzdrs, null, zzdrw.zza(this.zzdrb));
            if (zzava.isEnabled()) {
                zzbbhVarZza2.zza(new zzauv(this), zzaxg.zzdvp);
            }
            zzbbhVarZza = zzbar.zza(zzbbhVarZza2, zzaus.zzdrn, zzbbm.zzeaf);
        }
        return zzbbhVarZza;
    }

    final /* synthetic */ zzbbh zzh(Map map) throws Exception {
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray jSONArrayOptJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (jSONArrayOptJSONArray != null) {
                        synchronized (this.lock) {
                            int length = jSONArrayOptJSONArray.length();
                            zzdsp zzdspVarZzdn = zzdn(str);
                            if (zzdspVarZzdn == null) {
                                String strValueOf = String.valueOf(str);
                                zzava.zzdp(strValueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(strValueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                zzdspVarZzdn.zzhtd = new String[length];
                                for (int i = 0; i < length; i++) {
                                    zzdspVarZzdn.zzhtd[i] = jSONArrayOptJSONArray.getJSONObject(i).getString("threat_type");
                                }
                                this.zzdrg = (length > 0) | this.zzdrg;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (((Boolean) zzyt.zzpe().zzd(zzacu.zzctj)).booleanValue()) {
                    zzbad.zzb("Failed to get SafeBrowsing metadata", e);
                }
                return zzbar.zzd(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.zzdrg) {
            synchronized (this.lock) {
                this.zzdrb.zzhrv = 9;
            }
        }
        return zzug();
    }
}
