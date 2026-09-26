package com.narvii.editor.cropping.dynamic;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.media.MediaExtractor;
import android.media.MediaFormat;
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
import java.util.Timer;
import java.util.TimerTask;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class DynamicCroppingActivity extends NVActivity implements View.OnClickListener, SurfaceHolder.Callback, IVideoListener, TrimSeekBar.OnSeekBarChangeListener, SimpleGLSurfaceView.IGLSurfaceDoFrame, SimpleEditorView.IEditorViewTouchListener {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String DEST_PATH = "dest_path";
    private static final int DYNAMIC_CROPPING_REQUEST = 12345;

    @NotNull
    private static final String FRAME_RATE = "frame_rate";
    private static final float RATIO = 0.5625f;
    private static final float RECORD_SURFACE_HEIGHT_RATIO = 0.15147783f;

    @NotNull
    private static final String SOURCE_PATH = "source_path";

    @NotNull
    private static final String TAG = "DynamicCroppingActivity";

    @NotNull
    private static final String TRIM_END = "trim_end";

    @NotNull
    private static final String TRIM_START = "trim_start";
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

    @Nullable
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

    @NotNull
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

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Intent intent(@NotNull Context context, @NotNull String sourcePath, @NotNull String destPath, int i10, int i11, int i12) {
            t.j(context, "context");
            t.j(sourcePath, "sourcePath");
            t.j(destPath, "destPath");
            Intent intent = new Intent(context, (Class<?>) DynamicCroppingActivity.class);
            intent.putExtra(DynamicCroppingActivity.SOURCE_PATH, sourcePath);
            intent.putExtra(DynamicCroppingActivity.DEST_PATH, destPath);
            intent.putExtra(DynamicCroppingActivity.FRAME_RATE, i10);
            intent.putExtra(DynamicCroppingActivity.TRIM_START, i11);
            intent.putExtra(DynamicCroppingActivity.TRIM_END, i12);
            return intent;
        }
    }

    /* JADX INFO: renamed from: com.narvii.editor.cropping.dynamic.DynamicCroppingActivity$onRenderedFirstFrame$1, reason: invalid class name */
    public static final class AnonymousClass1 extends TimerTask {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void run$lambda$0(DynamicCroppingActivity this$0) {
            t.j(this$0, "this$0");
            NVExoPlayer nVExoPlayer = this$0.player;
            NVExoPlayer nVExoPlayer2 = null;
            if (nVExoPlayer == null) {
                t.B("player");
                nVExoPlayer = null;
            }
            if (nVExoPlayer.isPlaying()) {
                NVExoPlayer nVExoPlayer3 = this$0.player;
                if (nVExoPlayer3 == null) {
                    t.B("player");
                } else {
                    nVExoPlayer2 = nVExoPlayer3;
                }
                if (nVExoPlayer2.getPlayerState() != 4) {
                    this$0.setTime(false);
                }
            }
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Handler handler = DynamicCroppingActivity.this.handler;
            if (handler == null) {
                t.B("handler");
                handler = null;
            }
            final DynamicCroppingActivity dynamicCroppingActivity = DynamicCroppingActivity.this;
            handler.post(new Runnable() { // from class: com.narvii.editor.cropping.dynamic.c
                @Override // java.lang.Runnable
                public final void run() {
                    DynamicCroppingActivity.AnonymousClass1.run$lambda$0(dynamicCroppingActivity);
                }
            });
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onCachedBytesRead(long j6, long j10) {
        com.narvii.nvplayer.b.a(this, j6, j10);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) throws IOException {
        ProgressDialog progressDialog = null;
        Button button = null;
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i10 = R.id.close_btn;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            Button button2 = this.playBtn;
            if (button2 == null) {
                t.B("playBtn");
            } else {
                button = button2;
            }
            if (button.isClickable()) {
                finish();
                return;
            }
            return;
        }
        int i11 = R.id.check_btn;
        if (numValueOf == null || numValueOf.intValue() != i11) {
            int i12 = R.id.play_btn;
            if (numValueOf != null && numValueOf.intValue() == i12) {
                clickPlayBtn();
                return;
            }
            return;
        }
        if (!this.supportDynamicCropping) {
            NVToast.makeText(getContext(), R.string.not_support_dynamic_cropping, 0).show();
            return;
        }
        if (this.isPlaying) {
            NVExoPlayer nVExoPlayer = this.player;
            if (nVExoPlayer == null) {
                t.B("player");
                nVExoPlayer = null;
            }
            if (nVExoPlayer.getPlayerState() != 4) {
                clickPlayBtn();
            }
        }
        initRenderThread();
        ProgressDialog progressDialog2 = this.mProgressDialog;
        if (progressDialog2 == null) {
            t.B("mProgressDialog");
        } else {
            progressDialog = progressDialog2;
        }
        progressDialog.show();
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onErrorDebug(NVVideoException nVVideoException) {
        com.narvii.nvplayer.b.b(this, nVVideoException);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPlayerError(NVVideoException nVVideoException) {
        com.narvii.nvplayer.b.c(this, nVVideoException);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0048  */
    /* JADX WARN: Code duplicated, block: B:24:0x004c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0050  */
    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerStateChanged(boolean z6, int i10) {
        RenderRecordView renderRecordView;
        if (i10 == 4 && this.playerState != i10) {
            setTime(false);
            this.isPlaying = false;
            Button button = this.playBtn;
            RenderRecordView renderRecordView2 = null;
            if (button == null) {
                t.B("playBtn");
                button = null;
            }
            button.setBackgroundResource(R.drawable.dynamic_cropping_play);
            SimpleEditorView simpleEditorView = this.editorView;
            if (simpleEditorView == null) {
                t.B("editorView");
                simpleEditorView = null;
            }
            simpleEditorView.setShowOuterRect(false);
            RenderRecordView renderRecordView3 = this.renderRecordView;
            if (renderRecordView3 == null) {
                t.B("renderRecordView");
                renderRecordView3 = null;
            }
            if (renderRecordView3.getMaxPoint() > 0) {
                renderRecordView = this.renderRecordView;
                if (renderRecordView == null) {
                    t.B("renderRecordView");
                } else {
                    renderRecordView2 = renderRecordView;
                }
                renderRecordView2.addPoint(99);
            } else {
                SimpleEditorView simpleEditorView2 = this.editorView;
                if (simpleEditorView2 == null) {
                    t.B("editorView");
                    simpleEditorView2 = null;
                }
                if (simpleEditorView2.getEditorViewMoved()) {
                    renderRecordView = this.renderRecordView;
                    if (renderRecordView == null) {
                        t.B("renderRecordView");
                    } else {
                        renderRecordView2 = renderRecordView;
                    }
                    renderRecordView2.addPoint(99);
                }
            }
        }
        this.playerState = i10;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPositionDiscontinuity(int i10) {
        com.narvii.nvplayer.b.e(this, i10);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPreloadStrategyChanged(String str) {
        com.narvii.nvplayer.b.f(this, str);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onRenderFirstFrameInterval(long j6) {
        com.narvii.nvplayer.b.g(this, j6);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onSurfaceSizeChanged(int i10, int i11) {
        com.narvii.nvplayer.b.i(this, i10, i11);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSizeChanged(int i10, int i11) {
        com.narvii.nvplayer.b.j(this, i10, i11);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSupportLowResVideo(boolean z6) {
        com.narvii.nvplayer.b.l(this, z6);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ boolean shouldPauseForPageAboveVideo(int i10) {
        return com.narvii.nvplayer.b.m(this, i10);
    }

    private final void addCurrentFramePos(boolean z6, boolean z10) {
        NVExoPlayer nVExoPlayer = this.player;
        float[] fArr = null;
        if (nVExoPlayer == null) {
            t.B("player");
            nVExoPlayer = null;
        }
        int currentPosition = (int) ((nVExoPlayer.getCurrentPosition() * ((long) this.videoFrameRate)) / 1000.0f);
        if (currentPosition > this.videoFrames || currentPosition < 0) {
            return;
        }
        float[] fArr2 = this.videoEditorPosArray;
        if (fArr2 == null) {
            t.B("videoEditorPosArray");
            fArr2 = null;
        }
        if (fArr2[currentPosition] >= 0.0f && z6) {
            SimpleEditorView simpleEditorView = this.editorView;
            if (simpleEditorView == null) {
                t.B("editorView");
                simpleEditorView = null;
            }
            float[] fArr3 = this.videoEditorPosArray;
            if (fArr3 == null) {
                t.B("videoEditorPosArray");
                fArr3 = null;
            }
            float f = fArr3[currentPosition];
            SurfaceView surfaceView = this.recordSurfaceView;
            if (surfaceView == null) {
                t.B("recordSurfaceView");
                surfaceView = null;
            }
            simpleEditorView.moveInnerRectToPos(f * surfaceView.getWidth());
        }
        float[] fArr4 = this.videoEditorPosArray;
        if (fArr4 == null) {
            t.B("videoEditorPosArray");
            fArr4 = null;
        }
        if (fArr4[currentPosition] < 0.0f || z10) {
            SimpleEditorView simpleEditorView2 = this.editorView;
            if (simpleEditorView2 == null) {
                t.B("editorView");
                simpleEditorView2 = null;
            }
            float f6 = simpleEditorView2.getVideoRect().left * 1.0f;
            SurfaceView surfaceView2 = this.recordSurfaceView;
            if (surfaceView2 == null) {
                t.B("recordSurfaceView");
                surfaceView2 = null;
            }
            float width = f6 / surfaceView2.getWidth();
            for (int i10 = currentPosition - 1; -1 < i10; i10--) {
                float[] fArr5 = this.videoEditorPosArray;
                if (fArr5 == null) {
                    t.B("videoEditorPosArray");
                    fArr5 = null;
                }
                if (fArr5[i10] >= 0.0f) {
                    break;
                }
                float[] fArr6 = this.videoEditorPosArray;
                if (fArr6 == null) {
                    t.B("videoEditorPosArray");
                    fArr6 = null;
                }
                fArr6[i10] = this.lastLeftRatio;
            }
            float[] fArr7 = this.videoEditorPosArray;
            if (fArr7 == null) {
                t.B("videoEditorPosArray");
            } else {
                fArr = fArr7;
            }
            fArr[currentPosition] = width;
            this.lastLeftRatio = width;
        }
        this.maxFrame = Math.max(currentPosition, this.maxFrame);
    }

    static /* synthetic */ void addCurrentFramePos$default(DynamicCroppingActivity dynamicCroppingActivity, boolean z6, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        dynamicCroppingActivity.addCurrentFramePos(z6, z10);
    }

    private final void clickPlayBtn() {
        this.isPlaying = !this.isPlaying;
        NVExoPlayer nVExoPlayer = this.player;
        Button button = null;
        if (nVExoPlayer == null) {
            t.B("player");
            nVExoPlayer = null;
        }
        if (nVExoPlayer.getPlayerState() == 4) {
            NVExoPlayer nVExoPlayer2 = this.player;
            if (nVExoPlayer2 == null) {
                t.B("player");
                nVExoPlayer2 = null;
            }
            nVExoPlayer2.seekTo(0L);
            this.recordedDataNeedToReset = true;
        }
        NVExoPlayer nVExoPlayer3 = this.player;
        if (nVExoPlayer3 == null) {
            t.B("player");
            nVExoPlayer3 = null;
        }
        nVExoPlayer3.setPlayWhenReady(this.isPlaying);
        Button button2 = this.playBtn;
        if (button2 == null) {
            t.B("playBtn");
        } else {
            button = button2;
        }
        button.setBackgroundResource(this.isPlaying ? R.drawable.dynamic_cropping_stop : R.drawable.dynamic_cropping_play);
    }

    private final void getVideoFrameRate() throws IOException {
        int i10;
        if (this.videoFrameRate > 0) {
            return;
        }
        MediaExtractor mediaExtractor = new MediaExtractor();
        String str = this.sourcePath;
        if (str == null) {
            t.B("sourcePath");
            str = null;
        }
        mediaExtractor.setDataSource(str);
        int trackCount = mediaExtractor.getTrackCount();
        int i11 = 0;
        if (trackCount < 0) {
            i10 = -1;
            break;
        }
        i10 = 0;
        while (true) {
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(i10);
            t.i(trackFormat, "getTrackFormat(...)");
            String string = trackFormat.getString("mime");
            if (string != null && kotlin.text.t.K(string, "video/", false, 2, null)) {
                break;
            }
            if (i10 == trackCount) {
                i10 = -1;
                break;
            }
            i10++;
        }
        if (i10 == -1) {
            return;
        }
        mediaExtractor.selectTrack(i10);
        MediaFormat trackFormat2 = mediaExtractor.getTrackFormat(i10);
        t.i(trackFormat2, "getTrackFormat(...)");
        try {
            try {
                this.videoFrameRate = trackFormat2.getInteger("frame-rate");
                int i12 = (int) ((trackFormat2.getLong("durationUs") * ((long) this.videoFrameRate)) / ((long) 1000000));
                this.videoFrames = i12 + 1;
                int i13 = i12 + 2;
                float[] fArr = new float[i13];
                while (i11 < i13) {
                    fArr[i11] = -1.0f;
                    i11++;
                }
                this.videoEditorPosArray = fArr;
            } catch (Exception e) {
                e.printStackTrace();
                this.videoFrameRate = getIntParam(FRAME_RATE, 30);
                int i14 = (int) ((trackFormat2.getLong("durationUs") * ((long) this.videoFrameRate)) / ((long) 1000000));
                this.videoFrames = i14 + 1;
                int i15 = i14 + 2;
                float[] fArr2 = new float[i15];
                while (i11 < i15) {
                    fArr2[i11] = -1.0f;
                    i11++;
                }
                this.videoEditorPosArray = fArr2;
            }
        } catch (Throwable th) {
            int i16 = (int) ((trackFormat2.getLong("durationUs") * ((long) this.videoFrameRate)) / ((long) 1000000));
            this.videoFrames = i16 + 1;
            int i17 = i16 + 2;
            float[] fArr3 = new float[i17];
            while (i11 < i17) {
                fArr3[i11] = -1.0f;
                i11++;
            }
            this.videoEditorPosArray = fArr3;
            throw th;
        }
    }

    private final void initRenderThread() throws IOException {
        OffScreenActivityHandler offScreenActivityHandler;
        float[] fArr;
        String str = this.sourcePath;
        OffScreenRenderThread offScreenRenderThread = null;
        if (str == null) {
            t.B("sourcePath");
            str = null;
        }
        File file = new File(str);
        if (!file.exists()) {
            Toast.makeText(this, "no mp4 in sdcard, please check", 1).show();
            return;
        }
        String str2 = this.destPath;
        if (str2 == null) {
            t.B("destPath");
            str2 = null;
        }
        File file2 = new File(str2);
        if (file2.exists()) {
            file2.delete();
            file2.createNewFile();
        }
        OffScreenFlag.Companion.setStopRenderThread(false);
        this.offscreenActivityHandler = new OffScreenActivityHandler(this);
        OffScreenActivityHandler offScreenActivityHandler2 = this.offscreenActivityHandler;
        if (offScreenActivityHandler2 == null) {
            t.B("offscreenActivityHandler");
            offScreenActivityHandler = null;
        } else {
            offScreenActivityHandler = offScreenActivityHandler2;
        }
        float[] fArr2 = this.videoEditorPosArray;
        if (fArr2 == null) {
            t.B("videoEditorPosArray");
            fArr = null;
        } else {
            fArr = fArr2;
        }
        SurfaceView surfaceView = this.recordSurfaceView;
        if (surfaceView == null) {
            t.B("recordSurfaceView");
            surfaceView = null;
        }
        int width = surfaceView.getWidth();
        SurfaceView surfaceView2 = this.recordSurfaceView;
        if (surfaceView2 == null) {
            t.B("recordSurfaceView");
            surfaceView2 = null;
        }
        OffScreenRenderThread offScreenRenderThread2 = new OffScreenRenderThread(this, file, file2, offScreenActivityHandler, fArr, width, surfaceView2.getHeight());
        this.offscreenRenderThread = offScreenRenderThread2;
        offScreenRenderThread2.start();
        OffScreenRenderThread offScreenRenderThread3 = this.offscreenRenderThread;
        if (offScreenRenderThread3 == null) {
            t.B("offscreenRenderThread");
            offScreenRenderThread3 = null;
        }
        offScreenRenderThread3.waitUntilReady();
        OffScreenRenderThread offScreenRenderThread4 = this.offscreenRenderThread;
        if (offScreenRenderThread4 == null) {
            t.B("offscreenRenderThread");
            offScreenRenderThread4 = null;
        }
        offScreenRenderThread4.getMRenderHandler().prepareOffscreenRender();
        OffScreenRenderThread offScreenRenderThread5 = this.offscreenRenderThread;
        if (offScreenRenderThread5 == null) {
            t.B("offscreenRenderThread");
            offScreenRenderThread5 = null;
        }
        offScreenRenderThread5.getMRenderHandler().startOffscreenRender();
        OffScreenRenderThread offScreenRenderThread6 = this.offscreenRenderThread;
        if (offScreenRenderThread6 == null) {
            t.B("offscreenRenderThread");
        } else {
            offScreenRenderThread = offScreenRenderThread6;
        }
        offScreenRenderThread.setTotalFrames(this.videoFrames);
        this.time = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$0(DialogInterface dialogInterface) {
        OffScreenFlag.Companion companion = OffScreenFlag.Companion;
        companion.setStopRenderThread(!companion.getStopRenderThread());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onVideoSizeChanged$lambda$1(DynamicCroppingActivity this$0, ViewGroup.LayoutParams layoutParams) {
        t.j(this$0, "this$0");
        SimpleEditorView simpleEditorView = this$0.editorView;
        SimpleEditorView simpleEditorView2 = null;
        if (simpleEditorView == null) {
            t.B("editorView");
            simpleEditorView = null;
        }
        this$0.lastLeftRatio = (simpleEditorView.getVideoRect().left * 1.0f) / layoutParams.width;
        SimpleEditorView simpleEditorView3 = this$0.editorView;
        if (simpleEditorView3 == null) {
            t.B("editorView");
        } else {
            simpleEditorView2 = simpleEditorView3;
        }
        this$0.lastVideoEditorLeft = simpleEditorView2.getInnerRectF().left;
        this$0.addCurrentFramePos(false, true);
    }

    private final void resetFramePos() {
        int i10;
        NVExoPlayer nVExoPlayer = this.player;
        if (nVExoPlayer == null) {
            t.B("player");
            nVExoPlayer = null;
        }
        int currentPosition = (int) ((nVExoPlayer.getCurrentPosition() * ((long) this.videoFrameRate)) / 1000.0f);
        if (currentPosition > this.videoFrames || currentPosition < 0 || currentPosition >= (i10 = this.maxFrame)) {
            return;
        }
        int i11 = currentPosition + 1;
        if (i11 <= i10) {
            while (true) {
                float[] fArr = this.videoEditorPosArray;
                if (fArr == null) {
                    t.B("videoEditorPosArray");
                    fArr = null;
                }
                fArr[i11] = -1.0f;
                if (i11 == i10) {
                    break;
                } else {
                    i11++;
                }
            }
        }
        this.maxFrame = currentPosition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTime(boolean z6) {
        long currentPosition;
        NVExoPlayer nVExoPlayer;
        TextView textView;
        NVExoPlayer nVExoPlayer2 = this.player;
        if (z6) {
            if (nVExoPlayer2 == null) {
                t.B("player");
                nVExoPlayer2 = null;
            }
            currentPosition = nVExoPlayer2.getDuration();
        } else {
            if (nVExoPlayer2 == null) {
                t.B("player");
                nVExoPlayer2 = null;
            }
            currentPosition = nVExoPlayer2.getCurrentPosition();
        }
        if (!z6) {
            NVExoPlayer nVExoPlayer3 = this.player;
            if (nVExoPlayer3 == null) {
                t.B("player");
                nVExoPlayer3 = null;
            }
            if (currentPosition > nVExoPlayer3.getDuration()) {
                NVExoPlayer nVExoPlayer4 = this.player;
                if (nVExoPlayer4 == null) {
                    t.B("player");
                    nVExoPlayer4 = null;
                }
                currentPosition = nVExoPlayer4.getDuration();
            }
        }
        if (currentPosition >= 0) {
            long j6 = 1000;
            long j10 = currentPosition / j6;
            long j11 = 60;
            int i10 = (int) ((j10 / j11) % j11);
            int i11 = (int) (j10 % j11);
            long j12 = 100;
            long j13 = (currentPosition % j6) / j12;
            if (z6) {
                TextView textView2 = this.totalTimeView;
                if (textView2 == null) {
                    t.B("totalTimeView");
                    textView = null;
                } else {
                    textView = textView2;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(i10);
                sb.append(kotlinx.serialization.json.internal.b.COLON);
                sb.append(i11 < 10 ? 0 : "");
                sb.append(i11);
                sb.append(kotlinx.serialization.json.internal.b.COLON);
                sb.append(j13);
                textView.setText(sb.toString());
                return;
            }
            TextView textView3 = this.timeView;
            if (textView3 == null) {
                t.B("timeView");
                textView3 = null;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i10);
            sb2.append(kotlinx.serialization.json.internal.b.COLON);
            sb2.append(i11 < 10 ? 0 : "");
            sb2.append(i11);
            sb2.append(kotlinx.serialization.json.internal.b.COLON);
            sb2.append(j13);
            textView3.setText(sb2.toString());
            if (this.seekBarIsDragging) {
                TrimSeekBar trimSeekBar = this.seekBar;
                if (trimSeekBar == null) {
                    t.B("seekBar");
                    trimSeekBar = null;
                }
                long j14 = currentPosition * j12;
                NVExoPlayer nVExoPlayer5 = this.player;
                if (nVExoPlayer5 == null) {
                    t.B("player");
                    nVExoPlayer = null;
                } else {
                    nVExoPlayer = nVExoPlayer5;
                }
                trimSeekBar.setProgress((int) (j14 / nVExoPlayer.getDuration()));
            }
        }
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Button button = this.playBtn;
        if (button == null) {
            t.B("playBtn");
            button = null;
        }
        if (button.isClickable()) {
            super.onBackPressed();
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.widget.TrimSeekBar.OnSeekBarChangeListener
    public void onProgressChanged(@NotNull TrimSeekBar seekBar, int i10, boolean z6) {
        t.j(seekBar, "seekBar");
        if (this.seekBarIsDragging) {
            return;
        }
        NVExoPlayer nVExoPlayer = this.player;
        SurfaceView surfaceView = null;
        if (nVExoPlayer == null) {
            t.B("player");
            nVExoPlayer = null;
        }
        float progress = seekBar.getProgress() / 100.0f;
        NVExoPlayer nVExoPlayer2 = this.player;
        if (nVExoPlayer2 == null) {
            t.B("player");
            nVExoPlayer2 = null;
        }
        nVExoPlayer.seekTo((long) (progress * nVExoPlayer2.getDuration()));
        NVExoPlayer nVExoPlayer3 = this.player;
        if (nVExoPlayer3 == null) {
            t.B("player");
            nVExoPlayer3 = null;
        }
        if (nVExoPlayer3.isPlaying()) {
            return;
        }
        setTime(false);
        NVExoPlayer nVExoPlayer4 = this.player;
        if (nVExoPlayer4 == null) {
            t.B("player");
            nVExoPlayer4 = null;
        }
        int currentPosition = (int) ((nVExoPlayer4.getCurrentPosition() * ((long) this.videoFrameRate)) / 1000.0f);
        if (currentPosition > this.videoFrames || currentPosition < 0) {
            return;
        }
        float[] fArr = this.videoEditorPosArray;
        if (fArr == null) {
            t.B("videoEditorPosArray");
            fArr = null;
        }
        if (fArr[currentPosition] < 0.0f) {
            SimpleEditorView simpleEditorView = this.editorView;
            if (simpleEditorView == null) {
                t.B("editorView");
                simpleEditorView = null;
            }
            float f = this.lastLeftRatio;
            SurfaceView surfaceView2 = this.recordSurfaceView;
            if (surfaceView2 == null) {
                t.B("recordSurfaceView");
            } else {
                surfaceView = surfaceView2;
            }
            simpleEditorView.moveInnerRectToPos(f * surfaceView.getWidth());
            return;
        }
        SimpleEditorView simpleEditorView2 = this.editorView;
        if (simpleEditorView2 == null) {
            t.B("editorView");
            simpleEditorView2 = null;
        }
        float[] fArr2 = this.videoEditorPosArray;
        if (fArr2 == null) {
            t.B("videoEditorPosArray");
            fArr2 = null;
        }
        float f6 = fArr2[currentPosition];
        SurfaceView surfaceView3 = this.recordSurfaceView;
        if (surfaceView3 == null) {
            t.B("recordSurfaceView");
        } else {
            surfaceView = surfaceView3;
        }
        simpleEditorView2.moveInnerRectToPos(f6 * surfaceView.getWidth());
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onRenderedFirstFrame() {
        TrimSeekBar trimSeekBar = null;
        if (!this.playingSurfaceRendered && this.playingSurface != null) {
            SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
            if (simpleGLSurfaceView == null) {
                t.B("playingSurfaceView");
                simpleGLSurfaceView = null;
            }
            simpleGLSurfaceView.renderAnotherSurface(this.playingSurface);
            this.playingSurfaceRendered = true;
        }
        if (this.timerStarted) {
            return;
        }
        this.timerStarted = true;
        setTime(true);
        this.timer.scheduleAtFixedRate(new AnonymousClass1(), 0L, 100L);
        float intParam = getIntParam(TRIM_START, 0) * 100.0f;
        NVExoPlayer nVExoPlayer = this.player;
        if (nVExoPlayer == null) {
            t.B("player");
            nVExoPlayer = null;
        }
        this.trimStart = (int) (intParam / nVExoPlayer.getDuration());
        float intParam2 = getIntParam(TRIM_END, 0) * 100.0f;
        NVExoPlayer nVExoPlayer2 = this.player;
        if (nVExoPlayer2 == null) {
            t.B("player");
            nVExoPlayer2 = null;
        }
        this.trimEnd = (int) (intParam2 / nVExoPlayer2.getDuration());
        TrimSeekBar trimSeekBar2 = this.seekBar;
        if (trimSeekBar2 == null) {
            t.B("seekBar");
            trimSeekBar2 = null;
        }
        trimSeekBar2.setTrim(this.trimStart, this.trimEnd);
        if (this.trimStart > 0) {
            NVExoPlayer nVExoPlayer3 = this.player;
            if (nVExoPlayer3 == null) {
                t.B("player");
                nVExoPlayer3 = null;
            }
            nVExoPlayer3.seekTo(getIntParam(TRIM_START, 0));
            TrimSeekBar trimSeekBar3 = this.seekBar;
            if (trimSeekBar3 == null) {
                t.B("seekBar");
            } else {
                trimSeekBar = trimSeekBar3;
            }
            trimSeekBar.setProgress(this.trimStart);
            setTime(false);
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.widget.TrimSeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(@NotNull TrimSeekBar seekBar) {
        t.j(seekBar, "seekBar");
        this.seekBarIsDragging = false;
        this.seekBeginProgress = seekBar.getProgress();
        NVExoPlayer nVExoPlayer = this.player;
        if (nVExoPlayer == null) {
            t.B("player");
            nVExoPlayer = null;
        }
        nVExoPlayer.setPlayWhenReady(false);
    }

    @Override // com.narvii.editor.cropping.dynamic.widget.TrimSeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(@NotNull TrimSeekBar seekBar) {
        t.j(seekBar, "seekBar");
        this.seekBarIsDragging = true;
        NVExoPlayer nVExoPlayer = this.player;
        NVExoPlayer nVExoPlayer2 = null;
        if (nVExoPlayer == null) {
            t.B("player");
            nVExoPlayer = null;
        }
        float progress = seekBar.getProgress() / 100.0f;
        NVExoPlayer nVExoPlayer3 = this.player;
        if (nVExoPlayer3 == null) {
            t.B("player");
            nVExoPlayer3 = null;
        }
        nVExoPlayer.seekTo((long) (progress * nVExoPlayer3.getDuration()));
        NVExoPlayer nVExoPlayer4 = this.player;
        if (nVExoPlayer4 == null) {
            t.B("player");
            nVExoPlayer4 = null;
        }
        if (!nVExoPlayer4.isPlaying()) {
            setTime(false);
        }
        if (seekBar.getProgress() < this.seekBeginProgress) {
            this.recordedDataNeedToReset = true;
        }
        NVExoPlayer nVExoPlayer5 = this.player;
        if (nVExoPlayer5 == null) {
            t.B("player");
        } else {
            nVExoPlayer2 = nVExoPlayer5;
        }
        nVExoPlayer2.setPlayWhenReady(this.isPlaying);
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleEditorView.IEditorViewTouchListener
    public void onTouchDown() {
        if (this.recordedDataNeedToReset) {
            RenderRecordView renderRecordView = this.renderRecordView;
            TrimSeekBar trimSeekBar = null;
            if (renderRecordView == null) {
                t.B("renderRecordView");
                renderRecordView = null;
            }
            TrimSeekBar trimSeekBar2 = this.seekBar;
            if (trimSeekBar2 == null) {
                t.B("seekBar");
            } else {
                trimSeekBar = trimSeekBar2;
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
        TrimSeekBar trimSeekBar = null;
        if (simpleEditorView == null) {
            t.B("editorView");
            simpleEditorView = null;
        }
        float f = simpleEditorView.getInnerRectF().left;
        if (Math.abs(f - this.lastVideoEditorLeft) > 5.0f) {
            RenderRecordView renderRecordView = this.renderRecordView;
            if (renderRecordView == null) {
                t.B("renderRecordView");
                renderRecordView = null;
            }
            TrimSeekBar trimSeekBar2 = this.seekBar;
            if (trimSeekBar2 == null) {
                t.B("seekBar");
                trimSeekBar2 = null;
            }
            if (trimSeekBar2.getProgress() < 100) {
                TrimSeekBar trimSeekBar3 = this.seekBar;
                if (trimSeekBar3 == null) {
                    t.B("seekBar");
                } else {
                    trimSeekBar = trimSeekBar3;
                }
                progress = trimSeekBar.getProgress();
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

    @Override // com.narvii.nvplayer.IVideoListener
    public void onVideoSizeChanged(int i10, int i11, int i12, float f) {
        SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
        SimpleEditorView simpleEditorView = null;
        if (simpleGLSurfaceView == null) {
            t.B("playingSurfaceView");
            simpleGLSurfaceView = null;
        }
        simpleGLSurfaceView.setVideoSize(i10, i11);
        if (i10 == this.videoWidth && i11 == this.videoHeight) {
            SimpleEditorView simpleEditorView2 = this.editorView;
            if (simpleEditorView2 == null) {
                t.B("editorView");
            } else {
                simpleEditorView = simpleEditorView2;
            }
            simpleEditorView.setVideoEditorRect();
            return;
        }
        this.videoWidth = i10;
        this.videoHeight = i11;
        float f6 = (i10 * 1.0f) / i11;
        if (f6 < 0.5725f) {
            NVToast.makeText(getContext(), R.string.not_support_dynamic_cropping, 0).show();
            this.supportDynamicCropping = false;
        }
        SurfaceView surfaceView = this.recordSurfaceView;
        if (surfaceView == null) {
            t.B("recordSurfaceView");
            surfaceView = null;
        }
        final ViewGroup.LayoutParams layoutParams = surfaceView.getLayoutParams();
        SurfaceView surfaceView2 = this.recordSurfaceView;
        if (surfaceView2 == null) {
            t.B("recordSurfaceView");
            surfaceView2 = null;
        }
        int height = surfaceView2.getHeight();
        int i13 = (int) (height * f6);
        Utils.Companion companion = Utils.Companion;
        Context context = getContext();
        t.i(context, "getContext(...)");
        if (i13 > companion.getScreenWidth(context)) {
            Context context2 = getContext();
            t.i(context2, "getContext(...)");
            int screenWidth = companion.getScreenWidth(context2) - 40;
            layoutParams.width = screenWidth;
            layoutParams.height = (int) (screenWidth / f6);
        } else {
            layoutParams.height = height;
            layoutParams.width = i13;
        }
        SurfaceView surfaceView3 = this.recordSurfaceView;
        if (surfaceView3 == null) {
            t.B("recordSurfaceView");
            surfaceView3 = null;
        }
        surfaceView3.setLayoutParams(layoutParams);
        FrameLayout frameLayout = this.recordView;
        if (frameLayout == null) {
            t.B("recordView");
            frameLayout = null;
        }
        ViewGroup.LayoutParams layoutParams2 = frameLayout.getLayoutParams();
        layoutParams2.height = (int) (layoutParams.height * 1.16f);
        layoutParams2.width = companion.getScreenWidth(this);
        FrameLayout frameLayout2 = this.recordView;
        if (frameLayout2 == null) {
            t.B("recordView");
            frameLayout2 = null;
        }
        frameLayout2.setLayoutParams(layoutParams2);
        SimpleEditorView simpleEditorView3 = this.editorView;
        if (simpleEditorView3 == null) {
            t.B("editorView");
            simpleEditorView3 = null;
        }
        simpleEditorView3.setSize(layoutParams.height, layoutParams.width, layoutParams2.height, layoutParams2.width);
        SimpleEditorView simpleEditorView4 = this.editorView;
        if (simpleEditorView4 == null) {
            t.B("editorView");
        } else {
            simpleEditorView = simpleEditorView4;
        }
        simpleEditorView.post(new Runnable() { // from class: com.narvii.editor.cropping.dynamic.b
            @Override // java.lang.Runnable
            public final void run() {
                DynamicCroppingActivity.onVideoSizeChanged$lambda$1(this.f2259a, layoutParams);
            }
        });
    }

    public final void setDuration() {
        if (NVApplication.DEBUG) {
            Toast.makeText(this, String.valueOf((System.currentTimeMillis() - this.time) / 1000.0f), 1).show();
        }
    }

    public final void setOffscreenProgress(int i10) {
        ProgressDialog progressDialog = this.mProgressDialog;
        String str = null;
        if (progressDialog == null) {
            t.B("mProgressDialog");
            progressDialog = null;
        }
        if (progressDialog.isShowing()) {
            ProgressDialog progressDialog2 = this.mProgressDialog;
            if (progressDialog2 == null) {
                t.B("mProgressDialog");
                progressDialog2 = null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(i10);
            sb.append('%');
            progressDialog2.updateProgress(sb.toString());
            if (i10 >= 100) {
                ProgressDialog progressDialog3 = this.mProgressDialog;
                if (progressDialog3 == null) {
                    t.B("mProgressDialog");
                    progressDialog3 = null;
                }
                progressDialog3.dismiss();
                Intent intent = new Intent();
                intent.putExtra("success", true);
                String str2 = this.destPath;
                if (str2 == null) {
                    t.B("destPath");
                } else {
                    str = str2;
                }
                intent.putExtra("result", str);
                setResult(-1, intent);
                finish();
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(@NotNull SurfaceHolder holder, int i10, int i11, int i12) {
        t.j(holder, "holder");
        SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
        if (simpleGLSurfaceView == null) {
            t.B("playingSurfaceView");
            simpleGLSurfaceView = null;
        }
        simpleGLSurfaceView.anotherSurfaceChanged(i11, i12);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(@NotNull SurfaceHolder holder) {
        t.j(holder, "holder");
        this.playingSurface = holder.getSurface();
        SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
        if (simpleGLSurfaceView == null) {
            t.B("playingSurfaceView");
            simpleGLSurfaceView = null;
        }
        simpleGLSurfaceView.setGlSurfaceDoFrameListener(this);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(@NotNull SurfaceHolder holder) {
        t.j(holder, "holder");
        SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
        if (simpleGLSurfaceView == null) {
            t.B("playingSurfaceView");
            simpleGLSurfaceView = null;
        }
        simpleGLSurfaceView.stopRenderAnotherSurface();
        this.playingSurfaceRendered = false;
        this.playingSurface = null;
        SimpleGLSurfaceView simpleGLSurfaceView2 = this.playingSurfaceView;
        if (simpleGLSurfaceView2 == null) {
            t.B("playingSurfaceView");
            simpleGLSurfaceView2 = null;
        }
        simpleGLSurfaceView2.setGlSurfaceDoFrameListener(null);
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleGLSurfaceView.IGLSurfaceDoFrame
    public void surfaceDoFrame() {
        if (this.isPlaying && this.videoFrameRate != -1) {
            NVExoPlayer nVExoPlayer = this.player;
            if (nVExoPlayer == null) {
                t.B("player");
                nVExoPlayer = null;
            }
            if (nVExoPlayer.isPlaying()) {
                addCurrentFramePos$default(this, true, false, 2, null);
            }
        }
    }

    private final void preparePlayer() {
        this.sourcePath = String.valueOf(getIntent().getStringExtra(SOURCE_PATH));
        this.destPath = String.valueOf(getIntent().getStringExtra(DEST_PATH));
        if (this.sourcePath == null) {
            t.B("sourcePath");
        }
        String str = this.sourcePath;
        if (str == null) {
            t.B("sourcePath");
            str = null;
        }
        if (new File(str).exists()) {
            NVMediaSource nVMediaSource = new NVMediaSource();
            Media media = new Media();
            StringBuilder sb = new StringBuilder();
            sb.append("file://");
            String str2 = this.sourcePath;
            if (str2 == null) {
                t.B("sourcePath");
                str2 = null;
            }
            sb.append(str2);
            media.url = sb.toString();
            media.type = 102;
            nVMediaSource.mediaList = v.g(media);
            nVMediaSource.loop = false;
            NVExoPlayer nVExoPlayer = this.player;
            if (nVExoPlayer == null) {
                t.B("player");
                nVExoPlayer = null;
            }
            nVExoPlayer.quickSetting(this, nVMediaSource, null);
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_dynamic_cropping);
        View viewFindViewById = findViewById(R.id.close_btn);
        t.i(viewFindViewById, "findViewById(...)");
        EasyButton easyButton = (EasyButton) viewFindViewById;
        this.closeBtn = easyButton;
        ProgressDialog progressDialog = null;
        if (easyButton == null) {
            t.B("closeBtn");
            easyButton = null;
        }
        easyButton.setOnClickListener(this);
        View viewFindViewById2 = findViewById(R.id.check_btn);
        t.i(viewFindViewById2, "findViewById(...)");
        EasyButton easyButton2 = (EasyButton) viewFindViewById2;
        this.checkBtn = easyButton2;
        if (easyButton2 == null) {
            t.B("checkBtn");
            easyButton2 = null;
        }
        easyButton2.setOnClickListener(this);
        View viewFindViewById3 = findViewById(R.id.play_surface);
        t.i(viewFindViewById3, "findViewById(...)");
        this.playingSurfaceView = (SimpleGLSurfaceView) viewFindViewById3;
        int screenHeight = Utils.Companion.getScreenHeight(this);
        View viewFindViewById4 = findViewById(R.id.record_surface);
        t.i(viewFindViewById4, "findViewById(...)");
        SurfaceView surfaceView = (SurfaceView) viewFindViewById4;
        this.recordSurfaceView = surfaceView;
        if (surfaceView == null) {
            t.B("recordSurfaceView");
            surfaceView = null;
        }
        surfaceView.getHolder().addCallback(this);
        NVExoPlayer nVExoPlayer = NVExoPlayer.getInstance(getApplicationContext());
        t.i(nVExoPlayer, "getInstance(...)");
        this.player = nVExoPlayer;
        if (nVExoPlayer == null) {
            t.B("player");
            nVExoPlayer = null;
        }
        nVExoPlayer.setVideoListener(this);
        preparePlayer();
        SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
        if (simpleGLSurfaceView == null) {
            t.B("playingSurfaceView");
            simpleGLSurfaceView = null;
        }
        NVExoPlayer nVExoPlayer2 = this.player;
        if (nVExoPlayer2 == null) {
            t.B("player");
            nVExoPlayer2 = null;
        }
        simpleGLSurfaceView.initViews(nVExoPlayer2, 0);
        SurfaceView surfaceView2 = this.recordSurfaceView;
        if (surfaceView2 == null) {
            t.B("recordSurfaceView");
            surfaceView2 = null;
        }
        ViewGroup.LayoutParams layoutParams = surfaceView2.getLayoutParams();
        int i10 = (int) (screenHeight * RECORD_SURFACE_HEIGHT_RATIO);
        layoutParams.height = i10;
        layoutParams.width = (int) (i10 / RATIO);
        SurfaceView surfaceView3 = this.recordSurfaceView;
        if (surfaceView3 == null) {
            t.B("recordSurfaceView");
            surfaceView3 = null;
        }
        surfaceView3.setLayoutParams(layoutParams);
        View viewFindViewById5 = findViewById(R.id.record_view);
        t.i(viewFindViewById5, "findViewById(...)");
        this.recordView = (FrameLayout) viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.play_btn);
        t.i(viewFindViewById6, "findViewById(...)");
        Button button = (Button) viewFindViewById6;
        this.playBtn = button;
        if (button == null) {
            t.B("playBtn");
            button = null;
        }
        button.setOnClickListener(this);
        ((RelativeLayout) findViewById(R.id.top_view)).setBackgroundColor(Color.parseColor("#2A2A2A"));
        ((RelativeLayout) findViewById(R.id.bottom_view)).setBackgroundColor(Color.parseColor("#323335"));
        View viewFindViewById7 = findViewById(R.id.editor_view);
        t.i(viewFindViewById7, "findViewById(...)");
        SimpleEditorView simpleEditorView = (SimpleEditorView) viewFindViewById7;
        this.editorView = simpleEditorView;
        if (simpleEditorView == null) {
            t.B("editorView");
            simpleEditorView = null;
        }
        SimpleGLSurfaceView simpleGLSurfaceView2 = this.playingSurfaceView;
        if (simpleGLSurfaceView2 == null) {
            t.B("playingSurfaceView");
            simpleGLSurfaceView2 = null;
        }
        simpleEditorView.setSimpleGlView(simpleGLSurfaceView2);
        SimpleEditorView simpleEditorView2 = this.editorView;
        if (simpleEditorView2 == null) {
            t.B("editorView");
            simpleEditorView2 = null;
        }
        simpleEditorView2.setEditorViewTouchListener(this);
        View viewFindViewById8 = findViewById(R.id.time_view);
        t.i(viewFindViewById8, "findViewById(...)");
        this.timeView = (TextView) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.total_time_view);
        t.i(viewFindViewById9, "findViewById(...)");
        this.totalTimeView = (TextView) viewFindViewById9;
        this.handler = new Handler(getMainLooper());
        View viewFindViewById10 = findViewById(R.id.seekbar);
        t.i(viewFindViewById10, "findViewById(...)");
        TrimSeekBar trimSeekBar = (TrimSeekBar) viewFindViewById10;
        this.seekBar = trimSeekBar;
        if (trimSeekBar == null) {
            t.B("seekBar");
            trimSeekBar = null;
        }
        trimSeekBar.setSeekBarChangeListener(this);
        View viewFindViewById11 = findViewById(R.id.render_record_view);
        t.i(viewFindViewById11, "findViewById(...)");
        this.renderRecordView = (RenderRecordView) viewFindViewById11;
        ProgressDialog progressDialog2 = new ProgressDialog(getContext());
        this.mProgressDialog = progressDialog2;
        progressDialog2.setCancelable(true);
        ProgressDialog progressDialog3 = this.mProgressDialog;
        if (progressDialog3 == null) {
            t.B("mProgressDialog");
        } else {
            progressDialog = progressDialog3;
        }
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.editor.cropping.dynamic.a
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                DynamicCroppingActivity.onCreate$lambda$0(dialogInterface);
            }
        });
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.timer.cancel();
        NVExoPlayer nVExoPlayer = this.player;
        NVExoPlayer nVExoPlayer2 = null;
        if (nVExoPlayer == null) {
            t.B("player");
            nVExoPlayer = null;
        }
        nVExoPlayer.reset();
        NVExoPlayer nVExoPlayer3 = this.player;
        if (nVExoPlayer3 == null) {
            t.B("player");
        } else {
            nVExoPlayer2 = nVExoPlayer3;
        }
        nVExoPlayer2.release();
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        NVExoPlayer nVExoPlayer = this.player;
        if (nVExoPlayer == null) {
            t.B("player");
            nVExoPlayer = null;
        }
        nVExoPlayer.setPlayWhenReady(false);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        getVideoFrameRate();
        if (this.isPlaying) {
            SimpleGLSurfaceView simpleGLSurfaceView = this.playingSurfaceView;
            if (simpleGLSurfaceView == null) {
                t.B("playingSurfaceView");
                simpleGLSurfaceView = null;
            }
            simpleGLSurfaceView.setPlaying(true);
        }
    }
}
