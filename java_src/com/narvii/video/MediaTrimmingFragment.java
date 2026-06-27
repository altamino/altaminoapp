package com.narvii.video;

import android.app.ActionBar;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NotificationCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.narvii.photos.PhotoManager;
import com.narvii.pip.PipInfoPack;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.services.VideoManager;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.VolumeProgressView;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import ffmpeg.base.MediaEditingConfig;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KProperty;

/* compiled from: MediaTrimmingFragment.kt */
/* loaded from: classes3.dex */
public final class MediaTrimmingFragment extends BaseMediaEditorFragment implements VolumeProgressView.OnVolumeChangedListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MediaTrimmingFragment.class), NotificationCompat.CATEGORY_PROGRESS, "getProgress()Lcom/narvii/util/dialog/ProgressDialog;"))};
    public static final Companion Companion = new Companion(null);
    public static final String TAG_SCREENSHOT_TASK = "screenshot";
    public static final String TAG_VIDEO_TASK = "video";
    private HashMap _$_findViewCache;
    private AVClipInfoPack activeMedia;
    private boolean cancelled;
    private FrameRetrieverManager frameRetrieverManager;
    private volatile boolean hasFailedTaskInThisShot;
    private MediaEditingConfig inProcessCoverImageTask;
    private MediaEditingConfig inProcessTrimTask;
    private volatile int inProgressTaskCount;
    private StreamInfo inputStreamInfo;
    private int maxOutputLength;
    private int minOutputLength;
    private AVClipInfoPack originalMedia;
    private int outputDuration;
    private String outputFileName;
    private int outputHeight;
    private int outputWidth;
    private PhotoManager photoManager;
    private boolean tasksTouchDown;
    private boolean volumeChanged;
    private boolean isVideoTrimming = true;
    private final Lazy progress$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ProgressDialog>() { // from class: com.narvii.video.MediaTrimmingFragment$progress$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ProgressDialog invoke() {
            ProgressDialog progressDialog = new ProgressDialog(this.this$0.getContext());
            progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.video.MediaTrimmingFragment$progress$2.1
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    MediaTrimmingFragment mediaTrimmingFragment = MediaTrimmingFragment$progress$2.this.this$0;
                    mediaTrimmingFragment.cancelled = mediaTrimmingFragment.getInProgressTaskCount() > 0;
                    MediaEditingConfig mediaEditingConfig = MediaTrimmingFragment$progress$2.this.this$0.inProcessTrimTask;
                    if (mediaEditingConfig != null) {
                        MediaTrimmingFragment$progress$2.this.this$0.getVideoManager().abort(mediaEditingConfig);
                    }
                    MediaEditingConfig mediaEditingConfig2 = MediaTrimmingFragment$progress$2.this.this$0.inProcessCoverImageTask;
                    if (mediaEditingConfig2 != null) {
                        MediaTrimmingFragment$progress$2.this.this$0.getVideoManager().abort(mediaEditingConfig2);
                    }
                    if (MediaTrimmingFragment$progress$2.this.this$0.getTasksTouchDown()) {
                        return;
                    }
                    BaseMediaEditorFragment.changeVideoPlaybackStatus$default(MediaTrimmingFragment$progress$2.this.this$0, false, false, 2, null);
                    MediaTrimmingFragment$progress$2.this.this$0.setAutoPlaying(true);
                }
            });
            return progressDialog;
        }
    });
    private float volume = 1.0f;

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "MediaTrim";
    }

    public final ProgressDialog getProgress() {
        Lazy lazy = this.progress$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ProgressDialog) lazy.getValue();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void innerOnVideoPrepared() {
    }

    public static final /* synthetic */ String access$getOutputFileName$p(MediaTrimmingFragment mediaTrimmingFragment) {
        String str = mediaTrimmingFragment.outputFileName;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("outputFileName");
        throw null;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        setPreviewVideoView((NVEditorPreviewVideoVIew) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_view_player));
        setPlayerButton((ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.player_button));
        setPauseShadow(_$_findCachedViewById(com.narvii.mediaeditor.R.id.pause_shadow));
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<AVClipInfoPack> getVideoInputClipList() {
        AVClipInfoPack aVClipInfoPack;
        ArrayList<AVClipInfoPack> arrayList = new ArrayList<>();
        if (this.isVideoTrimming && (aVClipInfoPack = this.activeMedia) != null) {
            if (aVClipInfoPack == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            arrayList.add(aVClipInfoPack);
        }
        return arrayList;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<AVClipInfoPack> getAudioInputClipList() {
        AVClipInfoPack aVClipInfoPack;
        ArrayList<AVClipInfoPack> arrayList = new ArrayList<>();
        if (!this.isVideoTrimming && (aVClipInfoPack = this.activeMedia) != null) {
            if (aVClipInfoPack == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            arrayList.add(aVClipInfoPack);
        }
        return arrayList;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<Caption> getCaptionList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<StickerInfoPack> getStickerList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<PipInfoPack> getPipClipList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onVideoPlaybackStatusChanged(boolean z) {
        MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_time_line_component);
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.playbackStatusChanged(z);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onActiveVideoChanged(int i, boolean z) {
        super.onActiveVideoChanged(i, z);
        MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_time_line_component);
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.setActiveClipInTrack(i);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onSeekingStatusChanged(boolean z) {
        MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_time_line_component);
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.setSeeking(z);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(int i, int i2) {
        if (i2 >= 0) {
            TextView time_line_controller_length = (TextView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.time_line_controller_length);
            Intrinsics.checkExpressionValueIsNotNull(time_line_controller_length, "time_line_controller_length");
            time_line_controller_length.setText(formatCropInterval(i2));
        }
        super.onFrameLocatedDuringMove(i, i2);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onReplayTriggered(int i, int i2, int i3) {
        AVClipInfoPack aVClipInfoPack;
        super.onReplayTriggered(i, i2, i3);
        if ((i3 == 3 || i3 == 2) && (aVClipInfoPack = this.activeMedia) != null) {
            double d = i;
            double d2 = aVClipInfoPack.speed;
            Double.isNaN(d);
            aVClipInfoPack.trimStartInMs = (int) (d * d2);
            double d3 = i2;
            Double.isNaN(d3);
            aVClipInfoPack.trimEndInMs = (int) (d3 * d2);
        }
    }

    /* compiled from: MediaTrimmingFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* compiled from: MediaTrimmingFragment.kt */
        private static final class DefaultVideoServiceCallback implements IVideoServiceCallback {
            private final WeakReference<MediaTrimmingFragment> ref;

            public DefaultVideoServiceCallback(MediaTrimmingFragment fragment) {
                Intrinsics.checkParameterIsNotNull(fragment, "fragment");
                this.ref = new WeakReference<>(fragment);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onExecutingTaskChanged(MediaEditingConfig newTask) {
                Intrinsics.checkParameterIsNotNull(newTask, "newTask");
                IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, newTask);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFrameBitmapLoaded(int i, Bitmap bitmap) {
                IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i, bitmap);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionStarted() {
                MediaTrimmingFragment mediaTrimmingFragment = this.ref.get();
                if (mediaTrimmingFragment == null || mediaTrimmingFragment.cancelled) {
                    return;
                }
                mediaTrimmingFragment.setInProgressTaskCount(mediaTrimmingFragment.getInProgressTaskCount() + 1);
                mediaTrimmingFragment.getProgress().show();
                mediaTrimmingFragment.getProgress().updateProgress("0%");
                mediaTrimmingFragment.setHasFailedTaskInThisShot(false);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionFailed(Exception exc) {
                Resources resources;
                MediaTrimmingFragment mediaTrimmingFragment = this.ref.get();
                if (mediaTrimmingFragment == null || mediaTrimmingFragment.cancelled) {
                    return;
                }
                mediaTrimmingFragment.setHasFailedTaskInThisShot(true);
                mediaTrimmingFragment.setInProgressTaskCount(mediaTrimmingFragment.getInProgressTaskCount() - 1);
                if (mediaTrimmingFragment.getInProgressTaskCount() == 0) {
                    mediaTrimmingFragment.getProgress().dismiss();
                    Context context = mediaTrimmingFragment.getContext();
                    Context context2 = mediaTrimmingFragment.getContext();
                    Toast.makeText(context, (context2 == null || (resources = context2.getResources()) == null) ? null : resources.getString(com.narvii.mediaeditor.R.string.try_again), 0).show();
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onProgress(float f, String str) {
                MediaTrimmingFragment mediaTrimmingFragment;
                ProgressDialog progress;
                if (!Intrinsics.areEqual(str, "video") || (mediaTrimmingFragment = this.ref.get()) == null || (progress = mediaTrimmingFragment.getProgress()) == null) {
                    return;
                }
                progress.updateProgress(String.valueOf((int) ((f * 100) + 0.5f)) + "%");
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onVideoProcessed(String path) {
                Intrinsics.checkParameterIsNotNull(path, "path");
                touchDown();
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFramePicturesLoaded(int i, File file) {
                touchDown();
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionCancelled() {
                MediaTrimmingFragment mediaTrimmingFragment = this.ref.get();
                if (mediaTrimmingFragment != null) {
                    mediaTrimmingFragment.setInProgressTaskCount(mediaTrimmingFragment.getInProgressTaskCount() - 1);
                    if (mediaTrimmingFragment.getInProgressTaskCount() == 0) {
                        mediaTrimmingFragment.getProgress().dismiss();
                    }
                }
            }

            private final void touchDown() {
                Resources resources;
                MediaTrimmingFragment mediaTrimmingFragment = this.ref.get();
                if (mediaTrimmingFragment == null || mediaTrimmingFragment.cancelled) {
                    return;
                }
                mediaTrimmingFragment.setInProgressTaskCount(mediaTrimmingFragment.getInProgressTaskCount() - 1);
                if (mediaTrimmingFragment.getInProgressTaskCount() == 0) {
                    mediaTrimmingFragment.setTasksTouchDown(!mediaTrimmingFragment.getHasFailedTaskInThisShot());
                    mediaTrimmingFragment.getProgress().dismiss();
                    if (mediaTrimmingFragment.getHasFailedTaskInThisShot()) {
                        Context context = mediaTrimmingFragment.getContext();
                        Context context2 = mediaTrimmingFragment.getContext();
                        Toast.makeText(context, (context2 == null || (resources = context2.getResources()) == null) ? null : resources.getString(com.narvii.mediaeditor.R.string.try_again), 0).show();
                        return;
                    }
                    Intent intent = new Intent();
                    intent.putExtra("outputVideoPath", new File(mediaTrimmingFragment.getOutputFileDir(), MediaTrimmingFragment.access$getOutputFileName$p(mediaTrimmingFragment) + ".mp4").getPath());
                    intent.putExtra("outputVideoDuration", mediaTrimmingFragment.outputDuration);
                    intent.putExtra("outputVideoWidth", mediaTrimmingFragment.outputWidth);
                    intent.putExtra("outputVideoHeight", mediaTrimmingFragment.outputHeight);
                    intent.putExtra("entryInfo", mediaTrimmingFragment.getStringParam("entryInfo"));
                    mediaTrimmingFragment.setResult(-1, intent);
                    mediaTrimmingFragment.finish();
                }
            }
        }
    }

    public final int getInProgressTaskCount() {
        return this.inProgressTaskCount;
    }

    public final void setInProgressTaskCount(int i) {
        this.inProgressTaskCount = i;
    }

    public final boolean getHasFailedTaskInThisShot() {
        return this.hasFailedTaskInThisShot;
    }

    public final void setHasFailedTaskInThisShot(boolean z) {
        this.hasFailedTaskInThisShot = z;
    }

    public final boolean getTasksTouchDown() {
        return this.tasksTouchDown;
    }

    public final void setTasksTouchDown(boolean z) {
        this.tasksTouchDown = z;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return Utils.isAndroidVersion8() ? com.narvii.mediaeditor.R.style.AminoTheme_Overlay : com.narvii.mediaeditor.R.style.AminoTheme_Translucent_NoActionBar;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(com.narvii.mediaeditor.R.layout.fragment_media_trimming, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        ActionBar actionBar;
        FragmentActivity activity = getActivity();
        if (activity != null && (actionBar = activity.getActionBar()) != null) {
            actionBar.hide();
        }
        this.frameRetrieverManager = new FrameRetrieverManager(this);
        this.isVideoTrimming = getBooleanParam("isVideoTrimming");
        String stringParam = getStringParam("clipInfoPack");
        AVClipInfoPack aVClipInfoPack = stringParam != null ? (AVClipInfoPack) JacksonUtils.DEFAULT_MAPPER.readValue(stringParam, AVClipInfoPack.class) : null;
        if (aVClipInfoPack == null) {
            String stringParam2 = getStringParam("inputFile");
            if (stringParam2 == null || !new File(stringParam2).exists()) {
                BaseMediaEditorFragment.showInvalidDialog$default(this, false, 1, null);
                super.onActivityCreated(bundle);
                return;
            } else {
                AVClipInfoPack aVClipInfoPack2 = new AVClipInfoPack();
                aVClipInfoPack2.inputPath = stringParam2;
                aVClipInfoPack2.indexInScene = 0;
                aVClipInfoPack = aVClipInfoPack2;
            }
        }
        if (aVClipInfoPack != null) {
            this.originalMedia = aVClipInfoPack;
            AVClipInfoPack aVClipInfoPack3 = this.originalMedia;
            if (aVClipInfoPack3 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            this.activeMedia = aVClipInfoPack3.copy();
            super.onActivityCreated(bundle);
            return;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() throws Resources.NotFoundException {
        String nameWithoutExtension;
        super.onAVClipsPrepared();
        if (!getInitSuccess() || this.activeMedia == null) {
            return;
        }
        Object service = getService("videoManager");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService<VideoManager>(\"videoManager\")");
        setVideoManager((VideoManager) service);
        this.minOutputLength = getIntParam("minOutputLength");
        this.maxOutputLength = getIntParam("maxOutputLength");
        if (this.minOutputLength <= 0) {
            this.minOutputLength = 3000;
        }
        if (this.maxOutputLength <= 0) {
            this.maxOutputLength = 15000;
        }
        AVClipInfoPack aVClipInfoPack = this.activeMedia;
        if (aVClipInfoPack == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        if (aVClipInfoPack.isTrimSectionValid()) {
            AVClipInfoPack aVClipInfoPack2 = this.activeMedia;
            if (aVClipInfoPack2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            int iTrimmedDurationInMsWithSpeed = aVClipInfoPack2.trimmedDurationInMsWithSpeed();
            int i = this.maxOutputLength;
            if (iTrimmedDurationInMsWithSpeed > i) {
                AVClipInfoPack aVClipInfoPack3 = this.activeMedia;
                if (aVClipInfoPack3 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                if (aVClipInfoPack3 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                double d = aVClipInfoPack3.trimStartInMs;
                double d2 = i;
                if (aVClipInfoPack3 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                double d3 = aVClipInfoPack3.speed;
                Double.isNaN(d2);
                Double.isNaN(d);
                aVClipInfoPack3.trimEndInMs = (int) (d + (d2 * d3));
            }
        }
        this.photoManager = new PhotoManager(this);
        if (getNeedRealOutput()) {
            PhotoManager photoManager = this.photoManager;
            if (photoManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("photoManager");
                throw null;
            }
            File outputFileDir = getOutputFileDir();
            if (outputFileDir == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            String newVideoName = photoManager.getNewVideoName(outputFileDir);
            Intrinsics.checkExpressionValueIsNotNull(newVideoName, "photoManager.getNewVideoName(outputFileDir!!)");
            this.outputFileName = newVideoName;
        }
        FrameRetrieverManager frameRetrieverManager = this.frameRetrieverManager;
        if (frameRetrieverManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("frameRetrieverManager");
            throw null;
        }
        AVClipInfoPack aVClipInfoPack4 = this.activeMedia;
        if (aVClipInfoPack4 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        File inputFile = aVClipInfoPack4.getInputFile();
        if (inputFile == null || (nameWithoutExtension = FilesKt__UtilsKt.getNameWithoutExtension(inputFile)) == null) {
            nameWithoutExtension = "default";
        }
        FrameRetrieverManager.initRetriever$default(frameRetrieverManager, nameWithoutExtension, "trim", false, false, 12, null);
        initOperationPanel();
        initMediaTimeLine$default(this, false, 1, null);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (getInitSuccess()) {
            ((MediaTimeLineComponent) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_time_line_component)).refreshTimeLine();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        if (getInitSuccess()) {
            FrameRetrieverManager frameRetrieverManager = this.frameRetrieverManager;
            if (frameRetrieverManager != null) {
                frameRetrieverManager.abortFlyingFrameRetrievers();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("frameRetrieverManager");
                throw null;
            }
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        MediaEditingConfig mediaEditingConfig = this.inProcessTrimTask;
        if (mediaEditingConfig != null) {
            getVideoManager().abort(mediaEditingConfig);
        }
        MediaEditingConfig mediaEditingConfig2 = this.inProcessCoverImageTask;
        if (mediaEditingConfig2 != null) {
            getVideoManager().abort(mediaEditingConfig2);
        }
        if (getInitSuccess()) {
            FrameRetrieverManager frameRetrieverManager = this.frameRetrieverManager;
            if (frameRetrieverManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("frameRetrieverManager");
                throw null;
            }
            frameRetrieverManager.doClean(getNeedRealOutput());
        }
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void updateAVClipDurations(AVClipInfoPack clip, int i) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        clip.visibleDurationInMs = i;
        clip.orgDurationInMs = i;
    }

    private final void initOperationPanel() {
        int i = this.isVideoTrimming ? 1 : 2;
        MediaOptionPanel mediaOptionPanel = (MediaOptionPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.options_panel);
        String string = getString(com.narvii.mediaeditor.R.string.trim);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.trim)");
        mediaOptionPanel.initComponent(i, string, new MediaOptionPanel.OptionSelectedListener() { // from class: com.narvii.video.MediaTrimmingFragment.initOperationPanel.1
            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onAddMusicSelected() {
                MediaOptionPanel.OptionSelectedListener.DefaultImpls.onAddMusicSelected(this);
            }

            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onOptionCancel(int i2) {
                if (i2 == 1) {
                    MediaTrimmingFragment.this.setResult(0);
                    MediaTrimmingFragment.this.finish();
                }
            }

            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onOptionDone(int i2) throws Resources.NotFoundException {
                MediaTrimmingFragment.this.cancelled = false;
                MediaTrimmingFragment.this.changeVideoPlaybackStatus(true, false);
                MediaTrimmingFragment.this.setAutoPlaying(false);
                MediaTrimmingFragment.this.processMedia();
            }
        });
    }

    static /* synthetic */ void initMediaTimeLine$default(MediaTrimmingFragment mediaTrimmingFragment, boolean z, int i, Object obj) throws Resources.NotFoundException {
        if ((i & 1) != 0) {
            z = false;
        }
        mediaTrimmingFragment.initMediaTimeLine(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void initMediaTimeLine(boolean r26) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.video.MediaTrimmingFragment.initMediaTimeLine(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processMedia() throws Resources.NotFoundException {
        Resources resources;
        int[] curCutPosition = ((MediaTimeLineComponent) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_time_line_component)).getCurCutPosition();
        ArrayList arrayList = new ArrayList(curCutPosition.length);
        boolean booleanParam = false;
        for (double d : curCutPosition) {
            AVClipInfoPack aVClipInfoPack = this.originalMedia;
            double d2 = aVClipInfoPack != null ? aVClipInfoPack.speed : 1.0d;
            Double.isNaN(d);
            arrayList.add(Integer.valueOf((int) (d * d2)));
        }
        if (getNeedRealOutput()) {
            String string = null;
            if (this.activeMedia == null) {
                Context context = getContext();
                Context context2 = getContext();
                if (context2 != null && (resources = context2.getResources()) != null) {
                    string = resources.getString(com.narvii.mediaeditor.R.string.try_again);
                }
                Toast.makeText(context, string, 0).show();
                return;
            }
            int iIntValue = ((Number) arrayList.get(0)).intValue();
            this.outputDuration = ((Number) arrayList.get(1)).intValue() - ((Number) arrayList.get(0)).intValue();
            double d3 = iIntValue;
            double d4 = this.outputDuration;
            Double.isNaN(d4);
            Double.isNaN(d3);
            int i = (int) (d3 + (d4 * 0.3d));
            File outputFileDir = getOutputFileDir();
            StringBuilder sb = new StringBuilder();
            String str = this.outputFileName;
            if (str != null) {
                sb.append(str);
                sb.append(".mp4");
                File file = new File(outputFileDir, sb.toString());
                File outputFileDir2 = getOutputFileDir();
                StringBuilder sb2 = new StringBuilder();
                String str2 = this.outputFileName;
                if (str2 != null) {
                    sb2.append(str2);
                    sb2.append(".jpg");
                    File file2 = new File(outputFileDir2, sb2.toString());
                    MediaEditingConfig mediaEditingConfig = this.inProcessTrimTask;
                    if (mediaEditingConfig != null) {
                        getVideoManager().abort(mediaEditingConfig);
                    }
                    VideoManager videoManager = getVideoManager();
                    AVClipInfoPack aVClipInfoPack2 = this.activeMedia;
                    if (aVClipInfoPack2 == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    this.inProcessTrimTask = videoManager.cropVideo(aVClipInfoPack2, file, this.outputDuration, iIntValue, new Companion.DefaultVideoServiceCallback(this), "video");
                    StreamInfo streamInfo = this.inputStreamInfo;
                    int i2 = streamInfo != null ? streamInfo.width : 720;
                    StreamInfo streamInfo2 = this.inputStreamInfo;
                    int i3 = streamInfo2 != null ? streamInfo2.height : 1280;
                    MediaEditingConfig mediaEditingConfig2 = this.inProcessCoverImageTask;
                    if (mediaEditingConfig2 != null) {
                        getVideoManager().abort(mediaEditingConfig2);
                    }
                    if (i3 > i2) {
                        this.outputWidth = 720;
                        this.outputHeight = i2 > 0 ? (int) (i3 * (720.0f / i2)) : 1280;
                        VideoManager videoManager2 = getVideoManager();
                        AVClipInfoPack aVClipInfoPack3 = this.activeMedia;
                        if (aVClipInfoPack3 != null) {
                            this.inProcessCoverImageTask = videoManager2.getCoverImage(aVClipInfoPack3, file2, i, (88 & 8) != 0 ? -2 : 720, (88 & 16) != 0 ? -2 : 0, (88 & 32) != 0 ? null : new Companion.DefaultVideoServiceCallback(this), (88 & 64) != 0 ? null : null, (88 & 128) != 0 ? false : false);
                            return;
                        } else {
                            Intrinsics.throwNpe();
                            throw null;
                        }
                    }
                    this.outputHeight = 720;
                    this.outputWidth = i3 > 0 ? (int) (i2 * (720.0f / i3)) : 1280;
                    VideoManager videoManager3 = getVideoManager();
                    AVClipInfoPack aVClipInfoPack4 = this.activeMedia;
                    if (aVClipInfoPack4 != null) {
                        this.inProcessCoverImageTask = videoManager3.getCoverImage(aVClipInfoPack4, file2, i, (88 & 8) != 0 ? -2 : 0, (88 & 16) != 0 ? -2 : 720, (88 & 32) != 0 ? null : new Companion.DefaultVideoServiceCallback(this), (88 & 64) != 0 ? null : null, (88 & 128) != 0 ? false : false);
                        return;
                    } else {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                }
                Intrinsics.throwUninitializedPropertyAccessException("outputFileName");
                throw null;
            }
            Intrinsics.throwUninitializedPropertyAccessException("outputFileName");
            throw null;
        }
        Intent intent = new Intent();
        AVClipInfoPack aVClipInfoPack5 = this.originalMedia;
        if (aVClipInfoPack5 != null) {
            aVClipInfoPack5.trimStartInMs = ((Number) arrayList.get(0)).intValue();
            aVClipInfoPack5.trimEndInMs = ((Number) arrayList.get(1)).intValue();
            aVClipInfoPack5.trackVolume = this.volume;
            intent.putExtra("clipInfoList", JacksonUtils.writeAsString(CollectionsKt__CollectionsKt.arrayListOf(aVClipInfoPack5)));
            if (!this.volumeChanged) {
                booleanParam = getBooleanParam("mute", false);
            } else if (this.volume < 0.02f) {
                booleanParam = true;
            }
            intent.putExtra("mute", booleanParam);
        }
        setResult(-1, intent);
        finish();
    }

    private final String formatCropInterval(int i) {
        int i2 = com.narvii.mediaeditor.R.string.trim_selected_time;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.US");
        Object[] objArr = {Integer.valueOf(i / 1000), Integer.valueOf((i % 1000) / 100)};
        String str = String.format(locale, "%01d.%1d", Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(locale, format, *args)");
        String string = getString(i2, str);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.trim_…d.%1d\", seconds, millis))");
        return string;
    }

    @Override // com.narvii.video.widget.VolumeProgressView.OnVolumeChangedListener
    public void onVolumeChanged(int i) {
        this.volumeChanged = true;
        this.volume = (i * 1.0f) / 100;
        AVClipInfoPack aVClipInfoPack = this.activeMedia;
        if (aVClipInfoPack != null) {
            aVClipInfoPack.trackVolume = this.volume;
            getPreviewPlayer().setVolume(aVClipInfoPack, true);
        }
    }
}
