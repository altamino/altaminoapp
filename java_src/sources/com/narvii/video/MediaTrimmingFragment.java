package com.narvii.video;

import android.app.ActionBar;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import com.narvii.mediaeditor.databinding.FragmentMediaTrimmingBinding;
import com.narvii.photos.PhotoManager;
import com.narvii.pip.PipInfoPack;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.video.interfaces.IPreviewPlayer;
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
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class MediaTrimmingFragment extends BaseMediaEditorFragment implements VolumeProgressView.OnVolumeChangedListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {kotlin.jvm.internal.q0.g(new kotlin.jvm.internal.g0(MediaTrimmingFragment.class, "binding", "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;", 0))};

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG_SCREENSHOT_TASK = "screenshot";

    @NotNull
    public static final String TAG_VIDEO_TASK = "video";

    @Nullable
    private AVClipInfoPack activeMedia;
    private boolean cancelled;
    private FrameRetrieverManager frameRetrieverManager;
    private volatile boolean hasFailedTaskInThisShot;

    @Nullable
    private g7.d inProcessCoverImageTask;

    @Nullable
    private g7.d inProcessTrimTask;
    private volatile int inProgressTaskCount;

    @Nullable
    private StreamInfo inputStreamInfo;
    private int maxOutputLength;
    private int minOutputLength;

    @Nullable
    private AVClipInfoPack originalMedia;
    private int outputDuration;
    private String outputFileName;
    private int outputHeight;
    private int outputWidth;
    private PhotoManager photoManager;
    private boolean tasksTouchDown;
    private boolean volumeChanged;

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, MediaTrimmingFragment$binding$2.INSTANCE);
    private boolean isVideoTrimming = true;

    @NotNull
    private final w7.m progress$delegate = w7.o.a(new MediaTrimmingFragment$progress$2(this));
    private float volume = 1.0f;

    public static final class Companion {

        private static final class DefaultVideoServiceCallback implements IVideoServiceCallback {

            @NotNull
            private final WeakReference<MediaTrimmingFragment> ref;

            public DefaultVideoServiceCallback(@NotNull MediaTrimmingFragment fragment) {
                kotlin.jvm.internal.t.j(fragment, "fragment");
                this.ref = new WeakReference<>(fragment);
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
                    String string = null;
                    if (mediaTrimmingFragment.getHasFailedTaskInThisShot()) {
                        Context context = mediaTrimmingFragment.getContext();
                        Context context2 = mediaTrimmingFragment.getContext();
                        if (context2 != null && (resources = context2.getResources()) != null) {
                            string = resources.getString(com.narvii.mediaeditor.R.string.try_again);
                        }
                        Toast.makeText(context, string, 0).show();
                        return;
                    }
                    Intent intent = new Intent();
                    File outputFileDir = mediaTrimmingFragment.getOutputFileDir();
                    StringBuilder sb = new StringBuilder();
                    String str = mediaTrimmingFragment.outputFileName;
                    if (str == null) {
                        kotlin.jvm.internal.t.B("outputFileName");
                    } else {
                        string = str;
                    }
                    sb.append(string);
                    sb.append(".mp4");
                    intent.putExtra("outputVideoPath", new File(outputFileDir, sb.toString()).getPath());
                    intent.putExtra("outputVideoDuration", mediaTrimmingFragment.outputDuration);
                    intent.putExtra("outputVideoWidth", mediaTrimmingFragment.outputWidth);
                    intent.putExtra("outputVideoHeight", mediaTrimmingFragment.outputHeight);
                    intent.putExtra("entryInfo", mediaTrimmingFragment.getStringParam("entryInfo"));
                    mediaTrimmingFragment.setResult(-1, intent);
                    mediaTrimmingFragment.finish();
                }
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

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionFailed(@Nullable Exception exc) {
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
            public void onVideoProcessed(@NotNull String path) {
                kotlin.jvm.internal.t.j(path, "path");
                touchDown();
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onExecutingTaskChanged(@NotNull g7.d dVar) {
                IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, dVar);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFrameBitmapLoaded(int i10, @Nullable Bitmap bitmap) {
                IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i10, bitmap);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFramePicturesLoaded(int i10, @Nullable File file) {
                touchDown();
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onProgress(float f, @Nullable String str) {
                MediaTrimmingFragment mediaTrimmingFragment;
                ProgressDialog progress;
                if (kotlin.jvm.internal.t.e(str, "video") && (mediaTrimmingFragment = this.ref.get()) != null && (progress = mediaTrimmingFragment.getProgress()) != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append((int) ((f * 100) + 0.5f));
                    sb.append('%');
                    progress.updateProgress(sb.toString());
                }
            }
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final boolean getHasFailedTaskInThisShot() {
        return this.hasFailedTaskInThisShot;
    }

    public final int getInProgressTaskCount() {
        return this.inProgressTaskCount;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "media_trim";
    }

    public final boolean getTasksTouchDown() {
        return this.tasksTouchDown;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void innerOnVideoPrepared() {
    }

    @Override // com.narvii.video.widget.VolumeProgressView.OnVolumeChangedListener
    public void onVolumeChanged(int i10) {
        this.volumeChanged = true;
        float f = (i10 * 1.0f) / 100;
        this.volume = f;
        AVClipInfoPack aVClipInfoPack = this.activeMedia;
        if (aVClipInfoPack != null) {
            aVClipInfoPack.trackVolume = f;
            getPreviewPlayer().setVolume(aVClipInfoPack, true);
        }
    }

    public final void setHasFailedTaskInThisShot(boolean z6) {
        this.hasFailedTaskInThisShot = z6;
    }

    public final void setInProgressTaskCount(int i10) {
        this.inProgressTaskCount = i10;
    }

    public final void setTasksTouchDown(boolean z6) {
        this.tasksTouchDown = z6;
    }

    private final String formatCropInterval(int i10) {
        int i11 = com.narvii.mediaeditor.R.string.trim_selected_time;
        kotlin.jvm.internal.u0 u0Var = kotlin.jvm.internal.u0.INSTANCE;
        String str = String.format(Locale.US, "%01d.%1d", Arrays.copyOf(new Object[]{Integer.valueOf(i10 / 1000), Integer.valueOf((i10 % 1000) / 100)}, 2));
        kotlin.jvm.internal.t.i(str, "format(...)");
        String string = getString(i11, str);
        kotlin.jvm.internal.t.i(string, "getString(...)");
        return string;
    }

    private final FragmentMediaTrimmingBinding getBinding() {
        return (FragmentMediaTrimmingBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0030  */
    /* JADX WARN: Code duplicated, block: B:17:0x0034  */
    /* JADX WARN: Code duplicated, block: B:18:0x0037  */
    /* JADX WARN: Code duplicated, block: B:21:0x003c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0043  */
    /* JADX WARN: Code duplicated, block: B:26:0x0054  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void initMediaTimeLine(boolean z6) {
        AVClipInfoPack aVClipInfoPack;
        StreamInfo streamInfo;
        StreamInfo streamInfo2;
        int i10;
        ?? r5;
        MediaTrimmingFragment mediaTrimmingFragment;
        FrameRetrieverManager frameRetrieverManager;
        File inputFile;
        AVClipInfoPack aVClipInfoPack2 = this.activeMedia;
        if (aVClipInfoPack2 != null && (inputFile = aVClipInfoPack2.getInputFile()) != null && !inputFile.exists()) {
            BaseMediaEditorFragment.showInvalidDialog$default(this, false, 1, null);
            return;
        }
        AVClipInfoPack aVClipInfoPack3 = this.activeMedia;
        if (aVClipInfoPack3 == null) {
            aVClipInfoPack = this.activeMedia;
            if (aVClipInfoPack != null) {
                streamInfo = aVClipInfoPack.streamInfo;
            } else {
                streamInfo = null;
            }
            this.inputStreamInfo = streamInfo;
            if (streamInfo != null) {
                kotlin.jvm.internal.t.g(streamInfo);
                if (!streamInfo.hasError) {
                    streamInfo2 = this.inputStreamInfo;
                    kotlin.jvm.internal.t.g(streamInfo2);
                    if (isInputCodecSupported(streamInfo2)) {
                        StreamInfo streamInfo3 = this.inputStreamInfo;
                        kotlin.jvm.internal.t.g(streamInfo3);
                        i10 = streamInfo3.durationInMs;
                    }
                }
            }
            BaseMediaEditorFragment.showInvalidDialog$default(this, false, 1, null);
            return;
        }
        kotlin.jvm.internal.t.g(aVClipInfoPack3);
        String inputPath = aVClipInfoPack3.inputPath;
        kotlin.jvm.internal.t.i(inputPath, "inputPath");
        if (!isImageInput(inputPath)) {
            aVClipInfoPack = this.activeMedia;
            if (aVClipInfoPack != null) {
                streamInfo = aVClipInfoPack.streamInfo;
            } else {
                streamInfo = null;
            }
            this.inputStreamInfo = streamInfo;
            if (streamInfo != null) {
                kotlin.jvm.internal.t.g(streamInfo);
                if (!streamInfo.hasError) {
                    streamInfo2 = this.inputStreamInfo;
                    kotlin.jvm.internal.t.g(streamInfo2);
                    if (isInputCodecSupported(streamInfo2)) {
                        StreamInfo streamInfo4 = this.inputStreamInfo;
                        kotlin.jvm.internal.t.g(streamInfo4);
                        i10 = streamInfo4.durationInMs;
                    }
                }
            }
            BaseMediaEditorFragment.showInvalidDialog$default(this, false, 1, null);
            return;
        }
        i10 = 5000;
        AVClipInfoPack aVClipInfoPack4 = this.activeMedia;
        if (aVClipInfoPack4 != null) {
            aVClipInfoPack4.visibleDurationInMs = i10;
            aVClipInfoPack4.orgDurationInMs = i10;
            aVClipInfoPack4.setClipLengthComposition(kotlin.collections.u.e(Integer.valueOf(aVClipInfoPack4.clipLength())));
            int iTrimmedDurationInMsWithSpeed = aVClipInfoPack4.trimmedDurationInMsWithSpeed();
            int i11 = this.maxOutputLength;
            if (iTrimmedDurationInMsWithSpeed > i11) {
                aVClipInfoPack4.trimEndInMs = (int) (((double) aVClipInfoPack4.trimStartInMs) + (((double) i11) * aVClipInfoPack4.speed));
            } else {
                int i12 = this.minOutputLength;
                if (iTrimmedDurationInMsWithSpeed < i12) {
                    aVClipInfoPack4.trimEndInMs = (int) (((double) aVClipInfoPack4.trimStartInMs) + (((double) i12) * aVClipInfoPack4.speed));
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(aVClipInfoPack4);
            MediaTimeLineComponent videoTimeLineComponent = getBinding().videoTimeLineComponent;
            kotlin.jvm.internal.t.i(videoTimeLineComponent, "videoTimeLineComponent");
            IPreviewPlayer previewPlayer = getPreviewPlayer();
            FrameRetrieverManager frameRetrieverManager2 = this.frameRetrieverManager;
            if (frameRetrieverManager2 == null) {
                kotlin.jvm.internal.t.B("frameRetrieverManager");
                frameRetrieverManager = null;
            } else {
                frameRetrieverManager = frameRetrieverManager2;
            }
            MediaTrimmingFragment mediaTrimmingFragment2 = this;
            getBinding().timeLineControllerLength.setText(mediaTrimmingFragment2.formatCropInterval(videoTimeLineComponent.initTimeLine(100, 201, false, arrayList, previewPlayer, (40704 & 32) != 0 ? null : frameRetrieverManager, this.maxOutputLength, (40704 & 128) != 0 ? 3000 : Integer.valueOf(this.minOutputLength), (40704 & 256) != 0 ? -1.0f : 0.0f, (40704 & 512) != 0 ? false : false, (40704 & 1024) != 0 ? -1 : 0, (40704 & 2048) != 0 ? false : false, (40704 & 4096) != 0, (40704 & 8192) != 0 ? 0 : aVClipInfoPack4.trimmedDurationInMsWithSpeed(), (40704 & 16384) != 0 ? null : this, (40704 & 32768) != 0 ? false : false)));
            if (z6) {
                MediaTimeLineComponent videoTimeLineComponent2 = getBinding().videoTimeLineComponent;
                kotlin.jvm.internal.t.i(videoTimeLineComponent2, "videoTimeLineComponent");
                MediaTimeLineComponent.scrollTimeLine$default(videoTimeLineComponent2, aVClipInfoPack4.trimStartInMs, false, false, true, false, 0, false, 118, null);
                int i13 = aVClipInfoPack4.trimStartInMs;
                r5 = 0;
                BaseMediaEditorFragment.safeSeekTo$default(mediaTrimmingFragment2, 0, i13, 1, null);
                mediaTrimmingFragment = mediaTrimmingFragment2;
            } else {
                r5 = 0;
                mediaTrimmingFragment = mediaTrimmingFragment2;
            }
        } else {
            r5 = 0;
            mediaTrimmingFragment = this;
        }
        AVClipInfoPack aVClipInfoPack5 = mediaTrimmingFragment.activeMedia;
        mediaTrimmingFragment.volume = aVClipInfoPack5 != null ? aVClipInfoPack5.trackVolume : 1.0f;
        if (mediaTrimmingFragment.getBooleanParam("showVolume", r5)) {
            getBinding().volumeProgressView.setVisibility(r5);
            boolean booleanParam = mediaTrimmingFragment.getBooleanParam("mute", r5);
            VolumeProgressView volumeProgressView = getBinding().volumeProgressView;
            kotlin.jvm.internal.t.i(volumeProgressView, "volumeProgressView");
            VolumeProgressView.init$default(volumeProgressView, (int) (booleanParam ? 0.0f : mediaTrimmingFragment.volume * 100), this, false, 4, null);
        }
    }

    static /* synthetic */ void initMediaTimeLine$default(MediaTrimmingFragment mediaTrimmingFragment, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        mediaTrimmingFragment.initMediaTimeLine(z6);
    }

    private final void initOperationPanel() {
        int i10 = this.isVideoTrimming ? 1 : 2;
        MediaOptionPanel mediaOptionPanel = getBinding().optionsPanel;
        String string = getString(com.narvii.mediaeditor.R.string.trim);
        kotlin.jvm.internal.t.i(string, "getString(...)");
        mediaOptionPanel.initComponent(i10, string, new MediaOptionPanel.OptionSelectedListener() { // from class: com.narvii.video.MediaTrimmingFragment.initOperationPanel.1
            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onOptionCancel(int i11) {
                if (i11 == 1) {
                    MediaTrimmingFragment.this.setResult(0);
                    MediaTrimmingFragment.this.finish();
                }
            }

            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onOptionDone(int i11) {
                MediaTrimmingFragment.this.cancelled = false;
                MediaTrimmingFragment.this.changeVideoPlaybackStatus(true, false);
                MediaTrimmingFragment.this.setAutoPlaying(false);
                MediaTrimmingFragment.this.processMedia();
            }

            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onAddMusicSelected() {
                MediaOptionPanel.OptionSelectedListener.DefaultImpls.onAddMusicSelected(this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processMedia() {
        Resources resources;
        int[] curCutPosition = getBinding().videoTimeLineComponent.getCurCutPosition();
        ArrayList arrayList = new ArrayList(curCutPosition.length);
        boolean booleanParam = false;
        for (double d : curCutPosition) {
            AVClipInfoPack aVClipInfoPack = this.originalMedia;
            arrayList.add(Integer.valueOf((int) (d * (aVClipInfoPack != null ? aVClipInfoPack.speed : 1.0d))));
        }
        if (!getNeedRealOutput()) {
            Intent intent = new Intent();
            AVClipInfoPack aVClipInfoPack2 = this.originalMedia;
            if (aVClipInfoPack2 != null) {
                aVClipInfoPack2.trimStartInMs = ((Number) arrayList.get(0)).intValue();
                aVClipInfoPack2.trimEndInMs = ((Number) arrayList.get(1)).intValue();
                aVClipInfoPack2.trackVolume = this.volume;
                intent.putExtra("clipInfoList", JacksonUtils.writeAsString(kotlin.collections.v.g(aVClipInfoPack2)));
                if (!this.volumeChanged) {
                    booleanParam = getBooleanParam("mute", false);
                } else if (this.volume < 0.02f) {
                    booleanParam = true;
                }
                intent.putExtra("mute", booleanParam);
            }
            setResult(-1, intent);
            finish();
            return;
        }
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
        int iIntValue2 = ((Number) arrayList.get(1)).intValue() - ((Number) arrayList.get(0)).intValue();
        this.outputDuration = iIntValue2;
        int i10 = (int) (((double) iIntValue) + (((double) iIntValue2) * 0.3d));
        File outputFileDir = getOutputFileDir();
        StringBuilder sb = new StringBuilder();
        String str = this.outputFileName;
        if (str == null) {
            kotlin.jvm.internal.t.B("outputFileName");
            str = null;
        }
        sb.append(str);
        sb.append(".mp4");
        File file = new File(outputFileDir, sb.toString());
        File outputFileDir2 = getOutputFileDir();
        StringBuilder sb2 = new StringBuilder();
        String str2 = this.outputFileName;
        if (str2 == null) {
            kotlin.jvm.internal.t.B("outputFileName");
        } else {
            string = str2;
        }
        sb2.append(string);
        sb2.append(".jpg");
        File file2 = new File(outputFileDir2, sb2.toString());
        g7.d dVar = this.inProcessTrimTask;
        if (dVar != null) {
            getVideoManager().abort(dVar);
        }
        VideoManager videoManager = getVideoManager();
        AVClipInfoPack aVClipInfoPack3 = this.activeMedia;
        kotlin.jvm.internal.t.g(aVClipInfoPack3);
        this.inProcessTrimTask = videoManager.cropVideo(aVClipInfoPack3, file, this.outputDuration, iIntValue, new Companion.DefaultVideoServiceCallback(this), "video");
        StreamInfo streamInfo = this.inputStreamInfo;
        int i11 = streamInfo != null ? streamInfo.width : 720;
        int i12 = streamInfo != null ? streamInfo.height : 1280;
        g7.d dVar2 = this.inProcessCoverImageTask;
        if (dVar2 != null) {
            getVideoManager().abort(dVar2);
        }
        if (i12 > i11) {
            this.outputWidth = 720;
            this.outputHeight = i11 > 0 ? (int) (i12 * (720.0f / i11)) : 1280;
            VideoManager videoManager2 = getVideoManager();
            AVClipInfoPack aVClipInfoPack4 = this.activeMedia;
            kotlin.jvm.internal.t.g(aVClipInfoPack4);
            this.inProcessCoverImageTask = videoManager2.getCoverImage(aVClipInfoPack4, file2, i10, (88 & 8) != 0 ? -2 : 720, (88 & 16) != 0 ? -2 : 0, (88 & 32) != 0 ? null : new Companion.DefaultVideoServiceCallback(this), (88 & 64) != 0 ? null : null, (88 & 128) != 0 ? false : false);
            return;
        }
        this.outputHeight = 720;
        this.outputWidth = i12 > 0 ? (int) (i11 * (720.0f / i12)) : 1280;
        VideoManager videoManager3 = getVideoManager();
        AVClipInfoPack aVClipInfoPack5 = this.activeMedia;
        kotlin.jvm.internal.t.g(aVClipInfoPack5);
        this.inProcessCoverImageTask = videoManager3.getCoverImage(aVClipInfoPack5, file2, i10, (88 & 8) != 0 ? -2 : 0, (88 & 16) != 0 ? -2 : 720, (88 & 32) != 0 ? null : new Companion.DefaultVideoServiceCallback(this), (88 & 64) != 0 ? null : null, (88 & 128) != 0 ? false : false);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<AVClipInfoPack> getAudioInputClipList() {
        AVClipInfoPack aVClipInfoPack;
        ArrayList<AVClipInfoPack> arrayList = new ArrayList<>();
        if (!this.isVideoTrimming && (aVClipInfoPack = this.activeMedia) != null) {
            kotlin.jvm.internal.t.g(aVClipInfoPack);
            arrayList.add(aVClipInfoPack);
        }
        return arrayList;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<Caption> getCaptionList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<PipInfoPack> getPipClipList() {
        return new ArrayList<>();
    }

    @NotNull
    public final ProgressDialog getProgress() {
        return (ProgressDialog) this.progress$delegate.getValue();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<StickerInfoPack> getStickerList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<AVClipInfoPack> getVideoInputClipList() {
        AVClipInfoPack aVClipInfoPack;
        ArrayList<AVClipInfoPack> arrayList = new ArrayList<>();
        if (this.isVideoTrimming && (aVClipInfoPack = this.activeMedia) != null) {
            kotlin.jvm.internal.t.g(aVClipInfoPack);
            arrayList.add(aVClipInfoPack);
        }
        return arrayList;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(int i10, int i11) {
        if (i11 >= 0) {
            getBinding().timeLineControllerLength.setText(formatCropInterval(i11));
        }
        super.onFrameLocatedDuringMove(i10, i11);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void updateAVClipDurations(@NotNull AVClipInfoPack clip, int i10) {
        kotlin.jvm.internal.t.j(clip, "clip");
        clip.visibleDurationInMs = i10;
        clip.orgDurationInMs = i10;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        if (Utils.isAndroidVersion8()) {
            return com.narvii.mediaeditor.R.style.AminoTheme_Overlay;
        }
        return com.narvii.mediaeditor.R.style.AminoTheme_Translucent_NoActionBar;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        setPreviewVideoView(getBinding().videoViewPlayer);
        setPlayerButton(getBinding().playerButton);
        setPauseShadow(getBinding().pauseShadow);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() {
        FrameRetrieverManager frameRetrieverManager;
        String strS;
        super.onAVClipsPrepared();
        if (getInitSuccess() && this.activeMedia != null) {
            Object service = getService("videoManager");
            kotlin.jvm.internal.t.i(service, "getService(...)");
            setVideoManager((VideoManager) service);
            this.minOutputLength = getIntParam("minOutputLength");
            int intParam = getIntParam("maxOutputLength");
            this.maxOutputLength = intParam;
            if (this.minOutputLength <= 0) {
                this.minOutputLength = 3000;
            }
            if (intParam <= 0) {
                this.maxOutputLength = 15000;
            }
            AVClipInfoPack aVClipInfoPack = this.activeMedia;
            kotlin.jvm.internal.t.g(aVClipInfoPack);
            if (aVClipInfoPack.isTrimSectionValid()) {
                AVClipInfoPack aVClipInfoPack2 = this.activeMedia;
                kotlin.jvm.internal.t.g(aVClipInfoPack2);
                if (aVClipInfoPack2.trimmedDurationInMsWithSpeed() > this.maxOutputLength) {
                    AVClipInfoPack aVClipInfoPack3 = this.activeMedia;
                    kotlin.jvm.internal.t.g(aVClipInfoPack3);
                    AVClipInfoPack aVClipInfoPack4 = this.activeMedia;
                    kotlin.jvm.internal.t.g(aVClipInfoPack4);
                    double d = aVClipInfoPack4.trimStartInMs;
                    double d2 = this.maxOutputLength;
                    AVClipInfoPack aVClipInfoPack5 = this.activeMedia;
                    kotlin.jvm.internal.t.g(aVClipInfoPack5);
                    aVClipInfoPack3.trimEndInMs = (int) (d + (d2 * aVClipInfoPack5.speed));
                }
            }
            this.photoManager = new PhotoManager(this);
            if (getNeedRealOutput()) {
                PhotoManager photoManager = this.photoManager;
                if (photoManager == null) {
                    kotlin.jvm.internal.t.B("photoManager");
                    photoManager = null;
                }
                File outputFileDir = getOutputFileDir();
                kotlin.jvm.internal.t.g(outputFileDir);
                String newVideoName = photoManager.getNewVideoName(outputFileDir);
                kotlin.jvm.internal.t.i(newVideoName, "getNewVideoName(...)");
                this.outputFileName = newVideoName;
            }
            FrameRetrieverManager frameRetrieverManager2 = this.frameRetrieverManager;
            if (frameRetrieverManager2 == null) {
                kotlin.jvm.internal.t.B("frameRetrieverManager");
                frameRetrieverManager = null;
            } else {
                frameRetrieverManager = frameRetrieverManager2;
            }
            AVClipInfoPack aVClipInfoPack6 = this.activeMedia;
            kotlin.jvm.internal.t.g(aVClipInfoPack6);
            File inputFile = aVClipInfoPack6.getInputFile();
            if (inputFile == null || (strS = kotlin.io.n.s(inputFile)) == null) {
                strS = "default";
            }
            FrameRetrieverManager.initRetriever$default(frameRetrieverManager, strS, "trim", false, false, 12, null);
            initOperationPanel();
            initMediaTimeLine$default(this, false, 1, null);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onActiveVideoChanged(int i10, boolean z6) {
        super.onActiveVideoChanged(i10, z6);
        getBinding().videoTimeLineComponent.setActiveClipInTrack(i10);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) throws IOException {
        Object value;
        ActionBar actionBar;
        FragmentActivity activity = getActivity();
        if (activity != null && (actionBar = activity.getActionBar()) != null) {
            actionBar.hide();
        }
        this.frameRetrieverManager = new FrameRetrieverManager(this);
        this.isVideoTrimming = getBooleanParam("isVideoTrimming");
        String stringParam = getStringParam("clipInfoPack");
        if (stringParam != null) {
            value = JacksonUtils.DEFAULT_MAPPER.readValue(stringParam, (Class<Object>) AVClipInfoPack.class);
        } else {
            value = null;
        }
        if (value == null) {
            String stringParam2 = getStringParam("inputFile");
            if (stringParam2 != null && new File(stringParam2).exists()) {
                AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
                aVClipInfoPack.inputPath = stringParam2;
                aVClipInfoPack.indexInScene = 0;
                value = aVClipInfoPack;
            } else {
                BaseMediaEditorFragment.showInvalidDialog$default(this, false, 1, null);
                super.onActivityCreated(bundle);
                return;
            }
        }
        AVClipInfoPack aVClipInfoPack2 = (AVClipInfoPack) value;
        this.originalMedia = aVClipInfoPack2;
        kotlin.jvm.internal.t.g(aVClipInfoPack2);
        this.activeMedia = aVClipInfoPack2.copy();
        super.onActivityCreated(bundle);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        g7.d dVar = this.inProcessTrimTask;
        if (dVar != null) {
            getVideoManager().abort(dVar);
        }
        g7.d dVar2 = this.inProcessCoverImageTask;
        if (dVar2 != null) {
            getVideoManager().abort(dVar2);
        }
        if (getInitSuccess()) {
            FrameRetrieverManager frameRetrieverManager = this.frameRetrieverManager;
            if (frameRetrieverManager == null) {
                kotlin.jvm.internal.t.B("frameRetrieverManager");
                frameRetrieverManager = null;
            }
            frameRetrieverManager.doClean(getNeedRealOutput());
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (getInitSuccess()) {
            FrameRetrieverManager frameRetrieverManager = this.frameRetrieverManager;
            if (frameRetrieverManager == null) {
                kotlin.jvm.internal.t.B("frameRetrieverManager");
                frameRetrieverManager = null;
            }
            frameRetrieverManager.abortFlyingFrameRetrievers();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onReplayTriggered(int i10, int i11, int i12) {
        AVClipInfoPack aVClipInfoPack;
        super.onReplayTriggered(i10, i11, i12);
        if ((i12 == 2 || i12 == 3) && (aVClipInfoPack = this.activeMedia) != null) {
            double d = aVClipInfoPack.speed;
            aVClipInfoPack.trimStartInMs = (int) (((double) i10) * d);
            aVClipInfoPack.trimEndInMs = (int) (((double) i11) * d);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getInitSuccess()) {
            getBinding().videoTimeLineComponent.refreshTimeLine();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onSeekingStatusChanged(boolean z6) {
        getBinding().videoTimeLineComponent.setSeeking(z6);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onVideoPlaybackStatusChanged(boolean z6) {
        getBinding().videoTimeLineComponent.playbackStatusChanged(z6);
    }
}
