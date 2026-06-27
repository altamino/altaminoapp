package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.narvii.chat.input.MentionedEditText;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;

@zzard
@TargetApi(14)
/* loaded from: classes2.dex */
public final class zzbcd extends zzbco implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener {
    private static final Map<Integer, String> zzeav = new HashMap();
    private final zzbdg zzeaw;
    private final boolean zzeax;
    private int zzeay;
    private int zzeaz;
    private MediaPlayer zzeba;
    private Uri zzebb;
    private int zzebc;
    private int zzebd;
    private int zzebe;
    private int zzebf;
    private int zzebg;
    private zzbdd zzebh;
    private boolean zzebi;
    private int zzebj;
    private zzbcn zzebk;

    public zzbcd(Context context, boolean z, boolean z2, zzbde zzbdeVar, zzbdg zzbdgVar) {
        super(context);
        this.zzeay = 0;
        this.zzeaz = 0;
        setSurfaceTextureListener(this);
        this.zzeaw = zzbdgVar;
        this.zzebi = z;
        this.zzeax = z2;
        this.zzeaw.zzb(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final String zzxg() {
        String str = this.zzebi ? " spherical" : "";
        return str.length() != 0 ? "MediaPlayer".concat(str) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void zza(zzbcn zzbcnVar) {
        this.zzebk = zzbcnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void setVideoPath(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        Uri uri = Uri.parse(str);
        zzvv zzvvVarZze = zzvv.zze(uri);
        if (zzvvVarZze == null || zzvvVarZze.url != null) {
            if (zzvvVarZze != null) {
                uri = Uri.parse(zzvvVarZze.url);
            }
            this.zzebb = uri;
            this.zzebj = 0;
            zzxh();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void stop() throws IllegalStateException {
        zzawz.zzds("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.zzeba;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.zzeba.release();
            this.zzeba = null;
            zzcw(0);
            this.zzeaz = 0;
        }
        this.zzeaw.onStop();
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        zzawz.zzds(sb.toString());
        this.zzebc = mediaPlayer.getVideoWidth();
        this.zzebd = mediaPlayer.getVideoHeight();
        if (this.zzebc == 0 || this.zzebd == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) throws IllegalStateException {
        zzawz.zzds("AdMediaPlayerView prepared");
        zzcw(2);
        this.zzeaw.zzhd();
        zzaxi.zzdvv.post(new zzbcf(this));
        this.zzebc = mediaPlayer.getVideoWidth();
        this.zzebd = mediaPlayer.getVideoHeight();
        int i = this.zzebj;
        if (i != 0) {
            seekTo(i);
        }
        zzxi();
        int i2 = this.zzebc;
        int i3 = this.zzebd;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        zzbad.zzeo(sb.toString());
        if (this.zzeaz == 3) {
            play();
        }
        zzxk();
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        zzawz.zzds("AdMediaPlayerView completion");
        zzcw(5);
        this.zzeaz = 5;
        zzaxi.zzdvv.post(new zzbcg(this));
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        String str = zzeav.get(Integer.valueOf(i));
        String str2 = zzeav.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzawz.zzds(sb.toString());
        return true;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        String str = zzeav.get(Integer.valueOf(i));
        String str2 = zzeav.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzbad.zzep(sb.toString());
        zzcw(-1);
        this.zzeaz = -1;
        zzaxi.zzdvv.post(new zzbch(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.zzebe = i;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        zzawz.zzds("AdMediaPlayerView surface created");
        zzxh();
        zzaxi.zzdvv.post(new zzbci(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) throws IllegalStateException {
        zzawz.zzds("AdMediaPlayerView surface changed");
        boolean z = this.zzeaz == 3;
        boolean z2 = this.zzebc == i && this.zzebd == i2;
        if (this.zzeba != null && z && z2) {
            int i3 = this.zzebj;
            if (i3 != 0) {
                seekTo(i3);
            }
            play();
        }
        zzbdd zzbddVar = this.zzebh;
        if (zzbddVar != null) {
            zzbddVar.zzm(i, i2);
        }
        zzaxi.zzdvv.post(new zzbcj(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzawz.zzds("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.zzeba;
        if (mediaPlayer != null && this.zzebj == 0) {
            this.zzebj = mediaPlayer.getCurrentPosition();
        }
        zzbdd zzbddVar = this.zzebh;
        if (zzbddVar != null) {
            zzbddVar.zzxx();
        }
        zzaxi.zzdvv.post(new zzbck(this));
        zzam(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzeaw.zzc(this);
        this.zzebr.zza(surfaceTexture, this.zzebk);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(58);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i);
        zzawz.zzds(sb.toString());
        zzaxi.zzdvv.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.zzbce
            private final int zzdwj;
            private final zzbcd zzebl;

            {
                this.zzebl = this;
                this.zzdwj = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzebl.zzcx(this.zzdwj);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0069 A[PHI: r6
  0x0069: PHI (r6v6 int) = (r6v5 int), (r6v3 int), (r6v3 int), (r6v3 int) binds: [B:29:0x0068, B:27:0x0065, B:21:0x0055, B:15:0x0041] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r6, int r7) throws java.lang.IllegalStateException {
        /*
            r5 = this;
            int r0 = r5.zzebc
            int r0 = android.view.TextureView.getDefaultSize(r0, r6)
            int r1 = r5.zzebd
            int r1 = android.view.TextureView.getDefaultSize(r1, r7)
            int r2 = r5.zzebc
            if (r2 <= 0) goto L88
            int r2 = r5.zzebd
            if (r2 <= 0) goto L88
            com.google.android.gms.internal.ads.zzbdd r2 = r5.zzebh
            if (r2 != 0) goto L88
            int r0 = android.view.View.MeasureSpec.getMode(r6)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            int r7 = android.view.View.MeasureSpec.getSize(r7)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L48
            if (r1 != r2) goto L48
            int r0 = r5.zzebc
            int r1 = r0 * r7
            int r2 = r5.zzebd
            int r3 = r6 * r2
            if (r1 >= r3) goto L3d
            int r0 = r0 * r7
            int r0 = r0 / r2
            r1 = r7
            goto L88
        L3d:
            int r1 = r0 * r7
            int r3 = r6 * r2
            if (r1 <= r3) goto L69
            int r2 = r2 * r6
            int r1 = r2 / r0
            goto L89
        L48:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L5a
            int r0 = r5.zzebd
            int r0 = r0 * r6
            int r2 = r5.zzebc
            int r0 = r0 / r2
            if (r1 != r3) goto L58
            if (r0 <= r7) goto L58
            goto L67
        L58:
            r1 = r0
            goto L89
        L5a:
            if (r1 != r2) goto L6b
            int r1 = r5.zzebc
            int r1 = r1 * r7
            int r2 = r5.zzebd
            int r1 = r1 / r2
            if (r0 != r3) goto L68
            if (r1 <= r6) goto L68
        L67:
            goto L69
        L68:
            r6 = r1
        L69:
            r1 = r7
            goto L89
        L6b:
            int r2 = r5.zzebc
            int r4 = r5.zzebd
            if (r1 != r3) goto L78
            if (r4 <= r7) goto L78
            int r2 = r2 * r7
            int r2 = r2 / r4
            r1 = r7
            goto L79
        L78:
            r1 = r4
        L79:
            if (r0 != r3) goto L86
            if (r2 <= r6) goto L86
            int r7 = r5.zzebd
            int r7 = r7 * r6
            int r0 = r5.zzebc
            int r1 = r7 / r0
            goto L89
        L86:
            r6 = r2
            goto L89
        L88:
            r6 = r0
        L89:
            r5.setMeasuredDimension(r6, r1)
            com.google.android.gms.internal.ads.zzbdd r7 = r5.zzebh
            if (r7 == 0) goto L93
            r7.zzm(r6, r1)
        L93:
            int r7 = android.os.Build.VERSION.SDK_INT
            r0 = 16
            if (r7 != r0) goto Lac
            int r7 = r5.zzebf
            if (r7 <= 0) goto L9f
            if (r7 != r6) goto La5
        L9f:
            int r7 = r5.zzebg
            if (r7 <= 0) goto La8
            if (r7 == r1) goto La8
        La5:
            r5.zzxi()
        La8:
            r5.zzebf = r6
            r5.zzebg = r1
        Lac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbcd.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public final String toString() {
        String name = zzbcd.class.getName();
        String hexString = Integer.toHexString(hashCode());
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length());
        sb.append(name);
        sb.append(MentionedEditText.DEFAULT_METION_TAG);
        sb.append(hexString);
        return sb.toString();
    }

    private final void zzxh() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        zzawz.zzds("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.zzebb == null || surfaceTexture == null) {
            return;
        }
        zzam(false);
        try {
            com.google.android.gms.ads.internal.zzk.zzlw();
            this.zzeba = new MediaPlayer();
            this.zzeba.setOnBufferingUpdateListener(this);
            this.zzeba.setOnCompletionListener(this);
            this.zzeba.setOnErrorListener(this);
            this.zzeba.setOnInfoListener(this);
            this.zzeba.setOnPreparedListener(this);
            this.zzeba.setOnVideoSizeChangedListener(this);
            this.zzebe = 0;
            if (this.zzebi) {
                this.zzebh = new zzbdd(getContext());
                this.zzebh.zza(surfaceTexture, getWidth(), getHeight());
                this.zzebh.start();
                SurfaceTexture surfaceTextureZzxy = this.zzebh.zzxy();
                if (surfaceTextureZzxy != null) {
                    surfaceTexture = surfaceTextureZzxy;
                } else {
                    this.zzebh.zzxx();
                    this.zzebh = null;
                }
            }
            this.zzeba.setDataSource(getContext(), this.zzebb);
            com.google.android.gms.ads.internal.zzk.zzlx();
            this.zzeba.setSurface(new Surface(surfaceTexture));
            this.zzeba.setAudioStreamType(3);
            this.zzeba.setScreenOnWhilePlaying(true);
            this.zzeba.prepareAsync();
            zzcw(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            String strValueOf = String.valueOf(this.zzebb);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 36);
            sb.append("Failed to initialize MediaPlayer at ");
            sb.append(strValueOf);
            zzbad.zzd(sb.toString(), e);
            onError(this.zzeba, 1, 0);
        }
    }

    private final void zzxi() throws IllegalStateException {
        if (this.zzeax && zzxj() && this.zzeba.getCurrentPosition() > 0 && this.zzeaz != 3) {
            zzawz.zzds("AdMediaPlayerView nudging MediaPlayer");
            zzd(0.0f);
            this.zzeba.start();
            int currentPosition = this.zzeba.getCurrentPosition();
            long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis();
            while (zzxj() && this.zzeba.getCurrentPosition() == currentPosition && com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis() - jCurrentTimeMillis <= 250) {
            }
            this.zzeba.pause();
            zzxk();
        }
    }

    private final void zzam(boolean z) {
        zzawz.zzds("AdMediaPlayerView release");
        zzbdd zzbddVar = this.zzebh;
        if (zzbddVar != null) {
            zzbddVar.zzxx();
            this.zzebh = null;
        }
        MediaPlayer mediaPlayer = this.zzeba;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.zzeba.release();
            this.zzeba = null;
            zzcw(0);
            if (z) {
                this.zzeaz = 0;
                this.zzeaz = 0;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void play() throws IllegalStateException {
        zzawz.zzds("AdMediaPlayerView play");
        if (zzxj()) {
            this.zzeba.start();
            zzcw(3);
            this.zzebr.zzxm();
            zzaxi.zzdvv.post(new zzbcl(this));
        }
        this.zzeaz = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void pause() throws IllegalStateException {
        zzawz.zzds("AdMediaPlayerView pause");
        if (zzxj() && this.zzeba.isPlaying()) {
            this.zzeba.pause();
            zzcw(4);
            zzaxi.zzdvv.post(new zzbcm(this));
        }
        this.zzeaz = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final int getDuration() {
        if (zzxj()) {
            return this.zzeba.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final int getCurrentPosition() {
        if (zzxj()) {
            return this.zzeba.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void seekTo(int i) throws IllegalStateException {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i);
        zzawz.zzds(sb.toString());
        if (zzxj()) {
            this.zzeba.seekTo(i);
            this.zzebj = 0;
        } else {
            this.zzebj = i;
        }
    }

    private final boolean zzxj() {
        int i;
        return (this.zzeba == null || (i = this.zzeay) == -1 || i == 0 || i == 1) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final void zza(float f, float f2) {
        zzbdd zzbddVar = this.zzebh;
        if (zzbddVar != null) {
            zzbddVar.zzb(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final int getVideoWidth() {
        MediaPlayer mediaPlayer = this.zzeba;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbco
    public final int getVideoHeight() {
        MediaPlayer mediaPlayer = this.zzeba;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbco, com.google.android.gms.internal.ads.zzbdj
    public final void zzxk() {
        zzd(this.zzebs.getVolume());
    }

    private final void zzd(float f) {
        MediaPlayer mediaPlayer = this.zzeba;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.setVolume(f, f);
            } catch (IllegalStateException unused) {
            }
        } else {
            zzbad.zzep("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        }
    }

    private final void zzcw(int i) {
        if (i == 3) {
            this.zzeaw.zzyl();
            this.zzebs.zzyl();
        } else if (this.zzeay == 3) {
            this.zzeaw.zzym();
            this.zzebs.zzym();
        }
        this.zzeay = i;
    }

    final /* synthetic */ void zzcx(int i) {
        zzbcn zzbcnVar = this.zzebk;
        if (zzbcnVar != null) {
            zzbcnVar.onWindowVisibilityChanged(i);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            zzeav.put(-1004, "MEDIA_ERROR_IO");
            zzeav.put(-1007, "MEDIA_ERROR_MALFORMED");
            zzeav.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
            zzeav.put(-110, "MEDIA_ERROR_TIMED_OUT");
            zzeav.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        }
        zzeav.put(100, "MEDIA_ERROR_SERVER_DIED");
        zzeav.put(1, "MEDIA_ERROR_UNKNOWN");
        zzeav.put(1, "MEDIA_INFO_UNKNOWN");
        zzeav.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        zzeav.put(701, "MEDIA_INFO_BUFFERING_START");
        zzeav.put(702, "MEDIA_INFO_BUFFERING_END");
        zzeav.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        zzeav.put(Integer.valueOf(IMediaPlayer.MEDIA_INFO_NOT_SEEKABLE), "MEDIA_INFO_NOT_SEEKABLE");
        zzeav.put(Integer.valueOf(IMediaPlayer.MEDIA_INFO_METADATA_UPDATE), "MEDIA_INFO_METADATA_UPDATE");
        if (Build.VERSION.SDK_INT >= 19) {
            zzeav.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            zzeav.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }
}
