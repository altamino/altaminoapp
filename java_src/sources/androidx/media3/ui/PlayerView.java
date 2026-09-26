package androidx.media3.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.media3.common.AdOverlayInfo;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.ErrorMessageProvider;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.video.VideoDecoderGLSurfaceView;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PlayerView extends FrameLayout implements AdViewProvider {

    @UnstableApi
    public static final int ARTWORK_DISPLAY_MODE_FILL = 2;

    @UnstableApi
    public static final int ARTWORK_DISPLAY_MODE_FIT = 1;

    @UnstableApi
    public static final int ARTWORK_DISPLAY_MODE_OFF = 0;

    @UnstableApi
    public static final int SHOW_BUFFERING_ALWAYS = 2;

    @UnstableApi
    public static final int SHOW_BUFFERING_NEVER = 0;

    @UnstableApi
    public static final int SHOW_BUFFERING_WHEN_PLAYING = 1;
    private static final int SURFACE_TYPE_NONE = 0;
    private static final int SURFACE_TYPE_SPHERICAL_GL_SURFACE_VIEW = 3;
    private static final int SURFACE_TYPE_SURFACE_VIEW = 1;
    private static final int SURFACE_TYPE_TEXTURE_VIEW = 2;
    private static final int SURFACE_TYPE_VIDEO_DECODER_GL_SURFACE_VIEW = 4;

    @Nullable
    private final FrameLayout adOverlayFrameLayout;
    private int artworkDisplayMode;

    @Nullable
    private final ImageView artworkView;

    @Nullable
    private final View bufferingView;
    private final ComponentListener componentListener;

    @Nullable
    private final AspectRatioFrameLayout contentFrame;

    @Nullable
    private final PlayerControlView controller;
    private boolean controllerAutoShow;
    private boolean controllerHideDuringAds;
    private boolean controllerHideOnTouch;
    private int controllerShowTimeoutMs;

    @Nullable
    private ControllerVisibilityListener controllerVisibilityListener;

    @Nullable
    private CharSequence customErrorMessage;

    @Nullable
    private Drawable defaultArtwork;

    @Nullable
    private ErrorMessageProvider<? super PlaybackException> errorMessageProvider;

    @Nullable
    private final TextView errorMessageView;

    @Nullable
    private FullscreenButtonClickListener fullscreenButtonClickListener;
    private boolean isTouching;
    private boolean keepContentOnPlayerReset;

    @Nullable
    private PlayerControlView.VisibilityListener legacyControllerVisibilityListener;

    @Nullable
    private final FrameLayout overlayFrameLayout;

    @Nullable
    private Player player;
    private int showBuffering;

    @Nullable
    private final View shutterView;

    @Nullable
    private final SubtitleView subtitleView;

    @Nullable
    private final View surfaceView;
    private final boolean surfaceViewIgnoresVideoAspectRatio;
    private int textureViewRotation;
    private boolean useController;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    @UnstableApi
    public @interface ArtworkDisplayMode {
    }

    private final class ComponentListener implements Player.Listener, View.OnLayoutChangeListener, View.OnClickListener, PlayerControlView.VisibilityListener, PlayerControlView.OnFullScreenModeChangedListener {

        @Nullable
        private Object lastPeriodUidWithTracks;
        private final Timeline.Period period = new Timeline.Period();

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
            androidx.media3.common.c0.a(this, audioAttributes);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
            androidx.media3.common.c0.c(this, commands);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onCues(List list) {
            androidx.media3.common.c0.e(this, list);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
            androidx.media3.common.c0.f(this, deviceInfo);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onDeviceVolumeChanged(int i10, boolean z6) {
            androidx.media3.common.c0.g(this, i10, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onEvents(Player player, Player.Events events) {
            androidx.media3.common.c0.h(this, player, events);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onIsLoadingChanged(boolean z6) {
            androidx.media3.common.c0.i(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onIsPlayingChanged(boolean z6) {
            androidx.media3.common.c0.j(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onLoadingChanged(boolean z6) {
            androidx.media3.common.c0.k(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j6) {
            androidx.media3.common.c0.l(this, j6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i10) {
            androidx.media3.common.c0.m(this, mediaItem, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
            androidx.media3.common.c0.n(this, mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onMetadata(Metadata metadata) {
            androidx.media3.common.c0.o(this, metadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            androidx.media3.common.c0.q(this, playbackParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i10) {
            androidx.media3.common.c0.s(this, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlayerError(PlaybackException playbackException) {
            androidx.media3.common.c0.t(this, playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
            androidx.media3.common.c0.u(this, playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlayerStateChanged(boolean z6, int i10) {
            androidx.media3.common.c0.v(this, z6, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
            androidx.media3.common.c0.w(this, mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPositionDiscontinuity(int i10) {
            androidx.media3.common.c0.x(this, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onRepeatModeChanged(int i10) {
            androidx.media3.common.c0.A(this, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onSeekBackIncrementChanged(long j6) {
            androidx.media3.common.c0.B(this, j6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onSeekForwardIncrementChanged(long j6) {
            androidx.media3.common.c0.C(this, j6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z6) {
            androidx.media3.common.c0.D(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z6) {
            androidx.media3.common.c0.E(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onSurfaceSizeChanged(int i10, int i11) {
            androidx.media3.common.c0.F(this, i10, i11);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onTimelineChanged(Timeline timeline, int i10) {
            androidx.media3.common.c0.G(this, timeline, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
            androidx.media3.common.c0.H(this, trackSelectionParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onVolumeChanged(float f) {
            androidx.media3.common.c0.K(this, f);
        }

        public ComponentListener() {
        }

        @Override // androidx.media3.ui.PlayerControlView.OnFullScreenModeChangedListener
        public void j(boolean z6) {
            if (PlayerView.this.fullscreenButtonClickListener != null) {
                PlayerView.this.fullscreenButtonClickListener.a(z6);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PlayerView.this.H();
        }

        @Override // androidx.media3.common.Player.Listener
        public void onCues(CueGroup cueGroup) {
            if (PlayerView.this.subtitleView != null) {
                PlayerView.this.subtitleView.setCues(cueGroup.cues);
            }
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            PlayerView.q((TextureView) view, PlayerView.this.textureViewRotation);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlayWhenReadyChanged(boolean z6, int i10) {
            PlayerView.this.J();
            PlayerView.this.L();
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlaybackStateChanged(int i10) {
            PlayerView.this.J();
            PlayerView.this.M();
            PlayerView.this.L();
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i10) {
            if (PlayerView.this.y() && PlayerView.this.controllerHideDuringAds) {
                PlayerView.this.w();
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public void onRenderedFirstFrame() {
            if (PlayerView.this.shutterView != null) {
                PlayerView.this.shutterView.setVisibility(4);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public void onTracksChanged(Tracks tracks) {
            Player player = (Player) Assertions.e(PlayerView.this.player);
            Timeline currentTimeline = player.g(17) ? player.getCurrentTimeline() : Timeline.EMPTY;
            if (currentTimeline.u()) {
                this.lastPeriodUidWithTracks = null;
            } else if (!player.g(30) || player.e().c()) {
                Object obj = this.lastPeriodUidWithTracks;
                if (obj != null) {
                    int iF = currentTimeline.f(obj);
                    if (iF != -1) {
                        if (player.x() == currentTimeline.j(iF, this.period).windowIndex) {
                            return;
                        }
                    }
                    this.lastPeriodUidWithTracks = null;
                }
            } else {
                this.lastPeriodUidWithTracks = currentTimeline.k(player.getCurrentPeriodIndex(), this.period, true).uid;
            }
            PlayerView.this.N(false);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onVideoSizeChanged(VideoSize videoSize) {
            if (videoSize.equals(VideoSize.UNKNOWN) || PlayerView.this.player == null || PlayerView.this.player.getPlaybackState() == 1) {
                return;
            }
            PlayerView.this.I();
        }

        @Override // androidx.media3.ui.PlayerControlView.VisibilityListener
        public void onVisibilityChange(int i10) {
            PlayerView.this.K();
            if (PlayerView.this.controllerVisibilityListener != null) {
                PlayerView.this.controllerVisibilityListener.onVisibilityChanged(i10);
            }
        }
    }

    public interface ControllerVisibilityListener {
        void onVisibilityChanged(int i10);
    }

    public interface FullscreenButtonClickListener {
        void a(boolean z6);
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    @UnstableApi
    public @interface ShowBuffering {
    }

    public PlayerView(Context context) {
        this(context, null);
    }

    private boolean C(@Nullable Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                float width = intrinsicWidth / intrinsicHeight;
                ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                if (this.artworkDisplayMode == 2) {
                    width = getWidth() / getHeight();
                    scaleType = ImageView.ScaleType.CENTER_CROP;
                }
                A(this.contentFrame, width);
                this.artworkView.setScaleType(scaleType);
                this.artworkView.setImageDrawable(drawable);
                this.artworkView.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    private boolean x(int i10) {
        return i10 == 19 || i10 == 270 || i10 == 22 || i10 == 271 || i10 == 20 || i10 == 269 || i10 == 21 || i10 == 268 || i10 == 23;
    }

    @UnstableApi
    public int getArtworkDisplayMode() {
        return this.artworkDisplayMode;
    }

    @UnstableApi
    public boolean getControllerAutoShow() {
        return this.controllerAutoShow;
    }

    @UnstableApi
    public boolean getControllerHideOnTouch() {
        return this.controllerHideOnTouch;
    }

    @UnstableApi
    public int getControllerShowTimeoutMs() {
        return this.controllerShowTimeoutMs;
    }

    @Nullable
    @UnstableApi
    public Drawable getDefaultArtwork() {
        return this.defaultArtwork;
    }

    @Nullable
    @UnstableApi
    public FrameLayout getOverlayFrameLayout() {
        return this.overlayFrameLayout;
    }

    @Nullable
    public Player getPlayer() {
        return this.player;
    }

    @Nullable
    @UnstableApi
    public SubtitleView getSubtitleView() {
        return this.subtitleView;
    }

    @UnstableApi
    @Deprecated
    public boolean getUseArtwork() {
        return this.artworkDisplayMode != 0;
    }

    public boolean getUseController() {
        return this.useController;
    }

    @Nullable
    @UnstableApi
    public View getVideoSurfaceView() {
        return this.surfaceView;
    }

    @UnstableApi
    public void setArtworkDisplayMode(int i10) {
        Assertions.g(i10 == 0 || this.artworkView != null);
        if (this.artworkDisplayMode != i10) {
            this.artworkDisplayMode = i10;
            N(false);
        }
    }

    @UnstableApi
    public void setControllerAutoShow(boolean z6) {
        this.controllerAutoShow = z6;
    }

    @UnstableApi
    public void setControllerHideDuringAds(boolean z6) {
        this.controllerHideDuringAds = z6;
    }

    public void setControllerVisibilityListener(@Nullable ControllerVisibilityListener controllerVisibilityListener) {
        this.controllerVisibilityListener = controllerVisibilityListener;
        if (controllerVisibilityListener != null) {
            setControllerVisibilityListener((PlayerControlView.VisibilityListener) null);
        }
    }

    public void setUseController(boolean z6) {
        boolean z10 = true;
        Assertions.g((z6 && this.controller == null) ? false : true);
        if (!z6 && !hasOnClickListeners()) {
            z10 = false;
        }
        setClickable(z10);
        if (this.useController == z6) {
            return;
        }
        this.useController = z6;
        if (P()) {
            this.controller.setPlayer(this.player);
        } else {
            PlayerControlView playerControlView = this.controller;
            if (playerControlView != null) {
                playerControlView.X();
                this.controller.setPlayer(null);
            }
        }
        K();
    }

    public PlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private boolean B(Player player) {
        byte[] bArr;
        if (player.g(18) && (bArr = player.z().artworkData) != null) {
            return C(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
        }
        return false;
    }

    private boolean E() {
        Player player = this.player;
        if (player == null) {
            return true;
        }
        int playbackState = player.getPlaybackState();
        return this.controllerAutoShow && !(this.player.g(17) && this.player.getCurrentTimeline().u()) && (playbackState == 1 || playbackState == 4 || !((Player) Assertions.e(this.player)).getPlayWhenReady());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        Player player = this.player;
        VideoSize videoSizeV = player != null ? player.v() : VideoSize.UNKNOWN;
        int i10 = videoSizeV.width;
        int i11 = videoSizeV.height;
        int i12 = videoSizeV.unappliedRotationDegrees;
        float f = (i11 == 0 || i10 == 0) ? 0.0f : (i10 * videoSizeV.pixelWidthHeightRatio) / i11;
        View view = this.surfaceView;
        if (view instanceof TextureView) {
            if (f > 0.0f && (i12 == 90 || i12 == 270)) {
                f = 1.0f / f;
            }
            if (this.textureViewRotation != 0) {
                view.removeOnLayoutChangeListener(this.componentListener);
            }
            this.textureViewRotation = i12;
            if (i12 != 0) {
                this.surfaceView.addOnLayoutChangeListener(this.componentListener);
            }
            q((TextureView) this.surfaceView, this.textureViewRotation);
        }
        A(this.contentFrame, this.surfaceViewIgnoresVideoAspectRatio ? 0.0f : f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:14:0x0020  */
    public void J() {
        boolean z6;
        if (this.bufferingView != null) {
            Player player = this.player;
            if (player == null || player.getPlaybackState() != 2) {
                z6 = false;
            } else {
                int i10 = this.showBuffering;
                z6 = true;
                if (i10 != 2 && (i10 != 1 || !this.player.getPlayWhenReady())) {
                    z6 = false;
                }
            }
            this.bufferingView.setVisibility(z6 ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        PlayerControlView playerControlView = this.controller;
        if (playerControlView == null || !this.useController) {
            setContentDescription(null);
        } else if (playerControlView.b0()) {
            setContentDescription(this.controllerHideOnTouch ? getResources().getString(R.string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(R.string.exo_controls_show));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        ErrorMessageProvider<? super PlaybackException> errorMessageProvider;
        TextView textView = this.errorMessageView;
        if (textView != null) {
            CharSequence charSequence = this.customErrorMessage;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.errorMessageView.setVisibility(0);
                return;
            }
            Player player = this.player;
            PlaybackException playbackExceptionD = player != null ? player.d() : null;
            if (playbackExceptionD == null || (errorMessageProvider = this.errorMessageProvider) == null) {
                this.errorMessageView.setVisibility(8);
            } else {
                this.errorMessageView.setText((CharSequence) errorMessageProvider.getErrorMessage(playbackExceptionD).second);
                this.errorMessageView.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(boolean z6) {
        Player player = this.player;
        if (player == null || !player.g(30) || player.e().c()) {
            if (this.keepContentOnPlayerReset) {
                return;
            }
            v();
            r();
            return;
        }
        if (z6 && !this.keepContentOnPlayerReset) {
            r();
        }
        if (player.e().d(2)) {
            v();
            return;
        }
        r();
        if (O() && (B(player) || C(this.defaultArtwork))) {
            return;
        }
        v();
    }

    private boolean O() {
        if (this.artworkDisplayMode == 0) {
            return false;
        }
        Assertions.i(this.artworkView);
        return true;
    }

    private boolean P() {
        if (!this.useController) {
            return false;
        }
        Assertions.i(this.controller);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q(TextureView textureView, int i10) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width != 0.0f && height != 0.0f && i10 != 0) {
            float f = width / 2.0f;
            float f6 = height / 2.0f;
            matrix.postRotate(i10, f, f6);
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f, f6);
        }
        textureView.setTransform(matrix);
    }

    private void r() {
        View view = this.shutterView;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void s(Context context, Resources resources, ImageView imageView) {
        imageView.setImageDrawable(Util.W(context, resources, R.drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(R.color.exo_edit_mode_background_color));
    }

    @RequiresApi
    private static void t(Context context, Resources resources, ImageView imageView) {
        imageView.setImageDrawable(Util.W(context, resources, R.drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(R.color.exo_edit_mode_background_color, null));
    }

    private void v() {
        ImageView imageView = this.artworkView;
        if (imageView != null) {
            imageView.setImageResource(android.R.color.transparent);
            this.artworkView.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean y() {
        Player player = this.player;
        return player != null && player.g(16) && this.player.isPlayingAd() && this.player.getPlayWhenReady();
    }

    @UnstableApi
    protected void A(@Nullable AspectRatioFrameLayout aspectRatioFrameLayout, float f) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Player player = this.player;
        if (player != null && player.g(16) && this.player.isPlayingAd()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean zX = x(keyEvent.getKeyCode());
        if (zX && P() && !this.controller.b0()) {
            z(true);
            return true;
        }
        if (u(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
            z(true);
            return true;
        }
        if (zX && P()) {
            z(true);
        }
        return false;
    }

    public List<AdOverlayInfo> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.overlayFrameLayout;
        if (frameLayout != null) {
            arrayList.add(new AdOverlayInfo(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        PlayerControlView playerControlView = this.controller;
        if (playerControlView != null) {
            arrayList.add(new AdOverlayInfo(playerControlView, 1));
        }
        return com.google.common.collect.a0.t(arrayList);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) Assertions.j(this.adOverlayFrameLayout, "exo_ad_overlay must be present for ad playback");
    }

    @UnstableApi
    public int getResizeMode() {
        Assertions.i(this.contentFrame);
        return this.contentFrame.getResizeMode();
    }

    @UnstableApi
    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.AspectRatioListener aspectRatioListener) {
        Assertions.i(this.contentFrame);
        this.contentFrame.setAspectRatioListener(aspectRatioListener);
    }

    @UnstableApi
    public void setControllerHideOnTouch(boolean z6) {
        Assertions.i(this.controller);
        this.controllerHideOnTouch = z6;
        K();
    }

    @UnstableApi
    @Deprecated
    public void setControllerOnFullScreenModeChangedListener(@Nullable PlayerControlView.OnFullScreenModeChangedListener onFullScreenModeChangedListener) {
        Assertions.i(this.controller);
        this.fullscreenButtonClickListener = null;
        this.controller.setOnFullScreenModeChangedListener(onFullScreenModeChangedListener);
    }

    @UnstableApi
    public void setControllerShowTimeoutMs(int i10) {
        Assertions.i(this.controller);
        this.controllerShowTimeoutMs = i10;
        if (this.controller.b0()) {
            F();
        }
    }

    @UnstableApi
    @Deprecated
    public void setControllerVisibilityListener(@Nullable PlayerControlView.VisibilityListener visibilityListener) {
        Assertions.i(this.controller);
        PlayerControlView.VisibilityListener visibilityListener2 = this.legacyControllerVisibilityListener;
        if (visibilityListener2 == visibilityListener) {
            return;
        }
        if (visibilityListener2 != null) {
            this.controller.i0(visibilityListener2);
        }
        this.legacyControllerVisibilityListener = visibilityListener;
        if (visibilityListener != null) {
            this.controller.R(visibilityListener);
            setControllerVisibilityListener((ControllerVisibilityListener) null);
        }
    }

    @UnstableApi
    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        Assertions.g(this.errorMessageView != null);
        this.customErrorMessage = charSequence;
        M();
    }

    @UnstableApi
    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.defaultArtwork != drawable) {
            this.defaultArtwork = drawable;
            N(false);
        }
    }

    public void setErrorMessageProvider(@Nullable ErrorMessageProvider<? super PlaybackException> errorMessageProvider) {
        if (this.errorMessageProvider != errorMessageProvider) {
            this.errorMessageProvider = errorMessageProvider;
            M();
        }
    }

    public void setFullscreenButtonClickListener(@Nullable FullscreenButtonClickListener fullscreenButtonClickListener) {
        Assertions.i(this.controller);
        this.fullscreenButtonClickListener = fullscreenButtonClickListener;
        this.controller.setOnFullScreenModeChangedListener(this.componentListener);
    }

    @UnstableApi
    public void setKeepContentOnPlayerReset(boolean z6) {
        if (this.keepContentOnPlayerReset != z6) {
            this.keepContentOnPlayerReset = z6;
            N(false);
        }
    }

    @UnstableApi
    public void setRepeatToggleModes(int i10) {
        Assertions.i(this.controller);
        this.controller.setRepeatToggleModes(i10);
    }

    @UnstableApi
    public void setResizeMode(int i10) {
        Assertions.i(this.contentFrame);
        this.contentFrame.setResizeMode(i10);
    }

    @UnstableApi
    public void setShowBuffering(int i10) {
        if (this.showBuffering != i10) {
            this.showBuffering = i10;
            J();
        }
    }

    @UnstableApi
    public void setShowFastForwardButton(boolean z6) {
        Assertions.i(this.controller);
        this.controller.setShowFastForwardButton(z6);
    }

    @UnstableApi
    public void setShowMultiWindowTimeBar(boolean z6) {
        Assertions.i(this.controller);
        this.controller.setShowMultiWindowTimeBar(z6);
    }

    @UnstableApi
    public void setShowNextButton(boolean z6) {
        Assertions.i(this.controller);
        this.controller.setShowNextButton(z6);
    }

    @UnstableApi
    public void setShowPreviousButton(boolean z6) {
        Assertions.i(this.controller);
        this.controller.setShowPreviousButton(z6);
    }

    @UnstableApi
    public void setShowRewindButton(boolean z6) {
        Assertions.i(this.controller);
        this.controller.setShowRewindButton(z6);
    }

    @UnstableApi
    public void setShowShuffleButton(boolean z6) {
        Assertions.i(this.controller);
        this.controller.setShowShuffleButton(z6);
    }

    @UnstableApi
    public void setShowSubtitleButton(boolean z6) {
        Assertions.i(this.controller);
        this.controller.setShowSubtitleButton(z6);
    }

    @UnstableApi
    public void setShowVrButton(boolean z6) {
        Assertions.i(this.controller);
        this.controller.setShowVrButton(z6);
    }

    @UnstableApi
    public void setShutterBackgroundColor(@ColorInt int i10) {
        View view = this.shutterView;
        if (view != null) {
            view.setBackgroundColor(i10);
        }
    }

    @UnstableApi
    @Deprecated
    public void setUseArtwork(boolean z6) {
        setArtworkDisplayMode(!z6 ? 1 : 0);
    }

    @UnstableApi
    public void w() {
        PlayerControlView playerControlView = this.controller;
        if (playerControlView != null) {
            playerControlView.X();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PlayerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11;
        boolean z6;
        boolean z10;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z11;
        boolean z12;
        int i17;
        boolean z13;
        boolean z14;
        boolean z15;
        int i18;
        super(context, attributeSet, i10);
        ComponentListener componentListener = new ComponentListener();
        this.componentListener = componentListener;
        if (isInEditMode()) {
            this.contentFrame = null;
            this.shutterView = null;
            this.surfaceView = null;
            this.surfaceViewIgnoresVideoAspectRatio = false;
            this.artworkView = null;
            this.subtitleView = null;
            this.bufferingView = null;
            this.errorMessageView = null;
            this.controller = null;
            this.adOverlayFrameLayout = null;
            this.overlayFrameLayout = null;
            ImageView imageView = new ImageView(context);
            if (Util.SDK_INT >= 23) {
                t(context, getResources(), imageView);
            } else {
                s(context, getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i19 = R.layout.exo_player_view;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.PlayerView, i10, 0);
            try {
                int i20 = R.styleable.PlayerView_shutter_background_color;
                boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i20);
                int color = typedArrayObtainStyledAttributes.getColor(i20, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerView_player_layout_id, i19);
                boolean z16 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_use_artwork, true);
                int i21 = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerView_artwork_display_mode, 1);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerView_default_artwork, 0);
                boolean z17 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_use_controller, true);
                int i22 = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerView_surface_type, 1);
                int i23 = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerView_resize_mode, 0);
                int i24 = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerView_show_timeout, 5000);
                z10 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_hide_on_touch, true);
                boolean z18 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_auto_show, true);
                int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.PlayerView_show_buffering, 0);
                this.keepContentOnPlayerReset = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_keep_content_on_player_reset, this.keepContentOnPlayerReset);
                boolean z19 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_hide_during_ads, true);
                typedArrayObtainStyledAttributes.recycle();
                z6 = z18;
                i13 = integer;
                z14 = z19;
                i19 = resourceId;
                i11 = i24;
                i12 = i22;
                z13 = z17;
                i17 = i21;
                z11 = zHasValue;
                i15 = resourceId2;
                z12 = z16;
                i16 = color;
                i14 = i23;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i11 = 5000;
            z6 = true;
            z10 = true;
            i12 = 1;
            i13 = 0;
            i14 = 0;
            i15 = 0;
            i16 = 0;
            z11 = false;
            z12 = true;
            i17 = 1;
            z13 = true;
            z14 = true;
        }
        LayoutInflater.from(context).inflate(i19, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R.id.exo_content_frame);
        this.contentFrame = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            D(aspectRatioFrameLayout, i14);
        }
        View viewFindViewById = findViewById(R.id.exo_shutter);
        this.shutterView = viewFindViewById;
        if (viewFindViewById != null && z11) {
            viewFindViewById.setBackgroundColor(i16);
        }
        if (aspectRatioFrameLayout == null || i12 == 0) {
            this.surfaceView = null;
            z15 = false;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i12 == 2) {
                this.surfaceView = new TextureView(context);
            } else {
                if (i12 == 3) {
                    try {
                        int i25 = SphericalGLSurfaceView.f692a;
                        this.surfaceView = (View) SphericalGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                        z15 = true;
                    } catch (Exception e) {
                        throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e);
                    }
                } else if (i12 != 4) {
                    this.surfaceView = new SurfaceView(context);
                } else {
                    try {
                        int i26 = VideoDecoderGLSurfaceView.f665a;
                        this.surfaceView = (View) VideoDecoderGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                    } catch (Exception e2) {
                        throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e2);
                    }
                }
                this.surfaceView.setLayoutParams(layoutParams);
                this.surfaceView.setOnClickListener(componentListener);
                this.surfaceView.setClickable(false);
                aspectRatioFrameLayout.addView(this.surfaceView, 0);
            }
            z15 = false;
            this.surfaceView.setLayoutParams(layoutParams);
            this.surfaceView.setOnClickListener(componentListener);
            this.surfaceView.setClickable(false);
            aspectRatioFrameLayout.addView(this.surfaceView, 0);
        }
        this.surfaceViewIgnoresVideoAspectRatio = z15;
        this.adOverlayFrameLayout = (FrameLayout) findViewById(R.id.exo_ad_overlay);
        this.overlayFrameLayout = (FrameLayout) findViewById(R.id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(R.id.exo_artwork);
        this.artworkView = imageView2;
        this.artworkDisplayMode = (!z12 || i17 == 0 || imageView2 == null) ? 0 : i17;
        if (i15 != 0) {
            this.defaultArtwork = ContextCompat.getDrawable(getContext(), i15);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R.id.exo_subtitles);
        this.subtitleView = subtitleView;
        if (subtitleView != null) {
            subtitleView.d();
            subtitleView.e();
        }
        View viewFindViewById2 = findViewById(R.id.exo_buffering);
        this.bufferingView = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        this.showBuffering = i13;
        TextView textView = (TextView) findViewById(R.id.exo_error_message);
        this.errorMessageView = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        int i27 = R.id.exo_controller;
        PlayerControlView playerControlView = (PlayerControlView) findViewById(i27);
        View viewFindViewById3 = findViewById(R.id.exo_controller_placeholder);
        if (playerControlView != null) {
            this.controller = playerControlView;
            i18 = 0;
        } else if (viewFindViewById3 != null) {
            i18 = 0;
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.controller = playerControlView2;
            playerControlView2.setId(i27);
            playerControlView2.setLayoutParams(viewFindViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById3.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById3);
            viewGroup.removeView(viewFindViewById3);
            viewGroup.addView(playerControlView2, iIndexOfChild);
        } else {
            i18 = 0;
            this.controller = null;
        }
        PlayerControlView playerControlView3 = this.controller;
        this.controllerShowTimeoutMs = playerControlView3 != null ? i11 : i18;
        this.controllerHideOnTouch = z10;
        this.controllerAutoShow = z6;
        this.controllerHideDuringAds = z14;
        this.useController = (!z13 || playerControlView3 == null) ? i18 : 1;
        if (playerControlView3 != null) {
            playerControlView3.Y();
            this.controller.R(componentListener);
        }
        if (z13) {
            setClickable(true);
        }
        K();
    }

    private static void D(AspectRatioFrameLayout aspectRatioFrameLayout, int i10) {
        aspectRatioFrameLayout.setResizeMode(i10);
    }

    private void G(boolean z6) {
        int i10;
        if (!P()) {
            return;
        }
        PlayerControlView playerControlView = this.controller;
        if (z6) {
            i10 = 0;
        } else {
            i10 = this.controllerShowTimeoutMs;
        }
        playerControlView.setShowTimeoutMs(i10);
        this.controller.m0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        if (P() && this.player != null) {
            if (!this.controller.b0()) {
                z(true);
            } else if (this.controllerHideOnTouch) {
                this.controller.X();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        if (y() && this.controllerHideDuringAds) {
            w();
        } else {
            z(false);
        }
    }

    private void z(boolean z6) {
        boolean z10;
        if ((!y() || !this.controllerHideDuringAds) && P()) {
            if (this.controller.b0() && this.controller.getShowTimeoutMs() <= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            boolean zE = E();
            if (z6 || z10 || zE) {
                G(zE);
            }
        }
    }

    @UnstableApi
    public void F() {
        G(E());
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (P() && this.player != null) {
            z(true);
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public boolean performClick() {
        H();
        return super.performClick();
    }

    public void setPlayer(@Nullable Player player) {
        boolean z6;
        boolean z10;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.g(z6);
        if (player != null && player.s() != Looper.getMainLooper()) {
            z10 = false;
        } else {
            z10 = true;
        }
        Assertions.a(z10);
        Player player2 = this.player;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.K(this.componentListener);
            if (player2.g(27)) {
                View view = this.surfaceView;
                if (view instanceof TextureView) {
                    player2.clearVideoTextureView((TextureView) view);
                } else if (view instanceof SurfaceView) {
                    player2.clearVideoSurfaceView((SurfaceView) view);
                }
            }
        }
        SubtitleView subtitleView = this.subtitleView;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.player = player;
        if (P()) {
            this.controller.setPlayer(player);
        }
        J();
        M();
        N(true);
        if (player != null) {
            if (player.g(27)) {
                View view2 = this.surfaceView;
                if (view2 instanceof TextureView) {
                    player.setVideoTextureView((TextureView) view2);
                } else if (view2 instanceof SurfaceView) {
                    player.setVideoSurfaceView((SurfaceView) view2);
                }
                if (!player.g(30) || player.e().e(2)) {
                    I();
                }
            }
            if (this.subtitleView != null && player.g(28)) {
                this.subtitleView.setCues(player.p().cues);
            }
            player.L(this.componentListener);
            z(false);
            return;
        }
        w();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        View view = this.surfaceView;
        if (view instanceof SurfaceView) {
            view.setVisibility(i10);
        }
    }

    @UnstableApi
    public boolean u(KeyEvent keyEvent) {
        if (P() && this.controller.T(keyEvent)) {
            return true;
        }
        return false;
    }
}
