package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.ads.formats.AdChoicesView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdAssetNames;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbzl {
    private final zzady zzdgs;
    private final zzaxb zzduk;
    private final Executor zzffi;
    private final Executor zzffv;
    private final zzcxv zzfjp;
    private final zzbyt zzfmq;
    private final zzbyx zzfnq;
    private final zzbzt zzfps;
    private final Context zzlj;

    public zzbzl(Context context, zzaxb zzaxbVar, zzcxv zzcxvVar, zzbyx zzbyxVar, zzbyt zzbytVar, zzbzt zzbztVar, Executor executor, Executor executor2) {
        this.zzlj = context;
        this.zzduk = zzaxbVar;
        this.zzfjp = zzcxvVar;
        this.zzdgs = zzcxvVar.zzdgs;
        this.zzfnq = zzbyxVar;
        this.zzfmq = zzbytVar;
        this.zzfps = zzbztVar;
        this.zzffv = executor;
        this.zzffi = executor2;
    }

    public final void zzc(final zzcab zzcabVar) {
        this.zzffv.execute(new Runnable(this, zzcabVar) { // from class: com.google.android.gms.internal.ads.zzbzm
            private final zzbzl zzfpt;
            private final zzcab zzfpu;

            {
                this.zzfpt = this;
                this.zzfpu = zzcabVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfpt.zze(this.zzfpu);
            }
        });
    }

    private static void zza(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i == 3) {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        } else {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        }
    }

    public final void zzd(zzcab zzcabVar) {
        if (zzcabVar == null || this.zzfps == null || zzcabVar.zzair() == null) {
            return;
        }
        try {
            zzcabVar.zzair().addView(this.zzfps.zzajb());
        } catch (zzbhj e) {
            zzawz.zza("web view can not be obtained", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zza(zzcab zzcabVar, String[] strArr) {
        Map<String, WeakReference<View>> mapZzaiu = zzcabVar.zzaiu();
        if (mapZzaiu == null) {
            return false;
        }
        for (String str : strArr) {
            if (mapZzaiu.get(str) != null) {
                return true;
            }
        }
        return false;
    }

    public final boolean zza(ViewGroup viewGroup) {
        FrameLayout.LayoutParams layoutParams;
        View viewZzahy = this.zzfmq.zzahy();
        if (viewZzahy == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (viewZzahy.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewZzahy.getParent()).removeView(viewZzahy);
        }
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcsk)).booleanValue()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        }
        viewGroup.addView(viewZzahy, layoutParams);
        return true;
    }

    final /* synthetic */ void zzb(ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        if (this.zzfmq.zzahy() != null) {
            if (2 == this.zzfmq.zzahv() || 1 == this.zzfmq.zzahv()) {
                this.zzduk.zzc(this.zzfjp.zzglb, String.valueOf(this.zzfmq.zzahv()), z);
            } else if (6 == this.zzfmq.zzahv()) {
                this.zzduk.zzc(this.zzfjp.zzglb, "2", z);
                this.zzduk.zzc(this.zzfjp.zzglb, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, z);
            }
        }
    }

    final /* synthetic */ void zze(zzcab zzcabVar) {
        ViewGroup viewGroup;
        View viewZzahw;
        final ViewGroup viewGroup2;
        Drawable drawable;
        if (this.zzfnq.zzaig() || this.zzfnq.zzaif()) {
            String[] strArr = {NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW};
            for (int i = 0; i < 2; i++) {
                View viewZzfp = zzcabVar.zzfp(strArr[i]);
                if (viewZzfp != null && (viewZzfp instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) viewZzfp;
                    break;
                }
            }
            viewGroup = null;
        } else {
            viewGroup = null;
        }
        boolean z = viewGroup != null;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.zzfmq.zzahw() != null) {
            viewZzahw = this.zzfmq.zzahw();
            zzady zzadyVar = this.zzdgs;
            if (zzadyVar != null && !z) {
                zza(layoutParams, zzadyVar.zzbqf);
                viewZzahw.setLayoutParams(layoutParams);
            }
        } else if (this.zzfmq.zzrj() instanceof zzadt) {
            zzadt zzadtVar = (zzadt) this.zzfmq.zzrj();
            if (!z) {
                zza(layoutParams, zzadtVar.zzrd());
            }
            View zzaduVar = new zzadu(this.zzlj, zzadtVar, layoutParams);
            zzaduVar.setContentDescription((CharSequence) zzyt.zzpe().zzd(zzacu.zzcsh));
            viewZzahw = zzaduVar;
        } else {
            viewZzahw = null;
        }
        if (viewZzahw != null) {
            if (viewZzahw.getParent() instanceof ViewGroup) {
                ((ViewGroup) viewZzahw.getParent()).removeView(viewZzahw);
            }
            if (z) {
                viewGroup.removeAllViews();
                viewGroup.addView(viewZzahw);
            } else {
                AdChoicesView adChoicesView = new AdChoicesView(zzcabVar.zzafi().getContext());
                adChoicesView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                adChoicesView.addView(viewZzahw);
                FrameLayout frameLayoutZzair = zzcabVar.zzair();
                if (frameLayoutZzair != null) {
                    frameLayoutZzair.addView(adChoicesView);
                }
            }
            zzcabVar.zza(zzcabVar.zzaiw(), viewZzahw, true);
        }
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcwq)).booleanValue()) {
            zzd(zzcabVar);
        }
        String[] strArr2 = zzbzj.zzfpm;
        int length = strArr2.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                viewGroup2 = null;
                break;
            }
            View viewZzfp2 = zzcabVar.zzfp(strArr2[i2]);
            if (viewZzfp2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) viewZzfp2;
                break;
            }
            i2++;
        }
        this.zzffi.execute(new Runnable(this, viewGroup2) { // from class: com.google.android.gms.internal.ads.zzbzn
            private final zzbzl zzfpt;
            private final ViewGroup zzfpv;

            {
                this.zzfpt = this;
                this.zzfpv = viewGroup2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfpt.zzb(this.zzfpv);
            }
        });
        if (viewGroup2 != null) {
            if (zza(viewGroup2)) {
                if (this.zzfmq.zzahz() != null) {
                    this.zzfmq.zzahz().zza(new zzbzo(this, zzcabVar, viewGroup2));
                    return;
                }
                return;
            }
            viewGroup2.removeAllViews();
            View viewZzafi = zzcabVar.zzafi();
            Context context = viewZzafi != null ? viewZzafi.getContext() : null;
            if (context == null || this.zzfmq.getImages() == null || this.zzfmq.getImages().isEmpty()) {
                return;
            }
            zzadw zzadwVar = this.zzfmq.getImages().get(0);
            zzaei zzaeiVarZzk = zzadwVar instanceof IBinder ? zzaej.zzk(zzadwVar) : null;
            if (zzaeiVarZzk != null) {
                try {
                    IObjectWrapper iObjectWrapperZzrf = zzaeiVarZzk.zzrf();
                    if (iObjectWrapperZzrf == null || (drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapperZzrf)) == null) {
                        return;
                    }
                    ImageView imageView = new ImageView(context);
                    imageView.setImageDrawable(drawable);
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    viewGroup2.addView(imageView);
                } catch (RemoteException unused) {
                    zzbad.zzep("Could not get drawable from image");
                }
            }
        }
    }
}
