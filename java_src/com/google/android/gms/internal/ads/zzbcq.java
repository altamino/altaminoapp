package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.app.NotificationCompat;
import android.support.v4.internal.view.SupportMenu;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.internal.Preconditions;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

@zzard
/* loaded from: classes2.dex */
public final class zzbcq extends FrameLayout implements zzbcn {
    private final zzbdf zzebt;
    private final FrameLayout zzebu;
    private final zzadi zzebv;
    private final zzbdh zzebw;
    private final long zzebx;
    private zzbco zzeby;
    private boolean zzebz;
    private boolean zzeca;
    private boolean zzecb;
    private boolean zzecc;
    private long zzecd;
    private long zzece;
    private String zzecf;
    private String[] zzecg;
    private Bitmap zzech;
    private ImageView zzeci;
    private boolean zzecj;

    public static void zzb(zzbdf zzbdfVar) {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, "no_video_view");
        zzbdfVar.zza("onVideoEvent", map);
    }

    public static void zza(zzbdf zzbdfVar, Map<String, List<Map<String, Object>>> map) {
        HashMap map2 = new HashMap();
        map2.put(NotificationCompat.CATEGORY_EVENT, "decoderProps");
        map2.put("mimeTypes", map);
        zzbdfVar.zza("onVideoEvent", map2);
    }

    public static void zza(zzbdf zzbdfVar, String str) {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, "decoderProps");
        map.put(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR, str);
        zzbdfVar.zza("onVideoEvent", map);
    }

    public zzbcq(Context context, zzbdf zzbdfVar, int i, boolean z, zzadi zzadiVar, zzbde zzbdeVar) {
        super(context);
        this.zzebt = zzbdfVar;
        this.zzebv = zzadiVar;
        this.zzebu = new FrameLayout(context);
        addView(this.zzebu, new FrameLayout.LayoutParams(-1, -1));
        Preconditions.checkNotNull(zzbdfVar.zzye());
        this.zzeby = zzbdfVar.zzye().zzbqs.zza(context, zzbdfVar, i, z, zzadiVar, zzbdeVar);
        zzbco zzbcoVar = this.zzeby;
        if (zzbcoVar != null) {
            this.zzebu.addView(zzbcoVar, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcmd)).booleanValue()) {
                zzxs();
            }
        }
        this.zzeci = new ImageView(context);
        this.zzebx = ((Long) zzyt.zzpe().zzd(zzacu.zzcmh)).longValue();
        this.zzecc = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcmf)).booleanValue();
        zzadi zzadiVar2 = this.zzebv;
        if (zzadiVar2 != null) {
            zzadiVar2.zzh("spinner_used", this.zzecc ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0");
        }
        this.zzebw = new zzbdh(this);
        zzbco zzbcoVar2 = this.zzeby;
        if (zzbcoVar2 != null) {
            zzbcoVar2.zza(this);
        }
        if (this.zzeby == null) {
            zzl("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    public final void zzd(int i, int i2, int i3, int i4) {
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.zzebu.setLayoutParams(layoutParams);
        requestLayout();
    }

    public final void zzc(String str, String[] strArr) {
        this.zzecf = str;
        this.zzecg = strArr;
    }

    public final void zza(float f, float f2) {
        zzbco zzbcoVar = this.zzeby;
        if (zzbcoVar != null) {
            zzbcoVar.zza(f, f2);
        }
    }

    public final void zzfr() {
        if (this.zzeby == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.zzecf)) {
            this.zzeby.zzb(this.zzecf, this.zzecg);
        } else {
            zzd("no_src", new String[0]);
        }
    }

    public final void pause() {
        zzbco zzbcoVar = this.zzeby;
        if (zzbcoVar == null) {
            return;
        }
        zzbcoVar.pause();
    }

    public final void play() {
        zzbco zzbcoVar = this.zzeby;
        if (zzbcoVar == null) {
            return;
        }
        zzbcoVar.play();
    }

    public final void seekTo(int i) {
        zzbco zzbcoVar = this.zzeby;
        if (zzbcoVar == null) {
            return;
        }
        zzbcoVar.seekTo(i);
    }

    public final void zzxq() {
        zzbco zzbcoVar = this.zzeby;
        if (zzbcoVar == null) {
            return;
        }
        zzbcoVar.zzebs.setMuted(true);
        zzbcoVar.zzxk();
    }

    public final void zzxr() {
        zzbco zzbcoVar = this.zzeby;
        if (zzbcoVar == null) {
            return;
        }
        zzbcoVar.zzebs.setMuted(false);
        zzbcoVar.zzxk();
    }

    public final void setVolume(float f) {
        zzbco zzbcoVar = this.zzeby;
        if (zzbcoVar == null) {
            return;
        }
        zzbcoVar.zzebs.setVolume(f);
        zzbcoVar.zzxk();
    }

    public final void zzcy(int i) {
        this.zzeby.zzcy(i);
    }

    public final void zzcz(int i) {
        this.zzeby.zzcz(i);
    }

    public final void zzda(int i) {
        this.zzeby.zzda(i);
    }

    public final void zzdb(int i) {
        this.zzeby.zzdb(i);
    }

    public final void zzdc(int i) {
        this.zzeby.zzdc(i);
    }

    @TargetApi(14)
    public final void zze(MotionEvent motionEvent) {
        zzbco zzbcoVar = this.zzeby;
        if (zzbcoVar == null) {
            return;
        }
        zzbcoVar.dispatchTouchEvent(motionEvent);
    }

    @TargetApi(14)
    public final void zzxs() {
        zzbco zzbcoVar = this.zzeby;
        if (zzbcoVar == null) {
            return;
        }
        TextView textView = new TextView(zzbcoVar.getContext());
        String strValueOf = String.valueOf(this.zzeby.zzxg());
        textView.setText(strValueOf.length() != 0 ? "AdMob - ".concat(strValueOf) : new String("AdMob - "));
        textView.setTextColor(SupportMenu.CATEGORY_MASK);
        textView.setBackgroundColor(-256);
        this.zzebu.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.zzebu.bringChildToFront(textView);
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void zzxl() {
        this.zzebw.resume();
        zzaxi.zzdvv.post(new zzbct(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void zzhd() {
        if (this.zzeby != null && this.zzece == 0) {
            zzd("canplaythrough", "duration", String.valueOf(r0.getDuration() / 1000.0f), "videoWidth", String.valueOf(this.zzeby.getVideoWidth()), "videoHeight", String.valueOf(this.zzeby.getVideoHeight()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void zzxm() {
        if (this.zzebt.zzyd() != null && !this.zzeca) {
            this.zzecb = (this.zzebt.zzyd().getWindow().getAttributes().flags & 128) != 0;
            if (!this.zzecb) {
                this.zzebt.zzyd().getWindow().addFlags(128);
                this.zzeca = true;
            }
        }
        this.zzebz = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void onPaused() {
        zzd("pause", new String[0]);
        zzxv();
        this.zzebz = false;
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void zzxn() {
        zzd("ended", new String[0]);
        zzxv();
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void zzl(String str, String str2) {
        zzd(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR, "what", str, "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void zzxo() {
        if (this.zzecj && this.zzech != null && !zzxu()) {
            this.zzeci.setImageBitmap(this.zzech);
            this.zzeci.invalidate();
            this.zzebu.addView(this.zzeci, new FrameLayout.LayoutParams(-1, -1));
            this.zzebu.bringChildToFront(this.zzeci);
        }
        this.zzebw.pause();
        this.zzece = this.zzecd;
        zzaxi.zzdvv.post(new zzbcu(this));
    }

    public final void destroy() {
        this.zzebw.pause();
        zzbco zzbcoVar = this.zzeby;
        if (zzbcoVar != null) {
            zzbcoVar.stop();
        }
        zzxv();
    }

    public final void finalize() throws Throwable {
        try {
            this.zzebw.pause();
            if (this.zzeby != null) {
                zzbco zzbcoVar = this.zzeby;
                Executor executor = zzbbm.zzeae;
                zzbcoVar.getClass();
                executor.execute(zzbcr.zza(zzbcoVar));
            }
        } finally {
            super.finalize();
        }
    }

    final void zzxt() {
        zzbco zzbcoVar = this.zzeby;
        if (zzbcoVar == null) {
            return;
        }
        long currentPosition = zzbcoVar.getCurrentPosition();
        if (this.zzecd == currentPosition || currentPosition <= 0) {
            return;
        }
        zzd("timeupdate", "time", String.valueOf(currentPosition / 1000.0f));
        this.zzecd = currentPosition;
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void zzxp() {
        if (this.zzebz && zzxu()) {
            this.zzebu.removeView(this.zzeci);
        }
        if (this.zzech != null) {
            long jElapsedRealtime = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime();
            if (this.zzeby.getBitmap(this.zzech) != null) {
                this.zzecj = true;
            }
            long jElapsedRealtime2 = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - jElapsedRealtime;
            if (zzawz.zzvj()) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Spinner frame grab took ");
                sb.append(jElapsedRealtime2);
                sb.append("ms");
                zzawz.zzds(sb.toString());
            }
            if (jElapsedRealtime2 > this.zzebx) {
                zzbad.zzep("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.zzecc = false;
                this.zzech = null;
                zzadi zzadiVar = this.zzebv;
                if (zzadiVar != null) {
                    zzadiVar.zzh("spinner_jank", Long.toString(jElapsedRealtime2));
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void zzk(int i, int i2) {
        if (this.zzecc) {
            int iMax = Math.max(i / ((Integer) zzyt.zzpe().zzd(zzacu.zzcmg)).intValue(), 1);
            int iMax2 = Math.max(i2 / ((Integer) zzyt.zzpe().zzd(zzacu.zzcmg)).intValue(), 1);
            Bitmap bitmap = this.zzech;
            if (bitmap != null && bitmap.getWidth() == iMax && this.zzech.getHeight() == iMax2) {
                return;
            }
            this.zzech = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
            this.zzecj = false;
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.zzebw.resume();
        } else {
            this.zzebw.pause();
            this.zzece = this.zzecd;
        }
        zzaxi.zzdvv.post(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.zzbcs
            private final zzbcq zzecl;
            private final boolean zzecm;

            {
                this.zzecl = this;
                this.zzecm = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzecl.zzan(this.zzecm);
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbcn
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.zzebw.resume();
            z = true;
        } else {
            this.zzebw.pause();
            this.zzece = this.zzecd;
            z = false;
        }
        zzaxi.zzdvv.post(new zzbcv(this, z));
    }

    private final boolean zzxu() {
        return this.zzeci.getParent() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(String str, String... strArr) {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                map.put(str2, str3);
                str2 = null;
            }
        }
        this.zzebt.zza("onVideoEvent", map);
    }

    private final void zzxv() {
        if (this.zzebt.zzyd() == null || !this.zzeca || this.zzecb) {
            return;
        }
        this.zzebt.zzyd().getWindow().clearFlags(128);
        this.zzeca = false;
    }

    final /* synthetic */ void zzan(boolean z) {
        zzd("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
    }
}
