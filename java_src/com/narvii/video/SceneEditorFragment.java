package com.narvii.video;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.NotificationCompat;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.app.FragmentRegister;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.cropping.CroppingData;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.notification.Notification;
import com.narvii.photos.PhotoManager;
import com.narvii.pip.PipInfoPack;
import com.narvii.pre_editing.MediaPreEditingActivityKt;
import com.narvii.scene.SceneConstant;
import com.narvii.scene.StoryPostService;
import com.narvii.scene.helper.ScenePrefsHelper;
import com.narvii.scene.model.SceneInfo;
import com.narvii.scene.notification.SceneInfoObject;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.text.TextUtils;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.ITimelineClip;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.services.IEditorPackFactory;
import com.narvii.video.services.SceneMediaProcessor;
import com.narvii.video.widget.ClipFastSwitchingPanel;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.MediaTimeLineComponentKt;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import ffmpeg.base.MediaEditingConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: SceneEditorFragment.kt */
/* loaded from: classes3.dex */
public final class SceneEditorFragment extends ScrollingTimeLineFragment implements View.OnClickListener, MediaPickerFragment.OnResultListener, ClipFastSwitchingPanel.ClipFastSwitchingEventCallback {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneEditorFragment.class), NotificationCompat.CATEGORY_PROGRESS, "getProgress()Lcom/narvii/util/dialog/ProgressDialog;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneEditorFragment.class), "fragmentRegister", "getFragmentRegister()Lcom/narvii/app/FragmentRegister;"))};
    public static final Companion Companion = new Companion(null);
    public static final int MAX_CLIP_COUNT_PER_TRACK = 30;
    public static final int REQUEST_CODE_BASIC_CROPPING = 12345;
    public static final int REQUEST_CODE_EDIT_SPEED = 4444;
    public static final int REQUEST_CODE_SPLIT = 3333;
    public static final int REQUEST_CODE_VIDEO_PIP = 12346;
    public static final int REQUEST_SELECT_PIP_VIDEO = 12347;
    private HashMap _$_findViewCache;
    private ImageView addClipButton;
    private int flyingTaskCount;
    private boolean hasFailedTask;
    private File intermediateFolder;
    private MediaPickerFragment mediaPickerFragment;
    private String outputCoverImagePath;
    private File outputFolder;
    private String outputPath;
    private String outputPreviewVideoPath;
    private PhotoManager photoManager;
    private boolean previewTasksOnGoing;
    private MediaEditingConfig previewVideoGeneratingTask;
    private SceneInfo scene;
    private final ArrayList<AVClipInfoPack> orgVideoClipList = new ArrayList<>();
    private final ArrayList<AVClipInfoPack> orgAudioClipList = new ArrayList<>();
    private final ArrayList<Caption> orgCaptionList = new ArrayList<>();
    private final ArrayList<StickerInfoPack> orgStickerList = new ArrayList<>();
    private final ArrayList<PipInfoPack> orgPipList = new ArrayList<>();
    private final Lazy progress$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ProgressDialog>() { // from class: com.narvii.video.SceneEditorFragment$progress$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ProgressDialog invoke() {
            ProgressDialog progressDialog = new ProgressDialog(this.this$0.getContext());
            progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.video.SceneEditorFragment$progress$2.1
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    MediaEditingConfig mediaEditingConfig = SceneEditorFragment$progress$2.this.this$0.previewVideoGeneratingTask;
                    if (mediaEditingConfig != null) {
                        SceneEditorFragment$progress$2.this.this$0.getVideoManager().abort(mediaEditingConfig);
                    }
                }
            });
            return progressDialog;
        }
    });
    private final Lazy fragmentRegister$delegate = LazyKt__LazyJVMKt.lazy(new Function0<FragmentRegister>() { // from class: com.narvii.video.SceneEditorFragment$fragmentRegister$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final FragmentRegister invoke() {
            return (FragmentRegister) this.this$0.getService("fragmentRegister");
        }
    });

    private final FragmentRegister getFragmentRegister() {
        Lazy lazy = this.fragmentRegister$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (FragmentRegister) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressDialog getProgress() {
        Lazy lazy = this.progress$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ProgressDialog) lazy.getValue();
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
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

    /* compiled from: SceneEditorFragment.kt */
    /* renamed from: com.narvii.video.SceneEditorFragment$initOperationPanel$1, reason: invalid class name */
    static final class AnonymousClass1 extends Lambda implements Function2<View, ViewGroup, Unit> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(View view, ViewGroup viewGroup) {
            invoke2(view, viewGroup);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(View moveToPanelForTemplate, ViewGroup parent) {
            Intrinsics.checkParameterIsNotNull(moveToPanelForTemplate, "$this$moveToPanelForTemplate");
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            ViewParent parent2 = moveToPanelForTemplate.getParent();
            if (parent2 instanceof ViewGroup) {
                ViewGroup.LayoutParams layoutParams = moveToPanelForTemplate.getLayoutParams();
                if (layoutParams == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                }
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                ((ViewGroup) parent2).removeView(moveToPanelForTemplate);
                layoutParams2.width = 0;
                layoutParams2.weight = 1.0f;
                parent.addView(moveToPanelForTemplate, layoutParams2);
            }
        }
    }

    public static final /* synthetic */ ImageView access$getAddClipButton$p(SceneEditorFragment sceneEditorFragment) {
        ImageView imageView = sceneEditorFragment.addClipButton;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("addClipButton");
        throw null;
    }

    public static final /* synthetic */ File access$getOutputFolder$p(SceneEditorFragment sceneEditorFragment) {
        File file = sceneEditorFragment.outputFolder;
        if (file != null) {
            return file;
        }
        Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
        throw null;
    }

    public static final /* synthetic */ PhotoManager access$getPhotoManager$p(SceneEditorFragment sceneEditorFragment) {
        PhotoManager photoManager = sceneEditorFragment.photoManager;
        if (photoManager != null) {
            return photoManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("photoManager");
        throw null;
    }

    /* compiled from: SceneEditorFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        setVideoDurationText((TextView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_duration));
        setVideoPlaybackTimeText((TextView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_playback_time));
        setVideoPlaybackTimeDivider(_$_findCachedViewById(com.narvii.mediaeditor.R.id.divider));
        setPreviewVideoView((NVEditorPreviewVideoVIew) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_view_player));
        setPlayerButton((ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.player_button));
        setPauseShadow(_$_findCachedViewById(com.narvii.mediaeditor.R.id.pause_shadow));
        setMainTimeLineComponent((MediaTimeLineComponent) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_time_line_component));
        ImageView option_add_video = (ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.option_add_video);
        Intrinsics.checkExpressionValueIsNotNull(option_add_video, "option_add_video");
        this.addClipButton = option_add_video;
        if (NVApplication.isStoryEditorApp()) {
            return;
        }
        ImageView imageView = this.addClipButton;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addClipButton");
            throw null;
        }
        imageView.setImageDrawable(getResources().getDrawable(com.narvii.mediaeditor.R.drawable.ic_add_clip_shadow_purple));
        ((ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.empty_view_option_add_video)).setImageDrawable(getResources().getDrawable(com.narvii.mediaeditor.R.drawable.ic_add_clip_purple));
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment
    public void initFrameRetrieverManager() throws Resources.NotFoundException {
        String strValueOf;
        FrameRetrieverManager frameRetrieverManager = getFrameRetrieverManager();
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo == null || (strValueOf = sceneInfo.id) == null) {
            strValueOf = String.valueOf(Math.random());
        }
        FrameRetrieverManager.initRetriever$default(frameRetrieverManager, strValueOf, ScenePrefsHelper.SHARED_PREFS_NAME, true, false, 8, null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        setAutoPlaying(false);
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i = com.narvii.mediaeditor.R.id.cover_layer;
        if (numValueOf != null && numValueOf.intValue() == i) {
            View cover_layer = _$_findCachedViewById(com.narvii.mediaeditor.R.id.cover_layer);
            Intrinsics.checkExpressionValueIsNotNull(cover_layer, "cover_layer");
            cover_layer.setVisibility(8);
            ClipFastSwitchingPanel clip_fast_switching_panel = (ClipFastSwitchingPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.clip_fast_switching_panel);
            Intrinsics.checkExpressionValueIsNotNull(clip_fast_switching_panel, "clip_fast_switching_panel");
            clip_fast_switching_panel.setVisibility(8);
            return;
        }
        int i2 = com.narvii.mediaeditor.R.id.op_trim;
        if (numValueOf != null && numValueOf.intValue() == i2) {
            sendEditActionLog("Trim");
            opTrim();
            return;
        }
        int i3 = com.narvii.mediaeditor.R.id.op_split;
        if (numValueOf != null && numValueOf.intValue() == i3) {
            sendEditActionLog("Split");
            opSplit();
            return;
        }
        int i4 = com.narvii.mediaeditor.R.id.op_speed;
        if (numValueOf != null && numValueOf.intValue() == i4) {
            sendEditActionLog("Speed");
            opSpeed();
            return;
        }
        int i5 = com.narvii.mediaeditor.R.id.op_music;
        if (numValueOf == null || numValueOf.intValue() != i5) {
            int i6 = com.narvii.mediaeditor.R.id.op_sfx;
            if (numValueOf == null || numValueOf.intValue() != i6) {
                int i7 = com.narvii.mediaeditor.R.id.op_text;
                if (numValueOf != null && numValueOf.intValue() == i7) {
                    sendEditActionLog("Text");
                    opAttachment(1);
                    return;
                }
                int i8 = com.narvii.mediaeditor.R.id.op_sticker;
                if (numValueOf != null && numValueOf.intValue() == i8) {
                    sendEditActionLog("Sticker");
                    opAttachment(2);
                    return;
                }
                int i9 = com.narvii.mediaeditor.R.id.op_crop;
                if (numValueOf != null && numValueOf.intValue() == i9) {
                    sendEditActionLog("Crop");
                    opCrop();
                    return;
                }
                int i10 = com.narvii.mediaeditor.R.id.option_add_video;
                if (numValueOf != null && numValueOf.intValue() == i10) {
                    opAddVideo();
                    return;
                }
                int i11 = com.narvii.mediaeditor.R.id.empty_view_option_add_video;
                if (numValueOf != null && numValueOf.intValue() == i11) {
                    opAddVideo();
                    return;
                }
                int i12 = com.narvii.mediaeditor.R.id.op_pip;
                if (numValueOf != null && numValueOf.intValue() == i12) {
                    sendEditActionLog("Video");
                    opPIP();
                    return;
                }
                return;
            }
        }
        if (view.getId() == com.narvii.mediaeditor.R.id.op_music) {
            sendEditActionLog("Music");
        }
        opMusic(getPreviewPlayer().getAudioClipInfoList());
    }

    private final void sendEditActionLog(String str) {
        LogEvent.clickBuilder(this, ActSemantic.edit).area(str).send();
    }

    private final void opTrim() {
        Uri fragmentDeepLinkUri;
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip != null) {
            setSubVideoEditing(true);
            FragmentRegister fragmentRegister = getFragmentRegister();
            if (fragmentRegister == null || (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("mediaEditor")) == null) {
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
            intent.putExtra("clipInfoPack", JacksonUtils.writeAsString(activeVideoClip));
            intent.putExtra("isVideoTrimming", true);
            intent.putExtra("minOutputLength", 1000);
            startActivityForResult(intent, getREQUEST_CODE_SCENE_EDITOR());
        }
    }

    private final void opCrop() {
        FragmentRegister fragmentRegister;
        Uri fragmentDeepLinkUri;
        String str;
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip == null || (fragmentRegister = getFragmentRegister()) == null || (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("cropEditor")) == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
        intent.putExtra("active_video_clip", JacksonUtils.writeAsString(activeVideoClip));
        intent.putExtra("trim_tart", activeVideoClip.trimStartInMs);
        intent.putExtra("trim_end", activeVideoClip.trimEndInMs);
        intent.putExtra("source_path", activeVideoClip.inputPath);
        File file = this.intermediateFolder;
        if (file == null) {
            Intrinsics.throwUninitializedPropertyAccessException("intermediateFolder");
            throw null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("crop_");
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo == null || (str = sceneInfo.id) == null) {
            str = "default";
        }
        sb.append((Object) str);
        sb.append("_");
        sb.append(String.valueOf(System.currentTimeMillis()));
        sb.append(".mp4");
        intent.putExtra("dest_path", new File(file, sb.toString()).getAbsolutePath());
        CroppingData croppingData = activeVideoClip.croppingData;
        if (croppingData != null) {
            if (TextUtils.isEmpty(croppingData.orgVideoPath)) {
                activeVideoClip.croppingData.orgVideoPath = activeVideoClip.originalInputPath;
            }
            intent.putExtra("croppingData", JacksonUtils.writeAsString(activeVideoClip.croppingData));
        }
        startActivityForResult(intent, REQUEST_CODE_BASIC_CROPPING);
    }

    private final void opMusic(final List<? extends AVClipInfoPack> list) {
        Uri fragmentDeepLinkUri;
        FragmentRegister fragmentRegister = getFragmentRegister();
        if (fragmentRegister == null || (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("audioEditor")) == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
        intent.putExtra("inputVideoClipList", JacksonUtils.writeAsString(getPreviewPlayer().getVideoClipInfoList()));
        intent.putExtra("inputAudioClipList", JacksonUtils.writeAsString(list));
        intent.putExtra("inputCaptionList", JacksonUtils.writeAsString(getPreviewPlayer().getCaptionList()));
        intent.putExtra("inputStickerList", JacksonUtils.writeAsString(getPreviewPlayer().getStickerList()));
        intent.putExtra("frameRetrieverOutputFolder", getFrameRetrieverManager().getOutputFolderPath());
        startActivityForResult(intent, getREQUEST_CODE_SCENE_EDITOR());
        Utils.post(new Runnable() { // from class: com.narvii.video.SceneEditorFragment$opMusic$$inlined$let$lambda$1
            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.setSubAudioEditing(true);
            }
        });
    }

    private final void opSpeed() {
        FragmentRegister fragmentRegister;
        Uri fragmentDeepLinkUri;
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip == null || (fragmentRegister = getFragmentRegister()) == null || (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("mediaSpeed")) == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
        intent.putExtra("clipInfoPack", JacksonUtils.writeAsString(activeVideoClip));
        intent.putExtra("currentActiveIndex", activeVideoClip.indexInScene);
        intent.putExtra("minOutputLength", 1000);
        startActivityForResult(intent, REQUEST_CODE_EDIT_SPEED);
    }

    private final void opSplit() {
        Uri fragmentDeepLinkUri;
        FragmentRegister fragmentRegister = getFragmentRegister();
        if (fragmentRegister == null || (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("splitEditor")) == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
        intent.putExtra("inputVideoClipList", JacksonUtils.writeAsString(getPreviewPlayer().getVideoClipInfoList()));
        intent.putExtra("inputAudioClipList", JacksonUtils.writeAsString(getPreviewPlayer().getAudioClipInfoList()));
        intent.putExtra("inputCaptionList", JacksonUtils.writeAsString(getPreviewPlayer().getCaptionList()));
        intent.putExtra("inputStickerList", JacksonUtils.writeAsString(getPreviewPlayer().getStickerList()));
        intent.putExtra("frameRetrieverOutputFolder", getFrameRetrieverManager().getOutputFolderPath());
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        intent.putExtra("activeClipIndex", activeVideoClip != null ? activeVideoClip.indexInScene : 0);
        intent.putExtra("inClipPlaybackTime", getPreviewPlayer().getCurrentVideoPositionInClip());
        startActivityForResult(intent, REQUEST_CODE_SPLIT);
    }

    private final void opAttachment(int i) {
        FragmentRegister fragmentRegister;
        Uri fragmentDeepLinkUri;
        if (getPreviewPlayer().getVideoClipInfoList().isEmpty() || (fragmentRegister = getFragmentRegister()) == null || (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("attachmentEditor")) == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
        intent.putExtra("inputVideoClipList", JacksonUtils.writeAsString(getPreviewPlayer().getVideoClipInfoList()));
        intent.putExtra("inputAudioClipList", JacksonUtils.writeAsString(getPreviewPlayer().getAudioClipInfoList()));
        intent.putExtra("inputCaptionList", JacksonUtils.writeAsString(getPreviewPlayer().getCaptionList()));
        intent.putExtra("inputStickerList", JacksonUtils.writeAsString(getPreviewPlayer().getStickerList()));
        intent.putExtra("frameRetrieverOutputFolder", getFrameRetrieverManager().getOutputFolderPath());
        intent.putExtra("attachmentEntranceType", i);
        startActivityForResult(intent, getREQUEST_CODE_EDIT_ATTACHMENT());
    }

    private final void opAddVideo() {
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
            throw null;
        }
        StringBuilder sb = new StringBuilder();
        File file = this.intermediateFolder;
        if (file != null) {
            sb.append(file.getAbsolutePath());
            sb.append(File.separator);
            MediaPreEditingActivityKt.pickVideoFromGalleryAndYoutube$default(mediaPickerFragment, sb.toString(), 30 - getPreviewPlayer().getVideoClipInfoList().size(), 0, false, 24, null);
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("intermediateFolder");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0087 A[EDGE_INSN: B:23:0x0087->B:24:0x0088 BREAK  A[LOOP:1: B:17:0x0062->B:21:0x0082]] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c8 A[EDGE_INSN: B:33:0x00c8->B:34:0x00c9 BREAK  A[LOOP:2: B:27:0x00a3->B:31:0x00c3]] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0109 A[EDGE_INSN: B:43:0x0109->B:44:0x010a BREAK  A[LOOP:3: B:37:0x00e4->B:41:0x0104]] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x014a A[EDGE_INSN: B:53:0x014a->B:54:0x014b BREAK  A[LOOP:4: B:47:0x0125->B:51:0x0145]] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0158  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void doExit() {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.video.SceneEditorFragment.doExit():void");
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        ClipFastSwitchingPanel clip_fast_switching_panel = (ClipFastSwitchingPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.clip_fast_switching_panel);
        Intrinsics.checkExpressionValueIsNotNull(clip_fast_switching_panel, "clip_fast_switching_panel");
        if (clip_fast_switching_panel.getVisibility() == 0) {
            ClipFastSwitchingPanel clip_fast_switching_panel2 = (ClipFastSwitchingPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.clip_fast_switching_panel);
            Intrinsics.checkExpressionValueIsNotNull(clip_fast_switching_panel2, "clip_fast_switching_panel");
            clip_fast_switching_panel2.setVisibility(8);
            View cover_layer = _$_findCachedViewById(com.narvii.mediaeditor.R.id.cover_layer);
            Intrinsics.checkExpressionValueIsNotNull(cover_layer, "cover_layer");
            cover_layer.setVisibility(8);
            return true;
        }
        doExit();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    public ArrayList<AVClipInfoPack> getVideoInputClipList() {
        ArrayList<AVClipInfoPack> arrayList = new ArrayList<>();
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo == null) {
            return arrayList;
        }
        if (sceneInfo != null) {
            Intrinsics.checkExpressionValueIsNotNull(sceneInfo.videoClips, "scene!!.videoClips");
            if (!r1.isEmpty()) {
                SceneInfo sceneInfo2 = this.scene;
                if (sceneInfo2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                arrayList.addAll(sceneInfo2.videoClips);
            } else {
                SceneInfo sceneInfo3 = this.scene;
                if (sceneInfo3 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                int size = sceneInfo3.inputFilePathList.size();
                for (int i = 0; i < size; i++) {
                    AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
                    aVClipInfoPack.indexInScene = i;
                    SceneInfo sceneInfo4 = this.scene;
                    if (sceneInfo4 == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    aVClipInfoPack.inputPath = sceneInfo4.inputFilePathList.get(i);
                    SceneInfo sceneInfo5 = this.scene;
                    if (sceneInfo5 == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    aVClipInfoPack.originalInputPath = sceneInfo5.inputFilePathList.get(i);
                    SceneInfo sceneInfo6 = this.scene;
                    if (sceneInfo6 == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    List<Integer> list = sceneInfo6.inputFileFrom;
                    if (list != null) {
                        if (sceneInfo6 == null) {
                            Intrinsics.throwNpe();
                            throw null;
                        }
                        if (list.size() <= i) {
                            continue;
                        } else {
                            SceneInfo sceneInfo7 = this.scene;
                            if (sceneInfo7 == null) {
                                Intrinsics.throwNpe();
                                throw null;
                            }
                            Integer num = sceneInfo7.inputFileFrom.get(i);
                            Intrinsics.checkExpressionValueIsNotNull(num, "scene!!.inputFileFrom[index]");
                            aVClipInfoPack.videoSource = num.intValue();
                        }
                    }
                    arrayList.add(aVClipInfoPack);
                }
            }
            return arrayList;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<AVClipInfoPack> getAudioInputClipList() {
        ArrayList<AVClipInfoPack> arrayList = new ArrayList<>();
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo == null) {
            return arrayList;
        }
        if (sceneInfo != null) {
            Intrinsics.checkExpressionValueIsNotNull(sceneInfo.audioClips, "scene!!.audioClips");
            if (!r1.isEmpty()) {
                SceneInfo sceneInfo2 = this.scene;
                if (sceneInfo2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                arrayList.addAll(sceneInfo2.audioClips);
            }
            return arrayList;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<Caption> getCaptionList() {
        ArrayList<Caption> arrayList = new ArrayList<>();
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo == null) {
            return arrayList;
        }
        if (sceneInfo != null) {
            Intrinsics.checkExpressionValueIsNotNull(sceneInfo.captions, "scene!!.captions");
            if (!r1.isEmpty()) {
                SceneInfo sceneInfo2 = this.scene;
                if (sceneInfo2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                arrayList.addAll(sceneInfo2.captions);
            }
            return arrayList;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<StickerInfoPack> getStickerList() {
        ArrayList<StickerInfoPack> arrayList = new ArrayList<>();
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo == null) {
            return arrayList;
        }
        if (sceneInfo != null) {
            Intrinsics.checkExpressionValueIsNotNull(sceneInfo.stickers, "scene!!.stickers");
            if (!r1.isEmpty()) {
                SceneInfo sceneInfo2 = this.scene;
                if (sceneInfo2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                arrayList.addAll(sceneInfo2.stickers);
            }
            return arrayList;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<PipInfoPack> getPipClipList() {
        ArrayList<PipInfoPack> arrayList = new ArrayList<>();
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo == null) {
            return arrayList;
        }
        if (sceneInfo != null) {
            Intrinsics.checkExpressionValueIsNotNull(sceneInfo.pipClips, "scene!!.pipClips");
            if (!r1.isEmpty()) {
                SceneInfo sceneInfo2 = this.scene;
                if (sceneInfo2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                arrayList.addAll(sceneInfo2.pipClips);
            }
            return arrayList;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected boolean initInputClips() throws Resources.NotFoundException {
        String str;
        this.photoManager = new PhotoManager(this);
        String stringParam = getStringParam("sceneInfo");
        if (stringParam != null) {
            this.scene = (SceneInfo) JacksonUtils.DEFAULT_MAPPER.readValue(stringParam, SceneInfo.class);
        }
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo != null) {
            Iterator<AVClipInfoPack> it = sceneInfo.videoClips.iterator();
            while (it.hasNext()) {
                AVClipInfoPack next = it.next();
                next.originalInputPath = next.inputPath;
                this.orgVideoClipList.add(next.copy());
            }
            Iterator<AVClipInfoPack> it2 = sceneInfo.audioClips.iterator();
            while (it2.hasNext()) {
                this.orgAudioClipList.add(it2.next().copy());
            }
            Iterator<Caption> it3 = sceneInfo.captions.iterator();
            while (it3.hasNext()) {
                this.orgCaptionList.add(it3.next().copy());
            }
            Iterator<StickerInfoPack> it4 = sceneInfo.stickers.iterator();
            while (it4.hasNext()) {
                this.orgStickerList.add(it4.next().copy());
            }
            Iterator<PipInfoPack> it5 = sceneInfo.pipClips.iterator();
            while (it5.hasNext()) {
                this.orgPipList.add(it5.next().copy());
            }
            initOperationPanel(sceneInfo.isGeneratedFromTemplate());
        }
        String stringParam2 = getStringParam("outputFileDir");
        if (TextUtils.isEmpty(stringParam2)) {
            BaseMediaEditorFragment.showInvalidDialog$default(this, false, 1, null);
            return false;
        }
        setOutputFileDir(new File(stringParam2));
        File outputFileDir = getOutputFileDir();
        if (outputFileDir == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        if (!outputFileDir.exists()) {
            File outputFileDir2 = getOutputFileDir();
            if (outputFileDir2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            outputFileDir2.mkdirs();
        }
        File outputFileDir3 = getOutputFileDir();
        if (outputFileDir3 != null) {
            SceneInfo sceneInfo2 = this.scene;
            if (sceneInfo2 == null || (str = sceneInfo2.id) == null) {
                str = "default";
            }
            this.outputFolder = new File(outputFileDir3, str);
            File file = this.outputFolder;
            if (file == null) {
                Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
                throw null;
            }
            file.mkdirs();
            this.intermediateFolder = new File(getOutputFileDir(), SceneConstant.SCENE_INTERMEDIATE_FILE);
            File file2 = this.intermediateFolder;
            if (file2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("intermediateFolder");
                throw null;
            }
            file2.mkdirs();
            onAVClipsPrepared();
            return true;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    private final void initOperationPanel(boolean z) {
        AnonymousClass1 anonymousClass1 = AnonymousClass1.INSTANCE;
        if (z) {
            HorizontalScrollView operation_panel = (HorizontalScrollView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.operation_panel);
            Intrinsics.checkExpressionValueIsNotNull(operation_panel, "operation_panel");
            operation_panel.setVisibility(4);
            LinearLayout it = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.operation_panel_for_template);
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            it.setVisibility(0);
            AnonymousClass1 anonymousClass12 = AnonymousClass1.INSTANCE;
            LinearLayout op_text = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_text);
            Intrinsics.checkExpressionValueIsNotNull(op_text, "op_text");
            anonymousClass12.invoke2((View) op_text, (ViewGroup) it);
            AnonymousClass1 anonymousClass13 = AnonymousClass1.INSTANCE;
            LinearLayout op_sticker = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_sticker);
            Intrinsics.checkExpressionValueIsNotNull(op_sticker, "op_sticker");
            anonymousClass13.invoke2((View) op_sticker, (ViewGroup) it);
            AnonymousClass1 anonymousClass14 = AnonymousClass1.INSTANCE;
            LinearLayout op_music = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_music);
            Intrinsics.checkExpressionValueIsNotNull(op_music, "op_music");
            anonymousClass14.invoke2((View) op_music, (ViewGroup) it);
            AnonymousClass1 anonymousClass15 = AnonymousClass1.INSTANCE;
            LinearLayout op_pip = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_pip);
            Intrinsics.checkExpressionValueIsNotNull(op_pip, "op_pip");
            anonymousClass15.invoke2((View) op_pip, (ViewGroup) it);
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return com.narvii.mediaeditor.R.style.AminoTheme_Overlay;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag("playListMediaPicker");
        if (fragmentFindFragmentByTag instanceof MediaPickerFragment) {
            this.mediaPickerFragment = (MediaPickerFragment) fragmentFindFragmentByTag;
        } else {
            this.mediaPickerFragment = new MediaPickerFragment();
            FragmentManager fragmentManager2 = getFragmentManager();
            if (fragmentManager2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager2.beginTransaction();
            MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
            if (mediaPickerFragment == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
                throw null;
            }
            fragmentTransactionBeginTransaction.add(mediaPickerFragment, "playListMediaPicker").commitAllowingStateLoss();
        }
        MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
        if (mediaPickerFragment2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
            throw null;
        }
        mediaPickerFragment2.addOnResultListener(this);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
        }
        ((NVActivity) activity).setBackButtonDrawable(getResources().getDrawable(com.narvii.mediaeditor.R.drawable.ic_actionbar_close));
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(com.narvii.mediaeditor.R.layout.fragment_scene_editor, viewGroup, false);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        Intrinsics.checkParameterIsNotNull(menu, "menu");
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(getResources().getDrawable(com.narvii.mediaeditor.R.drawable.ic_white_check)).setShowAsAction(2);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        MediaTimeLineComponent mainTimeLineComponent;
        super.onResume();
        if (!getInitSuccess() || (mainTimeLineComponent = getMainTimeLineComponent()) == null) {
            return;
        }
        mainTimeLineComponent.refreshTimeLine();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        if (getInitSuccess()) {
            getFrameRetrieverManager().abortFlyingFrameRetrievers();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
            throw null;
        }
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem item) {
        SceneInfo sceneInfo;
        Intrinsics.checkParameterIsNotNull(item, "item");
        changeVideoPlaybackStatus(true, false);
        setAutoPlaying(false);
        if (item.getItemId() == 17039370) {
            this.hasFailedTask = false;
            if (this.previewTasksOnGoing) {
                return true;
            }
            LogEvent.clickBuilder(this, ActSemantic.save).area("SaveIcon").send();
            this.previewTasksOnGoing = true;
            BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this, true, false, 2, null);
            setAutoPlaying(false);
            getProgress().show();
            SceneInfo sceneInfo2 = this.scene;
            if (sceneInfo2 != null) {
                sceneInfo2.inputFilePathList.clear();
                Iterator<AVClipInfoPack> it = getPreviewPlayer().getVideoClipInfoList().iterator();
                while (it.hasNext()) {
                    AVClipInfoPack clip = it.next();
                    sceneInfo2.inputFilePathList.add(clip.inputPath);
                    SceneMediaProcessor sceneMediaProcessor = SceneMediaProcessor.INSTANCE;
                    Intrinsics.checkExpressionValueIsNotNull(clip, "clip");
                    String str = clip.inputPath;
                    Intrinsics.checkExpressionValueIsNotNull(str, "clip.inputPath");
                    sceneMediaProcessor.fillVideoMetadata(clip, isImageInput(str), null);
                }
                sceneInfo2.videoClips = getPreviewPlayer().getVideoClipInfoList();
                sceneInfo2.audioClips = getPreviewPlayer().getAudioClipInfoList();
                sceneInfo2.captions = getPreviewPlayer().getCaptionList();
                sceneInfo2.stickers = getPreviewPlayer().getStickerList();
                sceneInfo2.pipClips = getPreviewPlayer().getPipVideoList();
                File file = this.outputFolder;
                if (file == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
                    throw null;
                }
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null) {
                    for (File file2 : fileArrListFiles) {
                        file2.delete();
                    }
                }
                sceneInfo2.currentSceneVideoProgress = -1.0f;
                if ((!getPreviewPlayer().getVideoClipInfoList().isEmpty()) && !NVApplication.isBasedOnMeishe()) {
                    SceneMediaProcessor.processScene$default(SceneMediaProcessor.INSTANCE, this, sceneInfo2, getVideoManager(), ((IEditorPackFactory) getService("editorPackFactory")).getVideoGenerator(), null, true, 16, null);
                }
            }
            if (getPreviewPlayer().getVideoClipInfoList().isEmpty()) {
                this.flyingTaskCount = 0;
                onMediaProcessTouchDown(false);
            } else {
                this.flyingTaskCount = 1;
                IEditorPackFactory iEditorPackFactory = (IEditorPackFactory) getService("editorPackFactory");
                if (NVApplication.isBasedOnMeishe() && (sceneInfo = this.scene) != null) {
                    SceneMediaProcessor sceneMediaProcessor2 = SceneMediaProcessor.INSTANCE;
                    if (sceneInfo == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    sceneMediaProcessor2.getSceneCoverImage(sceneInfo, new File(this.outputCoverImagePath), iEditorPackFactory.getVideoGenerator(), new SceneMediaProcessor.MediaProcessListener() { // from class: com.narvii.video.SceneEditorFragment.onOptionsItemSelected.2
                        @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                        public void onProgress(float f) {
                            SceneMediaProcessor.MediaProcessListener.DefaultImpls.onProgress(this, f);
                        }

                        @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                        public void onSuccess(ArrayList<String> outputList) {
                            Intrinsics.checkParameterIsNotNull(outputList, "outputList");
                            SceneEditorFragment sceneEditorFragment = SceneEditorFragment.this;
                            sceneEditorFragment.flyingTaskCount--;
                            SceneEditorFragment.this.onMediaProcessTouchDown(false);
                        }

                        @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                        public void onFailed(boolean z) {
                            SceneEditorFragment sceneEditorFragment = SceneEditorFragment.this;
                            sceneEditorFragment.flyingTaskCount--;
                            SceneEditorFragment.this.onMediaProcessTouchDown(true);
                        }
                    });
                } else {
                    SceneMediaProcessor sceneMediaProcessor3 = SceneMediaProcessor.INSTANCE;
                    AVClipInfoPack aVClipInfoPack = getPreviewPlayer().getVideoClipInfoList().get(0);
                    Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPack, "previewPlayer.getVideoClipInfoList()[0]");
                    sceneMediaProcessor3.getSceneCoverImage(aVClipInfoPack, new File(this.outputCoverImagePath), getVideoManager(), iEditorPackFactory.getVideoGenerator(), new SceneMediaProcessor.MediaProcessListener() { // from class: com.narvii.video.SceneEditorFragment.onOptionsItemSelected.3
                        @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                        public void onProgress(float f) {
                            SceneMediaProcessor.MediaProcessListener.DefaultImpls.onProgress(this, f);
                        }

                        @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                        public void onSuccess(ArrayList<String> outputList) {
                            Intrinsics.checkParameterIsNotNull(outputList, "outputList");
                            SceneEditorFragment sceneEditorFragment = SceneEditorFragment.this;
                            sceneEditorFragment.flyingTaskCount--;
                            SceneEditorFragment.this.onMediaProcessTouchDown(false);
                        }

                        @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                        public void onFailed(boolean z) {
                            SceneEditorFragment sceneEditorFragment = SceneEditorFragment.this;
                            sceneEditorFragment.flyingTaskCount--;
                            SceneEditorFragment.this.onMediaProcessTouchDown(true);
                        }
                    });
                }
            }
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onMediaProcessTouchDown(boolean z) {
        String str;
        AVClipInfoPack activeVideoClip;
        if (this.hasFailedTask) {
            return;
        }
        if (z) {
            getProgress().hide();
            Utils.showShortToast(getContext(), getString(com.narvii.mediaeditor.R.string.try_again));
            this.hasFailedTask = z;
            this.previewTasksOnGoing = false;
            return;
        }
        if (this.flyingTaskCount <= 0) {
            getProgress().hide();
            Intent intent = new Intent();
            SceneInfo sceneInfo = this.scene;
            if (sceneInfo != null) {
                String str2 = this.outputPreviewVideoPath;
                if (str2 == null || new File(str2).exists() || (activeVideoClip = getActiveVideoClip()) == null || (str = activeVideoClip.inputPath) == null) {
                    str = this.outputPreviewVideoPath;
                }
                sceneInfo.previewFilePath = str;
                sceneInfo.coverImage = this.outputCoverImagePath;
                intent.putExtra("sceneInfo", JacksonUtils.writeAsString(sceneInfo));
            }
            this.previewTasksOnGoing = false;
            int intParam = getIntParam("from");
            if (intParam == 1) {
                setResult(-1, intent);
            } else if (intParam == 2) {
                SceneInfo sceneInfo2 = this.scene;
                if (sceneInfo2 != null) {
                    StoryPostService storyPostService = (StoryPostService) getService("storyPost");
                    String stringParam = getStringParam("outputFileDir");
                    Intrinsics.checkExpressionValueIsNotNull(stringParam, "getStringParam(\"outputFileDir\")");
                    String stringParam2 = getStringParam("extra");
                    Intrinsics.checkExpressionValueIsNotNull(stringParam2, "getStringParam(\"extra\")");
                    storyPostService.launchStoryPost(sceneInfo2, stringParam, stringParam2);
                }
            } else if (intParam == 3) {
                SceneInfo sceneInfo3 = this.scene;
                if (sceneInfo3 != null) {
                    SceneInfoObject sceneInfoObject = new SceneInfoObject();
                    sceneInfoObject.sceneInfo = sceneInfo3;
                    NotificationUtils.sendNotification(this, new Notification("new", sceneInfoObject), false);
                }
            } else {
                setResult(-1, intent);
            }
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onEmptyStatusChanged(boolean z) {
        float f = z ? 0.5f : 1.0f;
        RelativeLayout scene_empty_view = (RelativeLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.scene_empty_view);
        Intrinsics.checkExpressionValueIsNotNull(scene_empty_view, "scene_empty_view");
        scene_empty_view.setVisibility(z ? 0 : 8);
        LinearLayout op_trim = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_trim);
        Intrinsics.checkExpressionValueIsNotNull(op_trim, "op_trim");
        op_trim.setAlpha(f);
        LinearLayout op_split = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_split);
        Intrinsics.checkExpressionValueIsNotNull(op_split, "op_split");
        op_split.setAlpha(f);
        LinearLayout op_speed = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_speed);
        Intrinsics.checkExpressionValueIsNotNull(op_speed, "op_speed");
        op_speed.setAlpha(f);
        LinearLayout op_music = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_music);
        Intrinsics.checkExpressionValueIsNotNull(op_music, "op_music");
        op_music.setAlpha(f);
        LinearLayout op_text = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_text);
        Intrinsics.checkExpressionValueIsNotNull(op_text, "op_text");
        op_text.setAlpha(f);
        LinearLayout op_crop = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_crop);
        Intrinsics.checkExpressionValueIsNotNull(op_crop, "op_crop");
        op_crop.setAlpha(f);
        LinearLayout op_sticker = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_sticker);
        Intrinsics.checkExpressionValueIsNotNull(op_sticker, "op_sticker");
        op_sticker.setAlpha(f);
        LinearLayout op_pip = (LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_pip);
        Intrinsics.checkExpressionValueIsNotNull(op_pip, "op_pip");
        op_pip.setAlpha(f);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void onPickResult(java.util.List<com.narvii.model.Media> r17, java.lang.String r18, android.os.Bundle r19) {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.video.SceneEditorFragment.onPickResult(java.util.List, java.lang.String, android.os.Bundle):void");
    }

    /* compiled from: SceneEditorFragment.kt */
    /* renamed from: com.narvii.video.SceneEditorFragment$onPickResult$1, reason: invalid class name and case insensitive filesystem */
    static final class C11401<T> implements Callback<Boolean> {
        final /* synthetic */ ArrayList $clipList;

        C11401(ArrayList arrayList) {
            this.$clipList = arrayList;
        }

        @Override // com.narvii.util.Callback
        public final void call(Boolean bool) {
            if (Intrinsics.areEqual((Object) bool, (Object) true)) {
                SceneEditorFragment.this.prepareAVClipList(this.$clipList, false, new Callback<Boolean>() { // from class: com.narvii.video.SceneEditorFragment.onPickResult.1.1
                    @Override // com.narvii.util.Callback
                    public final void call(Boolean bool2) {
                        SceneEditorFragment.this.onEmptyStatusChanged(false);
                        final int size = SceneEditorFragment.this.getPreviewPlayer().getVideoClipInfoList().size();
                        SceneEditorFragment.this.getPreviewPlayer().addVideoClipList(C11401.this.$clipList);
                        SceneEditorFragment.this.checkSceneDuration();
                        SceneEditorFragment.this.updateAddClipButtonVisibility();
                        Utils.post(new Runnable() { // from class: com.narvii.video.SceneEditorFragment.onPickResult.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                SceneEditorFragment.this.updateVideoTimeLineInfo(true, size);
                                MediaTimeLineComponent mainTimeLineComponent = SceneEditorFragment.this.getMainTimeLineComponent();
                                if (mainTimeLineComponent != null) {
                                    mainTimeLineComponent.refreshTimeLine();
                                }
                                SceneEditorFragment sceneEditorFragment = SceneEditorFragment.this;
                                AVClipInfoPack activeVideoClip = sceneEditorFragment.getActiveVideoClip();
                                if (activeVideoClip != null) {
                                    sceneEditorFragment.safeSeekTo(activeVideoClip.indexInScene, 1);
                                } else {
                                    Intrinsics.throwNpe();
                                    throw null;
                                }
                            }
                        });
                    }
                });
            } else {
                SceneEditorFragment.this.showInvalidDialog(false);
            }
        }
    }

    private final void convertImageToVideo(List<? extends AVClipInfoPack> list, final Callback<Boolean> callback) {
        Ref$BooleanRef ref$BooleanRef;
        Iterator<? extends AVClipInfoPack> it;
        boolean z = true;
        if (list.isEmpty()) {
            callback.call(true);
            return;
        }
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = 0;
        Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
        ref$BooleanRef2.element = false;
        final ArrayList arrayList = new ArrayList();
        Iterator<? extends AVClipInfoPack> it2 = list.iterator();
        while (it2.hasNext()) {
            final AVClipInfoPack next = it2.next();
            if (Utils.isGifInData(next.inputPath)) {
                File file = this.intermediateFolder;
                if (file != null) {
                    final File file2 = new File(file, next.getClipInputName(z) + ".mp4");
                    if (file2.exists()) {
                        next.inputPath = file2.getAbsolutePath();
                        ref$BooleanRef = ref$BooleanRef2;
                        it = it2;
                    } else {
                        final Ref$BooleanRef ref$BooleanRef3 = ref$BooleanRef2;
                        ref$BooleanRef = ref$BooleanRef2;
                        it = it2;
                        MediaEditingConfig mediaEditingConfigConvertImg2Video = getVideoManager().convertImg2Video(next, file2, new IVideoServiceCallback() { // from class: com.narvii.video.SceneEditorFragment$convertImageToVideo$task$1
                            @Override // com.narvii.video.interfaces.IVideoServiceCallback
                            public void onActionStarted() {
                                IVideoServiceCallback.DefaultImpls.onActionStarted(this);
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
                            public void onFramePicturesLoaded(int i, File file3) {
                                IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i, file3);
                            }

                            @Override // com.narvii.video.interfaces.IVideoServiceCallback
                            public void onProgress(float f, String str) {
                                IVideoServiceCallback.DefaultImpls.onProgress(this, f, str);
                            }

                            @Override // com.narvii.video.interfaces.IVideoServiceCallback
                            public void onVideoProcessed(String path) {
                                Intrinsics.checkParameterIsNotNull(path, "path");
                                IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                                Ref$IntRef ref$IntRef2 = ref$IntRef;
                                ref$IntRef2.element--;
                                if (this.this$0.getVideoManager().fetchStreamInfoSync(path).durationInMs < 1000) {
                                    if (file2.exists()) {
                                        file2.delete();
                                    }
                                    Ref$BooleanRef ref$BooleanRef4 = ref$BooleanRef3;
                                    if (ref$BooleanRef4.element) {
                                        return;
                                    }
                                    ref$BooleanRef4.element = true;
                                    this.this$0.getVideoManager().abortAll(arrayList);
                                    this.this$0.getProgress().hide();
                                    callback.call(false);
                                    return;
                                }
                                next.inputPath = file2.getAbsolutePath();
                                if (ref$IntRef.element <= 0) {
                                    this.this$0.getProgress().hide();
                                    callback.call(true);
                                }
                            }

                            @Override // com.narvii.video.interfaces.IVideoServiceCallback
                            public void onActionFailed(Exception exc) {
                                IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                                if (file2.exists()) {
                                    file2.delete();
                                }
                                Ref$BooleanRef ref$BooleanRef4 = ref$BooleanRef3;
                                if (ref$BooleanRef4.element) {
                                    return;
                                }
                                ref$BooleanRef4.element = true;
                                this.this$0.getVideoManager().abortAll(arrayList);
                                this.this$0.getProgress().hide();
                                callback.call(false);
                            }

                            @Override // com.narvii.video.interfaces.IVideoServiceCallback
                            public void onActionCancelled() {
                                IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                                if (file2.exists()) {
                                    file2.delete();
                                }
                                Ref$BooleanRef ref$BooleanRef4 = ref$BooleanRef3;
                                if (ref$BooleanRef4.element) {
                                    return;
                                }
                                ref$BooleanRef4.element = true;
                                this.this$0.getVideoManager().abortAll(arrayList);
                                this.this$0.getProgress().hide();
                                callback.call(false);
                            }
                        });
                        if (mediaEditingConfigConvertImg2Video != null) {
                            ref$IntRef.element++;
                            arrayList.add(mediaEditingConfigConvertImg2Video);
                        }
                    }
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("intermediateFolder");
                    throw null;
                }
            } else {
                ref$BooleanRef = ref$BooleanRef2;
                it = it2;
                String str = next.inputPath;
                Intrinsics.checkExpressionValueIsNotNull(str, "clip.inputPath");
                if (isImageInput(str)) {
                    next.visibleDurationInMs = 5000;
                    next.orgDurationInMs = 5000;
                }
            }
            it2 = it;
            ref$BooleanRef2 = ref$BooleanRef;
            z = true;
        }
        if (ref$IntRef.element == 0) {
            callback.call(true);
        } else {
            getProgress().show();
        }
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onClipSwitched(AVClipInfoPack newClip) {
        Intrinsics.checkParameterIsNotNull(newClip, "newClip");
        IPreviewPlayer.DefaultImpls.setActiveVideoClip$default(getPreviewPlayer(), newClip.indexInScene, 0, 2, null);
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onVolumeChanged(float f) {
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip != null) {
            activeVideoClip.trackVolume = f;
            getPreviewPlayer().setVolume(activeVideoClip, true);
        }
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onOptionTrimSelected() {
        View cover_layer = _$_findCachedViewById(com.narvii.mediaeditor.R.id.cover_layer);
        Intrinsics.checkExpressionValueIsNotNull(cover_layer, "cover_layer");
        cover_layer.setVisibility(8);
        ClipFastSwitchingPanel clip_fast_switching_panel = (ClipFastSwitchingPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.clip_fast_switching_panel);
        Intrinsics.checkExpressionValueIsNotNull(clip_fast_switching_panel, "clip_fast_switching_panel");
        clip_fast_switching_panel.setVisibility(8);
        opTrim();
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onOptionCropSelected() {
        View cover_layer = _$_findCachedViewById(com.narvii.mediaeditor.R.id.cover_layer);
        Intrinsics.checkExpressionValueIsNotNull(cover_layer, "cover_layer");
        cover_layer.setVisibility(8);
        ClipFastSwitchingPanel clip_fast_switching_panel = (ClipFastSwitchingPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.clip_fast_switching_panel);
        Intrinsics.checkExpressionValueIsNotNull(clip_fast_switching_panel, "clip_fast_switching_panel");
        clip_fast_switching_panel.setVisibility(8);
        opCrop();
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onOptionSpeedSelected() {
        View cover_layer = _$_findCachedViewById(com.narvii.mediaeditor.R.id.cover_layer);
        Intrinsics.checkExpressionValueIsNotNull(cover_layer, "cover_layer");
        cover_layer.setVisibility(8);
        ClipFastSwitchingPanel clip_fast_switching_panel = (ClipFastSwitchingPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.clip_fast_switching_panel);
        Intrinsics.checkExpressionValueIsNotNull(clip_fast_switching_panel, "clip_fast_switching_panel");
        clip_fast_switching_panel.setVisibility(8);
        opSpeed();
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onOptionMusicSelected() {
        View cover_layer = _$_findCachedViewById(com.narvii.mediaeditor.R.id.cover_layer);
        Intrinsics.checkExpressionValueIsNotNull(cover_layer, "cover_layer");
        cover_layer.setVisibility(8);
        ClipFastSwitchingPanel clip_fast_switching_panel = (ClipFastSwitchingPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.clip_fast_switching_panel);
        Intrinsics.checkExpressionValueIsNotNull(clip_fast_switching_panel, "clip_fast_switching_panel");
        clip_fast_switching_panel.setVisibility(8);
        opMusic(getPreviewPlayer().getAudioClipInfoList());
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onClipDeleted() {
        View cover_layer = _$_findCachedViewById(com.narvii.mediaeditor.R.id.cover_layer);
        Intrinsics.checkExpressionValueIsNotNull(cover_layer, "cover_layer");
        cover_layer.setVisibility(8);
        ClipFastSwitchingPanel clip_fast_switching_panel = (ClipFastSwitchingPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.clip_fast_switching_panel);
        Intrinsics.checkExpressionValueIsNotNull(clip_fast_switching_panel, "clip_fast_switching_panel");
        clip_fast_switching_panel.setVisibility(8);
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip != null) {
            ArrayList<AVClipInfoPack> videoClipInfoList = getPreviewPlayer().getVideoClipInfoList();
            int size = videoClipInfoList.size();
            int i = activeVideoClip.indexInScene;
            if (i >= 0 && size > i) {
                videoClipInfoList.remove(i);
                IPreviewPlayer.DefaultImpls.resetVideoClipList$default(getPreviewPlayer(), videoClipInfoList, 0, 0, 6, null);
                ScrollingTimeLineFragment.updateVideoTimeLineInfo$default(this, true, 0, 2, null);
                checkSceneDuration();
                if (videoClipInfoList.isEmpty()) {
                    getPreviewPlayer().stop();
                    onEmptyStatusChanged(true);
                }
                getPreviewPlayer().adjustAllViceTrackRange(getTotalVisibleVideoDurationInMs().getFirst().intValue());
            }
        }
        updateAddClipButtonVisibility();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateAddClipButtonVisibility() {
        ImageView imageView = this.addClipButton;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addClipButton");
            throw null;
        }
        SceneInfo sceneInfo = this.scene;
        imageView.setVisibility(((sceneInfo == null || !sceneInfo.isGeneratedFromTemplate()) && getPreviewPlayer().getVideoClipInfoList().size() < 30) ? 0 : 8);
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onClipListReordered(ArrayList<AVClipInfoPack> clipList, int i) {
        Intrinsics.checkParameterIsNotNull(clipList, "clipList");
        IPreviewPlayer.DefaultImpls.resetVideoClipList$default(getPreviewPlayer(), clipList, 0, 0, 6, null);
        getPreviewPlayer().seekTimeLineTo(i, 0);
        updateVideoTimeLineInfo(true, i);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void changeVideoPlaybackStatus(boolean z, boolean z2) {
        super.changeVideoPlaybackStatus(z, z2);
        if (z) {
            return;
        }
        ClipFastSwitchingPanel clip_fast_switching_panel = (ClipFastSwitchingPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.clip_fast_switching_panel);
        Intrinsics.checkExpressionValueIsNotNull(clip_fast_switching_panel, "clip_fast_switching_panel");
        if (clip_fast_switching_panel.getVisibility() == 0) {
            ClipFastSwitchingPanel clip_fast_switching_panel2 = (ClipFastSwitchingPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.clip_fast_switching_panel);
            Intrinsics.checkExpressionValueIsNotNull(clip_fast_switching_panel2, "clip_fast_switching_panel");
            clip_fast_switching_panel2.setVisibility(8);
            View cover_layer = _$_findCachedViewById(com.narvii.mediaeditor.R.id.cover_layer);
            Intrinsics.checkExpressionValueIsNotNull(cover_layer, "cover_layer");
            cover_layer.setVisibility(8);
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() throws Resources.NotFoundException {
        super.onAVClipsPrepared();
        ArrayList<AVClipInfoPack> videoInputClipList = getVideoInputClipList();
        ArrayList<AVClipInfoPack> audioInputClipList = getAudioInputClipList();
        ArrayList<Caption> captionList = getCaptionList();
        ArrayList<StickerInfoPack> stickerList = getStickerList();
        ArrayList<PipInfoPack> pipClipList = getPipClipList();
        initFrameRetrieverManager();
        convertImageToVideo(videoInputClipList, new C11361(videoInputClipList, audioInputClipList, captionList, stickerList, pipClipList));
    }

    /* compiled from: SceneEditorFragment.kt */
    /* renamed from: com.narvii.video.SceneEditorFragment$onAVClipsPrepared$1, reason: invalid class name and case insensitive filesystem */
    static final class C11361<T> implements Callback<Boolean> {
        final /* synthetic */ ArrayList $audioClipList;
        final /* synthetic */ ArrayList $captionList;
        final /* synthetic */ ArrayList $pipList;
        final /* synthetic */ ArrayList $stickerList;
        final /* synthetic */ ArrayList $videoClipList;

        C11361(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5) {
            this.$videoClipList = arrayList;
            this.$audioClipList = arrayList2;
            this.$captionList = arrayList3;
            this.$stickerList = arrayList4;
            this.$pipList = arrayList5;
        }

        @Override // com.narvii.util.Callback
        public final void call(Boolean bool) {
            if (!bool.booleanValue()) {
                BaseMediaEditorFragment.showInvalidDialog$default(SceneEditorFragment.this, false, 1, null);
            } else if (this.$videoClipList.isEmpty()) {
                BaseMediaEditorFragment.showInvalidDialog$default(SceneEditorFragment.this, false, 1, null);
            } else {
                Utils.post(new Runnable() { // from class: com.narvii.video.SceneEditorFragment.onAVClipsPrepared.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C11361 c11361 = C11361.this;
                        SceneEditorFragment sceneEditorFragment = SceneEditorFragment.this;
                        List listPlus = CollectionsKt___CollectionsKt.plus(c11361.$videoClipList, c11361.$audioClipList);
                        if (listPlus == null) {
                            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.ArrayList<com.narvii.video.model.AVClipInfoPack> /* = java.util.ArrayList<com.narvii.video.model.AVClipInfoPack> */");
                        }
                        BaseMediaEditorFragment.prepareAVClipList$default(sceneEditorFragment, (ArrayList) listPlus, false, new Callback<Boolean>() { // from class: com.narvii.video.SceneEditorFragment.onAVClipsPrepared.1.1.1
                            @Override // com.narvii.util.Callback
                            public final void call(Boolean bool2) {
                                String str;
                                String str2;
                                if (!bool2.booleanValue()) {
                                    BaseMediaEditorFragment.showInvalidDialog$default(SceneEditorFragment.this, false, 1, null);
                                    return;
                                }
                                SceneEditorFragment sceneEditorFragment2 = SceneEditorFragment.this;
                                sceneEditorFragment2.setActiveVideoClip(IPreviewPlayer.DefaultImpls.resetVideoClipList$default(sceneEditorFragment2.getPreviewPlayer(), C11361.this.$videoClipList, 0, 0, 6, null));
                                SceneEditorFragment.this.getPreviewPlayer().resetAudioClipList(C11361.this.$audioClipList);
                                SceneEditorFragment.this.getPreviewPlayer().resetCaptionList(C11361.this.$captionList);
                                SceneEditorFragment.this.getPreviewPlayer().resetStickerList(C11361.this.$stickerList);
                                SceneEditorFragment.this.getPreviewPlayer().resetPipVideoList(C11361.this.$pipList);
                                ScrollingTimeLineFragment.updateVideoTimeLineInfo$default(SceneEditorFragment.this, false, 0, 3, null);
                                SceneInfo sceneInfo = SceneEditorFragment.this.scene;
                                if ((sceneInfo != null ? sceneInfo.outputUrl : null) == null) {
                                    SceneEditorFragment sceneEditorFragment3 = SceneEditorFragment.this;
                                    sceneEditorFragment3.outputPath = new File(SceneEditorFragment.access$getOutputFolder$p(sceneEditorFragment3), SceneEditorFragment.access$getPhotoManager$p(SceneEditorFragment.this).getNewVideoName(SceneEditorFragment.access$getOutputFolder$p(SceneEditorFragment.this)) + ".mp4").getAbsolutePath();
                                    SceneInfo sceneInfo2 = SceneEditorFragment.this.scene;
                                    if (sceneInfo2 != null) {
                                        sceneInfo2.outputUrl = SceneEditorFragment.this.outputPath;
                                    }
                                }
                                File file = new File(SceneEditorFragment.this.getOutputFileDir(), SceneConstant.PREVIEW_VIDEO_FOLDER);
                                file.mkdirs();
                                File file2 = new File(SceneEditorFragment.this.getOutputFileDir(), SceneConstant.COVER_IMAGE_FOLDER);
                                file2.mkdirs();
                                SceneEditorFragment sceneEditorFragment4 = SceneEditorFragment.this;
                                StringBuilder sb = new StringBuilder();
                                sb.append("preview_");
                                SceneInfo sceneInfo3 = SceneEditorFragment.this.scene;
                                if (sceneInfo3 == null || (str = sceneInfo3.id) == null) {
                                    str = "default";
                                }
                                sb.append((Object) str);
                                sb.append("_");
                                sb.append(String.valueOf(System.currentTimeMillis()));
                                sb.append(".mp4");
                                sceneEditorFragment4.outputPreviewVideoPath = new File(file, sb.toString()).getAbsolutePath();
                                SceneEditorFragment sceneEditorFragment5 = SceneEditorFragment.this;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("coverImage_");
                                SceneInfo sceneInfo4 = SceneEditorFragment.this.scene;
                                if (sceneInfo4 == null || (str2 = sceneInfo4.id) == null) {
                                    str2 = "default";
                                }
                                sb2.append((Object) str2);
                                sb2.append("_");
                                sb2.append(String.valueOf(System.currentTimeMillis()));
                                sb2.append(".jpg");
                                sceneEditorFragment5.outputCoverImagePath = new File(file2, sb2.toString()).getAbsolutePath();
                                SceneEditorFragment.this.initOperations();
                                SceneEditorFragment.this.checkSceneDuration();
                                SceneEditorFragment.access$getAddClipButton$p(SceneEditorFragment.this).setOnClickListener(SceneEditorFragment.this);
                                SceneEditorFragment.this.updateAddClipButtonVisibility();
                                ((ClipFastSwitchingPanel) SceneEditorFragment.this._$_findCachedViewById(com.narvii.mediaeditor.R.id.clip_fast_switching_panel)).setEventCallback(SceneEditorFragment.this);
                            }
                        }, 2, null);
                    }
                });
            }
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        String string;
        super.onActivityCreated(bundle);
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo != null && sceneInfo.isGeneratedFromTemplate()) {
            SceneInfo sceneInfo2 = this.scene;
            if (TextUtils.isEmpty(sceneInfo2 != null ? sceneInfo2.title : null)) {
                setTitle("");
                return;
            }
        }
        SceneInfo sceneInfo3 = this.scene;
        if (sceneInfo3 == null || (string = sceneInfo3.title) == null) {
            string = getResources().getString(com.narvii.mediaeditor.R.string.scene);
        }
        setTitle(string);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        ArrayList listAs;
        super.onActivityResult(i, i2, intent);
        if (i == 3333 && i2 == -1) {
            String stringExtra = intent != null ? intent.getStringExtra("videoClipList") : null;
            final int intExtra = intent != null ? intent.getIntExtra("activeClipIndex", 0) : 0;
            intExtra = intent != null ? intent.getIntExtra("inClipPlaybackTime", 0) : 0;
            if (stringExtra == null || (listAs = JacksonUtils.readListAs(stringExtra, AVClipInfoPack.class)) == null || !(!listAs.isEmpty())) {
                return;
            }
            IPreviewPlayer.DefaultImpls.resetVideoClipList$default(getPreviewPlayer(), listAs, 0, 0, 6, null);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.video.SceneEditorFragment$onActivityResult$$inlined$let$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    this.this$0.updateVideoTimeLineInfo(true, intExtra);
                    this.this$0.moveMainTrackTo(intExtra, intExtra);
                }
            }, 700L);
            return;
        }
        if (i == getREQUEST_CODE_SCENE_EDITOR() && i2 == -1) {
            int iIntValue = getTotalVisibleVideoDurationInMs().getFirst().intValue();
            TextView scene_invalid_hint = (TextView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.scene_invalid_hint);
            Intrinsics.checkExpressionValueIsNotNull(scene_invalid_hint, "scene_invalid_hint");
            int maxSceneLengthMs = SceneConstant.getMaxSceneLengthMs();
            if (3000 <= iIntValue && maxSceneLengthMs >= iIntValue) {
                intExtra = 8;
            }
            scene_invalid_hint.setVisibility(intExtra);
            return;
        }
        if (i != 12345 || i2 != -1) {
            if (i != 4444 || i2 != -1) {
                if (i2 == -1 && i == 64816 && intent != null) {
                    Media media = (Media) JacksonUtils.readAs(intent.getStringExtra("media"), Media.class);
                    Bundle bundle = intent.getBundleExtra(com.narvii.amino.BuildConfig.BUILD_TYPE);
                    Intrinsics.checkExpressionValueIsNotNull(media, "media");
                    Intrinsics.checkExpressionValueIsNotNull(bundle, "bundle");
                    onPickResult(CollectionsKt__CollectionsKt.mutableListOf(media), "video", bundle);
                    return;
                }
                return;
            }
            AVClipInfoPack aVClipInfoPack = (AVClipInfoPack) JacksonUtils.readAs(intent != null ? intent.getStringExtra("clipInfoPack") : null, AVClipInfoPack.class);
            if (aVClipInfoPack == null || intent == null) {
                return;
            }
            final int intExtra2 = intent.getIntExtra("currentActiveIndex", 0);
            ArrayList<AVClipInfoPack> videoClipInfoList = getPreviewPlayer().getVideoClipInfoList();
            int size = videoClipInfoList.size();
            if (intExtra2 >= 0 && size > intExtra2) {
                videoClipInfoList.set(intExtra2, aVClipInfoPack);
                IPreviewPlayer.DefaultImpls.resetVideoClipList$default(getPreviewPlayer(), videoClipInfoList, 0, 0, 6, null);
                getPreviewPlayer().adjustAllViceTrackRange(getTotalVisibleVideoDurationInMs().getFirst().intValue());
                checkSceneDuration();
                Utils.postDelayed(new Runnable() { // from class: com.narvii.video.SceneEditorFragment.onActivityResult.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        SceneEditorFragment.this.updateVideoTimeLineInfo(true, intExtra2);
                        SceneEditorFragment.this.safeSeekTo(intExtra2, 1);
                    }
                }, 700L);
                return;
            }
            return;
        }
        Log.d("BasicCropping success");
        String stringExtra2 = intent != null ? intent.getStringExtra("croppingData") : null;
        if (!Intrinsics.areEqual((Object) (intent != null ? Boolean.valueOf(intent.getBooleanExtra("success", false)) : null), (Object) true) || stringExtra2 == null) {
            return;
        }
        CroppingData croppingData = (CroppingData) JacksonUtils.readAs(stringExtra2, CroppingData.class);
        if (getActiveVideoClip() == null || croppingData == null) {
            return;
        }
        ArrayList<AVClipInfoPack> videoClipInfoList2 = getPreviewPlayer().getVideoClipInfoList();
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        activeVideoClip.croppingData = croppingData;
        AVClipInfoPack activeVideoClip2 = getActiveVideoClip();
        if (activeVideoClip2 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        videoClipInfoList2.get(activeVideoClip2.indexInScene).croppingData = croppingData;
        if (croppingData.isDynamic()) {
            AVClipInfoPack activeVideoClip3 = getActiveVideoClip();
            if (activeVideoClip3 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            videoClipInfoList2.get(activeVideoClip3.indexInScene).inputPath = croppingData.dynamicPath;
            IPreviewPlayer previewPlayer = getPreviewPlayer();
            AVClipInfoPack activeVideoClip4 = getActiveVideoClip();
            if (activeVideoClip4 != null) {
                setActiveVideoClip(IPreviewPlayer.DefaultImpls.resetVideoClipList$default(previewPlayer, videoClipInfoList2, activeVideoClip4.indexInScene, 0, 4, null));
                return;
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        if (croppingData.orgVideoPath != null) {
            AVClipInfoPack activeVideoClip5 = getActiveVideoClip();
            if (activeVideoClip5 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            videoClipInfoList2.get(activeVideoClip5.indexInScene).inputPath = croppingData.orgVideoPath;
            IPreviewPlayer previewPlayer2 = getPreviewPlayer();
            AVClipInfoPack activeVideoClip6 = getActiveVideoClip();
            if (activeVideoClip6 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            setActiveVideoClip(IPreviewPlayer.DefaultImpls.resetVideoClipList$default(previewPlayer2, videoClipInfoList2, activeVideoClip6.indexInScene, 0, 4, null));
        }
        IPreviewPlayer previewPlayer3 = getPreviewPlayer();
        AVClipInfoPack activeVideoClip7 = getActiveVideoClip();
        if (activeVideoClip7 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        AVClipInfoPack aVClipInfoPack2 = videoClipInfoList2.get(activeVideoClip7.indexInScene);
        Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPack2, "videoClipList[activeVideoClip!!.indexInScene]");
        previewPlayer3.updateClipTransform(aVClipInfoPack2);
        getPreviewPlayer().refreshBackgroundTrack();
        Utils.post(new Runnable() { // from class: com.narvii.video.SceneEditorFragment.onActivityResult.2
            @Override // java.lang.Runnable
            public final void run() {
                int iScrollTimeLineToClip$default;
                MediaTimeLineComponent mainTimeLineComponent = SceneEditorFragment.this.getMainTimeLineComponent();
                if (mainTimeLineComponent != null) {
                    AVClipInfoPack activeVideoClip8 = SceneEditorFragment.this.getActiveVideoClip();
                    if (activeVideoClip8 == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    iScrollTimeLineToClip$default = MediaTimeLineComponent.scrollTimeLineToClip$default(mainTimeLineComponent, activeVideoClip8.indexInScene, 0, false, 6, null);
                } else {
                    iScrollTimeLineToClip$default = -1;
                }
                if (iScrollTimeLineToClip$default >= 0) {
                    TextView videoPlaybackTimeText = SceneEditorFragment.this.getVideoPlaybackTimeText();
                    if (videoPlaybackTimeText != null) {
                        videoPlaybackTimeText.setText(MediaTimeLineComponentKt.convertMillisToTime(iScrollTimeLineToClip$default));
                    }
                    SceneEditorFragment sceneEditorFragment = SceneEditorFragment.this;
                    AVClipInfoPack activeVideoClip9 = sceneEditorFragment.getActiveVideoClip();
                    if (activeVideoClip9 != null) {
                        sceneEditorFragment.safeSeekTo(activeVideoClip9.indexInScene, 1);
                    } else {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                }
            }
        });
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (!getInitSuccess()) {
            _$_clearFindViewByIdCache();
        } else {
            FrameRetrieverManager.release$default(getFrameRetrieverManager(), false, 1, null);
            _$_clearFindViewByIdCache();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void checkSceneDuration() {
        /*
            r4 = this;
            kotlin.Pair r0 = r4.getTotalVisibleVideoDurationInMs()
            java.lang.Object r0 = r0.getFirst()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            int r1 = com.narvii.mediaeditor.R.id.scene_invalid_hint
            android.view.View r1 = r4._$_findCachedViewById(r1)
            android.widget.TextView r1 = (android.widget.TextView) r1
            java.lang.String r2 = "scene_invalid_hint"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2)
            com.narvii.video.interfaces.IPreviewPlayer r2 = r4.getPreviewPlayer()
            java.util.ArrayList r2 = r2.getVideoClipInfoList()
            boolean r2 = r2.isEmpty()
            if (r2 != 0) goto L37
            r2 = 3000(0xbb8, float:4.204E-42)
            int r3 = com.narvii.scene.SceneConstant.getMaxSceneLengthMs()
            if (r2 <= r0) goto L32
            goto L35
        L32:
            if (r3 < r0) goto L35
            goto L37
        L35:
            r0 = 0
            goto L39
        L37:
            r0 = 8
        L39:
            r1.setVisibility(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.video.SceneEditorFragment.checkSceneDuration():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initOperations() {
        ((LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_trim)).setOnClickListener(this);
        ((LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_split)).setOnClickListener(this);
        ((LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_speed)).setOnClickListener(this);
        ((LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_music)).setOnClickListener(this);
        ((LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_text)).setOnClickListener(this);
        ((LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_sticker)).setOnClickListener(this);
        ((LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_crop)).setOnClickListener(this);
        _$_findCachedViewById(com.narvii.mediaeditor.R.id.cover_layer).setOnClickListener(this);
        ((ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.empty_view_option_add_video)).setOnClickListener(this);
        ((LinearLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.op_pip)).setOnClickListener(this);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        SceneInfo sceneInfo = this.scene;
        return (sceneInfo == null || !sceneInfo.isGeneratedFromTemplate()) ? "SceneEdit" : "VideoTemplateSceneEdit";
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineClicked(ITimelineClip clipInfo) {
        Intrinsics.checkParameterIsNotNull(clipInfo, "clipInfo");
        super.onTimeLineClicked(clipInfo);
        if (clipInfo instanceof AVClipInfoPack) {
            SceneInfo sceneInfo = this.scene;
            if (sceneInfo == null || !sceneInfo.isGeneratedFromTemplate()) {
                IPreviewPlayer.DefaultImpls.setActiveVideoClip$default(getPreviewPlayer(), ((AVClipInfoPack) clipInfo).indexInScene, 0, 2, null);
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this, true, false, 2, null);
                setAutoPlaying(false);
                View cover_layer = _$_findCachedViewById(com.narvii.mediaeditor.R.id.cover_layer);
                Intrinsics.checkExpressionValueIsNotNull(cover_layer, "cover_layer");
                cover_layer.setVisibility(0);
                ClipFastSwitchingPanel clip_fast_switching_panel = (ClipFastSwitchingPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.clip_fast_switching_panel);
                Intrinsics.checkExpressionValueIsNotNull(clip_fast_switching_panel, "clip_fast_switching_panel");
                clip_fast_switching_panel.setVisibility(0);
                ClipFastSwitchingPanel clipFastSwitchingPanel = (ClipFastSwitchingPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.clip_fast_switching_panel);
                ArrayList<AVClipInfoPack> videoClipInfoList = getPreviewPlayer().getVideoClipInfoList();
                AVClipInfoPack activeVideoClip = getActiveVideoClip();
                clipFastSwitchingPanel.setClipSet(videoClipInfoList, activeVideoClip != null ? activeVideoClip.indexInScene : 0, getFrameRetrieverManager());
            }
        }
    }

    private final void opPIP() {
        if (!getPreviewPlayer().getPipVideoList().isEmpty()) {
            startPipEditFragment(getPreviewPlayer().getPipVideoList());
            return;
        }
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            MediaPreEditingActivityKt.pickVideoFromGalleryAndYoutube(mediaPickerFragment, "", 1, REQUEST_SELECT_PIP_VIDEO, false);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
            throw null;
        }
    }

    private final void startPipEditFragment(List<? extends PipInfoPack> list) {
        Uri fragmentDeepLinkUri;
        FragmentRegister fragmentRegister = getFragmentRegister();
        if (fragmentRegister == null || (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("pipEditor")) == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
        intent.putExtra("inputVideoClipList", JacksonUtils.writeAsString(getPreviewPlayer().getVideoClipInfoList()));
        intent.putExtra("inputAudioClipList", JacksonUtils.writeAsString(getPreviewPlayer().getAudioClipInfoList()));
        intent.putExtra("frameRetrieverOutputFolder", getFrameRetrieverManager().getOutputFolderPath());
        intent.putExtra("inputPipInfoPackList", JacksonUtils.writeAsString(list));
        intent.putExtra("inputCaptionList", JacksonUtils.writeAsString(getPreviewPlayer().getCaptionList()));
        intent.putExtra("inputStickerList", JacksonUtils.writeAsString(getPreviewPlayer().getStickerList()));
        File outputFileDir = getOutputFileDir();
        intent.putExtra("outputFileDir", outputFileDir != null ? outputFileDir.getPath() : null);
        startActivityForResult(intent, REQUEST_CODE_VIDEO_PIP);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00a3  */
    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPickMediaResult(java.util.List<com.narvii.model.Media> r11, android.os.Bundle r12) {
        /*
            r10 = this;
            r0 = 0
            if (r11 == 0) goto L24
            int r1 = r11.size()
            java.util.ListIterator r1 = r11.listIterator(r1)
        Lb:
            boolean r2 = r1.hasPrevious()
            if (r2 == 0) goto L1f
            java.lang.Object r2 = r1.previous()
            r3 = r2
            com.narvii.model.Media r3 = (com.narvii.model.Media) r3
            boolean r3 = r3.isVideo()
            if (r3 == 0) goto Lb
            goto L20
        L1f:
            r2 = r0
        L20:
            r1 = r2
            com.narvii.model.Media r1 = (com.narvii.model.Media) r1
            goto L25
        L24:
            r1 = r0
        L25:
            if (r1 == 0) goto L36
            com.narvii.scene.helper.SceneSpHelper r2 = new com.narvii.scene.helper.SceneSpHelper
            r2.<init>(r10)
            java.lang.String r3 = r1.fileName
            java.lang.String r4 = "it.fileName"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4)
            r2.saveRecentVideo(r1, r3)
        L36:
            if (r11 == 0) goto L3f
            java.lang.Object r1 = kotlin.collections.CollectionsKt.first(r11)
            com.narvii.model.Media r1 = (com.narvii.model.Media) r1
            goto L40
        L3f:
            r1 = r0
        L40:
            if (r1 == 0) goto La7
            java.lang.String r2 = r1.url
            boolean r2 = com.narvii.util.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto La7
            if (r12 == 0) goto La7
            int r2 = r1.type
            r3 = 103(0x67, float:1.44E-43)
            java.lang.String r4 = "intermediateFolder"
            if (r2 != r3) goto L75
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.io.File r2 = r10.intermediateFolder
            if (r2 == 0) goto L71
        L5d:
            java.lang.String r0 = r2.getAbsolutePath()
            r11.append(r0)
            java.lang.String r0 = java.io.File.separator
            r11.append(r0)
            java.lang.String r11 = r11.toString()
            com.narvii.pre_editing.MediaPreEditingActivityKt.startPreEditActivity(r10, r1, r12, r11)
            goto La7
        L71:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4)
            throw r0
        L75:
            r3 = 123(0x7b, float:1.72E-43)
            java.lang.String r5 = ""
            java.lang.String r6 = "type"
            if (r2 != r3) goto L9c
            long r2 = r1.duration
            r7 = 60999(0xee47, float:8.5478E-41)
            long r7 = (long) r7
            int r9 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r9 <= 0) goto L95
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.io.File r2 = r10.intermediateFolder
            if (r2 == 0) goto L91
            goto L5d
        L91:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4)
            throw r0
        L95:
            java.lang.String r0 = r12.getString(r6)
            if (r0 == 0) goto La3
            goto La4
        L9c:
            java.lang.String r0 = r12.getString(r6)
            if (r0 == 0) goto La3
            goto La4
        La3:
            r0 = r5
        La4:
            r10.onPickResult(r11, r0, r12)
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.video.SceneEditorFragment.onPickMediaResult(java.util.List, android.os.Bundle):void");
    }
}
