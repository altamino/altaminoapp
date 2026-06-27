package com.narvii.editor.cropping.dynamic;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.editor.cropping.dynamic.SimpleEditorView;
import com.narvii.editor.cropping.dynamic.SimpleGLSurfaceView;
import com.narvii.editor.cropping.dynamic.Utils;
import com.narvii.editor.cropping.dynamic.offscreen.OffScreenActivityHandler;
import com.narvii.editor.cropping.dynamic.offscreen.OffScreenFlag;
import com.narvii.editor.cropping.dynamic.offscreen.OffScreenRenderThread;
import com.narvii.editor.cropping.dynamic.widget.TrimSeekBar;
import com.narvii.meisheeditor.R;
import com.narvii.model.Media;
import com.narvii.nvplayer.IVideoListener;
import com.narvii.nvplayer.NVMediaSource;
import com.narvii.nvplayer.NVVideoException;
import com.narvii.nvplayer.exoplayer.NVExoPlayer;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.widget.EasyButton;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* compiled from: DynamicCroppingActivity.kt */
/* loaded from: classes2.dex */
public final class DynamicCroppingActivity extends NVActivity implements View.OnClickListener, SurfaceHolder.Callback, IVideoListener, TrimSeekBar.OnSeekBarChangeListener, SimpleGLSurfaceView.IGLSurfaceDoFrame, SimpleEditorView.IEditorViewTouchListener {
    public static final Companion Companion = new Companion(null);
    private static final String DEST_PATH = "dest_path";
    private static final int DYNAMIC_CROPPING_REQUEST = 12345;
    private static final String FRAME_RATE = "frame_rate";
    private static final float RATIO = 0.5625f;
    private static final float RECORD_SURFACE_HEIGHT_RATIO = 0.15147783f;
    private static final String SOURCE_PATH = "source_path";
    private static final String TAG = "DynamicCroppingActivity";
    private static final String TRIM_END = "trim_end";
    private static final String TRIM_START = "trim_start";
    private HashMap _$_findViewCache;
    private EasyButton checkBtn;
    private EasyButton closeBtn;
    private String destPath;
    private SimpleEditorView editorView;
    private Handler handler;
    private boolean isPlaying;
    private ProgressDialog mProgressDialog;
    private OffScreenActivityHandler offscreenActivityHandler;
    private OffScreenRenderThread offscreenRenderThread;
    private Button playBtn;
    private NVExoPlayer player;
    private Surface playingSurface;
    private boolean playingSurfaceRendered;
    private SimpleGLSurfaceView playingSurfaceView;
    private SurfaceView recordSurfaceView;
    private FrameLayout recordView;
    private boolean recordedDataNeedToReset;
    private RenderRecordView renderRecordView;
    private TrimSeekBar seekBar;
    private int seekBeginProgress;
    private String sourcePath;
    private long time;
    private TextView timeView;
    private boolean timerStarted;
    private TextView totalTimeView;
    private int trimEnd;
    private int trimStart;
    private float[] videoEditorPosArray;
    private final Timer timer = new Timer();
    private boolean seekBarIsDragging = true;
    private int videoWidth = -1;
    private int videoHeight = -1;
    private boolean supportDynamicCropping = true;
    private int playerState = 1;
    private int videoFrameRate = -1;
    private int videoFrames = -1;
    private int maxFrame = -1;
    private float lastVideoEditorLeft = -10.0f;
    private float lastLeftRatio = -1.0f;

    @Override // com.narvii.app.theme.NVThemeActivity
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeActivity
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onCachedBytesRead(long j, long j2) {
        IVideoListener.CC.$default$onCachedBytesRead(this, j, j2);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onErrorDebug(NVVideoException nVVideoException) {
        IVideoListener.CC.$default$onErrorDebug(this, nVVideoException);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPlayerError(NVVideoException nVVideoException) {
        IVideoListener.CC.$default$onPlayerError(this, nVVideoException);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPositionDiscontinuity(int i) {
        IVideoListener.CC.$default$onPositionDiscontinuity(this, i);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPreloadStrategyChanged(String str) {
        IVideoListener.CC.$default$onPreloadStrategyChanged(this, str);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onRenderFirstFrameInterval(long j) {
        IVideoListener.CC.$default$onRenderFirstFrameInterval(this, j);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
        IVideoListener.CC.$default$onSurfaceSizeChanged(this, i, i2);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSizeChanged(int i, int i2) {
        IVideoListener.CC.$default$onVideoSizeChanged(this, i, i2);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSupportLowResVideo(boolean z) {
        IVideoListener.CC.$default$onVideoSupportLowResVideo(this, z);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ boolean shouldPauseForPageAboveVideo(int i) {
        return IVideoListener.CC.$default$shouldPauseForPageAboveVideo(this, i);
    }

    public static final /* synthetic */ SimpleEditorView access$getEditorView$p(DynamicCroppingActivity dynamicCroppingActivity) {
        SimpleEditorView simpleEditorView = dynamicCroppingActivity.editorView;
        if (simpleEditorView != null) {
            return simpleEditorView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("editorView");
        throw null;
    }

    public static final /* synthetic */ Handler access$getHandler$p(DynamicCroppingActivity dynamicCroppingActivity) {
        Handler handler = dynamicCroppingActivity.handler;
        if (handler != null) {
            return handler;
        }
        Intrinsics.throwUninitializedPropertyAccessException("handler");
        throw null;
    }

    public static final /* synthetic */ NVExoPlayer access$getPlayer$p(DynamicCroppingActivity dynamicCroppingActivity) {
        NVExoPlayer nVExoPlayer = dynamicCroppingActivity.player;
        if (nVExoPlayer != null) {
            return nVExoPlayer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("player");
        throw null;
    }

    /* compiled from: DynamicCroppingActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Intent intent(Context context, String sourcePath, String destPath, int i, int i2, int i3) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(sourcePath, "sourcePath");
            Intrinsics.checkParameterIsNotNull(destPath, "destPath");
            Intent intent = new Intent(context, (Class<?>) DynamicCroppingActivity.class);
            intent.putExtra(DynamicCroppingActivity.SOURCE_PATH, sourcePath);
            intent.putExtra(DynamicCroppingActivity.DEST_PATH, destPath);
            intent.putExtra(DynamicCroppingActivity.FRAME_RATE, i);
            intent.putExtra(DynamicCroppingActivity.TRIM_START, i2);
            intent.putExtra(DynamicCroppingActivity.TRIM_END, i3);
            return intent;
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setContentView(R.layout.activity_dynamic_cropping);
        View viewFindViewById = findViewById(R.id.close_btn);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.close_btn)");
        this.closeBtn = (EasyButton) viewFindViewById;
        EasyButton easyButton = this.closeBtn;
        if (easyButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("closeBtn");
            throw null;
        }
        easyButton.setOnClickListener(this);
        View viewFindViewById2 = findViewById(R.id.check_btn);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.check_btn)");
        this.checkBtn = (EasyButton) viewFindViewById2;
        EasyButton easyButton2 = this.checkBtn;
        if (easyButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("checkBtn");
            throw null;
        }
        easyButton2.setOnClickListener(this);
        View viewFindViewById3 = findViewById(R.id.play_surface);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.play_surface)");
        this.playingSurfaceView = (SimpleGLSurfaceView) viewFindViewById3;
        int screenHeight = Utils.Companion.getScreenHeight(this);
        View viewFindViewById4 = findViewById(R.id.record_surface);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.record_surface)");
        this.recordSurfaceView = (SurfaceView) viewFindViewById4;
        SurfaceView surfaceView = this.recordSurfaceView;
        if (surfaceView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recordSurfaceView");
            throw null;
        }
        surfaceView.getHolder().addCallback(this);
        NVExoPlayer nVExoPlayer = NVExoPlayer.getInstance(getApplicationContext());
        Intrinsics.checkExpressionValueIsNotNull(nVExoPlayer, "NVExoPlayer.getInstance(applicationContext)");
        this.player = nVExoPlayer;
        NVExoPlayer nVExoPlayer2 = this.player;
        if (nVExoPlayer2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        nVExoPlayer2.setVideoListener(this);
        preparePlayer();
        SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
        if (simpleGLSurfaceView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playingSurfaceView");
            throw null;
        }
        NVExoPlayer nVExoPlayer3 = this.player;
        if (nVExoPlayer3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        simpleGLSurfaceView.initViews(nVExoPlayer3, 0);
        SurfaceView surfaceView2 = this.recordSurfaceView;
        if (surfaceView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recordSurfaceView");
            throw null;
        }
        ViewGroup.LayoutParams layoutParams = surfaceView2.getLayoutParams();
        layoutParams.height = (int) (screenHeight * RECORD_SURFACE_HEIGHT_RATIO);
        layoutParams.width = (int) (layoutParams.height / RATIO);
        SurfaceView surfaceView3 = this.recordSurfaceView;
        if (surfaceView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recordSurfaceView");
            throw null;
        }
        surfaceView3.setLayoutParams(layoutParams);
        View viewFindViewById5 = findViewById(R.id.record_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.record_view)");
        this.recordView = (FrameLayout) viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.play_btn);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "findViewById(R.id.play_btn)");
        this.playBtn = (Button) viewFindViewById6;
        Button button = this.playBtn;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playBtn");
            throw null;
        }
        button.setOnClickListener(this);
        ((RelativeLayout) findViewById(R.id.top_view)).setBackgroundColor(Color.parseColor("#2A2A2A"));
        ((RelativeLayout) findViewById(R.id.bottom_view)).setBackgroundColor(Color.parseColor("#323335"));
        View viewFindViewById7 = findViewById(R.id.editor_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById7, "findViewById(R.id.editor_view)");
        this.editorView = (SimpleEditorView) viewFindViewById7;
        SimpleEditorView simpleEditorView = this.editorView;
        if (simpleEditorView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorView");
            throw null;
        }
        SimpleGLSurfaceView simpleGLSurfaceView2 = this.playingSurfaceView;
        if (simpleGLSurfaceView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playingSurfaceView");
            throw null;
        }
        simpleEditorView.setSimpleGlView(simpleGLSurfaceView2);
        SimpleEditorView simpleEditorView2 = this.editorView;
        if (simpleEditorView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorView");
            throw null;
        }
        simpleEditorView2.setEditorViewTouchListener(this);
        View viewFindViewById8 = findViewById(R.id.time_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById8, "findViewById(R.id.time_view)");
        this.timeView = (TextView) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.total_time_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById9, "findViewById(R.id.total_time_view)");
        this.totalTimeView = (TextView) viewFindViewById9;
        this.handler = new Handler(getMainLooper());
        View viewFindViewById10 = findViewById(R.id.seekbar);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById10, "findViewById(R.id.seekbar)");
        this.seekBar = (TrimSeekBar) viewFindViewById10;
        TrimSeekBar trimSeekBar = this.seekBar;
        if (trimSeekBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("seekBar");
            throw null;
        }
        trimSeekBar.setSeekBarChangeListener(this);
        View viewFindViewById11 = findViewById(R.id.render_record_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById11, "findViewById(R.id.render_record_view)");
        this.renderRecordView = (RenderRecordView) viewFindViewById11;
        if (Build.VERSION.SDK_INT < 23) {
            TrimSeekBar trimSeekBar2 = this.seekBar;
            if (trimSeekBar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("seekBar");
                throw null;
            }
            ViewGroup.LayoutParams layoutParams2 = trimSeekBar2.getLayoutParams();
            if (layoutParams2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            }
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) layoutParams2;
            layoutParams3.topMargin = 0;
            TrimSeekBar trimSeekBar3 = this.seekBar;
            if (trimSeekBar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("seekBar");
                throw null;
            }
            trimSeekBar3.setLayoutParams(layoutParams3);
        }
        this.mProgressDialog = new ProgressDialog(getContext());
        ProgressDialog progressDialog = this.mProgressDialog;
        if (progressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mProgressDialog");
            throw null;
        }
        progressDialog.setCancelable(true);
        ProgressDialog progressDialog2 = this.mProgressDialog;
        if (progressDialog2 != null) {
            progressDialog2.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.editor.cropping.dynamic.DynamicCroppingActivity.onCreate.1
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    OffScreenFlag.Companion.setStopRenderThread(!r2.getStopRenderThread());
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("mProgressDialog");
            throw null;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws IOException {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i = R.id.close_btn;
        if (numValueOf != null && numValueOf.intValue() == i) {
            Button button = this.playBtn;
            if (button == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playBtn");
                throw null;
            }
            if (button.isClickable()) {
                finish();
                return;
            }
            return;
        }
        int i2 = R.id.check_btn;
        if (numValueOf != null && numValueOf.intValue() == i2) {
            if (!this.supportDynamicCropping) {
                NVToast.makeText(getContext(), R.string.not_support_dynamic_cropping, 0).show();
                return;
            }
            if (this.isPlaying) {
                NVExoPlayer nVExoPlayer = this.player;
                if (nVExoPlayer == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("player");
                    throw null;
                }
                if (nVExoPlayer.getPlayerState() != 4) {
                    clickPlayBtn();
                }
            }
            initRenderThread();
            ProgressDialog progressDialog = this.mProgressDialog;
            if (progressDialog != null) {
                progressDialog.show();
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("mProgressDialog");
                throw null;
            }
        }
        int i3 = R.id.play_btn;
        if (numValueOf != null && numValueOf.intValue() == i3) {
            clickPlayBtn();
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
        if (simpleGLSurfaceView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playingSurfaceView");
            throw null;
        }
        simpleGLSurfaceView.setVideoSize(i, i2);
        if (i == this.videoWidth && i2 == this.videoHeight) {
            SimpleEditorView simpleEditorView = this.editorView;
            if (simpleEditorView != null) {
                simpleEditorView.setVideoEditorRect();
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("editorView");
                throw null;
            }
        }
        this.videoWidth = i;
        this.videoHeight = i2;
        float f2 = (i * 1.0f) / i2;
        if (f2 < 0.5725f) {
            NVToast.makeText(getContext(), R.string.not_support_dynamic_cropping, 0).show();
            this.supportDynamicCropping = false;
        }
        SurfaceView surfaceView = this.recordSurfaceView;
        if (surfaceView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recordSurfaceView");
            throw null;
        }
        final ViewGroup.LayoutParams layoutParams = surfaceView.getLayoutParams();
        SurfaceView surfaceView2 = this.recordSurfaceView;
        if (surfaceView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recordSurfaceView");
            throw null;
        }
        int height = surfaceView2.getHeight();
        int i4 = (int) (height * f2);
        Utils.Companion companion = Utils.Companion;
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        if (i4 > companion.getScreenWidth(context)) {
            Utils.Companion companion2 = Utils.Companion;
            Context context2 = getContext();
            Intrinsics.checkExpressionValueIsNotNull(context2, "context");
            layoutParams.width = companion2.getScreenWidth(context2) - 40;
            layoutParams.height = (int) (layoutParams.width / f2);
        } else {
            layoutParams.height = height;
            layoutParams.width = i4;
        }
        SurfaceView surfaceView3 = this.recordSurfaceView;
        if (surfaceView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recordSurfaceView");
            throw null;
        }
        surfaceView3.setLayoutParams(layoutParams);
        FrameLayout frameLayout = this.recordView;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recordView");
            throw null;
        }
        ViewGroup.LayoutParams layoutParams2 = frameLayout.getLayoutParams();
        layoutParams2.height = (int) (layoutParams.height * 1.16f);
        layoutParams2.width = Utils.Companion.getScreenWidth(this);
        FrameLayout frameLayout2 = this.recordView;
        if (frameLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recordView");
            throw null;
        }
        frameLayout2.setLayoutParams(layoutParams2);
        SimpleEditorView simpleEditorView2 = this.editorView;
        if (simpleEditorView2 != null) {
            simpleEditorView2.setSize(layoutParams.height, layoutParams.width, layoutParams2.height, layoutParams2.width);
            SimpleEditorView simpleEditorView3 = this.editorView;
            if (simpleEditorView3 != null) {
                simpleEditorView3.post(new Runnable() { // from class: com.narvii.editor.cropping.dynamic.DynamicCroppingActivity.onVideoSizeChanged.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DynamicCroppingActivity.this.lastLeftRatio = (DynamicCroppingActivity.access$getEditorView$p(r0).getVideoRect().left * 1.0f) / layoutParams.width;
                        DynamicCroppingActivity dynamicCroppingActivity = DynamicCroppingActivity.this;
                        dynamicCroppingActivity.lastVideoEditorLeft = DynamicCroppingActivity.access$getEditorView$p(dynamicCroppingActivity).getInnerRectF().left;
                        DynamicCroppingActivity.this.addCurrentFramePos(false, true);
                    }
                });
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("editorView");
                throw null;
            }
        }
        Intrinsics.throwUninitializedPropertyAccessException("editorView");
        throw null;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onRenderedFirstFrame() {
        Surface surface;
        if (!this.playingSurfaceRendered && (surface = this.playingSurface) != null) {
            SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
            if (simpleGLSurfaceView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playingSurfaceView");
                throw null;
            }
            simpleGLSurfaceView.renderAnotherSurface(surface);
            this.playingSurfaceRendered = true;
        }
        if (this.timerStarted) {
            return;
        }
        this.timerStarted = true;
        setTime(true);
        this.timer.scheduleAtFixedRate(new C10031(), 0L, 100L);
        float intParam = getIntParam(TRIM_START, 0) * 100.0f;
        if (this.player == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        this.trimStart = (int) (intParam / r5.getDuration());
        float intParam2 = getIntParam(TRIM_END, 0) * 100.0f;
        if (this.player == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        this.trimEnd = (int) (intParam2 / r4.getDuration());
        TrimSeekBar trimSeekBar = this.seekBar;
        if (trimSeekBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("seekBar");
            throw null;
        }
        trimSeekBar.setTrim(this.trimStart, this.trimEnd);
        if (this.trimStart > 0) {
            NVExoPlayer nVExoPlayer = this.player;
            if (nVExoPlayer == null) {
                Intrinsics.throwUninitializedPropertyAccessException("player");
                throw null;
            }
            nVExoPlayer.seekTo(getIntParam(TRIM_START, 0));
            TrimSeekBar trimSeekBar2 = this.seekBar;
            if (trimSeekBar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("seekBar");
                throw null;
            }
            trimSeekBar2.setProgress(this.trimStart);
            setTime(false);
        }
    }

    /* compiled from: DynamicCroppingActivity.kt */
    /* renamed from: com.narvii.editor.cropping.dynamic.DynamicCroppingActivity$onRenderedFirstFrame$1, reason: invalid class name and case insensitive filesystem */
    public static final class C10031 extends TimerTask {
        C10031() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            DynamicCroppingActivity.access$getHandler$p(DynamicCroppingActivity.this).post(new Runnable() { // from class: com.narvii.editor.cropping.dynamic.DynamicCroppingActivity$onRenderedFirstFrame$1$run$1
                @Override // java.lang.Runnable
                public final void run() {
                    if (!DynamicCroppingActivity.access$getPlayer$p(DynamicCroppingActivity.this).isPlaying() || DynamicCroppingActivity.access$getPlayer$p(DynamicCroppingActivity.this).getPlayerState() == 4) {
                        return;
                    }
                    DynamicCroppingActivity.this.setTime(false);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003b  */
    @Override // com.narvii.nvplayer.IVideoListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPlayerStateChanged(boolean r4, int r5) {
        /*
            r3 = this;
            r4 = 4
            if (r5 != r4) goto L57
            int r4 = r3.playerState
            if (r4 == r5) goto L57
            r4 = 0
            r3.setTime(r4)
            r3.isPlaying = r4
            android.widget.Button r0 = r3.playBtn
            r1 = 0
            if (r0 == 0) goto L51
            int r2 = com.narvii.meisheeditor.R.drawable.dynamic_cropping_play
            r0.setBackgroundResource(r2)
            com.narvii.editor.cropping.dynamic.SimpleEditorView r0 = r3.editorView
            java.lang.String r2 = "editorView"
            if (r0 == 0) goto L4d
            r0.setShowOuterRect(r4)
            com.narvii.editor.cropping.dynamic.RenderRecordView r4 = r3.renderRecordView
            java.lang.String r0 = "renderRecordView"
            if (r4 == 0) goto L49
            int r4 = r4.getMaxPoint()
            if (r4 > 0) goto L3b
            com.narvii.editor.cropping.dynamic.SimpleEditorView r4 = r3.editorView
            if (r4 == 0) goto L37
            boolean r4 = r4.getEditorViewMoved()
            if (r4 == 0) goto L57
            goto L3b
        L37:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            throw r1
        L3b:
            com.narvii.editor.cropping.dynamic.RenderRecordView r4 = r3.renderRecordView
            if (r4 == 0) goto L45
            r0 = 99
            r4.addPoint(r0)
            goto L57
        L45:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
            throw r1
        L49:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
            throw r1
        L4d:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            throw r1
        L51:
            java.lang.String r4 = "playBtn"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4)
            throw r1
        L57:
            r3.playerState = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.editor.cropping.dynamic.DynamicCroppingActivity.onPlayerStateChanged(boolean, int):void");
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
        if (simpleGLSurfaceView != null) {
            simpleGLSurfaceView.anotherSurfaceChanged(i2, i3);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("playingSurfaceView");
            throw null;
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
        if (simpleGLSurfaceView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playingSurfaceView");
            throw null;
        }
        simpleGLSurfaceView.stopRenderAnotherSurface();
        this.playingSurfaceRendered = false;
        this.playingSurface = null;
        SimpleGLSurfaceView simpleGLSurfaceView2 = this.playingSurfaceView;
        if (simpleGLSurfaceView2 != null) {
            simpleGLSurfaceView2.setGlSurfaceDoFrameListener(null);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("playingSurfaceView");
            throw null;
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.playingSurface = surfaceHolder != null ? surfaceHolder.getSurface() : null;
        SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
        if (simpleGLSurfaceView != null) {
            simpleGLSurfaceView.setGlSurfaceDoFrameListener(this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("playingSurfaceView");
            throw null;
        }
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        getVideoFrameRate();
        if (this.isPlaying) {
            SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
            if (simpleGLSurfaceView != null) {
                simpleGLSurfaceView.setPlaying(true);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("playingSurfaceView");
                throw null;
            }
        }
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        NVExoPlayer nVExoPlayer = this.player;
        if (nVExoPlayer != null) {
            nVExoPlayer.setPlayWhenReady(false);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.timer.cancel();
        NVExoPlayer nVExoPlayer = this.player;
        if (nVExoPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        nVExoPlayer.reset();
        NVExoPlayer nVExoPlayer2 = this.player;
        if (nVExoPlayer2 != null) {
            nVExoPlayer2.release();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTime(boolean z) {
        long currentPosition;
        NVExoPlayer nVExoPlayer = this.player;
        if (z) {
            if (nVExoPlayer == null) {
                Intrinsics.throwUninitializedPropertyAccessException("player");
                throw null;
            }
            currentPosition = nVExoPlayer.getDuration();
        } else {
            if (nVExoPlayer == null) {
                Intrinsics.throwUninitializedPropertyAccessException("player");
                throw null;
            }
            currentPosition = nVExoPlayer.getCurrentPosition();
        }
        if (!z) {
            NVExoPlayer nVExoPlayer2 = this.player;
            if (nVExoPlayer2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("player");
                throw null;
            }
            if (currentPosition > nVExoPlayer2.getDuration()) {
                NVExoPlayer nVExoPlayer3 = this.player;
                if (nVExoPlayer3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("player");
                    throw null;
                }
                currentPosition = nVExoPlayer3.getDuration();
            }
        }
        if (currentPosition >= 0) {
            long j = 1000;
            long j2 = currentPosition / j;
            long j3 = 60;
            int i = (int) ((j2 / j3) % j3);
            int i2 = (int) (j2 % j3);
            long j4 = 100;
            long j5 = (currentPosition % j) / j4;
            if (z) {
                TextView textView = this.totalTimeView;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("totalTimeView");
                    throw null;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append(':');
                sb.append(i2 < 10 ? 0 : "");
                sb.append(i2);
                sb.append(':');
                sb.append(j5);
                textView.setText(sb.toString());
                return;
            }
            TextView textView2 = this.timeView;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("timeView");
                throw null;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i);
            sb2.append(':');
            sb2.append(i2 < 10 ? 0 : "");
            sb2.append(i2);
            sb2.append(':');
            sb2.append(j5);
            textView2.setText(sb2.toString());
            if (this.seekBarIsDragging) {
                TrimSeekBar trimSeekBar = this.seekBar;
                if (trimSeekBar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("seekBar");
                    throw null;
                }
                long j6 = currentPosition * j4;
                NVExoPlayer nVExoPlayer4 = this.player;
                if (nVExoPlayer4 != null) {
                    trimSeekBar.setProgress((int) (j6 / nVExoPlayer4.getDuration()));
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("player");
                    throw null;
                }
            }
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.widget.TrimSeekBar.OnSeekBarChangeListener
    public void onProgressChanged(TrimSeekBar seekBar, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(seekBar, "seekBar");
        if (this.seekBarIsDragging) {
            return;
        }
        NVExoPlayer nVExoPlayer = this.player;
        if (nVExoPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        float progress = seekBar.getProgress() / 100.0f;
        if (this.player == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        nVExoPlayer.seekTo((long) (progress * r1.getDuration()));
        NVExoPlayer nVExoPlayer2 = this.player;
        if (nVExoPlayer2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        if (nVExoPlayer2.isPlaying()) {
            return;
        }
        setTime(false);
        if (this.player == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        int currentPosition = (int) ((r7.getCurrentPosition() * this.videoFrameRate) / 1000.0f);
        if (currentPosition > this.videoFrames || currentPosition < 0) {
            return;
        }
        float[] fArr = this.videoEditorPosArray;
        if (fArr == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoEditorPosArray");
            throw null;
        }
        if (fArr[currentPosition] >= 0) {
            SimpleEditorView simpleEditorView = this.editorView;
            if (simpleEditorView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorView");
                throw null;
            }
            if (fArr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("videoEditorPosArray");
                throw null;
            }
            float f = fArr[currentPosition];
            if (this.recordSurfaceView != null) {
                simpleEditorView.moveInnerRectToPos(f * r8.getWidth());
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("recordSurfaceView");
                throw null;
            }
        }
        SimpleEditorView simpleEditorView2 = this.editorView;
        if (simpleEditorView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorView");
            throw null;
        }
        float f2 = this.lastLeftRatio;
        if (this.recordSurfaceView != null) {
            simpleEditorView2.moveInnerRectToPos(f2 * r8.getWidth());
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("recordSurfaceView");
            throw null;
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.widget.TrimSeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(TrimSeekBar seekBar) {
        Intrinsics.checkParameterIsNotNull(seekBar, "seekBar");
        this.seekBarIsDragging = false;
        this.seekBeginProgress = seekBar.getProgress();
        NVExoPlayer nVExoPlayer = this.player;
        if (nVExoPlayer != null) {
            nVExoPlayer.setPlayWhenReady(false);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.widget.TrimSeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(TrimSeekBar seekBar) {
        Intrinsics.checkParameterIsNotNull(seekBar, "seekBar");
        this.seekBarIsDragging = true;
        NVExoPlayer nVExoPlayer = this.player;
        if (nVExoPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        float progress = seekBar.getProgress() / 100.0f;
        if (this.player == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        nVExoPlayer.seekTo((long) (progress * r5.getDuration()));
        NVExoPlayer nVExoPlayer2 = this.player;
        if (nVExoPlayer2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        if (!nVExoPlayer2.isPlaying()) {
            setTime(false);
        }
        if (seekBar.getProgress() < this.seekBeginProgress) {
            this.recordedDataNeedToReset = true;
        }
        NVExoPlayer nVExoPlayer3 = this.player;
        if (nVExoPlayer3 != null) {
            nVExoPlayer3.setPlayWhenReady(this.isPlaying);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleEditorView.IEditorViewTouchListener
    public void onTouchDown() {
        if (this.recordedDataNeedToReset) {
            RenderRecordView renderRecordView = this.renderRecordView;
            if (renderRecordView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("renderRecordView");
                throw null;
            }
            TrimSeekBar trimSeekBar = this.seekBar;
            if (trimSeekBar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("seekBar");
                throw null;
            }
            renderRecordView.resetPoint(trimSeekBar.getProgress());
            resetFramePos();
            this.recordedDataNeedToReset = false;
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleEditorView.IEditorViewTouchListener
    public void onTouchUp() {
        int progress;
        SimpleEditorView simpleEditorView = this.editorView;
        if (simpleEditorView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorView");
            throw null;
        }
        float f = simpleEditorView.getInnerRectF().left;
        if (Math.abs(f - this.lastVideoEditorLeft) > 5.0f) {
            RenderRecordView renderRecordView = this.renderRecordView;
            if (renderRecordView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("renderRecordView");
                throw null;
            }
            TrimSeekBar trimSeekBar = this.seekBar;
            if (trimSeekBar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("seekBar");
                throw null;
            }
            if (trimSeekBar.getProgress() < 100) {
                TrimSeekBar trimSeekBar2 = this.seekBar;
                if (trimSeekBar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("seekBar");
                    throw null;
                }
                progress = trimSeekBar2.getProgress();
            } else {
                progress = 99;
            }
            renderRecordView.addPoint(progress);
        }
        if (!this.isPlaying) {
            addCurrentFramePos(false, true);
        }
        this.lastVideoEditorLeft = f;
    }

    private final void initRenderThread() throws IOException {
        String str = this.sourcePath;
        if (str != null) {
            File file = new File(str);
            if (!file.exists()) {
                Toast.makeText(this, "no mp4 in sdcard, please check", 1).show();
                return;
            }
            String str2 = this.destPath;
            if (str2 != null) {
                File file2 = new File(str2);
                if (file2.exists()) {
                    file2.delete();
                    file2.createNewFile();
                }
                OffScreenFlag.Companion.setStopRenderThread(false);
                this.offscreenActivityHandler = new OffScreenActivityHandler(this);
                OffScreenActivityHandler offScreenActivityHandler = this.offscreenActivityHandler;
                if (offScreenActivityHandler == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("offscreenActivityHandler");
                    throw null;
                }
                float[] fArr = this.videoEditorPosArray;
                if (fArr == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("videoEditorPosArray");
                    throw null;
                }
                SurfaceView surfaceView = this.recordSurfaceView;
                if (surfaceView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("recordSurfaceView");
                    throw null;
                }
                int width = surfaceView.getWidth();
                SurfaceView surfaceView2 = this.recordSurfaceView;
                if (surfaceView2 != null) {
                    this.offscreenRenderThread = new OffScreenRenderThread(this, file, file2, offScreenActivityHandler, fArr, width, surfaceView2.getHeight());
                    OffScreenRenderThread offScreenRenderThread = this.offscreenRenderThread;
                    if (offScreenRenderThread == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("offscreenRenderThread");
                        throw null;
                    }
                    offScreenRenderThread.start();
                    OffScreenRenderThread offScreenRenderThread2 = this.offscreenRenderThread;
                    if (offScreenRenderThread2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("offscreenRenderThread");
                        throw null;
                    }
                    offScreenRenderThread2.waitUntilReady();
                    OffScreenRenderThread offScreenRenderThread3 = this.offscreenRenderThread;
                    if (offScreenRenderThread3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("offscreenRenderThread");
                        throw null;
                    }
                    offScreenRenderThread3.getMRenderHandler().prepareOffscreenRender();
                    OffScreenRenderThread offScreenRenderThread4 = this.offscreenRenderThread;
                    if (offScreenRenderThread4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("offscreenRenderThread");
                        throw null;
                    }
                    offScreenRenderThread4.getMRenderHandler().startOffscreenRender();
                    OffScreenRenderThread offScreenRenderThread5 = this.offscreenRenderThread;
                    if (offScreenRenderThread5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("offscreenRenderThread");
                        throw null;
                    }
                    offScreenRenderThread5.setTotalFrames(this.videoFrames);
                    this.time = System.currentTimeMillis();
                    return;
                }
                Intrinsics.throwUninitializedPropertyAccessException("recordSurfaceView");
                throw null;
            }
            Intrinsics.throwUninitializedPropertyAccessException("destPath");
            throw null;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sourcePath");
        throw null;
    }

    public final void setDuration() {
        if (NVApplication.DEBUG) {
            Toast.makeText(this, String.valueOf((System.currentTimeMillis() - this.time) / 1000.0f), 1).show();
        }
    }

    public final void setOffscreenProgress(int i) {
        ProgressDialog progressDialog = this.mProgressDialog;
        if (progressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mProgressDialog");
            throw null;
        }
        if (progressDialog.isShowing()) {
            ProgressDialog progressDialog2 = this.mProgressDialog;
            if (progressDialog2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mProgressDialog");
                throw null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(i);
            sb.append('%');
            progressDialog2.updateProgress(sb.toString());
            if (i >= 100) {
                ProgressDialog progressDialog3 = this.mProgressDialog;
                if (progressDialog3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mProgressDialog");
                    throw null;
                }
                progressDialog3.dismiss();
                Intent intent = new Intent();
                intent.putExtra("success", true);
                String str = this.destPath;
                if (str == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("destPath");
                    throw null;
                }
                intent.putExtra("result", str);
                setResult(-1, intent);
                finish();
            }
        }
    }

    private final void clickPlayBtn() {
        this.isPlaying = !this.isPlaying;
        NVExoPlayer nVExoPlayer = this.player;
        if (nVExoPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        if (nVExoPlayer.getPlayerState() == 4) {
            NVExoPlayer nVExoPlayer2 = this.player;
            if (nVExoPlayer2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("player");
                throw null;
            }
            nVExoPlayer2.seekTo(0L);
            this.recordedDataNeedToReset = true;
        }
        NVExoPlayer nVExoPlayer3 = this.player;
        if (nVExoPlayer3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        nVExoPlayer3.setPlayWhenReady(this.isPlaying);
        Button button = this.playBtn;
        if (button != null) {
            button.setBackgroundResource(this.isPlaying ? R.drawable.dynamic_cropping_stop : R.drawable.dynamic_cropping_play);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("playBtn");
            throw null;
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleGLSurfaceView.IGLSurfaceDoFrame
    public void surfaceDoFrame() {
        if (this.isPlaying && this.videoFrameRate != -1) {
            NVExoPlayer nVExoPlayer = this.player;
            if (nVExoPlayer == null) {
                Intrinsics.throwUninitializedPropertyAccessException("player");
                throw null;
            }
            if (nVExoPlayer.isPlaying()) {
                addCurrentFramePos$default(this, true, false, 2, null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void getVideoFrameRate() throws IOException {
        int i;
        String str = "durationUs";
        if (this.videoFrameRate > 0) {
            return;
        }
        MediaExtractor mediaExtractor = new MediaExtractor();
        String str2 = this.sourcePath;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourcePath");
            throw null;
        }
        mediaExtractor.setDataSource(str2);
        int trackCount = mediaExtractor.getTrackCount();
        int i2 = 0;
        if (trackCount >= 0) {
            i = 0;
            while (true) {
                String mime = mediaExtractor.getTrackFormat(i).getString(IMediaFormat.KEY_MIME);
                Intrinsics.checkExpressionValueIsNotNull(mime, "mime");
                if (!StringsKt__StringsJVMKt.startsWith$default(mime, "video/", false, 2, null)) {
                    if (i == trackCount) {
                        break;
                    } else {
                        i++;
                    }
                } else {
                    break;
                }
            }
            i = -1;
        } else {
            i = -1;
        }
        if (i == -1) {
            return;
        }
        mediaExtractor.selectTrack(i);
        MediaFormat trackFormat = mediaExtractor.getTrackFormat(i);
        int i3 = 1000000;
        i3 = 1000000;
        try {
            try {
                this.videoFrameRate = trackFormat.getInteger("frame-rate");
                long j = 1000000;
                this.videoFrames = ((int) ((trackFormat.getLong("durationUs") * this.videoFrameRate) / j)) + 1;
                int i4 = this.videoFrames + 1;
                float[] fArr = new float[i4];
                while (i2 < i4) {
                    fArr[i2] = -1.0f;
                    i2++;
                }
                this.videoEditorPosArray = fArr;
                str = i4;
                trackFormat = fArr;
                i3 = j;
            } catch (Exception e) {
                e.printStackTrace();
                this.videoFrameRate = getIntParam(FRAME_RATE, 30);
                long j2 = 1000000;
                this.videoFrames = ((int) ((trackFormat.getLong("durationUs") * this.videoFrameRate) / j2)) + 1;
                int i5 = this.videoFrames + 1;
                float[] fArr2 = new float[i5];
                while (i2 < i5) {
                    fArr2[i2] = -1.0f;
                    i2++;
                }
                this.videoEditorPosArray = fArr2;
                str = i5;
                trackFormat = fArr2;
                i3 = j2;
            }
        } catch (Throwable th) {
            this.videoFrames = ((int) ((trackFormat.getLong(str) * this.videoFrameRate) / i3)) + 1;
            int i6 = this.videoFrames + 1;
            float[] fArr3 = new float[i6];
            while (i2 < i6) {
                fArr3[i2] = -1.0f;
                i2++;
            }
            this.videoEditorPosArray = fArr3;
            throw th;
        }
    }

    static /* synthetic */ void addCurrentFramePos$default(DynamicCroppingActivity dynamicCroppingActivity, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        dynamicCroppingActivity.addCurrentFramePos(z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addCurrentFramePos(boolean z, boolean z2) {
        if (this.player == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        int currentPosition = (int) ((r0.getCurrentPosition() * this.videoFrameRate) / 1000.0f);
        if (currentPosition > this.videoFrames || currentPosition < 0) {
            return;
        }
        float[] fArr = this.videoEditorPosArray;
        if (fArr == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoEditorPosArray");
            throw null;
        }
        float f = 0;
        if (fArr[currentPosition] >= f && z) {
            SimpleEditorView simpleEditorView = this.editorView;
            if (simpleEditorView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorView");
                throw null;
            }
            if (fArr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("videoEditorPosArray");
                throw null;
            }
            float f2 = fArr[currentPosition];
            if (this.recordSurfaceView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("recordSurfaceView");
                throw null;
            }
            simpleEditorView.moveInnerRectToPos(f2 * r4.getWidth());
        }
        float[] fArr2 = this.videoEditorPosArray;
        if (fArr2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoEditorPosArray");
            throw null;
        }
        if (fArr2[currentPosition] < f || z2) {
            if (this.editorView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorView");
                throw null;
            }
            float f3 = r9.getVideoRect().left * 1.0f;
            if (this.recordSurfaceView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("recordSurfaceView");
                throw null;
            }
            float width = f3 / r10.getWidth();
            for (int i = currentPosition - 1; i >= 0; i--) {
                float[] fArr3 = this.videoEditorPosArray;
                if (fArr3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("videoEditorPosArray");
                    throw null;
                }
                if (fArr3[i] >= f) {
                    break;
                }
                if (fArr3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("videoEditorPosArray");
                    throw null;
                }
                fArr3[i] = this.lastLeftRatio;
            }
            float[] fArr4 = this.videoEditorPosArray;
            if (fArr4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("videoEditorPosArray");
                throw null;
            }
            fArr4[currentPosition] = width;
            this.lastLeftRatio = width;
        }
        this.maxFrame = Math.max(currentPosition, this.maxFrame);
    }

    private final void resetFramePos() {
        int i;
        if (this.player == null) {
            Intrinsics.throwUninitializedPropertyAccessException("player");
            throw null;
        }
        int currentPosition = (int) ((r0.getCurrentPosition() * this.videoFrameRate) / 1000.0f);
        if (currentPosition > this.videoFrames || currentPosition < 0 || currentPosition >= (i = this.maxFrame)) {
            return;
        }
        int i2 = currentPosition + 1;
        if (i2 <= i) {
            while (true) {
                float[] fArr = this.videoEditorPosArray;
                if (fArr == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("videoEditorPosArray");
                    throw null;
                }
                fArr[i2] = -1.0f;
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        this.maxFrame = currentPosition;
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        Button button = this.playBtn;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playBtn");
            throw null;
        }
        if (button.isClickable()) {
            super.onBackPressed();
        }
    }

    private final void preparePlayer() {
        String stringExtra = getIntent().getStringExtra(SOURCE_PATH);
        Intrinsics.checkExpressionValueIsNotNull(stringExtra, "intent.getStringExtra(SOURCE_PATH)");
        this.sourcePath = stringExtra;
        String stringExtra2 = getIntent().getStringExtra(DEST_PATH);
        Intrinsics.checkExpressionValueIsNotNull(stringExtra2, "intent.getStringExtra(DEST_PATH)");
        this.destPath = stringExtra2;
        String str = this.sourcePath;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourcePath");
            throw null;
        }
        if (str != null) {
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sourcePath");
                throw null;
            }
            if (new File(str).exists()) {
                NVMediaSource nVMediaSource = new NVMediaSource();
                Media media = new Media();
                StringBuilder sb = new StringBuilder();
                sb.append("file://");
                String str2 = this.sourcePath;
                if (str2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sourcePath");
                    throw null;
                }
                sb.append(str2);
                media.url = sb.toString();
                media.type = 102;
                nVMediaSource.mediaList = CollectionsKt__CollectionsKt.arrayListOf(media);
                nVMediaSource.loop = false;
                NVExoPlayer nVExoPlayer = this.player;
                if (nVExoPlayer != null) {
                    nVExoPlayer.quickSetting(this, nVMediaSource, null);
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("player");
                    throw null;
                }
            }
        }
    }
}
