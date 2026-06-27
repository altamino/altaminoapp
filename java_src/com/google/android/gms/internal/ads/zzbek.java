package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import java.nio.ByteBuffer;
import java.util.Arrays;

@zzard
@TargetApi(16)
/* loaded from: classes2.dex */
public final class zzbek extends zzbco implements TextureView.SurfaceTextureListener, zzbfi {
    private Surface zzaez;
    private final zzbdg zzeaw;
    private final boolean zzeax;
    private int zzebc;
    private int zzebd;
    private int zzebf;
    private int zzebg;
    private zzbdd zzebh;
    private final boolean zzebi;
    private zzbcn zzebk;
    private final zzbdf zzebt;
    private String[] zzecg;
    private float zzefn;
    private final zzbde zzefp;
    private String zzefr;
    private boolean zzefs;
    private int zzeft;
    private boolean zzefu;
    private boolean zzefv;
    private zzbfa zzegj;

    public zzbek(Context context, zzbdg zzbdgVar, zzbdf zzbdfVar, boolean z, boolean z2, zzbde zzbdeVar) {
        super(context);
        this.zzeft = 1;
        this.zzeax = z2;
        this.zzebt = zzbdfVar;
        this.zzeaw = zzbdgVar;
        this.zzebi = z;
        this.zzefp = zzbdeVar;
        setSurfaceTextureListener(this);
        this.zzeaw.zzb(this);
    }

    private final zzbfa zzzh() {
        return new zzbfa(this.zzebt.getContext(), this.zzefp);
    }

    private final String zzzi() {
        return com.google.android.gms.ads.internal.zzk.zzlg().zzq(this.zzebt.getContext(), this.zzebt.zzyh().zzbsx);
    }

    private final boolean zzyv() {
        return (this.zzegj == null || this.zzefs) ? false : true;
    }

    private final boolean zzyw() {
        return zzyv() && this.zzeft != 1;
    }

    private final void zzzj() {
        String str;
        if (this.zzegj != null || (str = this.zzefr) == null || this.zzaez == null) {
            return;
        }
        if (str.startsWith("cache:")) {
            zzbft zzbftVarZzet = this.zzebt.zzet(this.zzefr);
            if (zzbftVarZzet instanceof zzbgp) {
                this.zzegj = ((zzbgp) zzbftVarZzet).zzaaa();
            } else if (zzbftVarZzet instanceof zzbgo) {
                zzbgo zzbgoVar = (zzbgo) zzbftVarZzet;
                String strZzzi = zzzi();
                ByteBuffer byteBuffer = zzbgoVar.getByteBuffer();
                boolean zZzzv = zzbgoVar.zzzv();
                String url = zzbgoVar.getUrl();
                if (url == null) {
                    zzbad.zzep("Stream cache URL is null.");
                    return;
                } else {
                    this.zzegj = zzzh();
                    this.zzegj.zza(new Uri[]{Uri.parse(url)}, strZzzi, byteBuffer, zZzzv);
                }
            } else {
                String strValueOf = String.valueOf(this.zzefr);
                zzbad.zzep(strValueOf.length() != 0 ? "Stream cache miss: ".concat(strValueOf) : new String("Stream cache miss: "));
                return;
            }
        } else {
            this.zzegj = zzzh();
            String strZzzi2 = zzzi();
            Uri[] uriArr = new Uri[this.zzecg.length];
            int i = 0;
            while (true) {
                String[] strArr = this.zzecg;
                if (i >= strArr.length) {
                    break;
                }
                uriArr[i] = Uri.parse(strArr[i]);
                i++;
            }
            this.zzegj.zza(uriArr, strZzzi2);
        }
        this.zzegj.zza(this);
        zza(this.zzaez, false);
        this.zzeft = this.zzegj.zzzt().getPlaybackState();
        if (this.zzeft == 3) {
            zzyy();
        }
    }

    private final void zza(Surface surface, boolean z) {
        zzbfa zzbfaVar = this.zzegj;
        if (zzbfaVar != null) {
            zzbfaVar.zza(surface, z);
        } else {
            zzbad.zzep("Trying to set surface before player is initalized.");
        }
    }

    private final void zza(float f, boolean z) {
        zzbfa zzbfaVar = this.zzegj;
        if (zzbfaVar != null) {
            zzbfaVar.zzb(f, z);
        } else {
            zzbad.zzep("Trying to set volume before player is initalized.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco, com.google.android.gms.internal.ads.zzbdj
    public final void zzxk() {
        zza(this.zzebs.getVolume(), false);
    }

    private final void zzyy() {
        if (this.zzefu) {
            return;
        }
        this.zzefu = true;
        zzaxi.zzdvv.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbel
            private final zzbek zzegk;

            {
                this.zzegk = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzegk.zzzs();
            }
        });
        zzxk();
        this.zzeaw.zzhd();
        if (this.zzefv) {
            play();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final String zzxg() {
        String str = this.zzebi ? " spherical" : "";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void zza(zzbcn zzbcnVar) {
        this.zzebk = zzbcnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void setVideoPath(String str) {
        if (str != null) {
            this.zzefr = str;
            this.zzecg = new String[]{str};
            zzzj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void zzb(String str, String[] strArr) {
        if (str != null) {
            if (strArr == null) {
                setVideoPath(str);
            }
            this.zzefr = str;
            this.zzecg = (String[]) Arrays.copyOf(strArr, strArr.length);
            zzzj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void play() {
        if (zzyw()) {
            if (this.zzefp.zzeec) {
                zzzl();
            }
            this.zzegj.zzzt().zzd(true);
            this.zzeaw.zzyl();
            this.zzebs.zzyl();
            this.zzebr.zzxm();
            zzaxi.zzdvv.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbeo
                private final zzbek zzegk;

                {
                    this.zzegk = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzegk.zzzq();
                }
            });
            return;
        }
        this.zzefv = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void stop() {
        if (zzyv()) {
            this.zzegj.zzzt().stop();
            if (this.zzegj != null) {
                zza((Surface) null, true);
                zzbfa zzbfaVar = this.zzegj;
                if (zzbfaVar != null) {
                    zzbfaVar.zza((zzbfi) null);
                    this.zzegj.release();
                    this.zzegj = null;
                }
                this.zzeft = 1;
                this.zzefs = false;
                this.zzefu = false;
                this.zzefv = false;
            }
        }
        this.zzeaw.zzym();
        this.zzebs.zzym();
        this.zzeaw.onStop();
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void pause() {
        if (zzyw()) {
            if (this.zzefp.zzeec) {
                zzzm();
            }
            this.zzegj.zzzt().zzd(false);
            this.zzeaw.zzym();
            this.zzebs.zzym();
            zzaxi.zzdvv.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbep
                private final zzbek zzegk;

                {
                    this.zzegk = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzegk.zzzp();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void seekTo(int i) {
        if (zzyw()) {
            this.zzegj.zzzt().seekTo(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void zzcy(int i) {
        zzbfa zzbfaVar = this.zzegj;
        if (zzbfaVar != null) {
            zzbfaVar.zzzu().zzdg(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void zzcz(int i) {
        zzbfa zzbfaVar = this.zzegj;
        if (zzbfaVar != null) {
            zzbfaVar.zzzu().zzdh(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void zzda(int i) {
        zzbfa zzbfaVar = this.zzegj;
        if (zzbfaVar != null) {
            zzbfaVar.zzzu().zzda(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void zzdb(int i) {
        zzbfa zzbfaVar = this.zzegj;
        if (zzbfaVar != null) {
            zzbfaVar.zzzu().zzdb(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void zzdc(int i) {
        zzbfa zzbfaVar = this.zzegj;
        if (zzbfaVar != null) {
            zzbfaVar.zzdc(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void zza(float f, float f2) {
        zzbdd zzbddVar = this.zzebh;
        if (zzbddVar != null) {
            zzbddVar.zzb(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final int getCurrentPosition() {
        if (zzyw()) {
            return (int) this.zzegj.zzzt().zzdn();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final int getDuration() {
        if (zzyw()) {
            return (int) this.zzegj.zzzt().getDuration();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final int getVideoWidth() {
        return this.zzebc;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final int getVideoHeight() {
        return this.zzebd;
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = this.zzefn;
        if (f != 0.0f && this.zzebh == null) {
            float f2 = measuredWidth;
            float f3 = f2 / measuredHeight;
            if (f > f3) {
                measuredHeight = (int) (f2 / f);
            }
            float f4 = this.zzefn;
            if (f4 < f3) {
                measuredWidth = (int) (measuredHeight * f4);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        zzbdd zzbddVar = this.zzebh;
        if (zzbddVar != null) {
            zzbddVar.zzm(measuredWidth, measuredHeight);
        }
        if (Build.VERSION.SDK_INT == 16) {
            int i4 = this.zzebf;
            if (((i4 > 0 && i4 != measuredWidth) || ((i3 = this.zzebg) > 0 && i3 != measuredHeight)) && this.zzeax && zzyv()) {
                zzkv zzkvVarZzzt = this.zzegj.zzzt();
                if (zzkvVarZzzt.zzdn() > 0 && !zzkvVarZzzt.zzdm()) {
                    zza(0.0f, true);
                    zzkvVarZzzt.zzd(true);
                    long jZzdn = zzkvVarZzzt.zzdn();
                    long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis();
                    while (zzyv() && zzkvVarZzzt.zzdn() == jZzdn && com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis() - jCurrentTimeMillis <= 250) {
                    }
                    zzkvVarZzzt.zzd(false);
                    zzxk();
                }
            }
            this.zzebf = measuredWidth;
            this.zzebg = measuredHeight;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) throws InterruptedException {
        if (this.zzebi) {
            this.zzebh = new zzbdd(getContext());
            this.zzebh.zza(surfaceTexture, i, i2);
            this.zzebh.start();
            SurfaceTexture surfaceTextureZzxy = this.zzebh.zzxy();
            if (surfaceTextureZzxy != null) {
                surfaceTexture = surfaceTextureZzxy;
            } else {
                this.zzebh.zzxx();
                this.zzebh = null;
            }
        }
        this.zzaez = new Surface(surfaceTexture);
        if (this.zzegj == null) {
            zzzj();
        } else {
            zza(this.zzaez, true);
            if (!this.zzefp.zzeec) {
                zzzl();
            }
        }
        if (this.zzebc == 0 || this.zzebd == 0) {
            zzp(i, i2);
        } else {
            zzzk();
        }
        zzaxi.zzdvv.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbeq
            private final zzbek zzegk;

            {
                this.zzegk = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzegk.zzzo();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        zzbdd zzbddVar = this.zzebh;
        if (zzbddVar != null) {
            zzbddVar.zzm(i, i2);
        }
        zzaxi.zzdvv.post(new Runnable(this, i, i2) { // from class: com.google.android.gms.internal.ads.zzber
            private final int zzdwj;
            private final int zzdwk;
            private final zzbek zzegk;

            {
                this.zzegk = this;
                this.zzdwj = i;
                this.zzdwk = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzegk.zzq(this.zzdwj, this.zzdwk);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzeaw.zzc(this);
        this.zzebr.zza(surfaceTexture, this.zzebk);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        pause();
        zzbdd zzbddVar = this.zzebh;
        if (zzbddVar != null) {
            zzbddVar.zzxx();
            this.zzebh = null;
        }
        if (this.zzegj != null) {
            zzzm();
            Surface surface = this.zzaez;
            if (surface != null) {
                surface.release();
            }
            this.zzaez = null;
            zza((Surface) null, true);
        }
        zzaxi.zzdvv.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbes
            private final zzbek zzegk;

            {
                this.zzegk = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzegk.zzzn();
            }
        });
        return true;
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i);
        zzawz.zzds(sb.toString());
        zzaxi.zzdvv.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.zzbet
            private final int zzdwj;
            private final zzbek zzegk;

            {
                this.zzegk = this;
                this.zzdwj = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzegk.zzdf(this.zzdwj);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    public final void zzd(final boolean z, final long j) {
        if (this.zzebt != null) {
            zzbbm.zzeae.execute(new Runnable(this, z, j) { // from class: com.google.android.gms.internal.ads.zzbeu
                private final boolean zzecm;
                private final long zzega;
                private final zzbek zzegk;

                {
                    this.zzegk = this;
                    this.zzecm = z;
                    this.zzega = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzegk.zze(this.zzecm, this.zzega);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    public final void zzde(int i) {
        if (this.zzeft != i) {
            this.zzeft = i;
            if (i == 3) {
                zzyy();
                return;
            }
            if (i != 4) {
                return;
            }
            if (this.zzefp.zzeec) {
                zzzm();
            }
            this.zzeaw.zzym();
            this.zzebs.zzym();
            zzaxi.zzdvv.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbem
                private final zzbek zzegk;

                {
                    this.zzegk = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzegk.zzzr();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    public final void zzo(int i, int i2) {
        this.zzebc = i;
        this.zzebd = i2;
        zzzk();
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    public final void zza(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        final String string = sb.toString();
        String strValueOf = String.valueOf(string);
        zzbad.zzep(strValueOf.length() != 0 ? "ExoPlayerAdapter error: ".concat(strValueOf) : new String("ExoPlayerAdapter error: "));
        this.zzefs = true;
        if (this.zzefp.zzeec) {
            zzzm();
        }
        zzaxi.zzdvv.post(new Runnable(this, string) { // from class: com.google.android.gms.internal.ads.zzben
            private final String zzdbk;
            private final zzbek zzegk;

            {
                this.zzegk = this;
                this.zzdbk = string;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzegk.zzeu(this.zzdbk);
            }
        });
    }

    private final void zzzk() {
        zzp(this.zzebc, this.zzebd);
    }

    private final void zzp(int i, int i2) {
        float f = i2 > 0 ? i / i2 : 1.0f;
        if (this.zzefn != f) {
            this.zzefn = f;
            requestLayout();
        }
    }

    private final void zzzl() {
        zzbfa zzbfaVar = this.zzegj;
        if (zzbfaVar != null) {
            zzbfaVar.zzap(true);
        }
    }

    private final void zzzm() {
        zzbfa zzbfaVar = this.zzegj;
        if (zzbfaVar != null) {
            zzbfaVar.zzap(false);
        }
    }

    final /* synthetic */ void zze(boolean z, long j) {
        this.zzebt.zza(z, j);
    }

    final /* synthetic */ void zzdf(int i) {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.onWindowVisibilityChanged(i);
        }
    }

    final /* synthetic */ void zzzn() {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzxo();
        }
    }

    final /* synthetic */ void zzq(int i, int i2) {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzk(i, i2);
        }
    }

    final /* synthetic */ void zzzo() {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzxl();
        }
    }

    final /* synthetic */ void zzzp() {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.onPaused();
        }
    }

    final /* synthetic */ void zzzq() {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzxm();
        }
    }

    final /* synthetic */ void zzeu(String str) {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzl("ExoPlayerAdapter error", str);
        }
    }

    final /* synthetic */ void zzzr() {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzxn();
        }
    }

    final /* synthetic */ void zzzs() {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzhd();
        }
    }
}
