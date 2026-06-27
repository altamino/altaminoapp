package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.List;

@zzard
/* loaded from: classes2.dex */
public final class zzayb {
    private Handler handler;
    private int state;
    private String zzbsx;
    private String zzchk;
    private String zzdks;
    private String zzdod;
    private int zzdwe;
    private PointF zzdwf;
    private PointF zzdwg;
    private Runnable zzdwh;
    private final Context zzlj;

    public zzayb(Context context) {
        this.state = 0;
        this.zzdwh = new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzayc
            private final zzayb zzdwi;

            {
                this.zzdwi = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdwi.zzwm();
            }
        };
        this.zzlj = context;
        this.zzdwe = ViewConfiguration.get(context).getScaledTouchSlop();
        com.google.android.gms.ads.internal.zzk.zzlu().zzwr();
        this.handler = com.google.android.gms.ads.internal.zzk.zzlu().getHandler();
    }

    public zzayb(Context context, String str) {
        this(context);
        this.zzdks = str;
    }

    public final void zzd(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.state = 0;
            this.zzdwf = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i = this.state;
        if (i == -1) {
            return;
        }
        boolean z = true;
        if (i == 0 && actionMasked == 5) {
            this.state = 5;
            this.zzdwg = new PointF(motionEvent.getX(1), motionEvent.getY(1));
            this.handler.postDelayed(this.zzdwh, ((Long) zzyt.zzpe().zzd(zzacu.zzcua)).longValue());
            return;
        }
        if (this.state == 5) {
            if (pointerCount == 2) {
                if (actionMasked == 2) {
                    boolean z2 = false;
                    for (int i2 = 0; i2 < historySize; i2++) {
                        if (!zza(motionEvent.getHistoricalX(0, i2), motionEvent.getHistoricalY(0, i2), motionEvent.getHistoricalX(1, i2), motionEvent.getHistoricalY(1, i2))) {
                            z2 = true;
                        }
                    }
                    if (zza(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1))) {
                        z = z2;
                    }
                } else {
                    z = false;
                }
            }
            if (z) {
                this.state = -1;
                this.handler.removeCallbacks(this.zzdwh);
            }
        }
    }

    private final boolean zza(float f, float f2, float f3, float f4) {
        return Math.abs(this.zzdwf.x - f) < ((float) this.zzdwe) && Math.abs(this.zzdwf.y - f2) < ((float) this.zzdwe) && Math.abs(this.zzdwg.x - f3) < ((float) this.zzdwe) && Math.abs(this.zzdwg.y - f4) < ((float) this.zzdwe);
    }

    public final void showDialog() {
        try {
            if (!(this.zzlj instanceof Activity)) {
                zzbad.zzeo("Can not create dialog without Activity Context");
                return;
            }
            String str = !TextUtils.isEmpty(com.google.android.gms.ads.internal.zzk.zzlq().zzwn()) ? "Creative Preview (Enabled)" : "Creative Preview";
            String str2 = com.google.android.gms.ads.internal.zzk.zzlq().zzwo() ? "Troubleshooting (Enabled)" : "Troubleshooting";
            ArrayList arrayList = new ArrayList();
            final int iZza = zza((List<String>) arrayList, "Ad Information", true);
            final int iZza2 = zza((List<String>) arrayList, str, true);
            final int iZza3 = zza((List<String>) arrayList, str2, true);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.zzlj, com.google.android.gms.ads.internal.zzk.zzli().zzwi());
            builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, iZza, iZza2, iZza3) { // from class: com.google.android.gms.internal.ads.zzayd
                private final zzayb zzdwi;
                private final int zzdwj;
                private final int zzdwk;
                private final int zzdwl;

                {
                    this.zzdwi = this;
                    this.zzdwj = iZza;
                    this.zzdwk = iZza2;
                    this.zzdwl = iZza3;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.zzdwi.zza(this.zzdwj, this.zzdwk, this.zzdwl, dialogInterface, i);
                }
            });
            builder.create().show();
        } catch (WindowManager.BadTokenException e) {
            zzawz.zza("", e);
        }
    }

    public final void setAdUnitId(String str) {
        this.zzchk = str;
    }

    public final void zzp(String str) {
        this.zzbsx = str;
    }

    public final void zzee(String str) {
        this.zzdks = str;
    }

    public final void zzef(String str) {
        this.zzdod = str;
    }

    private static int zza(List<String> list, String str, boolean z) {
        list.add(str);
        return list.size() - 1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.zzdks);
        sb.append(",DebugSignal: ");
        sb.append(this.zzdod);
        sb.append(",AFMA Version: ");
        sb.append(this.zzbsx);
        sb.append(",Ad Unit ID: ");
        sb.append(this.zzchk);
        sb.append("}");
        return sb.toString();
    }

    final /* synthetic */ void zzwk() {
        com.google.android.gms.ads.internal.zzk.zzlq().zza(this.zzlj, this.zzchk, this.zzbsx, this.zzdod);
    }

    final /* synthetic */ void zzwl() {
        com.google.android.gms.ads.internal.zzk.zzlq().zze(this.zzlj, this.zzchk, this.zzbsx);
    }

    final /* synthetic */ void zza(String str, DialogInterface dialogInterface, int i) {
        com.google.android.gms.ads.internal.zzk.zzlg();
        zzaxi.zza(this.zzlj, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ void zza(int r1, int r2, int r3, android.content.DialogInterface r4, int r5) {
        /*
            r0 = this;
            if (r5 != r1) goto L9b
            android.content.Context r1 = r0.zzlj
            boolean r1 = r1 instanceof android.app.Activity
            if (r1 != 0) goto Le
            java.lang.String r1 = "Can not create dialog without Activity Context"
            com.google.android.gms.internal.ads.zzbad.zzeo(r1)
            return
        Le:
            java.lang.String r1 = r0.zzdks
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L71
            java.lang.String r2 = "\\+"
            java.lang.String r3 = "%20"
            java.lang.String r1 = r1.replaceAll(r2, r3)
            android.net.Uri$Builder r2 = new android.net.Uri$Builder
            r2.<init>()
            android.net.Uri$Builder r1 = r2.encodedQuery(r1)
            android.net.Uri r1 = r1.build()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            com.google.android.gms.ads.internal.zzk.zzlg()
            java.util.Map r1 = com.google.android.gms.internal.ads.zzaxi.zzi(r1)
            java.util.Set r3 = r1.keySet()
            java.util.Iterator r3 = r3.iterator()
        L3f:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L62
            java.lang.Object r4 = r3.next()
            java.lang.String r4 = (java.lang.String) r4
            r2.append(r4)
            java.lang.String r5 = " = "
            r2.append(r5)
            java.lang.Object r4 = r1.get(r4)
            java.lang.String r4 = (java.lang.String) r4
            r2.append(r4)
            java.lang.String r4 = "\n\n"
            r2.append(r4)
            goto L3f
        L62:
            java.lang.String r1 = r2.toString()
            java.lang.String r1 = r1.trim()
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L71
            goto L73
        L71:
            java.lang.String r1 = "No debug information"
        L73:
            android.app.AlertDialog$Builder r2 = new android.app.AlertDialog$Builder
            android.content.Context r3 = r0.zzlj
            r2.<init>(r3)
            r2.setMessage(r1)
            java.lang.String r3 = "Ad Information"
            r2.setTitle(r3)
            com.google.android.gms.internal.ads.zzaye r3 = new com.google.android.gms.internal.ads.zzaye
            r3.<init>(r0, r1)
            java.lang.String r1 = "Share"
            r2.setPositiveButton(r1, r3)
            android.content.DialogInterface$OnClickListener r1 = com.google.android.gms.internal.ads.zzayf.zzdwm
            java.lang.String r3 = "Close"
            r2.setNegativeButton(r3, r1)
            android.app.AlertDialog r1 = r2.create()
            r1.show()
            return
        L9b:
            if (r5 != r2) goto Lab
            java.lang.String r1 = "Debug mode [Creative Preview] selected."
            com.google.android.gms.internal.ads.zzbad.zzdp(r1)
            com.google.android.gms.internal.ads.zzayg r1 = new com.google.android.gms.internal.ads.zzayg
            r1.<init>(r0)
            com.google.android.gms.internal.ads.zzaxg.zzc(r1)
            return
        Lab:
            if (r5 != r3) goto Lba
            java.lang.String r1 = "Debug mode [Troubleshooting] selected."
            com.google.android.gms.internal.ads.zzbad.zzdp(r1)
            com.google.android.gms.internal.ads.zzayh r1 = new com.google.android.gms.internal.ads.zzayh
            r1.<init>(r0)
            com.google.android.gms.internal.ads.zzaxg.zzc(r1)
        Lba:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzayb.zza(int, int, int, android.content.DialogInterface, int):void");
    }

    final /* synthetic */ void zzwm() {
        this.state = 4;
        showDialog();
    }
}
