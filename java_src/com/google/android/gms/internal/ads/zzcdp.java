package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcdp {
    private final zzavb zzbqw;
    private final zzdh zzeko;
    private final Executor zzffv;
    private final zzbse zzfjg;
    private final zzbsv zzflp;
    private final zzbri zzfms;
    private final zzbmn zzfmt;
    private final zzbva zzfmv;
    private final zzbss zzfsq;
    private final zzbtp zzfsr;
    private final com.google.android.gms.ads.internal.zzb zzfti;
    private final zzbry zzftj;
    private final zzbtl zzftk;

    public zzcdp(zzbri zzbriVar, zzbse zzbseVar, zzbss zzbssVar, zzbsv zzbsvVar, zzbtp zzbtpVar, Executor executor, zzbva zzbvaVar, zzbmn zzbmnVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbry zzbryVar, zzavb zzavbVar, zzdh zzdhVar, zzbtl zzbtlVar) {
        this.zzfms = zzbriVar;
        this.zzfjg = zzbseVar;
        this.zzfsq = zzbssVar;
        this.zzflp = zzbsvVar;
        this.zzfsr = zzbtpVar;
        this.zzffv = executor;
        this.zzfmv = zzbvaVar;
        this.zzfmt = zzbmnVar;
        this.zzfti = zzbVar;
        this.zzftj = zzbryVar;
        this.zzbqw = zzavbVar;
        this.zzeko = zzdhVar;
        this.zzftk = zzbtlVar;
    }

    public final void zzb(final zzbgz zzbgzVar, boolean z) {
        zzdc zzdcVarZzcg;
        zzbgzVar.zzaai().zza(new zzxr(this) { // from class: com.google.android.gms.internal.ads.zzcdq
            private final zzcdp zzftl;

            {
                this.zzftl = this;
            }

            @Override // com.google.android.gms.internal.ads.zzxr
            public final void onAdClicked() {
                this.zzftl.zzajn();
            }
        }, this.zzfsq, this.zzflp, new zzagx(this) { // from class: com.google.android.gms.internal.ads.zzcdr
            private final zzcdp zzftl;

            {
                this.zzftl = this;
            }

            @Override // com.google.android.gms.internal.ads.zzagx
            public final void onAppEvent(String str, String str2) {
                this.zzftl.zzr(str, str2);
            }
        }, new com.google.android.gms.ads.internal.overlay.zzu(this) { // from class: com.google.android.gms.internal.ads.zzcds
            private final zzcdp zzftl;

            {
                this.zzftl = this;
            }

            @Override // com.google.android.gms.ads.internal.overlay.zzu
            public final void zztq() {
                this.zzftl.zzajm();
            }
        }, z, null, this.zzfti, new zzcdz(this), this.zzbqw);
        zzbgzVar.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.google.android.gms.internal.ads.zzcdt
            private final zzcdp zzftl;

            {
                this.zzftl = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.zzftl.zza(view, motionEvent);
            }
        });
        zzbgzVar.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.gms.internal.ads.zzcdu
            private final zzcdp zzftl;

            {
                this.zzftl = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.zzftl.zzab(view);
            }
        });
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcrg)).booleanValue() && (zzdcVarZzcg = this.zzeko.zzcg()) != null) {
            zzdcVarZzcg.zzb(zzbgzVar.getView());
        }
        this.zzfmv.zza(zzbgzVar, this.zzffv);
        this.zzfmv.zza(new zzue(zzbgzVar) { // from class: com.google.android.gms.internal.ads.zzcdv
            private final zzbgz zzemf;

            {
                this.zzemf = zzbgzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzue
            public final void zza(zzud zzudVar) {
                zzbii zzbiiVarZzaai = this.zzemf.zzaai();
                Rect rect = zzudVar.zzbtr;
                zzbiiVarZzaai.zza(rect.left, rect.top, false);
            }
        }, this.zzffv);
        this.zzfmv.zzq(zzbgzVar.getView());
        zzbgzVar.zza("/trackActiveViewUnit", new zzaho(this, zzbgzVar) { // from class: com.google.android.gms.internal.ads.zzcdw
            private final zzbgz zzfrw;
            private final zzcdp zzftl;

            {
                this.zzftl = this;
                this.zzfrw = zzbgzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzaho
            public final void zza(Object obj, Map map) {
                this.zzftl.zza(this.zzfrw, (zzbgz) obj, map);
            }
        });
        this.zzfmt.zzq(zzbgzVar);
        this.zzftj.zza(new zzbvp(zzbgzVar) { // from class: com.google.android.gms.internal.ads.zzcdx
            private final zzbgz zzemf;

            {
                this.zzemf = zzbgzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbvp
            public final void zzagy() {
                this.zzemf.destroy();
            }
        }, this.zzffv);
    }

    public static zzbbh<?> zza(zzbgz zzbgzVar, String str, String str2) {
        final zzbbr zzbbrVar = new zzbbr();
        zzbgzVar.zzaai().zza(new zzbij(zzbbrVar) { // from class: com.google.android.gms.internal.ads.zzcdy
            private final zzbbr zzbxh;

            {
                this.zzbxh = zzbbrVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbij
            public final void zzae(boolean z) {
                zzbbr zzbbrVar2 = this.zzbxh;
                if (z) {
                    zzbbrVar2.set(null);
                } else {
                    zzbbrVar2.setException(new Exception("Ad Web View failed to load."));
                }
            }
        });
        zzbgzVar.zzb(str, str2, null);
        return zzbbrVar;
    }

    final /* synthetic */ void zza(zzbgz zzbgzVar, zzbgz zzbgzVar2, Map map) {
        this.zzfmt.zzf(zzbgzVar);
    }

    final /* synthetic */ void zzab(View view) {
        this.zzfti.recordClick();
        zzavb zzavbVar = this.zzbqw;
        if (zzavbVar != null) {
            zzavbVar.zzue();
        }
    }

    final /* synthetic */ boolean zza(View view, MotionEvent motionEvent) {
        this.zzfti.recordClick();
        zzavb zzavbVar = this.zzbqw;
        if (zzavbVar == null) {
            return false;
        }
        zzavbVar.zzue();
        return false;
    }

    final /* synthetic */ void zzajm() {
        this.zzfjg.onAdLeftApplication();
    }

    final /* synthetic */ void zzr(String str, String str2) {
        this.zzfsr.onAppEvent(str, str2);
    }

    final /* synthetic */ void zzajn() {
        this.zzfms.onAdClicked();
    }
}
