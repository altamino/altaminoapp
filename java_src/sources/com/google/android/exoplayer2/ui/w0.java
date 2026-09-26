package com.google.android.exoplayer2.ui;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.opengl.GLSurfaceView;
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
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.e4;
import com.google.android.exoplayer2.f3;
import com.google.android.exoplayer2.i2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.z2;
import com.google.android.exoplayer2.z3;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class w0 extends FrameLayout implements com.google.android.exoplayer2.ui.b {
    public static final int SHOW_BUFFERING_ALWAYS = 2;
    public static final int SHOW_BUFFERING_NEVER = 0;
    public static final int SHOW_BUFFERING_WHEN_PLAYING = 1;
    private static final int SURFACE_TYPE_NONE = 0;
    private static final int SURFACE_TYPE_SPHERICAL_GL_SURFACE_VIEW = 3;
    private static final int SURFACE_TYPE_SURFACE_VIEW = 1;
    private static final int SURFACE_TYPE_TEXTURE_VIEW = 2;
    private static final int SURFACE_TYPE_VIDEO_DECODER_GL_SURFACE_VIEW = 4;

    @Nullable
    private final FrameLayout adOverlayFrameLayout;

    @Nullable
    private final ImageView artworkView;

    @Nullable
    private final View bufferingView;
    private final a componentListener;

    @Nullable
    private final AspectRatioFrameLayout contentFrame;

    @Nullable
    private final c0 controller;
    private boolean controllerAutoShow;
    private boolean controllerHideDuringAds;
    private boolean controllerHideOnTouch;
    private int controllerShowTimeoutMs;

    @Nullable
    private b controllerVisibilityListener;

    @Nullable
    private CharSequence customErrorMessage;

    @Nullable
    private Drawable defaultArtwork;

    @Nullable
    private com.google.android.exoplayer2.util.k<? super z2> errorMessageProvider;

    @Nullable
    private final TextView errorMessageView;

    @Nullable
    private c fullscreenButtonClickListener;
    private boolean isTouching;
    private boolean keepContentOnPlayerReset;

    @Nullable
    private c0.m legacyControllerVisibilityListener;

    @Nullable
    private final FrameLayout overlayFrameLayout;

    @Nullable
    private d3 player;
    private int showBuffering;

    @Nullable
    private final View shutterView;

    @Nullable
    private final SubtitleView subtitleView;

    @Nullable
    private final View surfaceView;
    private final boolean surfaceViewIgnoresVideoAspectRatio;
    private int textureViewRotation;
    private boolean useArtwork;
    private boolean useController;

    private final class a implements d3.d, View.OnLayoutChangeListener, View.OnClickListener, c0.m, c0.d {

        @Nullable
        private Object lastPeriodUidWithTracks;
        private final z3.b period = new z3.b();

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void B(n2 n2Var) {
            f3.k(this, n2Var);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void E(z2 z2Var) {
            f3.r(this, z2Var);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void F(z2 z2Var) {
            f3.q(this, z2Var);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void H(d3.b bVar) {
            f3.a(this, bVar);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void J(com.google.android.exoplayer2.o oVar) {
            f3.d(this, oVar);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void M(com.google.android.exoplayer2.trackselection.z zVar) {
            f3.C(this, zVar);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void P(d3 d3Var, d3.c cVar) {
            f3.f(this, d3Var, cVar);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void R(i2 i2Var, int i10) {
            f3.j(this, i2Var, i10);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void n(Metadata metadata) {
            f3.l(this, metadata);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void o(c3 c3Var) {
            f3.n(this, c3Var);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onCues(List list) {
            f3.c(this, list);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onDeviceVolumeChanged(int i10, boolean z6) {
            f3.e(this, i10, z6);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onIsLoadingChanged(boolean z6) {
            f3.g(this, z6);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onIsPlayingChanged(boolean z6) {
            f3.h(this, z6);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onLoadingChanged(boolean z6) {
            f3.i(this, z6);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i10) {
            f3.p(this, i10);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onPlayerStateChanged(boolean z6, int i10) {
            f3.s(this, z6, i10);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onPositionDiscontinuity(int i10) {
            f3.t(this, i10);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onRepeatModeChanged(int i10) {
            f3.w(this, i10);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onSeekProcessed() {
            f3.x(this);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z6) {
            f3.y(this, z6);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z6) {
            f3.z(this, z6);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onSurfaceSizeChanged(int i10, int i11) {
            f3.A(this, i10, i11);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onVolumeChanged(float f) {
            f3.F(this, f);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void z(z3 z3Var, int i10) {
            f3.B(this, z3Var, i10);
        }

        public a() {
        }

        @Override // com.google.android.exoplayer2.d3.d
        public void N(e4 e4Var) {
            d3 d3Var = (d3) com.google.android.exoplayer2.util.a.e(w0.this.player);
            z3 currentTimeline = d3Var.getCurrentTimeline();
            if (currentTimeline.u()) {
                this.lastPeriodUidWithTracks = null;
            } else if (d3Var.e().c()) {
                Object obj = this.lastPeriodUidWithTracks;
                if (obj != null) {
                    int iF = currentTimeline.f(obj);
                    if (iF != -1) {
                        if (d3Var.x() == currentTimeline.j(iF, this.period).windowIndex) {
                            return;
                        }
                    }
                    this.lastPeriodUidWithTracks = null;
                }
            } else {
                this.lastPeriodUidWithTracks = currentTimeline.k(d3Var.getCurrentPeriodIndex(), this.period, true).uid;
            }
            w0.this.P(false);
        }

        @Override // com.google.android.exoplayer2.ui.c0.d
        public void j(boolean z6) {
            w0.h(w0.this);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public void k(com.google.android.exoplayer2.video.a0 a0Var) {
            w0.this.K();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w0.this.J();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            w0.q((TextureView) view, w0.this.textureViewRotation);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public void onPlayWhenReadyChanged(boolean z6, int i10) {
            w0.this.L();
            w0.this.N();
        }

        @Override // com.google.android.exoplayer2.d3.d
        public void onPlaybackStateChanged(int i10) {
            w0.this.L();
            w0.this.O();
            w0.this.N();
        }

        @Override // com.google.android.exoplayer2.d3.d
        public void onRenderedFirstFrame() {
            if (w0.this.shutterView != null) {
                w0.this.shutterView.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.ui.c0.m
        public void onVisibilityChange(int i10) {
            w0.this.M();
            if (w0.this.controllerVisibilityListener != null) {
                w0.this.controllerVisibilityListener.onVisibilityChanged(i10);
            }
        }

        @Override // com.google.android.exoplayer2.d3.d
        public void x(com.google.android.exoplayer2.text.f fVar) {
            if (w0.this.subtitleView != null) {
                w0.this.subtitleView.setCues(fVar.cues);
            }
        }

        @Override // com.google.android.exoplayer2.d3.d
        public void y(d3.e eVar, d3.e eVar2, int i10) {
            if (w0.this.y() && w0.this.controllerHideDuringAds) {
                w0.this.w();
            }
        }
    }

    public interface b {
        void onVisibilityChanged(int i10);
    }

    public interface c {
    }

    public w0(Context context) {
        this(context, null);
    }

    private boolean E(@Nullable Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                A(this.contentFrame, intrinsicWidth / intrinsicHeight);
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

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.google.android.exoplayer", this, me);
        return super.dispatchTouchEvent(me);
    }

    public boolean getControllerAutoShow() {
        return this.controllerAutoShow;
    }

    public boolean getControllerHideOnTouch() {
        return this.controllerHideOnTouch;
    }

    public int getControllerShowTimeoutMs() {
        return this.controllerShowTimeoutMs;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.defaultArtwork;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.overlayFrameLayout;
    }

    @Nullable
    public d3 getPlayer() {
        return this.player;
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.subtitleView;
    }

    public boolean getUseArtwork() {
        return this.useArtwork;
    }

    public boolean getUseController() {
        return this.useController;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.surfaceView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (1 == 0) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    public void setControllerAutoShow(boolean z6) {
        this.controllerAutoShow = z6;
    }

    public void setControllerHideDuringAds(boolean z6) {
        this.controllerHideDuringAds = z6;
    }

    public void setControllerVisibilityListener(@Nullable b bVar) {
        setControllerVisibilityListener((c0.m) null);
    }

    public void setUseArtwork(boolean z6) {
        com.google.android.exoplayer2.util.a.g((z6 && this.artworkView == null) ? false : true);
        if (this.useArtwork != z6) {
            this.useArtwork = z6;
            P(false);
        }
    }

    public void setUseController(boolean z6) {
        boolean z10 = true;
        com.google.android.exoplayer2.util.a.g((z6 && this.controller == null) ? false : true);
        if (!z6 && !hasOnClickListeners()) {
            z10 = false;
        }
        setClickable(z10);
        if (this.useController == z6) {
            return;
        }
        this.useController = z6;
        if (R()) {
            this.controller.setPlayer(this.player);
        } else {
            c0 c0Var = this.controller;
            if (c0Var != null) {
                c0Var.b0();
                this.controller.setPlayer(null);
            }
        }
        M();
    }

    public w0(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private boolean D(n2 n2Var) {
        byte[] bArr = n2Var.artworkData;
        if (bArr == null) {
            return false;
        }
        return E(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
    }

    private boolean G() {
        d3 d3Var = this.player;
        if (d3Var == null) {
            return true;
        }
        int playbackState = d3Var.getPlaybackState();
        return this.controllerAutoShow && !this.player.getCurrentTimeline().u() && (playbackState == 1 || playbackState == 4 || !((d3) com.google.android.exoplayer2.util.a.e(this.player)).getPlayWhenReady());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        d3 d3Var = this.player;
        com.google.android.exoplayer2.video.a0 a0VarV = d3Var != null ? d3Var.v() : com.google.android.exoplayer2.video.a0.UNKNOWN;
        int i10 = a0VarV.width;
        int i11 = a0VarV.height;
        int i12 = a0VarV.unappliedRotationDegrees;
        float f = (i11 == 0 || i10 == 0) ? 0.0f : (i10 * a0VarV.pixelWidthHeightRatio) / i11;
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
    public void L() {
        boolean z6;
        if (this.bufferingView != null) {
            d3 d3Var = this.player;
            if (d3Var == null || d3Var.getPlaybackState() != 2) {
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
    public void M() {
        c0 c0Var = this.controller;
        if (c0Var == null || !this.useController) {
            setContentDescription(null);
        } else if (c0Var.f0()) {
            setContentDescription(this.controllerHideOnTouch ? getResources().getString(t.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(t.exo_controls_show));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        TextView textView = this.errorMessageView;
        if (textView != null) {
            CharSequence charSequence = this.customErrorMessage;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.errorMessageView.setVisibility(0);
            } else {
                d3 d3Var = this.player;
                if (d3Var != null) {
                    d3Var.d();
                }
                this.errorMessageView.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P(boolean z6) {
        d3 d3Var = this.player;
        if (d3Var == null || d3Var.e().c()) {
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
        if (d3Var.e().d(2)) {
            v();
            return;
        }
        r();
        if (Q() && (D(d3Var.z()) || E(this.defaultArtwork))) {
            return;
        }
        v();
    }

    private boolean Q() {
        if (!this.useArtwork) {
            return false;
        }
        com.google.android.exoplayer2.util.a.i(this.artworkView);
        return true;
    }

    private boolean R() {
        if (!this.useController) {
            return false;
        }
        com.google.android.exoplayer2.util.a.i(this.controller);
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

    private static void s(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(n.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(l.exo_edit_mode_background_color));
    }

    @RequiresApi
    private static void t(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(n.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(l.exo_edit_mode_background_color, null));
    }

    private void v() {
        ImageView imageView = this.artworkView;
        if (imageView != null) {
            imageView.setImageResource(R.color.transparent);
            this.artworkView.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean y() {
        d3 d3Var = this.player;
        return d3Var != null && d3Var.isPlayingAd() && this.player.getPlayWhenReady();
    }

    protected void A(@Nullable AspectRatioFrameLayout aspectRatioFrameLayout, float f) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f);
        }
    }

    public void B() {
        View view = this.surfaceView;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onPause();
        }
    }

    public void C() {
        View view = this.surfaceView;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onResume();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        d3 d3Var = this.player;
        if (d3Var != null && d3Var.isPlayingAd()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean zX = x(keyEvent.getKeyCode());
        if (zX && R() && !this.controller.f0()) {
            z(true);
            return true;
        }
        if (u(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
            z(true);
            return true;
        }
        if (zX && R()) {
            z(true);
        }
        return false;
    }

    public List<com.google.android.exoplayer2.ui.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.overlayFrameLayout;
        if (frameLayout != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        c0 c0Var = this.controller;
        if (c0Var != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(c0Var, 1));
        }
        return com.google.common.collect.a0.t(arrayList);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) com.google.android.exoplayer2.util.a.j(this.adOverlayFrameLayout, "exo_ad_overlay must be present for ad playback");
    }

    public int getResizeMode() {
        com.google.android.exoplayer2.util.a.i(this.contentFrame);
        return this.contentFrame.getResizeMode();
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.b bVar) {
        com.google.android.exoplayer2.util.a.i(this.contentFrame);
        this.contentFrame.setAspectRatioListener(bVar);
    }

    public void setControllerHideOnTouch(boolean z6) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        this.controllerHideOnTouch = z6;
        M();
    }

    @Deprecated
    public void setControllerOnFullScreenModeChangedListener(@Nullable c0.d dVar) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        this.controller.setOnFullScreenModeChangedListener(dVar);
    }

    public void setControllerShowTimeoutMs(int i10) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        this.controllerShowTimeoutMs = i10;
        if (this.controller.f0()) {
            H();
        }
    }

    @Deprecated
    public void setControllerVisibilityListener(@Nullable c0.m mVar) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        c0.m mVar2 = this.legacyControllerVisibilityListener;
        if (mVar2 == mVar) {
            return;
        }
        if (mVar2 != null) {
            this.controller.m0(mVar2);
        }
        this.legacyControllerVisibilityListener = mVar;
        if (mVar != null) {
            this.controller.S(mVar);
        }
        setControllerVisibilityListener((b) null);
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        com.google.android.exoplayer2.util.a.g(this.errorMessageView != null);
        this.customErrorMessage = charSequence;
        O();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.defaultArtwork != drawable) {
            this.defaultArtwork = drawable;
            P(false);
        }
    }

    public void setErrorMessageProvider(@Nullable com.google.android.exoplayer2.util.k<? super z2> kVar) {
        if (kVar != null) {
            O();
        }
    }

    public void setFullscreenButtonClickListener(@Nullable c cVar) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        this.controller.setOnFullScreenModeChangedListener(this.componentListener);
    }

    public void setKeepContentOnPlayerReset(boolean z6) {
        if (this.keepContentOnPlayerReset != z6) {
            this.keepContentOnPlayerReset = z6;
            P(false);
        }
    }

    public void setRepeatToggleModes(int i10) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        this.controller.setRepeatToggleModes(i10);
    }

    public void setResizeMode(int i10) {
        com.google.android.exoplayer2.util.a.i(this.contentFrame);
        this.contentFrame.setResizeMode(i10);
    }

    public void setShowBuffering(int i10) {
        if (this.showBuffering != i10) {
            this.showBuffering = i10;
            L();
        }
    }

    public void setShowFastForwardButton(boolean z6) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        this.controller.setShowFastForwardButton(z6);
    }

    public void setShowMultiWindowTimeBar(boolean z6) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        this.controller.setShowMultiWindowTimeBar(z6);
    }

    public void setShowNextButton(boolean z6) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        this.controller.setShowNextButton(z6);
    }

    public void setShowPreviousButton(boolean z6) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        this.controller.setShowPreviousButton(z6);
    }

    public void setShowRewindButton(boolean z6) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        this.controller.setShowRewindButton(z6);
    }

    public void setShowShuffleButton(boolean z6) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        this.controller.setShowShuffleButton(z6);
    }

    public void setShowSubtitleButton(boolean z6) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        this.controller.setShowSubtitleButton(z6);
    }

    public void setShowVrButton(boolean z6) {
        com.google.android.exoplayer2.util.a.i(this.controller);
        this.controller.setShowVrButton(z6);
    }

    public void setShutterBackgroundColor(@ColorInt int i10) {
        View view = this.shutterView;
        if (view != null) {
            view.setBackgroundColor(i10);
        }
    }

    public void w() {
        c0 c0Var = this.controller;
        if (c0Var != null) {
            c0Var.b0();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public w0(Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11;
        boolean z6;
        int i12;
        int integer;
        boolean z10;
        boolean z11;
        int i13;
        int i14;
        boolean z12;
        boolean z13;
        int i15;
        boolean z14;
        boolean z15;
        int i16;
        boolean z16;
        super(context, attributeSet, i10);
        a aVar = new a();
        this.componentListener = aVar;
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
            if (com.google.android.exoplayer2.util.o0.SDK_INT >= 23) {
                t(getResources(), imageView);
            } else {
                s(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i17 = r.exo_styled_player_view;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, v.StyledPlayerView, i10, 0);
            try {
                int i18 = v.StyledPlayerView_shutter_background_color;
                boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i18);
                int color = typedArrayObtainStyledAttributes.getColor(i18, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(v.StyledPlayerView_player_layout_id, i17);
                boolean z17 = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerView_use_artwork, true);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(v.StyledPlayerView_default_artwork, 0);
                boolean z18 = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerView_use_controller, true);
                int i19 = typedArrayObtainStyledAttributes.getInt(v.StyledPlayerView_surface_type, 1);
                int i20 = typedArrayObtainStyledAttributes.getInt(v.StyledPlayerView_resize_mode, 0);
                int i21 = typedArrayObtainStyledAttributes.getInt(v.StyledPlayerView_show_timeout, 5000);
                boolean z19 = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerView_hide_on_touch, true);
                boolean z20 = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerView_auto_show, true);
                integer = typedArrayObtainStyledAttributes.getInteger(v.StyledPlayerView_show_buffering, 0);
                this.keepContentOnPlayerReset = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerView_keep_content_on_player_reset, this.keepContentOnPlayerReset);
                boolean z21 = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerView_hide_during_ads, true);
                typedArrayObtainStyledAttributes.recycle();
                z11 = z19;
                z6 = z20;
                i12 = i20;
                z14 = z18;
                i15 = resourceId2;
                z13 = z17;
                z12 = zHasValue;
                i14 = color;
                i13 = i19;
                i17 = resourceId;
                i11 = i21;
                z10 = z21;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i11 = 5000;
            z6 = true;
            i12 = 0;
            integer = 0;
            z10 = true;
            z11 = true;
            i13 = 1;
            i14 = 0;
            z12 = false;
            z13 = true;
            i15 = 0;
            z14 = true;
        }
        LayoutInflater.from(context).inflate(i17, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(p.exo_content_frame);
        this.contentFrame = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            F(aspectRatioFrameLayout, i12);
        }
        View viewFindViewById = findViewById(p.exo_shutter);
        this.shutterView = viewFindViewById;
        if (viewFindViewById != null && z12) {
            viewFindViewById.setBackgroundColor(i14);
        }
        if (aspectRatioFrameLayout == null || i13 == 0) {
            this.surfaceView = null;
            z15 = false;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i13 == 2) {
                this.surfaceView = new TextureView(context);
            } else {
                if (i13 == 3) {
                    try {
                        int i22 = com.google.android.exoplayer2.video.spherical.l.f1370a;
                        this.surfaceView = (View) com.google.android.exoplayer2.video.spherical.l.class.getConstructor(Context.class).newInstance(context);
                        z16 = true;
                    } catch (Exception e) {
                        throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e);
                    }
                } else if (i13 != 4) {
                    this.surfaceView = new SurfaceView(context);
                } else {
                    try {
                        int i23 = com.google.android.exoplayer2.video.i.f1353a;
                        this.surfaceView = (View) com.google.android.exoplayer2.video.i.class.getConstructor(Context.class).newInstance(context);
                    } catch (Exception e2) {
                        throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e2);
                    }
                }
                this.surfaceView.setLayoutParams(layoutParams);
                this.surfaceView.setOnClickListener(aVar);
                this.surfaceView.setClickable(false);
                aspectRatioFrameLayout.addView(this.surfaceView, 0);
                z15 = z16;
            }
            z16 = false;
            this.surfaceView.setLayoutParams(layoutParams);
            this.surfaceView.setOnClickListener(aVar);
            this.surfaceView.setClickable(false);
            aspectRatioFrameLayout.addView(this.surfaceView, 0);
            z15 = z16;
        }
        this.surfaceViewIgnoresVideoAspectRatio = z15;
        this.adOverlayFrameLayout = (FrameLayout) findViewById(p.exo_ad_overlay);
        this.overlayFrameLayout = (FrameLayout) findViewById(p.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(p.exo_artwork);
        this.artworkView = imageView2;
        this.useArtwork = z13 && imageView2 != null;
        if (i15 != 0) {
            this.defaultArtwork = ContextCompat.getDrawable(getContext(), i15);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(p.exo_subtitles);
        this.subtitleView = subtitleView;
        if (subtitleView != null) {
            subtitleView.d();
            subtitleView.e();
        }
        View viewFindViewById2 = findViewById(p.exo_buffering);
        this.bufferingView = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        this.showBuffering = integer;
        TextView textView = (TextView) findViewById(p.exo_error_message);
        this.errorMessageView = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        int i24 = p.exo_controller;
        c0 c0Var = (c0) findViewById(i24);
        View viewFindViewById3 = findViewById(p.exo_controller_placeholder);
        if (c0Var != null) {
            this.controller = c0Var;
            i16 = 0;
        } else if (viewFindViewById3 != null) {
            i16 = 0;
            c0 c0Var2 = new c0(context, null, 0, attributeSet);
            this.controller = c0Var2;
            c0Var2.setId(i24);
            c0Var2.setLayoutParams(viewFindViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById3.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById3);
            viewGroup.removeView(viewFindViewById3);
            viewGroup.addView(c0Var2, iIndexOfChild);
        } else {
            i16 = 0;
            this.controller = null;
        }
        c0 c0Var3 = this.controller;
        this.controllerShowTimeoutMs = c0Var3 != null ? i11 : i16;
        this.controllerHideOnTouch = z11;
        this.controllerAutoShow = z6;
        this.controllerHideDuringAds = z10;
        this.useController = (!z14 || c0Var3 == null) ? i16 : 1;
        if (c0Var3 != null) {
            c0Var3.c0();
            this.controller.S(aVar);
        }
        if (z14) {
            setClickable(true);
        }
        M();
    }

    private static void F(AspectRatioFrameLayout aspectRatioFrameLayout, int i10) {
        aspectRatioFrameLayout.setResizeMode(i10);
    }

    private void I(boolean z6) {
        int i10;
        if (!R()) {
            return;
        }
        c0 c0Var = this.controller;
        if (z6) {
            i10 = 0;
        } else {
            i10 = this.controllerShowTimeoutMs;
        }
        c0Var.setShowTimeoutMs(i10);
        this.controller.r0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        if (R() && this.player != null) {
            if (!this.controller.f0()) {
                z(true);
            } else if (this.controllerHideOnTouch) {
                this.controller.b0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        if (y() && this.controllerHideDuringAds) {
            w();
        } else {
            z(false);
        }
    }

    static /* synthetic */ c h(w0 w0Var) {
        w0Var.getClass();
        return null;
    }

    private void z(boolean z6) {
        boolean z10;
        if ((!y() || !this.controllerHideDuringAds) && R()) {
            if (this.controller.f0() && this.controller.getShowTimeoutMs() <= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            boolean zG = G();
            if (z6 || z10 || zG) {
                I(zG);
            }
        }
    }

    public void H() {
        I(G());
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (R() && this.player != null) {
            z(true);
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public boolean performClick() {
        J();
        return super.performClick();
    }

    public void setPlayer(@Nullable d3 d3Var) {
        boolean z6;
        boolean z10;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.g(z6);
        if (d3Var != null && d3Var.s() != Looper.getMainLooper()) {
            z10 = false;
        } else {
            z10 = true;
        }
        com.google.android.exoplayer2.util.a.a(z10);
        d3 d3Var2 = this.player;
        if (d3Var2 == d3Var) {
            return;
        }
        if (d3Var2 != null) {
            d3Var2.B(this.componentListener);
            View view = this.surfaceView;
            if (view instanceof TextureView) {
                d3Var2.clearVideoTextureView((TextureView) view);
            } else if (view instanceof SurfaceView) {
                d3Var2.clearVideoSurfaceView((SurfaceView) view);
            }
        }
        SubtitleView subtitleView = this.subtitleView;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.player = d3Var;
        if (R()) {
            this.controller.setPlayer(d3Var);
        }
        L();
        O();
        P(true);
        if (d3Var != null) {
            if (d3Var.g(27)) {
                View view2 = this.surfaceView;
                if (view2 instanceof TextureView) {
                    d3Var.setVideoTextureView((TextureView) view2);
                } else if (view2 instanceof SurfaceView) {
                    d3Var.setVideoSurfaceView((SurfaceView) view2);
                }
                K();
            }
            if (this.subtitleView != null && d3Var.g(28)) {
                this.subtitleView.setCues(d3Var.p().cues);
            }
            d3Var.F(this.componentListener);
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

    public boolean u(KeyEvent keyEvent) {
        if (R() && this.controller.U(keyEvent)) {
            return true;
        }
        return false;
    }
}
