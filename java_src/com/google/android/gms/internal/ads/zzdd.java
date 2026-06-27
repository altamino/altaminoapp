package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzbk;
import com.google.android.gms.internal.ads.zzbp;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes2.dex */
public abstract class zzdd implements zzdc {
    protected static volatile zzdy zzvd;
    protected MotionEvent zzvj;
    protected double zzvs;
    private double zzvt;
    private double zzvu;
    protected float zzvv;
    protected float zzvw;
    protected float zzvx;
    protected float zzvy;
    protected DisplayMetrics zzwb;
    protected LinkedList<MotionEvent> zzvk = new LinkedList<>();
    protected long zzvl = 0;
    protected long zzvm = 0;
    protected long zzvn = 0;
    protected long zzvo = 0;
    protected long zzvp = 0;
    protected long zzvq = 0;
    protected long zzvr = 0;
    private boolean zzvz = false;
    protected boolean zzwa = false;

    protected zzdd(Context context) {
        try {
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcrm)).booleanValue()) {
                zzci.zzcb();
            } else {
                zzed.zzb(zzvd);
            }
            this.zzwb = context.getResources().getDisplayMetrics();
        } catch (Throwable unused) {
        }
    }

    protected abstract long zza(StackTraceElement[] stackTraceElementArr) throws zzdv;

    protected abstract zzbp.zza.C0007zza zza(Context context, View view, Activity activity);

    protected abstract zzbp.zza.C0007zza zza(Context context, zzbk.zza zzaVar);

    protected abstract zzee zzb(MotionEvent motionEvent) throws zzdv;

    @Override // com.google.android.gms.internal.ads.zzdc
    public void zzb(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final String zza(Context context) {
        if (zzef.isMainThread()) {
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcro)).booleanValue()) {
                throw new IllegalStateException("The caller must not be called from the UI thread.");
            }
        }
        return zza(context, null, false, null, null, null);
    }

    public final String zza(Context context, byte[] bArr) {
        if (zzef.isMainThread()) {
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcro)).booleanValue()) {
                throw new IllegalStateException("The caller must not be called from the UI thread.");
            }
        }
        return zza(context, null, false, null, null, bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final String zza(Context context, String str, View view, Activity activity) {
        return zza(context, str, true, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final void zza(MotionEvent motionEvent) {
        boolean z = false;
        if (this.zzvz) {
            this.zzvo = 0L;
            this.zzvn = 0L;
            this.zzvm = 0L;
            this.zzvl = 0L;
            this.zzvp = 0L;
            this.zzvr = 0L;
            this.zzvq = 0L;
            Iterator<MotionEvent> it = this.zzvk.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.zzvk.clear();
            this.zzvj = null;
            this.zzvz = false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.zzvs = 0.0d;
            this.zzvt = motionEvent.getRawX();
            this.zzvu = motionEvent.getRawY();
        } else if (action == 1 || action == 2) {
            double rawX = motionEvent.getRawX();
            double rawY = motionEvent.getRawY();
            double d = this.zzvt;
            Double.isNaN(rawX);
            double d2 = rawX - d;
            double d3 = this.zzvu;
            Double.isNaN(rawY);
            double d4 = rawY - d3;
            this.zzvs += Math.sqrt((d2 * d2) + (d4 * d4));
            this.zzvt = rawX;
            this.zzvu = rawY;
        }
        int action2 = motionEvent.getAction();
        if (action2 != 0) {
            try {
                if (action2 == 1) {
                    this.zzvj = MotionEvent.obtain(motionEvent);
                    this.zzvk.add(this.zzvj);
                    if (this.zzvk.size() > 6) {
                        this.zzvk.remove().recycle();
                    }
                    this.zzvn++;
                    this.zzvp = zza(new Throwable().getStackTrace());
                } else if (action2 == 2) {
                    this.zzvm += motionEvent.getHistorySize() + 1;
                    zzee zzeeVarZzb = zzb(motionEvent);
                    if ((zzeeVarZzb == null || zzeeVarZzb.zzye == null || zzeeVarZzb.zzyh == null) ? false : true) {
                        this.zzvq += zzeeVarZzb.zzye.longValue() + zzeeVarZzb.zzyh.longValue();
                    }
                    if (this.zzwb != null && zzeeVarZzb != null && zzeeVarZzb.zzyf != null && zzeeVarZzb.zzyi != null) {
                        z = true;
                    }
                    if (z) {
                        this.zzvr += zzeeVarZzb.zzyf.longValue() + zzeeVarZzb.zzyi.longValue();
                    }
                } else if (action2 == 3) {
                    this.zzvo++;
                }
            } catch (zzdv unused) {
            }
        } else {
            this.zzvv = motionEvent.getX();
            this.zzvw = motionEvent.getY();
            this.zzvx = motionEvent.getRawX();
            this.zzvy = motionEvent.getRawY();
            this.zzvl++;
        }
        this.zzwa = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final void zza(int i, int i2, int i3) {
        MotionEvent motionEvent = this.zzvj;
        if (motionEvent != null) {
            motionEvent.recycle();
        }
        DisplayMetrics displayMetrics = this.zzwb;
        if (displayMetrics != null) {
            float f = displayMetrics.density;
            this.zzvj = MotionEvent.obtain(0L, i3, 1, i * f, i2 * f, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        } else {
            this.zzvj = null;
        }
        this.zzwa = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String zza(android.content.Context r10, java.lang.String r11, boolean r12, android.view.View r13, android.app.Activity r14, byte[] r15) {
        /*
            r9 = this;
            r0 = 0
            if (r15 == 0) goto Lf
            int r1 = r15.length
            if (r1 <= 0) goto Lf
            com.google.android.gms.internal.ads.zzdno r1 = com.google.android.gms.internal.ads.zzdno.zzaxe()     // Catch: com.google.android.gms.internal.ads.zzdok -> Lf
            com.google.android.gms.internal.ads.zzbk$zza r15 = com.google.android.gms.internal.ads.zzbk.zza.zza(r15, r1)     // Catch: com.google.android.gms.internal.ads.zzdok -> Lf
            goto L10
        Lf:
            r15 = r0
        L10:
            com.google.android.gms.internal.ads.zzdy r1 = com.google.android.gms.internal.ads.zzdd.zzvd
            if (r1 == 0) goto L2d
            com.google.android.gms.internal.ads.zzacj<java.lang.Boolean> r1 = com.google.android.gms.internal.ads.zzacu.zzcrc
            com.google.android.gms.internal.ads.zzacr r2 = com.google.android.gms.internal.ads.zzyt.zzpe()
            java.lang.Object r1 = r2.zzd(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L2d
            com.google.android.gms.internal.ads.zzdy r1 = com.google.android.gms.internal.ads.zzdd.zzvd
            com.google.android.gms.internal.ads.zzda r1 = r1.zzcm()
            goto L2e
        L2d:
            r1 = r0
        L2e:
            long r2 = java.lang.System.currentTimeMillis()
            r8 = -1
            if (r12 == 0) goto L3d
            com.google.android.gms.internal.ads.zzbp$zza$zza r0 = r9.zza(r10, r13, r14)     // Catch: java.lang.Exception -> L54
            r10 = 1
            r9.zzvz = r10     // Catch: java.lang.Exception -> L54
            goto L42
        L3d:
            com.google.android.gms.internal.ads.zzbp$zza$zza r10 = r9.zza(r10, r15)     // Catch: java.lang.Exception -> L54
            r0 = r10
        L42:
            if (r1 == 0) goto L6b
            if (r12 == 0) goto L49
            r10 = 1002(0x3ea, float:1.404E-42)
            goto L4b
        L49:
            r10 = 1000(0x3e8, float:1.401E-42)
        L4b:
            long r13 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L54
            long r13 = r13 - r2
            r1.zza(r10, r8, r13)     // Catch: java.lang.Exception -> L54
            goto L6b
        L54:
            r10 = move-exception
            r7 = r10
            if (r1 == 0) goto L6b
            if (r12 == 0) goto L5d
            r10 = 1003(0x3eb, float:1.406E-42)
            goto L5f
        L5d:
            r10 = 1001(0x3e9, float:1.403E-42)
        L5f:
            r4 = -1
            long r13 = java.lang.System.currentTimeMillis()
            long r5 = r13 - r2
            r2 = r1
            r3 = r10
            r2.zza(r3, r4, r5, r7)
        L6b:
            long r13 = java.lang.System.currentTimeMillis()
            if (r0 == 0) goto L9e
            com.google.android.gms.internal.ads.zzdpk r10 = r0.zzaya()     // Catch: java.lang.Exception -> La4
            com.google.android.gms.internal.ads.zzdob r10 = (com.google.android.gms.internal.ads.zzdob) r10     // Catch: java.lang.Exception -> La4
            com.google.android.gms.internal.ads.zzbp$zza r10 = (com.google.android.gms.internal.ads.zzbp.zza) r10     // Catch: java.lang.Exception -> La4
            int r10 = r10.zzaxj()     // Catch: java.lang.Exception -> La4
            if (r10 != 0) goto L80
            goto L9e
        L80:
            com.google.android.gms.internal.ads.zzdpk r10 = r0.zzaya()     // Catch: java.lang.Exception -> La4
            com.google.android.gms.internal.ads.zzdob r10 = (com.google.android.gms.internal.ads.zzdob) r10     // Catch: java.lang.Exception -> La4
            com.google.android.gms.internal.ads.zzbp$zza r10 = (com.google.android.gms.internal.ads.zzbp.zza) r10     // Catch: java.lang.Exception -> La4
            java.lang.String r10 = com.google.android.gms.internal.ads.zzci.zzj(r10, r11)     // Catch: java.lang.Exception -> La4
            if (r1 == 0) goto Lc3
            if (r12 == 0) goto L93
            r11 = 1006(0x3ee, float:1.41E-42)
            goto L95
        L93:
            r11 = 1004(0x3ec, float:1.407E-42)
        L95:
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> La4
            long r2 = r2 - r13
            r1.zza(r11, r8, r2)     // Catch: java.lang.Exception -> La4
            goto Lc3
        L9e:
            r10 = 5
            java.lang.String r10 = java.lang.Integer.toString(r10)     // Catch: java.lang.Exception -> La4
            goto Lc3
        La4:
            r10 = move-exception
            r7 = r10
            r10 = 7
            java.lang.String r10 = java.lang.Integer.toString(r10)
            if (r1 == 0) goto Lc3
            if (r12 == 0) goto Lb4
            r11 = 1007(0x3ef, float:1.411E-42)
            r3 = 1007(0x3ef, float:1.411E-42)
            goto Lb8
        Lb4:
            r11 = 1005(0x3ed, float:1.408E-42)
            r3 = 1005(0x3ed, float:1.408E-42)
        Lb8:
            r4 = -1
            long r11 = java.lang.System.currentTimeMillis()
            long r5 = r11 - r13
            r2 = r1
            r2.zza(r3, r4, r5, r7)
        Lc3:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdd.zza(android.content.Context, java.lang.String, boolean, android.view.View, android.app.Activity, byte[]):java.lang.String");
    }
}
