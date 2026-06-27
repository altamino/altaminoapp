package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public abstract class zzbft implements Releasable {
    protected Context mContext;
    protected String zzdyb;
    protected WeakReference<zzbdf> zzeht;

    public zzbft(zzbdf zzbdfVar) {
        this.mContext = zzbdfVar.getContext();
        this.zzdyb = com.google.android.gms.ads.internal.zzk.zzlg().zzq(this.mContext, zzbdfVar.zzyh().zzbsx);
        this.zzeht = new WeakReference<>(zzbdfVar);
    }

    public abstract void abort();

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }

    protected void zzcy(int i) {
    }

    protected void zzcz(int i) {
    }

    protected void zzda(int i) {
    }

    protected void zzdb(int i) {
    }

    public abstract boolean zzex(String str);

    public boolean zze(String str, String[] strArr) {
        return zzex(str);
    }

    @VisibleForTesting
    public final void zza(String str, String str2, int i, int i2, boolean z, int i3, int i4) {
        zzazt.zzyr.post(new zzbfv(this, str, str2, i, 0, z, i3, i4));
    }

    @VisibleForTesting
    public final void zza(String str, String str2, long j, long j2, boolean z) {
        zzazt.zzyr.post(new zzbfw(this, str, str2, j, j2, z));
    }

    @VisibleForTesting
    public final void zza(String str, String str2, long j, long j2, boolean z, int i, int i2) {
        zzazt.zzyr.post(new zzbfx(this, str, str2, j, j2, z, i, i2));
    }

    @VisibleForTesting
    public final void zza(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        zzazt.zzyr.post(new zzbfy(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    protected final void zza(String str, String str2, int i) {
        zzazt.zzyr.post(new zzbfz(this, str, str2, i));
    }

    @VisibleForTesting
    public final void zzb(String str, String str2, long j) {
        zzazt.zzyr.post(new zzbga(this, str, str2, j));
    }

    @VisibleForTesting
    public final void zza(String str, String str2, String str3, String str4) {
        zzazt.zzyr.post(new zzbgb(this, str, str2, str3, str4));
    }

    protected String zzey(String str) {
        zzyt.zzpa();
        return zzazt.zzei(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String zzez(java.lang.String r1) {
        /*
            int r0 = r1.hashCode()
            switch(r0) {
                case -1947652542: goto L7d;
                case -1396664534: goto L72;
                case -1347010958: goto L68;
                case -918817863: goto L5d;
                case -659376217: goto L53;
                case -642208130: goto L49;
                case -354048396: goto L3e;
                case -32082395: goto L33;
                case 3387234: goto L29;
                case 96784904: goto L1f;
                case 580119100: goto L14;
                case 725497484: goto L9;
                default: goto L7;
            }
        L7:
            goto L87
        L9:
            java.lang.String r0 = "noCacheDir"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L87
            r1 = 7
            goto L88
        L14:
            java.lang.String r0 = "expireFailed"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L87
            r1 = 6
            goto L88
        L1f:
            java.lang.String r0 = "error"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L87
            r1 = 1
            goto L88
        L29:
            java.lang.String r0 = "noop"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L87
            r1 = 4
            goto L88
        L33:
            java.lang.String r0 = "externalAbort"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L87
            r1 = 10
            goto L88
        L3e:
            java.lang.String r0 = "sizeExceeded"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L87
            r1 = 11
            goto L88
        L49:
            java.lang.String r0 = "playerFailed"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L87
            r1 = 5
            goto L88
        L53:
            java.lang.String r0 = "contentLengthMissing"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L87
            r1 = 0
            goto L88
        L5d:
            java.lang.String r0 = "downloadTimeout"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L87
            r1 = 9
            goto L88
        L68:
            java.lang.String r0 = "inProgress"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L87
            r1 = 2
            goto L88
        L72:
            java.lang.String r0 = "badUrl"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L87
            r1 = 8
            goto L88
        L7d:
            java.lang.String r0 = "interrupted"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L87
            r1 = 3
            goto L88
        L87:
            r1 = -1
        L88:
            java.lang.String r0 = "internal"
            switch(r1) {
                case 0: goto L96;
                case 1: goto L96;
                case 2: goto L96;
                case 3: goto L96;
                case 4: goto L96;
                case 5: goto L96;
                case 6: goto L94;
                case 7: goto L94;
                case 8: goto L91;
                case 9: goto L91;
                case 10: goto L8e;
                case 11: goto L8e;
                default: goto L8d;
            }
        L8d:
            goto L96
        L8e:
            java.lang.String r0 = "policy"
            goto L96
        L91:
            java.lang.String r0 = "network"
            goto L96
        L94:
            java.lang.String r0 = "io"
        L96:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbft.zzez(java.lang.String):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(String str, Map<String, String> map) {
        zzbdf zzbdfVar = this.zzeht.get();
        if (zzbdfVar != null) {
            zzbdfVar.zza(str, map);
        }
    }
}
