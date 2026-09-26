package com.narvii.video;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.app.FragmentRegister;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.cropping.CroppingData;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.MediaPickerFragment;
import com.narvii.media.online.audio.model.AssetCategory;
import com.narvii.media.online.audio.model.Sound;
import com.narvii.mediaeditor.databinding.FragmentSceneEditorBinding;
import com.narvii.model.Media;
import com.narvii.notification.Notification;
import com.narvii.photos.PhotoManager;
import com.narvii.pip.PipInfoPack;
import com.narvii.pre_editing.MediaPreEditingActivityKt;
import com.narvii.scene.SceneConstant;
import com.narvii.scene.StoryPostService;
import com.narvii.scene.helper.ScenePrefsHelper;
import com.narvii.scene.helper.SceneSpHelper;
import com.narvii.scene.model.SceneInfo;
import com.narvii.scene.notification.SceneInfoObject;
import com.narvii.util.Callback;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.mixpanel.Tracking;
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
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class SceneEditorFragment extends ScrollingTimeLineFragment implements View.OnClickListener, MediaPickerFragment.OnResultListener, ClipFastSwitchingPanel.ClipFastSwitchingEventCallback {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {kotlin.jvm.internal.q0.g(new kotlin.jvm.internal.g0(SceneEditorFragment.class, "binding", "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;", 0))};

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MAX_CLIP_COUNT_PER_TRACK = 30;
    public static final int REQUEST_CODE_BASIC_CROPPING = 12345;
    public static final int REQUEST_CODE_EDIT_SPEED = 4444;
    public static final int REQUEST_CODE_SPLIT = 3333;
    public static final int REQUEST_CODE_VIDEO_PIP = 12346;
    public static final int REQUEST_SELECT_PIP_VIDEO = 12347;
    private ImageView addClipButton;
    private int flyingTaskCount;
    private boolean hasFailedTask;
    private File intermediateFolder;
    private MediaPickerFragment mediaPickerFragment;

    @Nullable
    private String outputCoverImagePath;
    private File outputFolder;

    @Nullable
    private String outputPath;

    @Nullable
    private String outputPreviewVideoPath;
    private PhotoManager photoManager;
    private boolean previewTasksOnGoing;

    @Nullable
    private g7.d previewVideoGeneratingTask;

    @Nullable
    private SceneInfo scene;

    @NotNull
    private final ArrayList<AVClipInfoPack> orgVideoClipList = new ArrayList<>();

    @NotNull
    private final ArrayList<AVClipInfoPack> orgAudioClipList = new ArrayList<>();

    @NotNull
    private final ArrayList<Caption> orgCaptionList = new ArrayList<>();

    @NotNull
    private final ArrayList<StickerInfoPack> orgStickerList = new ArrayList<>();

    @NotNull
    private final ArrayList<PipInfoPack> orgPipList = new ArrayList<>();

    @NotNull
    private final w7.m progress$delegate = w7.o.a(new SceneEditorFragment$progress$2(this));

    @NotNull
    private final w7.m fragmentRegister$delegate = w7.o.a(new SceneEditorFragment$fragmentRegister$2(this));

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, SceneEditorFragment$binding$2.INSTANCE);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAVClipsPrepared$lambda$25(final SceneEditorFragment this$0, final ArrayList videoClipList, final ArrayList audioClipList, final ArrayList captionList, final ArrayList stickerList, final ArrayList pipList, Boolean bool) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(videoClipList, "$videoClipList");
        kotlin.jvm.internal.t.j(audioClipList, "$audioClipList");
        kotlin.jvm.internal.t.j(captionList, "$captionList");
        kotlin.jvm.internal.t.j(stickerList, "$stickerList");
        kotlin.jvm.internal.t.j(pipList, "$pipList");
        if (!bool.booleanValue()) {
            BaseMediaEditorFragment.showInvalidDialog$default(this$0, false, 1, null);
        } else if (videoClipList.isEmpty()) {
            BaseMediaEditorFragment.showInvalidDialog$default(this$0, false, 1, null);
        } else {
            Utils.post(new Runnable() { // from class: com.narvii.video.j0
                @Override // java.lang.Runnable
                public final void run() {
                    SceneEditorFragment.onAVClipsPrepared$lambda$25$lambda$24(this.f2886a, videoClipList, audioClipList, captionList, stickerList, pipList);
                }
            });
        }
    }

    private final void opAttachment(int i10) {
    }

    private final void opCrop() {
    }

    private final void opSpeed() {
    }

    private final void opSplit() {
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    private final void updateAddClipButtonVisibility() {
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return com.narvii.mediaeditor.R.style.AminoTheme_Overlay;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        setAutoPlaying(false);
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i10 = com.narvii.mediaeditor.R.id.cover_layer;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            getBinding().coverLayer.setVisibility(8);
            getBinding().clipFastSwitchingPanel.setVisibility(8);
            return;
        }
        int i11 = com.narvii.mediaeditor.R.id.op_trim;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            sendEditActionLog("Trim");
            opTrim();
            return;
        }
        int i12 = com.narvii.mediaeditor.R.id.op_split;
        if (numValueOf != null && numValueOf.intValue() == i12) {
            return;
        }
        int i13 = com.narvii.mediaeditor.R.id.op_speed;
        if (numValueOf != null && numValueOf.intValue() == i13) {
            return;
        }
        int i14 = com.narvii.mediaeditor.R.id.op_music;
        if (numValueOf == null || numValueOf.intValue() != i14) {
            int i15 = com.narvii.mediaeditor.R.id.op_sfx;
            if (numValueOf == null || numValueOf.intValue() != i15) {
                int i16 = com.narvii.mediaeditor.R.id.op_text;
                if (numValueOf != null && numValueOf.intValue() == i16) {
                    return;
                }
                int i17 = com.narvii.mediaeditor.R.id.op_sticker;
                if (numValueOf != null && numValueOf.intValue() == i17) {
                    return;
                }
                int i18 = com.narvii.mediaeditor.R.id.op_crop;
                if (numValueOf != null && numValueOf.intValue() == i18) {
                    return;
                }
                int i19 = com.narvii.mediaeditor.R.id.option_add_video;
                if (numValueOf != null && numValueOf.intValue() == i19) {
                    return;
                }
                int i20 = com.narvii.mediaeditor.R.id.empty_view_option_add_video;
                if ((numValueOf != null && numValueOf.intValue() == i20) || numValueOf == null) {
                    return;
                }
                numValueOf.intValue();
                return;
            }
        }
        if (view.getId() == i14) {
            sendEditActionLog("Music");
        }
        opMusic(getPreviewPlayer().getAudioClipInfoList());
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00b0 A[PHI: r0
      0x00b0: PHI (r0v2 java.lang.String) = (r0v1 java.lang.String), (r0v3 java.lang.String) binds: [B:44:0x00bc, B:39:0x00ad] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(@Nullable List<Media> list, @Nullable Bundle bundle) {
        Media media;
        String string;
        Media mediaPrevious;
        File file = null;
        if (list != null) {
            ListIterator<Media> listIterator = list.listIterator(list.size());
            do {
                if (!listIterator.hasPrevious()) {
                    mediaPrevious = null;
                    break;
                }
                mediaPrevious = listIterator.previous();
            } while (!mediaPrevious.isVideo());
            media = mediaPrevious;
        } else {
            media = null;
        }
        if (media != null) {
            SceneSpHelper sceneSpHelper = new SceneSpHelper(this);
            String fileName = media.fileName;
            kotlin.jvm.internal.t.i(fileName, "fileName");
            sceneSpHelper.saveRecentVideo(media, fileName);
        }
        Media media2 = list != null ? (Media) kotlin.collections.d0.j0(list) : null;
        if (media2 == null || TextUtils.isEmpty(media2.url) || bundle == null) {
            return;
        }
        int i10 = media2.type;
        if (i10 == 103) {
            StringBuilder sb = new StringBuilder();
            File file2 = this.intermediateFolder;
            if (file2 == null) {
                kotlin.jvm.internal.t.B("intermediateFolder");
            } else {
                file = file2;
            }
            sb.append(file.getAbsolutePath());
            sb.append(File.separator);
            MediaPreEditingActivityKt.startPreEditActivity(this, media2, bundle, sb.toString());
            return;
        }
        String str = "";
        if (i10 != 123) {
            string = bundle.getString("type");
            if (string != null) {
                str = string;
            }
        } else {
            if (media2.duration > 60999) {
                StringBuilder sb2 = new StringBuilder();
                File file3 = this.intermediateFolder;
                if (file3 == null) {
                    kotlin.jvm.internal.t.B("intermediateFolder");
                } else {
                    file = file3;
                }
                sb2.append(file.getAbsolutePath());
                sb2.append(File.separator);
                MediaPreEditingActivityKt.startPreEditActivity(this, media2, bundle, sb2.toString());
                return;
            }
            string = bundle.getString("type");
            if (string != null) {
                str = string;
            }
        }
        kotlin.jvm.internal.t.g(str);
        onPickResult(list, str, bundle);
    }

    private final void convertImageToVideo(List<? extends AVClipInfoPack> list, final Callback<Boolean> callback) {
        kotlin.jvm.internal.k0 k0Var;
        Iterator<? extends AVClipInfoPack> it;
        if (list.isEmpty()) {
            callback.call(Boolean.TRUE);
            return;
        }
        final kotlin.jvm.internal.n0 n0Var = new kotlin.jvm.internal.n0();
        kotlin.jvm.internal.k0 k0Var2 = new kotlin.jvm.internal.k0();
        final ArrayList arrayList = new ArrayList();
        Iterator<? extends AVClipInfoPack> it2 = list.iterator();
        while (it2.hasNext()) {
            final AVClipInfoPack next = it2.next();
            if (Utils.isGifInData(next.inputPath)) {
                File file = this.intermediateFolder;
                if (file == null) {
                    kotlin.jvm.internal.t.B("intermediateFolder");
                    file = null;
                }
                final File file2 = new File(file, next.getClipInputName(true) + ".mp4");
                if (file2.exists()) {
                    next.inputPath = file2.getAbsolutePath();
                } else {
                    final kotlin.jvm.internal.k0 k0Var3 = k0Var2;
                    k0Var = k0Var2;
                    it = it2;
                    g7.d dVarConvertImg2Video = getVideoManager().convertImg2Video(next, file2, new IVideoServiceCallback() { // from class: com.narvii.video.SceneEditorFragment$convertImageToVideo$task$1
                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                        public void onVideoProcessed(@NotNull String path) {
                            kotlin.jvm.internal.t.j(path, "path");
                            IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                            n0Var.element--;
                            if (this.getVideoManager().fetchStreamInfoSync(path).durationInMs >= 1000) {
                                next.inputPath = file2.getAbsolutePath();
                                if (n0Var.element <= 0) {
                                    this.getProgress().hide();
                                    callback.call(Boolean.TRUE);
                                    return;
                                }
                                return;
                            }
                            if (file2.exists()) {
                                file2.delete();
                            }
                            kotlin.jvm.internal.k0 k0Var4 = k0Var3;
                            if (k0Var4.element) {
                                return;
                            }
                            k0Var4.element = true;
                            this.getVideoManager().abortAll(arrayList);
                            this.getProgress().hide();
                            callback.call(Boolean.FALSE);
                        }

                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                        public void onActionCancelled() {
                            IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                            if (file2.exists()) {
                                file2.delete();
                            }
                            kotlin.jvm.internal.k0 k0Var4 = k0Var3;
                            if (!k0Var4.element) {
                                k0Var4.element = true;
                                this.getVideoManager().abortAll(arrayList);
                                this.getProgress().hide();
                                callback.call(Boolean.FALSE);
                            }
                        }

                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                        public void onActionFailed(@Nullable Exception exc) {
                            IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                            if (file2.exists()) {
                                file2.delete();
                            }
                            kotlin.jvm.internal.k0 k0Var4 = k0Var3;
                            if (!k0Var4.element) {
                                k0Var4.element = true;
                                this.getVideoManager().abortAll(arrayList);
                                this.getProgress().hide();
                                callback.call(Boolean.FALSE);
                            }
                        }

                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                        public void onActionStarted() {
                            IVideoServiceCallback.DefaultImpls.onActionStarted(this);
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
                        public void onFramePicturesLoaded(int i10, @Nullable File file3) {
                            IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i10, file3);
                        }

                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                        public void onProgress(float f, @Nullable String str) {
                            IVideoServiceCallback.DefaultImpls.onProgress(this, f, str);
                        }
                    });
                    if (dVarConvertImg2Video != null) {
                        n0Var.element++;
                        arrayList.add(dVarConvertImg2Video);
                    }
                }
            } else {
                k0Var = k0Var2;
                it = it2;
                String inputPath = next.inputPath;
                kotlin.jvm.internal.t.i(inputPath, "inputPath");
                if (isImageInput(inputPath)) {
                    next.visibleDurationInMs = 5000;
                    next.orgDurationInMs = 5000;
                }
            }
            it2 = it;
            k0Var2 = k0Var;
        }
        if (n0Var.element == 0) {
            callback.call(Boolean.TRUE);
        } else {
            getProgress().show();
        }
    }

    private final void doExit() {
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        if (this.scene != null) {
            if (this.orgVideoClipList.size() != getPreviewPlayer().getVideoClipInfoList().size()) {
                z6 = false;
                break;
            }
            int size = this.orgVideoClipList.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    z6 = true;
                    break;
                } else {
                    if (!kotlin.jvm.internal.t.e(this.orgVideoClipList.get(i10), getPreviewPlayer().getVideoClipInfoList().get(i10))) {
                        z6 = false;
                        break;
                    }
                    i10++;
                }
            }
            if (this.orgAudioClipList.size() != getPreviewPlayer().getAudioClipInfoList().size()) {
                z10 = false;
                break;
            }
            int size2 = this.orgAudioClipList.size();
            int i11 = 0;
            while (true) {
                if (i11 >= size2) {
                    z10 = true;
                    break;
                } else {
                    if (!kotlin.jvm.internal.t.e(this.orgAudioClipList.get(i11), getPreviewPlayer().getAudioClipInfoList().get(i11))) {
                        z10 = false;
                        break;
                    }
                    i11++;
                }
            }
            if (this.orgCaptionList.size() != getPreviewPlayer().getCaptionList().size()) {
                z11 = false;
                break;
            }
            int size3 = this.orgCaptionList.size();
            int i12 = 0;
            while (true) {
                if (i12 >= size3) {
                    z11 = true;
                    break;
                } else {
                    if (!kotlin.jvm.internal.t.e(this.orgCaptionList.get(i12), getPreviewPlayer().getCaptionList().get(i12))) {
                        z11 = false;
                        break;
                    }
                    i12++;
                }
            }
            if (this.orgStickerList.size() != getPreviewPlayer().getStickerList().size()) {
                z12 = false;
                break;
            }
            int size4 = this.orgStickerList.size();
            int i13 = 0;
            while (true) {
                if (i13 >= size4) {
                    z12 = true;
                    break;
                } else {
                    if (!kotlin.jvm.internal.t.e(this.orgStickerList.get(i13), getPreviewPlayer().getStickerList().get(i13))) {
                        z12 = false;
                        break;
                    }
                    i13++;
                }
            }
            if (this.orgPipList.size() != getPreviewPlayer().getPipVideoList().size()) {
                z13 = false;
                break;
            }
            int size5 = this.orgPipList.size();
            int i14 = 0;
            while (true) {
                if (i14 >= size5) {
                    z13 = true;
                    break;
                } else {
                    if (!kotlin.jvm.internal.t.e(this.orgPipList.get(i14), getPreviewPlayer().getPipVideoList().get(i14))) {
                        z13 = false;
                        break;
                    }
                    i14++;
                }
            }
            if (!z6 || !z10 || !z11 || !z12 || !z13) {
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                actionSheetDialog.addItem(com.narvii.mediaeditor.R.string.discard_changes, true);
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.video.o0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i15) {
                        SceneEditorFragment.doExit$lambda$5(this.f2907a, dialogInterface, i15);
                    }
                });
                actionSheetDialog.show();
                return;
            }
        }
        setResult(0);
        finish();
    }

    private final FragmentSceneEditorBinding getBinding() {
        return (FragmentSceneEditorBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final FragmentRegister getFragmentRegister() {
        return (FragmentRegister) this.fragmentRegister$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressDialog getProgress() {
        return (ProgressDialog) this.progress$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onMediaProcessTouchDown(boolean z6) {
        String str;
        AVClipInfoPack activeVideoClip;
        if (this.hasFailedTask) {
            return;
        }
        if (z6) {
            getProgress().hide();
            Utils.showShortToast(getContext(), getString(com.narvii.mediaeditor.R.string.try_again));
            this.hasFailedTask = z6;
            this.previewTasksOnGoing = false;
            return;
        }
        if (this.flyingTaskCount <= 0) {
            getProgress().hide();
            Intent intent = new Intent();
            SceneInfo sceneInfo = this.scene;
            if (sceneInfo != null) {
                if (this.outputPreviewVideoPath == null || new File(this.outputPreviewVideoPath).exists() || (activeVideoClip = getActiveVideoClip()) == null || (str = activeVideoClip.inputPath) == null) {
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
                    kotlin.jvm.internal.t.i(stringParam, "getStringParam(...)");
                    String stringParam2 = getStringParam(Tracking.Properties.EXTRA);
                    kotlin.jvm.internal.t.i(stringParam2, "getStringParam(...)");
                    storyPostService.launchStoryPost(sceneInfo2, stringParam, stringParam2);
                }
            } else if (intParam != 3) {
                setResult(-1, intent);
            } else {
                SceneInfo sceneInfo3 = this.scene;
                if (sceneInfo3 != null) {
                    SceneInfoObject sceneInfoObject = new SceneInfoObject();
                    sceneInfoObject.sceneInfo = sceneInfo3;
                    NotificationUtils.sendNotification(this, new Notification("new", sceneInfoObject), false);
                }
            }
            finish();
        }
    }

    private final void onPickResult(List<Media> list, String str, Bundle bundle) {
        boolean z6;
        if (list == null || list.isEmpty() || TextUtils.isEmpty(str)) {
            return;
        }
        boolean z10 = false;
        if (bundle != null && bundle.getInt("caller", 1) == 12347) {
            PipInfoPack pipInfoPack = new PipInfoPack();
            if (list.get(0).type != 123) {
                NVToast.makeText(getContext(), com.narvii.mediaeditor.R.string.invalid_input, 0).show();
                return;
            } else {
                pipInfoPack.inputPath = Uri.parse(list.get(0).getMediaUrl()).getPath();
                startPipEditFragment(kotlin.collections.v.g(pipInfoPack));
                return;
            }
        }
        int i10 = bundle != null ? bundle.getInt(MediaPickerFragment.PICK_FROM, 2) : 2;
        String string = bundle != null ? bundle.getString("soundDataList") : null;
        ArrayList listAs = !android.text.TextUtils.isEmpty(string) ? JacksonUtils.readListAs(string, Sound.class) : null;
        String string2 = bundle != null ? bundle.getString("category") : null;
        AssetCategory assetCategory = !android.text.TextUtils.isEmpty(string2) ? (AssetCategory) JacksonUtils.readAs(string2, AssetCategory.class) : null;
        String string3 = bundle != null ? bundle.getString("soundTypeList") : null;
        ArrayList listAs2 = android.text.TextUtils.isEmpty(string3) ? null : JacksonUtils.readListAs(string3, Integer.TYPE);
        final ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i11 = 0;
        while (i11 < size) {
            Media media = list.get(i11);
            String path = Uri.parse(media.url).getPath();
            if (path == null) {
                path = "";
            }
            if (!media.isImage() || isImageInput(path) || Utils.isGifInData(path)) {
                AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
                aVClipInfoPack.indexInScene = i11;
                aVClipInfoPack.inputPath = path;
                aVClipInfoPack.originalInputPath = path;
                aVClipInfoPack.author = media.author;
                aVClipInfoPack.fileName = media.fileName;
                aVClipInfoPack.trackVolume = isAllVideoClipMute() ? 0.0f : 1.0f;
                if (kotlin.jvm.internal.t.e(str, "audio")) {
                    if (listAs != null && listAs.size() == list.size() && assetCategory != null) {
                        SceneMediaProcessor.INSTANCE.fillAudioClipMetadata(aVClipInfoPack, (Sound) listAs.get(i11), assetCategory);
                    }
                    if (listAs2 == null || listAs2.size() != list.size()) {
                        z6 = false;
                        aVClipInfoPack.isSfx = false;
                    } else {
                        Integer num = (Integer) listAs2.get(i11);
                        aVClipInfoPack.isSfx = num != null && num.intValue() == 2;
                        z6 = false;
                    }
                } else {
                    z6 = false;
                    if (kotlin.jvm.internal.t.e(str, "video")) {
                        aVClipInfoPack.videoSource = SceneMediaProcessor.INSTANCE.getVideoSource(path, media.type, i10);
                    }
                }
                arrayList.add(aVClipInfoPack);
            } else {
                z6 = z10;
            }
            i11++;
            z10 = z6;
        }
        if (arrayList.isEmpty()) {
            return;
        }
        if (kotlin.jvm.internal.t.e(str, "video")) {
            convertImageToVideo(arrayList, new Callback() { // from class: com.narvii.video.m0
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    SceneEditorFragment.onPickResult$lambda$19(this.f2901a, arrayList, (Boolean) obj);
                }
            });
        } else if (kotlin.jvm.internal.t.e(str, "audio")) {
            opMusic(arrayList);
        }
    }

    private final void opAddVideo() {
        MediaPickerFragment mediaPickerFragment;
        MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
        File file = null;
        if (mediaPickerFragment2 == null) {
            kotlin.jvm.internal.t.B("mediaPickerFragment");
            mediaPickerFragment = null;
        } else {
            mediaPickerFragment = mediaPickerFragment2;
        }
        StringBuilder sb = new StringBuilder();
        File file2 = this.intermediateFolder;
        if (file2 == null) {
            kotlin.jvm.internal.t.B("intermediateFolder");
        } else {
            file = file2;
        }
        sb.append(file.getAbsolutePath());
        sb.append(File.separator);
        MediaPreEditingActivityKt.pickVideoFromGalleryAndYoutube$default(mediaPickerFragment, sb.toString(), 30 - getPreviewPlayer().getVideoClipInfoList().size(), 0, false, 24, null);
    }

    private final void sendEditActionLog(String str) {
        LogEvent.clickBuilder(this, ActSemantic.edit).area(str).send();
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<AVClipInfoPack> getAudioInputClipList() {
        ArrayList<AVClipInfoPack> arrayList = new ArrayList<>();
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo == null) {
            return arrayList;
        }
        kotlin.jvm.internal.t.g(sceneInfo);
        ArrayList<AVClipInfoPack> audioClips = sceneInfo.audioClips;
        kotlin.jvm.internal.t.i(audioClips, "audioClips");
        if (!audioClips.isEmpty()) {
            SceneInfo sceneInfo2 = this.scene;
            kotlin.jvm.internal.t.g(sceneInfo2);
            arrayList.addAll(sceneInfo2.audioClips);
        }
        return arrayList;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<Caption> getCaptionList() {
        ArrayList<Caption> arrayList = new ArrayList<>();
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo == null) {
            return arrayList;
        }
        kotlin.jvm.internal.t.g(sceneInfo);
        ArrayList<Caption> captions = sceneInfo.captions;
        kotlin.jvm.internal.t.i(captions, "captions");
        if (!captions.isEmpty()) {
            SceneInfo sceneInfo2 = this.scene;
            kotlin.jvm.internal.t.g(sceneInfo2);
            arrayList.addAll(sceneInfo2.captions);
        }
        return arrayList;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        SceneInfo sceneInfo = this.scene;
        return (sceneInfo == null || !sceneInfo.isGeneratedFromTemplate()) ? "scene_edit" : "video_template_scene_edit";
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<PipInfoPack> getPipClipList() {
        ArrayList<PipInfoPack> arrayList = new ArrayList<>();
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo == null) {
            return arrayList;
        }
        kotlin.jvm.internal.t.g(sceneInfo);
        ArrayList<PipInfoPack> pipClips = sceneInfo.pipClips;
        kotlin.jvm.internal.t.i(pipClips, "pipClips");
        if (!pipClips.isEmpty()) {
            SceneInfo sceneInfo2 = this.scene;
            kotlin.jvm.internal.t.g(sceneInfo2);
            arrayList.addAll(sceneInfo2.pipClips);
        }
        return arrayList;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<StickerInfoPack> getStickerList() {
        ArrayList<StickerInfoPack> arrayList = new ArrayList<>();
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo == null) {
            return arrayList;
        }
        kotlin.jvm.internal.t.g(sceneInfo);
        ArrayList<StickerInfoPack> stickers = sceneInfo.stickers;
        kotlin.jvm.internal.t.i(stickers, "stickers");
        if (!stickers.isEmpty()) {
            SceneInfo sceneInfo2 = this.scene;
            kotlin.jvm.internal.t.g(sceneInfo2);
            arrayList.addAll(sceneInfo2.stickers);
        }
        return arrayList;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<AVClipInfoPack> getVideoInputClipList() {
        ArrayList<AVClipInfoPack> arrayList = new ArrayList<>();
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo == null) {
            return arrayList;
        }
        kotlin.jvm.internal.t.g(sceneInfo);
        ArrayList<AVClipInfoPack> videoClips = sceneInfo.videoClips;
        kotlin.jvm.internal.t.i(videoClips, "videoClips");
        if (!videoClips.isEmpty()) {
            SceneInfo sceneInfo2 = this.scene;
            kotlin.jvm.internal.t.g(sceneInfo2);
            arrayList.addAll(sceneInfo2.videoClips);
        } else {
            SceneInfo sceneInfo3 = this.scene;
            kotlin.jvm.internal.t.g(sceneInfo3);
            int size = sceneInfo3.inputFilePathList.size();
            for (int i10 = 0; i10 < size; i10++) {
                AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
                aVClipInfoPack.indexInScene = i10;
                SceneInfo sceneInfo4 = this.scene;
                kotlin.jvm.internal.t.g(sceneInfo4);
                aVClipInfoPack.inputPath = sceneInfo4.inputFilePathList.get(i10);
                SceneInfo sceneInfo5 = this.scene;
                kotlin.jvm.internal.t.g(sceneInfo5);
                aVClipInfoPack.originalInputPath = sceneInfo5.inputFilePathList.get(i10);
                SceneInfo sceneInfo6 = this.scene;
                kotlin.jvm.internal.t.g(sceneInfo6);
                if (sceneInfo6.inputFileFrom != null) {
                    SceneInfo sceneInfo7 = this.scene;
                    kotlin.jvm.internal.t.g(sceneInfo7);
                    if (sceneInfo7.inputFileFrom.size() > i10) {
                        SceneInfo sceneInfo8 = this.scene;
                        kotlin.jvm.internal.t.g(sceneInfo8);
                        Integer num = sceneInfo8.inputFileFrom.get(i10);
                        kotlin.jvm.internal.t.i(num, "get(...)");
                        aVClipInfoPack.videoSource = num.intValue();
                    }
                }
                arrayList.add(aVClipInfoPack);
            }
        }
        return arrayList;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected boolean initInputClips() {
        this.photoManager = new PhotoManager(this);
        String stringParam = getStringParam("sceneInfo");
        if (stringParam != null) {
            this.scene = (SceneInfo) JacksonUtils.DEFAULT_MAPPER.readValue(stringParam, SceneInfo.class);
        }
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo != null) {
            for (AVClipInfoPack aVClipInfoPack : sceneInfo.videoClips) {
                aVClipInfoPack.originalInputPath = aVClipInfoPack.inputPath;
                this.orgVideoClipList.add(aVClipInfoPack.copy());
            }
            Iterator<AVClipInfoPack> it = sceneInfo.audioClips.iterator();
            while (it.hasNext()) {
                this.orgAudioClipList.add(it.next().copy());
            }
            Iterator<Caption> it2 = sceneInfo.captions.iterator();
            while (it2.hasNext()) {
                this.orgCaptionList.add(it2.next().copy());
            }
            Iterator<StickerInfoPack> it3 = sceneInfo.stickers.iterator();
            while (it3.hasNext()) {
                this.orgStickerList.add(it3.next().copy());
            }
            Iterator<PipInfoPack> it4 = sceneInfo.pipClips.iterator();
            while (it4.hasNext()) {
                this.orgPipList.add(it4.next().copy());
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
        kotlin.jvm.internal.t.g(outputFileDir);
        if (!outputFileDir.exists()) {
            File outputFileDir2 = getOutputFileDir();
            kotlin.jvm.internal.t.g(outputFileDir2);
            outputFileDir2.mkdirs();
        }
        File outputFileDir3 = getOutputFileDir();
        kotlin.jvm.internal.t.g(outputFileDir3);
        SceneInfo sceneInfo2 = this.scene;
        String str = sceneInfo2 != null ? sceneInfo2.id : null;
        if (str == null) {
            str = "default";
        }
        File file = new File(outputFileDir3, str);
        this.outputFolder = file;
        file.mkdirs();
        File file2 = new File(getOutputFileDir(), SceneConstant.SCENE_INTERMEDIATE_FILE);
        this.intermediateFolder = file2;
        file2.mkdirs();
        onAVClipsPrepared();
        return true;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        ArrayList listAs;
        super.onActivityResult(i10, i11, intent);
        final int intExtra = 0;
        if (i10 == 3333 && i11 == -1) {
            String stringExtra = intent != null ? intent.getStringExtra("videoClipList") : null;
            final int intExtra2 = intent != null ? intent.getIntExtra("activeClipIndex", 0) : 0;
            intExtra = intent != null ? intent.getIntExtra("inClipPlaybackTime", 0) : 0;
            if (stringExtra == null || (listAs = JacksonUtils.readListAs(stringExtra, AVClipInfoPack.class)) == null || !(!listAs.isEmpty())) {
                return;
            }
            IPreviewPlayer.DefaultImpls.resetVideoClipList$default(getPreviewPlayer(), listAs, 0, 0, 6, null);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.video.r0
                @Override // java.lang.Runnable
                public final void run() {
                    SceneEditorFragment.onActivityResult$lambda$27$lambda$26(this.f2918a, intExtra2, intExtra);
                }
            }, 700L);
            return;
        }
        if (i10 == getREQUEST_CODE_SCENE_EDITOR() && i11 == -1) {
            int iIntValue = getTotalVisibleVideoDurationInMs().c().intValue();
            TextView textView = getBinding().sceneInvalidHint;
            if (3000 <= iIntValue && iIntValue <= SceneConstant.getMaxSceneLengthMs()) {
                intExtra = 8;
            }
            textView.setVisibility(intExtra);
            return;
        }
        if (i10 != 12345 || i11 != -1) {
            if (i10 != 4444 || i11 != -1) {
                if (i11 == -1 && i10 == 64816 && intent != null) {
                    Media media = (Media) JacksonUtils.readAs(intent.getStringExtra("media"), Media.class);
                    Bundle bundleExtra = intent.getBundleExtra(com.narvii.amino.BuildConfig.BUILD_TYPE);
                    if (bundleExtra == null) {
                        bundleExtra = new Bundle();
                    }
                    kotlin.jvm.internal.t.g(bundleExtra);
                    kotlin.jvm.internal.t.g(media);
                    onPickResult(kotlin.collections.v.s(media), "video", bundleExtra);
                    return;
                }
                return;
            }
            AVClipInfoPack aVClipInfoPack = (AVClipInfoPack) JacksonUtils.readAs(intent != null ? intent.getStringExtra("clipInfoPack") : null, AVClipInfoPack.class);
            if (aVClipInfoPack == null || intent == null) {
                return;
            }
            final int intExtra3 = intent.getIntExtra("currentActiveIndex", 0);
            ArrayList<AVClipInfoPack> videoClipInfoList = getPreviewPlayer().getVideoClipInfoList();
            if (intExtra3 < 0 || intExtra3 >= videoClipInfoList.size()) {
                return;
            }
            videoClipInfoList.set(intExtra3, aVClipInfoPack);
            IPreviewPlayer.DefaultImpls.resetVideoClipList$default(getPreviewPlayer(), videoClipInfoList, 0, 0, 6, null);
            getPreviewPlayer().adjustAllViceTrackRange(getTotalVisibleVideoDurationInMs().c().intValue());
            checkSceneDuration();
            Utils.postDelayed(new Runnable() { // from class: com.narvii.video.t0
                @Override // java.lang.Runnable
                public final void run() {
                    SceneEditorFragment.onActivityResult$lambda$29(this.f2957a, intExtra3);
                }
            }, 700L);
            return;
        }
        Log.d("BasicCropping success");
        String stringExtra2 = intent != null ? intent.getStringExtra("croppingData") : null;
        if (!kotlin.jvm.internal.t.e(intent != null ? Boolean.valueOf(intent.getBooleanExtra("success", false)) : null, Boolean.TRUE) || stringExtra2 == null) {
            return;
        }
        CroppingData croppingData = (CroppingData) JacksonUtils.readAs(stringExtra2, CroppingData.class);
        if (getActiveVideoClip() == null || croppingData == null) {
            return;
        }
        ArrayList<AVClipInfoPack> videoClipInfoList2 = getPreviewPlayer().getVideoClipInfoList();
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        kotlin.jvm.internal.t.g(activeVideoClip);
        activeVideoClip.croppingData = croppingData;
        AVClipInfoPack activeVideoClip2 = getActiveVideoClip();
        kotlin.jvm.internal.t.g(activeVideoClip2);
        videoClipInfoList2.get(activeVideoClip2.indexInScene).croppingData = croppingData;
        if (croppingData.isDynamic()) {
            AVClipInfoPack activeVideoClip3 = getActiveVideoClip();
            kotlin.jvm.internal.t.g(activeVideoClip3);
            videoClipInfoList2.get(activeVideoClip3.indexInScene).inputPath = croppingData.dynamicPath;
            IPreviewPlayer previewPlayer = getPreviewPlayer();
            AVClipInfoPack activeVideoClip4 = getActiveVideoClip();
            kotlin.jvm.internal.t.g(activeVideoClip4);
            setActiveVideoClip(IPreviewPlayer.DefaultImpls.resetVideoClipList$default(previewPlayer, videoClipInfoList2, activeVideoClip4.indexInScene, 0, 4, null));
            return;
        }
        if (croppingData.orgVideoPath != null) {
            AVClipInfoPack activeVideoClip5 = getActiveVideoClip();
            kotlin.jvm.internal.t.g(activeVideoClip5);
            videoClipInfoList2.get(activeVideoClip5.indexInScene).inputPath = croppingData.orgVideoPath;
            IPreviewPlayer previewPlayer2 = getPreviewPlayer();
            AVClipInfoPack activeVideoClip6 = getActiveVideoClip();
            kotlin.jvm.internal.t.g(activeVideoClip6);
            setActiveVideoClip(IPreviewPlayer.DefaultImpls.resetVideoClipList$default(previewPlayer2, videoClipInfoList2, activeVideoClip6.indexInScene, 0, 4, null));
        }
        IPreviewPlayer previewPlayer3 = getPreviewPlayer();
        AVClipInfoPack activeVideoClip7 = getActiveVideoClip();
        kotlin.jvm.internal.t.g(activeVideoClip7);
        AVClipInfoPack aVClipInfoPack2 = videoClipInfoList2.get(activeVideoClip7.indexInScene);
        kotlin.jvm.internal.t.i(aVClipInfoPack2, "get(...)");
        previewPlayer3.updateClipTransform(aVClipInfoPack2);
        getPreviewPlayer().refreshBackgroundTrack();
        Utils.post(new Runnable() { // from class: com.narvii.video.s0
            @Override // java.lang.Runnable
            public final void run() {
                SceneEditorFragment.onActivityResult$lambda$28(this.f2922a);
            }
        });
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onClipListReordered(@NotNull ArrayList<AVClipInfoPack> clipList, int i10) {
        kotlin.jvm.internal.t.j(clipList, "clipList");
        IPreviewPlayer.DefaultImpls.resetVideoClipList$default(getPreviewPlayer(), clipList, 0, 0, 6, null);
        getPreviewPlayer().seekTimeLineTo(i10, 0);
        updateVideoTimeLineInfo(true, i10);
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onClipSwitched(@NotNull AVClipInfoPack newClip) {
        kotlin.jvm.internal.t.j(newClip, "newClip");
        IPreviewPlayer.DefaultImpls.setActiveVideoClip$default(getPreviewPlayer(), newClip.indexInScene, 0, 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@NotNull Menu menu, @NotNull MenuInflater inflater) {
        kotlin.jvm.internal.t.j(menu, "menu");
        kotlin.jvm.internal.t.j(inflater, "inflater");
        super.onCreateOptionsMenu(menu, inflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(getResources().getDrawable(com.narvii.mediaeditor.R.drawable.ic_white_check)).setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@NotNull MenuItem item) {
        SceneInfo sceneInfo;
        kotlin.jvm.internal.t.j(item, "item");
        changeVideoPlaybackStatus(true, false);
        setAutoPlaying(false);
        if (item.getItemId() != 17039370) {
            return super.onOptionsItemSelected(item);
        }
        this.hasFailedTask = false;
        if (this.previewTasksOnGoing) {
            return true;
        }
        LogEvent.clickBuilder(this, ActSemantic.save).area("SaveIcon").send();
        this.previewTasksOnGoing = true;
        File file = null;
        BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this, true, false, 2, null);
        setAutoPlaying(false);
        getProgress().show();
        SceneInfo sceneInfo2 = this.scene;
        if (sceneInfo2 != null) {
            sceneInfo2.inputFilePathList.clear();
            for (AVClipInfoPack aVClipInfoPack : getPreviewPlayer().getVideoClipInfoList()) {
                sceneInfo2.inputFilePathList.add(aVClipInfoPack.inputPath);
                SceneMediaProcessor sceneMediaProcessor = SceneMediaProcessor.INSTANCE;
                kotlin.jvm.internal.t.g(aVClipInfoPack);
                String inputPath = aVClipInfoPack.inputPath;
                kotlin.jvm.internal.t.i(inputPath, "inputPath");
                sceneMediaProcessor.fillVideoMetadata(aVClipInfoPack, isImageInput(inputPath), null);
            }
            sceneInfo2.videoClips = getPreviewPlayer().getVideoClipInfoList();
            sceneInfo2.audioClips = getPreviewPlayer().getAudioClipInfoList();
            sceneInfo2.captions = getPreviewPlayer().getCaptionList();
            sceneInfo2.stickers = getPreviewPlayer().getStickerList();
            sceneInfo2.pipClips = getPreviewPlayer().getPipVideoList();
            File file2 = this.outputFolder;
            if (file2 == null) {
                kotlin.jvm.internal.t.B("outputFolder");
            } else {
                file = file2;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file3 : fileArrListFiles) {
                    file3.delete();
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
            if (!NVApplication.isBasedOnMeishe() || (sceneInfo = this.scene) == null) {
                SceneMediaProcessor sceneMediaProcessor2 = SceneMediaProcessor.INSTANCE;
                AVClipInfoPack aVClipInfoPack2 = getPreviewPlayer().getVideoClipInfoList().get(0);
                kotlin.jvm.internal.t.i(aVClipInfoPack2, "get(...)");
                sceneMediaProcessor2.getSceneCoverImage(aVClipInfoPack2, new File(this.outputCoverImagePath), getVideoManager(), iEditorPackFactory.getVideoGenerator(), new SceneMediaProcessor.MediaProcessListener() { // from class: com.narvii.video.SceneEditorFragment.onOptionsItemSelected.3
                    @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                    public void onFailed(boolean z6) {
                        SceneEditorFragment.this.flyingTaskCount--;
                        SceneEditorFragment.this.onMediaProcessTouchDown(true);
                    }

                    @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                    public void onSuccess(@NotNull ArrayList<String> outputList) {
                        kotlin.jvm.internal.t.j(outputList, "outputList");
                        SceneEditorFragment.this.flyingTaskCount--;
                        SceneEditorFragment.this.onMediaProcessTouchDown(false);
                    }

                    @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                    public void onProgress(float f) {
                        SceneMediaProcessor.MediaProcessListener.DefaultImpls.onProgress(this, f);
                    }
                });
            } else {
                SceneMediaProcessor sceneMediaProcessor3 = SceneMediaProcessor.INSTANCE;
                kotlin.jvm.internal.t.g(sceneInfo);
                sceneMediaProcessor3.getSceneCoverImage(sceneInfo, new File(this.outputCoverImagePath), iEditorPackFactory.getVideoGenerator(), new SceneMediaProcessor.MediaProcessListener() { // from class: com.narvii.video.SceneEditorFragment.onOptionsItemSelected.2
                    @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                    public void onFailed(boolean z6) {
                        SceneEditorFragment.this.flyingTaskCount--;
                        SceneEditorFragment.this.onMediaProcessTouchDown(true);
                    }

                    @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                    public void onSuccess(@NotNull ArrayList<String> outputList) {
                        kotlin.jvm.internal.t.j(outputList, "outputList");
                        SceneEditorFragment.this.flyingTaskCount--;
                        SceneEditorFragment.this.onMediaProcessTouchDown(false);
                    }

                    @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                    public void onProgress(float f) {
                        SceneMediaProcessor.MediaProcessListener.DefaultImpls.onProgress(this, f);
                    }
                });
            }
        }
        return true;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineClicked(@NotNull ITimelineClip clipInfo) {
        kotlin.jvm.internal.t.j(clipInfo, "clipInfo");
        super.onTimeLineClicked(clipInfo);
        if (clipInfo instanceof AVClipInfoPack) {
            SceneInfo sceneInfo = this.scene;
            if (sceneInfo == null || !sceneInfo.isGeneratedFromTemplate()) {
                IPreviewPlayer.DefaultImpls.setActiveVideoClip$default(getPreviewPlayer(), ((AVClipInfoPack) clipInfo).indexInScene, 0, 2, null);
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this, true, false, 2, null);
                setAutoPlaying(false);
                getBinding().coverLayer.setVisibility(0);
                getBinding().clipFastSwitchingPanel.setVisibility(0);
                ClipFastSwitchingPanel clipFastSwitchingPanel = getBinding().clipFastSwitchingPanel;
                ArrayList<AVClipInfoPack> videoClipInfoList = getPreviewPlayer().getVideoClipInfoList();
                AVClipInfoPack activeVideoClip = getActiveVideoClip();
                clipFastSwitchingPanel.setClipSet(videoClipInfoList, activeVideoClip != null ? activeVideoClip.indexInScene : 0, getFrameRetrieverManager());
            }
        }
    }

    private final void checkSceneDuration() {
        int i10;
        int iIntValue = getTotalVisibleVideoDurationInMs().c().intValue();
        TextView textView = getBinding().sceneInvalidHint;
        if (!getPreviewPlayer().getVideoClipInfoList().isEmpty() && (3000 > iIntValue || iIntValue > SceneConstant.getMaxSceneLengthMs())) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        textView.setVisibility(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void doExit$lambda$5(SceneEditorFragment this$0, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (i10 == 0) {
            this$0.setResult(0);
            this$0.finish();
        }
    }

    private final void initOperationPanel(boolean z6) {
        FragmentSceneEditorBinding binding = getBinding();
        if (z6) {
            binding.operationPanel.setVisibility(4);
            LinearLayout linearLayout = binding.operationPanelForTemplate;
            linearLayout.setVisibility(0);
            LinearLayout opText = binding.opText;
            kotlin.jvm.internal.t.i(opText, "opText");
            kotlin.jvm.internal.t.g(linearLayout);
            initOperationPanel$lambda$9$moveToPanelForTemplate(opText, linearLayout);
            LinearLayout opSticker = binding.opSticker;
            kotlin.jvm.internal.t.i(opSticker, "opSticker");
            initOperationPanel$lambda$9$moveToPanelForTemplate(opSticker, linearLayout);
            LinearLayout opMusic = binding.opMusic;
            kotlin.jvm.internal.t.i(opMusic, "opMusic");
            initOperationPanel$lambda$9$moveToPanelForTemplate(opMusic, linearLayout);
            LinearLayout opPip = binding.opPip;
            kotlin.jvm.internal.t.i(opPip, "opPip");
            initOperationPanel$lambda$9$moveToPanelForTemplate(opPip, linearLayout);
        }
    }

    private static final void initOperationPanel$lambda$9$moveToPanelForTemplate(View view, ViewGroup viewGroup) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            kotlin.jvm.internal.t.h(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            ((ViewGroup) parent).removeView(view);
            layoutParams2.width = 0;
            layoutParams2.weight = 1.0f;
            viewGroup.addView(view, layoutParams2);
        }
    }

    private final void initOperations() {
        FragmentSceneEditorBinding binding = getBinding();
        binding.opTrim.setOnClickListener(this);
        binding.opSplit.setOnClickListener(this);
        binding.opSpeed.setOnClickListener(this);
        binding.opMusic.setOnClickListener(this);
        binding.opText.setOnClickListener(this);
        binding.opSticker.setOnClickListener(this);
        binding.opCrop.setOnClickListener(this);
        binding.coverLayer.setOnClickListener(this);
        binding.opPip.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAVClipsPrepared$lambda$25$lambda$24(final SceneEditorFragment this$0, final ArrayList videoClipList, final ArrayList audioClipList, final ArrayList captionList, final ArrayList stickerList, final ArrayList pipList) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(videoClipList, "$videoClipList");
        kotlin.jvm.internal.t.j(audioClipList, "$audioClipList");
        kotlin.jvm.internal.t.j(captionList, "$captionList");
        kotlin.jvm.internal.t.j(stickerList, "$stickerList");
        kotlin.jvm.internal.t.j(pipList, "$pipList");
        List listD0 = kotlin.collections.d0.D0(videoClipList, audioClipList);
        kotlin.jvm.internal.t.h(listD0, "null cannot be cast to non-null type java.util.ArrayList<com.narvii.video.model.AVClipInfoPack>{ kotlin.collections.TypeAliasesKt.ArrayList<com.narvii.video.model.AVClipInfoPack> }");
        BaseMediaEditorFragment.prepareAVClipList$default(this$0, (ArrayList) listD0, false, new Callback() { // from class: com.narvii.video.q0
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                SceneEditorFragment.onAVClipsPrepared$lambda$25$lambda$24$lambda$23(this.f2915a, videoClipList, audioClipList, captionList, stickerList, pipList, (Boolean) obj);
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAVClipsPrepared$lambda$25$lambda$24$lambda$23(SceneEditorFragment this$0, ArrayList videoClipList, ArrayList audioClipList, ArrayList captionList, ArrayList stickerList, ArrayList pipList, Boolean bool) {
        String str;
        String str2;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(videoClipList, "$videoClipList");
        kotlin.jvm.internal.t.j(audioClipList, "$audioClipList");
        kotlin.jvm.internal.t.j(captionList, "$captionList");
        kotlin.jvm.internal.t.j(stickerList, "$stickerList");
        kotlin.jvm.internal.t.j(pipList, "$pipList");
        String str3 = null;
        if (!bool.booleanValue()) {
            BaseMediaEditorFragment.showInvalidDialog$default(this$0, false, 1, null);
            return;
        }
        this$0.setActiveVideoClip(IPreviewPlayer.DefaultImpls.resetVideoClipList$default(this$0.getPreviewPlayer(), videoClipList, 0, 0, 6, null));
        this$0.getPreviewPlayer().resetAudioClipList(audioClipList);
        this$0.getPreviewPlayer().resetCaptionList(captionList);
        this$0.getPreviewPlayer().resetStickerList(stickerList);
        this$0.getPreviewPlayer().resetPipVideoList(pipList);
        ScrollingTimeLineFragment.updateVideoTimeLineInfo$default(this$0, false, 0, 3, null);
        SceneInfo sceneInfo = this$0.scene;
        if (sceneInfo != null) {
            str = sceneInfo.outputUrl;
        } else {
            str = null;
        }
        if (str == null) {
            File file = this$0.outputFolder;
            if (file == null) {
                kotlin.jvm.internal.t.B("outputFolder");
                file = null;
            }
            StringBuilder sb = new StringBuilder();
            PhotoManager photoManager = this$0.photoManager;
            if (photoManager == null) {
                kotlin.jvm.internal.t.B("photoManager");
                photoManager = null;
            }
            File file2 = this$0.outputFolder;
            if (file2 == null) {
                kotlin.jvm.internal.t.B("outputFolder");
                file2 = null;
            }
            sb.append(photoManager.getNewVideoName(file2));
            sb.append(".mp4");
            String absolutePath = new File(file, sb.toString()).getAbsolutePath();
            this$0.outputPath = absolutePath;
            SceneInfo sceneInfo2 = this$0.scene;
            if (sceneInfo2 != null) {
                sceneInfo2.outputUrl = absolutePath;
            }
        }
        File file3 = new File(this$0.getOutputFileDir(), SceneConstant.PREVIEW_VIDEO_FOLDER);
        file3.mkdirs();
        File file4 = new File(this$0.getOutputFileDir(), SceneConstant.COVER_IMAGE_FOLDER);
        file4.mkdirs();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("preview_");
        SceneInfo sceneInfo3 = this$0.scene;
        if (sceneInfo3 != null) {
            str2 = sceneInfo3.id;
        } else {
            str2 = null;
        }
        String str4 = "default";
        if (str2 == null) {
            str2 = "default";
        }
        sb2.append(str2);
        sb2.append('_');
        sb2.append(System.currentTimeMillis());
        sb2.append(".mp4");
        this$0.outputPreviewVideoPath = new File(file3, sb2.toString()).getAbsolutePath();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("coverImage_");
        SceneInfo sceneInfo4 = this$0.scene;
        if (sceneInfo4 != null) {
            str3 = sceneInfo4.id;
        }
        if (str3 != null) {
            str4 = str3;
        }
        sb3.append(str4);
        sb3.append('_');
        sb3.append(System.currentTimeMillis());
        sb3.append(".jpg");
        this$0.outputCoverImagePath = new File(file4, sb3.toString()).getAbsolutePath();
        this$0.initOperations();
        this$0.checkSceneDuration();
        this$0.updateAddClipButtonVisibility();
        this$0.getBinding().clipFastSwitchingPanel.setEventCallback(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityResult$lambda$27$lambda$26(SceneEditorFragment this$0, int i10, int i11) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.updateVideoTimeLineInfo(true, i10);
        this$0.moveMainTrackTo(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityResult$lambda$28(SceneEditorFragment this$0) {
        int iScrollTimeLineToClip$default;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        MediaTimeLineComponent mainTimeLineComponent = this$0.getMainTimeLineComponent();
        if (mainTimeLineComponent != null) {
            AVClipInfoPack activeVideoClip = this$0.getActiveVideoClip();
            kotlin.jvm.internal.t.g(activeVideoClip);
            iScrollTimeLineToClip$default = MediaTimeLineComponent.scrollTimeLineToClip$default(mainTimeLineComponent, activeVideoClip.indexInScene, 0, false, 6, null);
        } else {
            iScrollTimeLineToClip$default = -1;
        }
        if (iScrollTimeLineToClip$default >= 0) {
            TextView videoPlaybackTimeText = this$0.getVideoPlaybackTimeText();
            if (videoPlaybackTimeText != null) {
                videoPlaybackTimeText.setText(MediaTimeLineComponentKt.convertMillisToTime(iScrollTimeLineToClip$default));
            }
            AVClipInfoPack activeVideoClip2 = this$0.getActiveVideoClip();
            kotlin.jvm.internal.t.g(activeVideoClip2);
            this$0.safeSeekTo(activeVideoClip2.indexInScene, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityResult$lambda$29(SceneEditorFragment this$0, int i10) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.updateVideoTimeLineInfo(true, i10);
        this$0.safeSeekTo(i10, 1);
    }

    private final void onEmptyStatusChanged(boolean z6) {
        float f;
        int i10;
        FragmentSceneEditorBinding binding = getBinding();
        if (z6) {
            f = 0.5f;
        } else {
            f = 1.0f;
        }
        RelativeLayout relativeLayout = binding.sceneEmptyView;
        if (z6) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        relativeLayout.setVisibility(i10);
        binding.opTrim.setAlpha(f);
        binding.opSplit.setAlpha(f);
        binding.opSpeed.setAlpha(f);
        binding.opMusic.setAlpha(f);
        binding.opText.setAlpha(f);
        binding.opCrop.setAlpha(f);
        binding.opSticker.setAlpha(f);
        binding.opPip.setAlpha(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPickResult$lambda$19(final SceneEditorFragment this$0, final ArrayList clipList, Boolean bool) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(clipList, "$clipList");
        if (kotlin.jvm.internal.t.e(bool, Boolean.TRUE)) {
            this$0.prepareAVClipList(clipList, false, new Callback() { // from class: com.narvii.video.k0
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    SceneEditorFragment.onPickResult$lambda$19$lambda$18(this.f2892a, clipList, (Boolean) obj);
                }
            });
        } else {
            this$0.showInvalidDialog(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPickResult$lambda$19$lambda$18(final SceneEditorFragment this$0, ArrayList clipList, Boolean bool) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(clipList, "$clipList");
        this$0.onEmptyStatusChanged(false);
        final int size = this$0.getPreviewPlayer().getVideoClipInfoList().size();
        this$0.getPreviewPlayer().addVideoClipList(clipList);
        this$0.checkSceneDuration();
        this$0.updateAddClipButtonVisibility();
        Utils.post(new Runnable() { // from class: com.narvii.video.l0
            @Override // java.lang.Runnable
            public final void run() {
                SceneEditorFragment.onPickResult$lambda$19$lambda$18$lambda$17(this.f2897a, size);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPickResult$lambda$19$lambda$18$lambda$17(SceneEditorFragment this$0, int i10) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.updateVideoTimeLineInfo(true, i10);
        MediaTimeLineComponent mainTimeLineComponent = this$0.getMainTimeLineComponent();
        if (mainTimeLineComponent != null) {
            mainTimeLineComponent.refreshTimeLine();
        }
        AVClipInfoPack activeVideoClip = this$0.getActiveVideoClip();
        kotlin.jvm.internal.t.g(activeVideoClip);
        this$0.safeSeekTo(activeVideoClip.indexInScene, 1);
    }

    private final void opMusic(List<? extends AVClipInfoPack> list) {
        Uri fragmentDeepLinkUri;
        FragmentRegister fragmentRegister = getFragmentRegister();
        if (fragmentRegister != null && (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("audioEditor")) != null) {
            Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
            intent.putExtra("inputVideoClipList", JacksonUtils.writeAsString(getPreviewPlayer().getVideoClipInfoList()));
            intent.putExtra("inputAudioClipList", JacksonUtils.writeAsString(list));
            intent.putExtra("inputCaptionList", JacksonUtils.writeAsString(getPreviewPlayer().getCaptionList()));
            intent.putExtra("inputStickerList", JacksonUtils.writeAsString(getPreviewPlayer().getStickerList()));
            intent.putExtra("frameRetrieverOutputFolder", getFrameRetrieverManager().getOutputFolderPath());
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, getREQUEST_CODE_SCENE_EDITOR());
            Utils.post(new Runnable() { // from class: com.narvii.video.n0
                @Override // java.lang.Runnable
                public final void run() {
                    SceneEditorFragment.opMusic$lambda$3$lambda$2(this.f2904a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void opMusic$lambda$3$lambda$2(SceneEditorFragment this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.setSubAudioEditing(true);
    }

    private final void opPIP() {
        if (!getPreviewPlayer().getPipVideoList().isEmpty()) {
            startPipEditFragment(getPreviewPlayer().getPipVideoList());
            return;
        }
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment == null) {
            kotlin.jvm.internal.t.B("mediaPickerFragment");
            mediaPickerFragment = null;
        }
        MediaPreEditingActivityKt.pickVideoFromGalleryAndYoutube(mediaPickerFragment, "", 1, REQUEST_SELECT_PIP_VIDEO, false);
    }

    private final void opTrim() {
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip != null) {
            setSubVideoEditing(true);
            FragmentRegister fragmentRegister = getFragmentRegister();
            if (fragmentRegister != null) {
                kotlin.jvm.internal.t.g(fragmentRegister);
                Uri fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("mediaEditor");
                if (fragmentDeepLinkUri != null) {
                    Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
                    intent.putExtra("clipInfoPack", JacksonUtils.writeAsString(activeVideoClip));
                    intent.putExtra("isVideoTrimming", true);
                    intent.putExtra("minOutputLength", 1000);
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, getREQUEST_CODE_SCENE_EDITOR());
                }
            }
        }
    }

    private final void startPipEditFragment(List<? extends PipInfoPack> list) {
        Uri fragmentDeepLinkUri;
        String path;
        FragmentRegister fragmentRegister = getFragmentRegister();
        if (fragmentRegister != null && (fragmentDeepLinkUri = fragmentRegister.getFragmentDeepLinkUri("pipEditor")) != null) {
            Intent intent = new Intent("android.intent.action.VIEW", fragmentDeepLinkUri);
            intent.putExtra("inputVideoClipList", JacksonUtils.writeAsString(getPreviewPlayer().getVideoClipInfoList()));
            intent.putExtra("inputAudioClipList", JacksonUtils.writeAsString(getPreviewPlayer().getAudioClipInfoList()));
            intent.putExtra("frameRetrieverOutputFolder", getFrameRetrieverManager().getOutputFolderPath());
            intent.putExtra("inputPipInfoPackList", JacksonUtils.writeAsString(list));
            intent.putExtra("inputCaptionList", JacksonUtils.writeAsString(getPreviewPlayer().getCaptionList()));
            intent.putExtra("inputStickerList", JacksonUtils.writeAsString(getPreviewPlayer().getStickerList()));
            File outputFileDir = getOutputFileDir();
            if (outputFileDir != null) {
                path = outputFileDir.getPath();
            } else {
                path = null;
            }
            intent.putExtra("outputFileDir", path);
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, REQUEST_CODE_VIDEO_PIP);
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void changeVideoPlaybackStatus(boolean z6, boolean z10) {
        super.changeVideoPlaybackStatus(z6, z10);
        if (!z6 && getBinding().clipFastSwitchingPanel.getVisibility() == 0) {
            getBinding().clipFastSwitchingPanel.setVisibility(8);
            getBinding().coverLayer.setVisibility(8);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        setVideoDurationText(getBinding().videoDuration);
        setVideoPlaybackTimeText(getBinding().videoPlaybackTime);
        setVideoPlaybackTimeDivider(getBinding().divider);
        setPreviewVideoView(getBinding().videoViewPlayer);
        setPlayerButton(getBinding().playerButton);
        setPauseShadow(getBinding().pauseShadow);
        setMainTimeLineComponent(getBinding().videoTimeLineComponent);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment
    public void initFrameRetrieverManager() {
        String strValueOf;
        FrameRetrieverManager frameRetrieverManager = getFrameRetrieverManager();
        SceneInfo sceneInfo = this.scene;
        if (sceneInfo != null) {
            strValueOf = sceneInfo.id;
        } else {
            strValueOf = null;
        }
        if (strValueOf == null) {
            strValueOf = String.valueOf(Math.random());
        }
        FrameRetrieverManager.initRetriever$default(frameRetrieverManager, strValueOf, ScenePrefsHelper.SHARED_PREFS_NAME, true, false, 8, null);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() {
        super.onAVClipsPrepared();
        final ArrayList<AVClipInfoPack> videoInputClipList = getVideoInputClipList();
        final ArrayList<AVClipInfoPack> audioInputClipList = getAudioInputClipList();
        final ArrayList<Caption> captionList = getCaptionList();
        final ArrayList<StickerInfoPack> stickerList = getStickerList();
        final ArrayList<PipInfoPack> pipClipList = getPipClipList();
        initFrameRetrieverManager();
        convertImageToVideo(videoInputClipList, new Callback() { // from class: com.narvii.video.p0
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                SceneEditorFragment.onAVClipsPrepared$lambda$25(this.f2910a, videoInputClipList, audioInputClipList, captionList, stickerList, pipClipList, (Boolean) obj);
            }
        });
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        String str;
        super.onActivityCreated(bundle);
        SceneInfo sceneInfo = this.scene;
        String string = null;
        if (sceneInfo != null && sceneInfo.isGeneratedFromTemplate()) {
            SceneInfo sceneInfo2 = this.scene;
            if (sceneInfo2 != null) {
                str = sceneInfo2.title;
            } else {
                str = null;
            }
            if (TextUtils.isEmpty(str)) {
                setTitle("");
                return;
            }
        }
        SceneInfo sceneInfo3 = this.scene;
        if (sceneInfo3 != null) {
            string = sceneInfo3.title;
        }
        if (string == null) {
            string = getResources().getString(com.narvii.mediaeditor.R.string.scene);
            kotlin.jvm.internal.t.i(string, "getString(...)");
        }
        setTitle(string);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        if (getBinding().clipFastSwitchingPanel.getVisibility() == 0) {
            getBinding().clipFastSwitchingPanel.setVisibility(8);
            getBinding().coverLayer.setVisibility(8);
            return true;
        }
        doExit();
        return true;
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onClipDeleted() {
        getBinding().coverLayer.setVisibility(8);
        getBinding().clipFastSwitchingPanel.setVisibility(8);
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip != null) {
            ArrayList<AVClipInfoPack> videoClipInfoList = getPreviewPlayer().getVideoClipInfoList();
            int size = videoClipInfoList.size();
            int i10 = activeVideoClip.indexInScene;
            if (i10 >= 0 && i10 < size) {
                videoClipInfoList.remove(i10);
                IPreviewPlayer.DefaultImpls.resetVideoClipList$default(getPreviewPlayer(), videoClipInfoList, 0, 0, 6, null);
                ScrollingTimeLineFragment.updateVideoTimeLineInfo$default(this, true, 0, 2, null);
                checkSceneDuration();
                if (videoClipInfoList.isEmpty()) {
                    getPreviewPlayer().stop();
                    onEmptyStatusChanged(true);
                }
                getPreviewPlayer().adjustAllViceTrackRange(getTotalVisibleVideoDurationInMs().c().intValue());
            }
        }
        updateAddClipButtonVisibility();
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        Fragment fragmentM0 = requireFragmentManager().m0("playListMediaPicker");
        MediaPickerFragment mediaPickerFragment = null;
        if (fragmentM0 instanceof MediaPickerFragment) {
            this.mediaPickerFragment = (MediaPickerFragment) fragmentM0;
        } else {
            this.mediaPickerFragment = new MediaPickerFragment();
            FragmentTransaction fragmentTransactionQ = requireFragmentManager().q();
            MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
            if (mediaPickerFragment2 == null) {
                kotlin.jvm.internal.t.B("mediaPickerFragment");
                mediaPickerFragment2 = null;
            }
            fragmentTransactionQ.e(mediaPickerFragment2, "playListMediaPicker").k();
        }
        MediaPickerFragment mediaPickerFragment3 = this.mediaPickerFragment;
        if (mediaPickerFragment3 == null) {
            kotlin.jvm.internal.t.B("mediaPickerFragment");
        } else {
            mediaPickerFragment = mediaPickerFragment3;
        }
        mediaPickerFragment.addOnResultListener(this);
        FragmentActivity activity = getActivity();
        kotlin.jvm.internal.t.h(activity, "null cannot be cast to non-null type com.narvii.app.NVActivity");
        ((NVActivity) activity).setBackButtonDrawable(getResources().getDrawable(com.narvii.mediaeditor.R.drawable.ic_actionbar_close));
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment == null) {
            kotlin.jvm.internal.t.B("mediaPickerFragment");
            mediaPickerFragment = null;
        }
        mediaPickerFragment.removeOnResultListener(this);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (!getInitSuccess()) {
            return;
        }
        FrameRetrieverManager.release$default(getFrameRetrieverManager(), false, 1, null);
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onOptionCropSelected() {
        getBinding().coverLayer.setVisibility(8);
        getBinding().clipFastSwitchingPanel.setVisibility(8);
        opCrop();
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onOptionMusicSelected() {
        getBinding().coverLayer.setVisibility(8);
        getBinding().clipFastSwitchingPanel.setVisibility(8);
        opMusic(getPreviewPlayer().getAudioClipInfoList());
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onOptionSpeedSelected() {
        getBinding().coverLayer.setVisibility(8);
        getBinding().clipFastSwitchingPanel.setVisibility(8);
        opSpeed();
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onOptionTrimSelected() {
        getBinding().coverLayer.setVisibility(8);
        getBinding().clipFastSwitchingPanel.setVisibility(8);
        opTrim();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (!getInitSuccess()) {
            return;
        }
        getFrameRetrieverManager().abortFlyingFrameRetrievers();
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        MediaTimeLineComponent mainTimeLineComponent;
        super.onResume();
        if (getInitSuccess() && (mainTimeLineComponent = getMainTimeLineComponent()) != null) {
            mainTimeLineComponent.refreshTimeLine();
        }
    }

    @Override // com.narvii.video.widget.ClipFastSwitchingPanel.ClipFastSwitchingEventCallback
    public void onVolumeChanged(float f) {
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip != null) {
            activeVideoClip.trackVolume = f;
            getPreviewPlayer().setVolume(activeVideoClip, true);
        }
    }
}
