package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.common.internal.Preconditions;
import com.narvii.pushservice.PushNotificationService;
import java.nio.ByteBuffer;

@zzard
@TargetApi(16)
/* loaded from: classes2.dex */
public final class zzbdq extends zzbco implements TextureView.SurfaceTextureListener {
    private Surface zzaez;
    private float zzaft;
    private final zzbdg zzeaw;
    private final boolean zzeax;
    private int zzebc;
    private int zzebd;
    private int zzebf;
    private int zzebg;
    private zzbdd zzebh;
    private boolean zzebi;
    private zzbcn zzebk;
    private final zzbdf zzebt;
    private zzge zzefe;
    private zzhd zzeff;
    private zzgn zzefg;
    private float zzefn;
    private final int zzefo;
    private final zzbde zzefp;
    private zzbdk zzefq;
    private String zzefr;
    private boolean zzefs;
    private int zzeft;
    private boolean zzefu;
    private boolean zzefv;
    private final zzgh zzefw;
    private final zzhh zzefx;
    private final zzgq zzefy;
    private final Context zzlj;

    public zzbdq(Context context, zzbdg zzbdgVar, zzbdf zzbdfVar, int i, boolean z, boolean z2, zzbde zzbdeVar) {
        super(context);
        this.zzeft = 1;
        this.zzefw = new zzbee(this);
        this.zzefx = new zzbef(this);
        this.zzefy = new zzbeg(this);
        this.zzlj = context;
        this.zzeax = z2;
        this.zzebt = zzbdfVar;
        this.zzefo = i;
        this.zzeaw = zzbdgVar;
        this.zzebi = z;
        this.zzefp = zzbdeVar;
        setSurfaceTextureListener(this);
        this.zzeaw.zzb(this);
    }

    private final boolean zzyv() {
        return (this.zzefe == null || this.zzefs) ? false : true;
    }

    private final boolean zzyw() {
        return zzyv() && this.zzeft != 1;
    }

    private final void zzyx() {
        String str;
        zzhn zzigVar;
        zzjp zzbejVar;
        zzig zzigVar2;
        if (this.zzefe != null || (str = this.zzefr) == null || this.zzaez == null) {
            return;
        }
        zzbdk zzbdkVar = null;
        if (str.startsWith("cache:")) {
            zzbft zzbftVarZzet = this.zzebt.zzet(this.zzefr);
            if (zzbftVarZzet != null && (zzbftVarZzet instanceof zzbgl)) {
                zzbgl zzbglVar = (zzbgl) zzbftVarZzet;
                zzbglVar.zzzx();
                zzbdkVar = zzbglVar.zzzy();
                zzbdkVar.zza(this.zzefw, this.zzefx, this.zzefy);
            } else if (zzbftVarZzet instanceof zzbgg) {
                zzbgg zzbggVar = (zzbgg) zzbftVarZzet;
                ByteBuffer byteBuffer = zzbggVar.getByteBuffer();
                String url = zzbggVar.getUrl();
                boolean zZzzv = zzbggVar.zzzv();
                zzbdk zzbdkVar2 = new zzbdk();
                zzid zzjgVar = MimeTypes.VIDEO_WEBM.equals(null) ? new zzjg() : new zziv();
                if (zZzzv && byteBuffer.limit() > 0) {
                    byte[] bArr = new byte[byteBuffer.limit()];
                    byteBuffer.get(bArr);
                    zzigVar2 = new zzig(Uri.parse(url), new zzjo(bArr), zzjgVar, 2, this.zzefp.zzeee);
                } else {
                    zzjt zzjtVar = new zzjt(this.zzebt.getContext(), com.google.android.gms.ads.internal.zzk.zzlg().zzq(this.zzebt.getContext(), this.zzebt.zzyh().zzbsx));
                    zzjp zzbehVar = ((Boolean) zzyt.zzpe().zzd(zzacu.zzctr)).booleanValue() ? new zzbeh(this.zzlj, zzjtVar, new zzbei(this) { // from class: com.google.android.gms.internal.ads.zzbds
                        private final zzbdq zzefz;

                        {
                            this.zzefz = this;
                        }

                        @Override // com.google.android.gms.internal.ads.zzbei
                        public final void zzd(final boolean z, final long j) {
                            final zzbdq zzbdqVar = this.zzefz;
                            zzbbm.zzeae.execute(new Runnable(zzbdqVar, z, j) { // from class: com.google.android.gms.internal.ads.zzbdu
                                private final boolean zzecm;
                                private final zzbdq zzefz;
                                private final long zzega;

                                {
                                    this.zzefz = zzbdqVar;
                                    this.zzecm = z;
                                    this.zzega = j;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.zzefz.zzb(this.zzecm, this.zzega);
                                }
                            });
                        }
                    }) : zzjtVar;
                    if (byteBuffer.limit() > 0) {
                        byte[] bArr2 = new byte[byteBuffer.limit()];
                        byteBuffer.get(bArr2);
                        zzbejVar = new zzbej(new zzjo(bArr2), bArr2.length, zzbehVar);
                    } else {
                        zzbejVar = zzbehVar;
                    }
                    zzigVar2 = new zzig(Uri.parse(url), zzbejVar, zzjgVar, 2, this.zzefp.zzeee);
                }
                zzbdkVar2.zza(this.zzefw, this.zzefx, this.zzefy);
                if (!zzbdkVar2.zza(zzigVar2)) {
                    zzn("AdExoPlayerHelper Error", "Prepare from ByteBuffer failed.");
                }
                zzbdkVar = zzbdkVar2;
            } else {
                String strValueOf = String.valueOf(this.zzefr);
                zzbad.zzep(strValueOf.length() != 0 ? "Source is MD5 but not found in cache. Source: ".concat(strValueOf) : new String("Source is MD5 but not found in cache. Source: "));
            }
        } else {
            int i = this.zzefo;
            if (i == 1) {
                zzigVar = new zzgl(this.zzebt.getContext(), Uri.parse(this.zzefr), null, 2);
            } else {
                Preconditions.checkArgument(i == 2);
                zzjp zzjtVar2 = new zzjt(this.zzebt.getContext(), com.google.android.gms.ads.internal.zzk.zzlg().zzq(this.zzebt.getContext(), this.zzebt.zzyh().zzbsx));
                zzigVar = new zzig(Uri.parse(this.zzefr), ((Boolean) zzyt.zzpe().zzd(zzacu.zzctr)).booleanValue() ? new zzbeh(this.zzlj, zzjtVar2, new zzbei(this) { // from class: com.google.android.gms.internal.ads.zzbdr
                    private final zzbdq zzefz;

                    {
                        this.zzefz = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzbei
                    public final void zzd(final boolean z, final long j) {
                        final zzbdq zzbdqVar = this.zzefz;
                        zzbbm.zzeae.execute(new Runnable(zzbdqVar, z, j) { // from class: com.google.android.gms.internal.ads.zzbdv
                            private final boolean zzecm;
                            private final zzbdq zzefz;
                            private final long zzega;

                            {
                                this.zzefz = zzbdqVar;
                                this.zzecm = z;
                                this.zzega = j;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zzefz.zzc(this.zzecm, this.zzega);
                            }
                        });
                    }
                }) : zzjtVar2, MimeTypes.VIDEO_WEBM.equals(null) ? new zzjg() : new zziv(), 2, this.zzefp.zzeee);
            }
            zzbdkVar = new zzbdk();
            zzbdkVar.zza(this.zzefw, this.zzefx, this.zzefy);
            if (!zzbdkVar.zza(zzigVar)) {
                zzn("AdExoPlayerHelper Error", "Prepare failed.");
            }
        }
        this.zzefq = zzbdkVar;
        zzbdk zzbdkVar3 = this.zzefq;
        if (zzbdkVar3 == null) {
            String strValueOf2 = String.valueOf(this.zzefr);
            zzbad.zzep(strValueOf2.length() != 0 ? "AdExoPlayerHelper is null. Source: ".concat(strValueOf2) : new String("AdExoPlayerHelper is null. Source: "));
            return;
        }
        this.zzefe = zzbdkVar3.zzys();
        this.zzeff = this.zzefq.zzyt();
        this.zzefg = this.zzefq.zzyu();
        if (this.zzefe != null) {
            zza(this.zzaez, false);
            this.zzeft = this.zzefe.getPlaybackState();
            if (this.zzeft == 4) {
                zzyy();
            }
        }
    }

    private final void zza(Surface surface, boolean z) {
        zzhd zzhdVar;
        zzge zzgeVar = this.zzefe;
        if (zzgeVar == null || (zzhdVar = this.zzeff) == null) {
            zzbad.zzep("Trying to set surface before player and renderers are initalized.");
        } else if (z) {
            zzgeVar.zzb(zzhdVar, 1, surface);
        } else {
            zzgeVar.zza(zzhdVar, 1, surface);
        }
    }

    private final void zza(float f, boolean z) {
        zzgn zzgnVar;
        zzge zzgeVar = this.zzefe;
        if (zzgeVar == null || (zzgnVar = this.zzefg) == null) {
            zzbad.zzep("Trying to set volume before player and renderers are initalized.");
        } else if (z) {
            zzgeVar.zzb(zzgnVar, 1, Float.valueOf(f));
        } else {
            zzgeVar.zza(zzgnVar, 1, Float.valueOf(f));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco, com.google.android.gms.internal.ads.zzbdj
    public final void zzxk() {
        zza(this.zzebs.getVolume(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(int i, int i2, float f) {
        float f2 = i2 == 0 ? 1.0f : (i * f) / i2;
        if (this.zzefn != f2) {
            this.zzefn = f2;
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzyy() {
        if (this.zzefu) {
            return;
        }
        this.zzefu = true;
        zzawz.zzds("Video is ready.");
        zzaxi.zzdvv.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbdw
            private final zzbdq zzefz;

            {
                this.zzefz = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzefz.zzzg();
            }
        });
        zzxk();
        this.zzeaw.zzhd();
        if (this.zzefv) {
            play();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzyk() {
        zzawz.zzds("Video ended.");
        if (this.zzefp.zzeec) {
            zzza();
        }
        this.zzeaw.zzym();
        this.zzebs.zzym();
        zzaxi.zzdvv.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbdx
            private final zzbdq zzefz;

            {
                this.zzefz = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzefz.zzzf();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzn(final String str, final String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 19 + String.valueOf(str2).length());
        sb.append("Error received: ");
        sb.append(str);
        sb.append(" : ");
        sb.append(str2);
        zzbad.zzep(sb.toString());
        this.zzefs = true;
        if (this.zzefp.zzeec) {
            zzza();
        }
        zzaxi.zzdvv.post(new Runnable(this, str, str2) { // from class: com.google.android.gms.internal.ads.zzbdy
            private final String zzdbk;
            private final String zzdsr;
            private final zzbdq zzefz;

            {
                this.zzefz = this;
                this.zzdbk = str;
                this.zzdsr = str2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzefz.zzo(this.zzdbk, this.zzdsr);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final String zzxg() {
        String string;
        int i = this.zzefo;
        if (i == 1) {
            string = "/Framework";
        } else if (i == 2) {
            StringBuilder sb = new StringBuilder(PushNotificationService.NO_GROUP.length() + 12);
            sb.append("/Extractor(");
            sb.append((String) null);
            sb.append(")");
            string = sb.toString();
        } else {
            string = "/Unknown";
        }
        String str = this.zzebi ? " spherical" : "";
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 11 + str.length());
        sb2.append("ExoPlayer/1");
        sb2.append(string);
        sb2.append(str);
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void zza(zzbcn zzbcnVar) {
        this.zzebk = zzbcnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void setVideoPath(String str) {
        if (str != null) {
            this.zzefr = str;
            zzyx();
        } else {
            zzbad.zzep("Path is null.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void play() {
        if (zzyw()) {
            if (this.zzefp.zzeec) {
                zzyz();
            }
            this.zzefe.zzd(true);
            this.zzeaw.zzyl();
            this.zzebs.zzyl();
            this.zzebr.zzxm();
            zzaxi.zzdvv.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbdz
                private final zzbdq zzefz;

                {
                    this.zzefz = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzefz.zzze();
                }
            });
            return;
        }
        this.zzefv = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void stop() {
        if (zzyv()) {
            this.zzefe.stop();
            if (this.zzefe != null) {
                zza((Surface) null, true);
                zzbdk zzbdkVar = this.zzefq;
                if (zzbdkVar != null) {
                    zzbdkVar.zzyr();
                    this.zzefq = null;
                }
                this.zzefe = null;
                this.zzeff = null;
                this.zzefg = null;
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
                zzza();
            }
            this.zzefe.zzd(false);
            this.zzeaw.zzym();
            this.zzebs.zzym();
            zzaxi.zzdvv.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbea
                private final zzbdq zzefz;

                {
                    this.zzefz = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzefz.zzzd();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void seekTo(int i) {
        if (zzyw()) {
            this.zzefe.seekTo(i);
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
            return (int) this.zzefe.zzdn();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final int getDuration() {
        if (zzyw()) {
            return (int) this.zzefe.getDuration();
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
            float f3 = measuredHeight;
            float f4 = (f / (f2 / f3)) - 1.0f;
            if (f4 > 0.01f) {
                measuredHeight = (int) (f2 / f);
            } else if (f4 < -0.01f) {
                measuredWidth = (int) (f3 * f);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        zzbdd zzbddVar = this.zzebh;
        if (zzbddVar != null) {
            zzbddVar.zzm(measuredWidth, measuredHeight);
        }
        if (Build.VERSION.SDK_INT == 16) {
            int i4 = this.zzebf;
            if (((i4 > 0 && i4 != measuredWidth) || ((i3 = this.zzebg) > 0 && i3 != measuredHeight)) && this.zzeax && zzyv() && this.zzefe.zzdn() > 0 && !this.zzefe.zzdm()) {
                zza(0.0f, true);
                this.zzefe.zzd(true);
                long jZzdn = this.zzefe.zzdn();
                long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis();
                while (zzyv() && this.zzefe.zzdn() == jZzdn && com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis() - jCurrentTimeMillis <= 250) {
                }
                if (zzyv()) {
                    this.zzefe.zzd(false);
                }
                zzxk();
            }
            this.zzebf = measuredWidth;
            this.zzebg = measuredHeight;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) throws InterruptedException {
        int i3;
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
        if (this.zzefe == null) {
            zzyx();
        } else {
            zza(this.zzaez, true);
            if (!this.zzefp.zzeec) {
                zzyz();
            }
        }
        float f = 1.0f;
        int i4 = this.zzebc;
        if (i4 != 0 && (i3 = this.zzebd) != 0) {
            f = this.zzaft;
            i = i4;
            i2 = i3;
        }
        zzb(i, i2, f);
        zzaxi.zzdvv.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbeb
            private final zzbdq zzefz;

            {
                this.zzefz = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzefz.zzzc();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        zzbdd zzbddVar = this.zzebh;
        if (zzbddVar != null) {
            zzbddVar.zzm(i, i2);
        }
        zzaxi.zzdvv.post(new Runnable(this, i, i2) { // from class: com.google.android.gms.internal.ads.zzbec
            private final int zzdwj;
            private final int zzdwk;
            private final zzbdq zzefz;

            {
                this.zzefz = this;
                this.zzdwj = i;
                this.zzdwk = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzefz.zzn(this.zzdwj, this.zzdwk);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzawz.zzds("Surface destroyed");
        pause();
        zzbdd zzbddVar = this.zzebh;
        if (zzbddVar != null) {
            zzbddVar.zzxx();
            this.zzebh = null;
        }
        if (this.zzefe != null) {
            zzza();
            Surface surface = this.zzaez;
            if (surface != null) {
                surface.release();
            }
            this.zzaez = null;
            zza((Surface) null, true);
        }
        zzaxi.zzdvv.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbed
            private final zzbdq zzefz;

            {
                this.zzefz = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzefz.zzzb();
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzeaw.zzc(this);
        this.zzebr.zza(surfaceTexture, this.zzebk);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView1 window visibility changed to ");
        sb.append(i);
        zzawz.zzds(sb.toString());
        zzaxi.zzdvv.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.zzbdt
            private final int zzdwj;
            private final zzbdq zzefz;

            {
                this.zzefz = this;
                this.zzdwj = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzefz.zzdd(this.zzdwj);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    private final void zzyz() {
        zzge zzgeVar = this.zzefe;
        if (zzgeVar != null) {
            zzgeVar.zzc(0, true);
        }
    }

    private final void zzza() {
        zzge zzgeVar = this.zzefe;
        if (zzgeVar != null) {
            zzgeVar.zzc(0, false);
        }
    }

    final /* synthetic */ void zzdd(int i) {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.onWindowVisibilityChanged(i);
        }
    }

    final /* synthetic */ void zzzb() {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzxo();
        }
    }

    final /* synthetic */ void zzn(int i, int i2) {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzk(i, i2);
        }
    }

    final /* synthetic */ void zzzc() {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzxl();
        }
    }

    final /* synthetic */ void zzzd() {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.onPaused();
        }
    }

    final /* synthetic */ void zzze() {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzxm();
        }
    }

    final /* synthetic */ void zzo(String str, String str2) {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzl(str, str2);
        }
    }

    final /* synthetic */ void zzzf() {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzxn();
        }
    }

    final /* synthetic */ void zzzg() {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.zzhd();
        }
    }

    final /* synthetic */ void zzb(boolean z, long j) {
        this.zzebt.zza(z, j);
    }

    final /* synthetic */ void zzc(boolean z, long j) {
        this.zzebt.zza(z, j);
    }
}
