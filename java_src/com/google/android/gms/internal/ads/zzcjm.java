package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.internal.ads.zzwt;
import com.narvii.account.CodeVerifyFragment;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class zzcjm {
    private static final SparseArray<zzwt.zzi.zzc> zzfyz;
    private final zzcji zzfww;
    private final zzbbh<Bundle> zzfyv;
    private final TelephonyManager zzfyw;
    private final zzcjc zzfyx;
    private zzwx zzfyy;
    private final Context zzlj;

    zzcjm(Context context, zzbbh<Bundle> zzbbhVar, zzcji zzcjiVar, zzcjc zzcjcVar) {
        this.zzlj = context;
        this.zzfyv = zzbbhVar;
        this.zzfww = zzcjiVar;
        this.zzfyx = zzcjcVar;
        this.zzfyw = (TelephonyManager) context.getSystemService(CodeVerifyFragment.KEY_PHONE);
    }

    private static zzwx zzaz(boolean z) {
        return z ? zzwx.ENUM_TRUE : zzwx.ENUM_FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzwt.zzg zzj(Bundle bundle) {
        zzwt.zzg.zzb zzbVar;
        zzwt.zzg.zza zzaVarZznv = zzwt.zzg.zznv();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        if (i == -1) {
            this.zzfyy = zzwx.ENUM_TRUE;
        } else {
            this.zzfyy = zzwx.ENUM_FALSE;
            if (i == 0) {
                zzaVarZznv.zzb(zzwt.zzg.zzc.CELL);
            } else if (i == 1) {
                zzaVarZznv.zzb(zzwt.zzg.zzc.WIFI);
            } else {
                zzaVarZznv.zzb(zzwt.zzg.zzc.NETWORKTYPE_UNSPECIFIED);
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    zzbVar = zzwt.zzg.zzb.TWO_G;
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    zzbVar = zzwt.zzg.zzb.THREE_G;
                    break;
                case 13:
                    zzbVar = zzwt.zzg.zzb.LTE;
                    break;
                default:
                    zzbVar = zzwt.zzg.zzb.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                    break;
            }
            zzaVarZznv.zzb(zzbVar);
        }
        return (zzwt.zzg) zzaVarZznv.zzaya();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzwt.zzi.zzc zzk(Bundle bundle) {
        return zzfyz.get(zzcxz.zza(zzcxz.zza(bundle, "device"), "network").getInt("active_network_state", -1), zzwt.zzi.zzc.UNSPECIFIED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<com.google.android.gms.internal.ads.zzwt.zza.EnumC0018zza> zzl(android.os.Bundle r7) {
        /*
            java.lang.String r0 = "ad_types"
            java.lang.Object r7 = r7.get(r0)
            boolean r0 = r7 instanceof java.util.List
            if (r0 == 0) goto Ld
            java.util.List r7 = (java.util.List) r7
            goto L17
        Ld:
            boolean r0 = r7 instanceof java.lang.String[]
            if (r0 == 0) goto L3d
            java.lang.String[] r7 = (java.lang.String[]) r7
            java.util.List r7 = java.util.Arrays.asList(r7)
        L17:
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r7.size()
            r0.<init>(r1)
            java.util.Iterator r7 = r7.iterator()
        L24:
            boolean r1 = r7.hasNext()
            if (r1 == 0) goto L38
            java.lang.Object r1 = r7.next()
            boolean r2 = r1 instanceof java.lang.String
            if (r2 == 0) goto L24
            java.lang.String r1 = (java.lang.String) r1
            r0.add(r1)
            goto L24
        L38:
            java.util.List r7 = java.util.Collections.unmodifiableList(r0)
            goto L41
        L3d:
            java.util.List r7 = java.util.Collections.emptyList()
        L41:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r7 = r7.iterator()
        L4a:
            boolean r1 = r7.hasNext()
            if (r1 == 0) goto La3
            java.lang.Object r1 = r7.next()
            java.lang.String r1 = (java.lang.String) r1
            r2 = -1
            int r3 = r1.hashCode()
            r4 = 3
            r5 = 2
            r6 = 1
            switch(r3) {
                case -1396342996: goto L80;
                case -1052618729: goto L76;
                case -239580146: goto L6c;
                case 604727084: goto L62;
                default: goto L61;
            }
        L61:
            goto L89
        L62:
            java.lang.String r3 = "interstitial"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L89
            r2 = 1
            goto L89
        L6c:
            java.lang.String r3 = "rewarded"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L89
            r2 = 3
            goto L89
        L76:
            java.lang.String r3 = "native"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L89
            r2 = 2
            goto L89
        L80:
            java.lang.String r3 = "banner"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L89
            r2 = 0
        L89:
            if (r2 == 0) goto L9d
            if (r2 == r6) goto L9a
            if (r2 == r5) goto L97
            if (r2 == r4) goto L94
            com.google.android.gms.internal.ads.zzwt$zza$zza r1 = com.google.android.gms.internal.ads.zzwt.zza.EnumC0018zza.AD_FORMAT_TYPE_UNSPECIFIED
            goto L9f
        L94:
            com.google.android.gms.internal.ads.zzwt$zza$zza r1 = com.google.android.gms.internal.ads.zzwt.zza.EnumC0018zza.REWARD_BASED_VIDEO_AD
            goto L9f
        L97:
            com.google.android.gms.internal.ads.zzwt$zza$zza r1 = com.google.android.gms.internal.ads.zzwt.zza.EnumC0018zza.NATIVE_APP_INSTALL
            goto L9f
        L9a:
            com.google.android.gms.internal.ads.zzwt$zza$zza r1 = com.google.android.gms.internal.ads.zzwt.zza.EnumC0018zza.INTERSTITIAL
            goto L9f
        L9d:
            com.google.android.gms.internal.ads.zzwt$zza$zza r1 = com.google.android.gms.internal.ads.zzwt.zza.EnumC0018zza.BANNER
        L9f:
            r0.add(r1)
            goto L4a
        La3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcjm.zzl(android.os.Bundle):java.util.ArrayList");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] zza(boolean z, ArrayList<zzwt.zza.EnumC0018zza> arrayList, zzwt.zzg zzgVar, zzwt.zzi.zzc zzcVar) {
        return ((zzwt.zzi.zza) zzwt.zzi.zza.zzoa().zzc(arrayList).zzh(zzaz(com.google.android.gms.ads.internal.zzk.zzli().zzb(this.zzlj.getContentResolver()) != 0)).zzi(com.google.android.gms.ads.internal.zzk.zzli().zza(this.zzlj, this.zzfyw)).zzex(this.zzfww.zzakl()).zzey(this.zzfww.zzakn()).zzcg(this.zzfww.getResponseCode()).zzb(zzcVar).zzb(zzgVar).zzj(this.zzfyy).zzf(zzaz(z)).zzew(com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis()).zzg(zzaz(com.google.android.gms.ads.internal.zzk.zzli().zza(this.zzlj.getContentResolver()) != 0)).zzaya()).toByteArray();
    }

    public final void zzba(boolean z) {
        zzbar.zza(this.zzfyv, new zzcjn(this, z), zzbbm.zzeaf);
    }

    static {
        SparseArray<zzwt.zzi.zzc> sparseArray = new SparseArray<>();
        zzfyz = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzwt.zzi.zzc.CONNECTED);
        zzfyz.put(NetworkInfo.DetailedState.AUTHENTICATING.ordinal(), zzwt.zzi.zzc.CONNECTING);
        zzfyz.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzwt.zzi.zzc.CONNECTING);
        zzfyz.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzwt.zzi.zzc.CONNECTING);
        zzfyz.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzwt.zzi.zzc.DISCONNECTING);
        zzfyz.put(NetworkInfo.DetailedState.BLOCKED.ordinal(), zzwt.zzi.zzc.DISCONNECTED);
        zzfyz.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzwt.zzi.zzc.DISCONNECTED);
        zzfyz.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzwt.zzi.zzc.DISCONNECTED);
        zzfyz.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzwt.zzi.zzc.DISCONNECTED);
        zzfyz.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzwt.zzi.zzc.DISCONNECTED);
        zzfyz.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzwt.zzi.zzc.SUSPENDED);
        if (Build.VERSION.SDK_INT >= 17) {
            zzfyz.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzwt.zzi.zzc.CONNECTING);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            zzfyz.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzwt.zzi.zzc.CONNECTING);
        }
    }
}
