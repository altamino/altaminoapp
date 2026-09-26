package com.narvii.scene;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.BuildConfig;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.MediaPickerFragment;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.model.PollAttach;
import com.narvii.model.QuizQuestion;
import com.narvii.model.Scene;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.permisson.GranularMediaPermissions;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionUtils;
import com.narvii.permisson.PermissionUtilsV2;
import com.narvii.post.DraftManager;
import com.narvii.pre_editing.MediaPreEditingActivityKt;
import com.narvii.scene.dialog.VideoAdvanceDialog;
import com.narvii.scene.helper.SceneListHelper;
import com.narvii.scene.helper.SceneMediaPickerHelper;
import com.narvii.scene.helper.ScenePrefsHelper;
import com.narvii.scene.helper.SceneSpHelper;
import com.narvii.scene.helper.SceneUtils;
import com.narvii.scene.interfaces.IScenePlayer;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.scene.notification.CloseSceneTemplateObject;
import com.narvii.scene.notification.SceneDraftWrapper;
import com.narvii.scene.notification.SceneInfoObject;
import com.narvii.scene.view.BaseScenePreviewLayout;
import com.narvii.scene.view.EditScenePreviewLayout;
import com.narvii.scene.view.NvStoryBackgroundMusicButton;
import com.narvii.scene.view.ScenePreviewLayout;
import com.narvii.scene.view.SceneRecyclerView;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.OnPreventRepeatedClickListener;
import com.narvii.util.ToolTipHelper;
import com.narvii.util.Tooltip;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.video.interfaces.IEditorRecycler;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.services.IEditorPackFactory;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.RadiusLayout;
import com.narvii.widget.TintButton;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.d0;
import kotlin.collections.u;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes4.dex */
public class BaseSceneListFragment extends NVFragment implements View.OnClickListener, MediaPickerFragment.OnResultListener, NvStoryBackgroundMusicButton.OnClickListener, SceneRecyclerView.OnSelectedListener, SceneRecyclerView.OnListSizeChangedListener, SceneRecyclerView.OnEditVideoListener, SceneRecyclerView.OnDialogItemClickListener, FragmentOnBackListener, IScenePlayer.OnPlayingListener, IScenePlayer.BeforePlayingListener, NotificationListener {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MODE_CREATE = 1;
    public static final int MODE_EDIT = 2;
    public static final int PERMISSION_COMPILE_VIDEO_TO_SHARE = 1;

    @NotNull
    public static final String TAG = "BaseSceneListFragment";
    private boolean alreadyClearUselessFile;

    @Nullable
    private SceneDraft autoSaveSceneDraft;

    @Nullable
    private List<? extends Scene> autoSaveSceneList;

    @Nullable
    protected String draftId;
    protected DraftManager draftManager;
    private boolean isError;
    private boolean isToPreview;
    private boolean isWaitingPlaying;

    @Nullable
    private ProgressDialog loadingVideoProgressDialog;
    protected MediaPickerFragment mediaPickerFragment;

    @Nullable
    protected SceneDraft oldSceneDraft;

    @Nullable
    private List<? extends Scene> oldSceneList;
    private boolean permissionDenied;

    @Nullable
    protected SceneDraft sceneDraft;

    @Nullable
    protected List<? extends Scene> sceneList;
    private SceneListHelper sceneListHelper;

    @Nullable
    private SceneMediaPickerHelper sceneMediaPickerHelper;
    private int selectedSceneIndex;

    @Nullable
    private StoryPostService storyPostService;

    @Nullable
    private ToolTipHelper toolTipHelper;

    @Nullable
    private VideoAdvanceDialog videoAdvanceDialog;
    private int mode = 1;

    @NotNull
    private final m previewContainer$delegate = bind(R.id.preview_container);

    @NotNull
    private final m backgroundMusicButton$delegate = bind(R.id.background_music_button);

    @NotNull
    private final m tvTimeCurrent$delegate = bind(R.id.tv_time_current);

    @NotNull
    private final m tvTimeTotal$delegate = bind(R.id.tv_time_total);

    @NotNull
    private final m tvManage$delegate = bind(R.id.tv_manage_scene);

    @NotNull
    private final m sceneRecyclerView$delegate = bind(R.id.scene_recycler_view);

    @NotNull
    private final m tvAdvancedStory$delegate = bind(R.id.tv_advanced_story);

    @NotNull
    private final m manageLayout$delegate = bind(R.id.manage_layout);

    @NotNull
    private final m emptyManageLayout$delegate = bind(R.id.empty_manage_layout);

    @NotNull
    private final m createSceneLayout$delegate = bind(R.id.create_scene_layout);

    @NotNull
    private final m createSceneView$delegate = bind(R.id.iv_create_scene);

    @NotNull
    private final m emptyScenePlaceholder$delegate = bind(R.id.empty_placeholder_view);

    @NotNull
    private final m errorScenePlaceholder$delegate = bind(R.id.error_placeholder_view);

    @NotNull
    private final m playerView$delegate = bind(R.id.player_view);

    @NotNull
    private final m playerContainer$delegate = bind(R.id.player_container);

    @NotNull
    private final m videoPlayButton$delegate = bind(R.id.video_play_button);

    @NotNull
    private final m warningView$delegate = bind(R.id.iv_warning);

    @NotNull
    private final m warningLayout$delegate = bind(R.id.fl_warning);

    @NotNull
    private final m roundCornerCover$delegate = bind(R.id.round_corner_cover);

    @NotNull
    private final m radiusLayout$delegate = bind(R.id.radius_layout);

    @NotNull
    private final m previewLayout$delegate = o.a(new BaseSceneListFragment$previewLayout$2(this));

    @NotNull
    private String selectedSceneId = "";

    @NotNull
    private final m fileMisssingDialog$delegate = o.a(new BaseSceneListFragment$fileMisssingDialog$2(this));

    @NotNull
    private final m invalidDialog$delegate = o.a(new BaseSceneListFragment$invalidDialog$2(this));

    @NotNull
    private final BaseSceneListFragment$autoSaveDraft$1 autoSaveDraft = new Runnable() { // from class: com.narvii.scene.BaseSceneListFragment$autoSaveDraft$1
        @Override // java.lang.Runnable
        public void run() {
            if (this.this$0.isDestoryed()) {
                return;
            }
            this.this$0.saveDraft(true);
            if (this.this$0.autoSaveDraftInterval() > 0) {
                Utils.postDelayed(this, this.this$0.autoSaveDraftInterval());
            }
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.scene.BaseSceneListFragment$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View view = BaseSceneListFragment.this.getView();
            View viewFindViewById = view != null ? view.findViewById(this.$res) : null;
            t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.scene.BaseSceneListFragment.bind");
            return viewFindViewById;
        }
    }

    private final void updatePlayerContainer() {
        updatePlayerContainer(null);
    }

    protected final int autoSaveDraftInterval() {
        return 10000;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.BeforePlayingListener
    public void beforePlayingPause() {
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "story_edit";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return false;
    }

    public boolean isEditMode() {
        return this.mode == 2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        SceneListHelper sceneListHelper = null;
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i10 = R.id.tv_manage_scene;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            getPreviewLayout().pause();
            SceneListHelper sceneListHelper2 = this.sceneListHelper;
            if (sceneListHelper2 == null) {
                t.B("sceneListHelper");
            } else {
                sceneListHelper = sceneListHelper2;
            }
            sceneListHelper.launchSceneManager(this.sceneDraft);
            return;
        }
        int i11 = R.id.iv_create_scene;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            SceneDraft sceneDraft = this.sceneDraft;
            if (sceneDraft != null) {
                sceneDraft.sceneInfos.add(sceneDraft.createEmptyScene());
            }
            updateView();
            if (sceneSize() == 1) {
                showTip();
                return;
            }
            return;
        }
        int i12 = R.id.tv_advanced_story;
        if (numValueOf != null && numValueOf.intValue() == i12) {
            VideoAdvanceDialog videoAdvanceDialog = this.videoAdvanceDialog;
            if (videoAdvanceDialog == null || !videoAdvanceDialog.isShowing()) {
                VideoAdvanceDialog videoAdvanceDialog2 = new VideoAdvanceDialog(this) { // from class: com.narvii.scene.BaseSceneListFragment.onClick.2
                    @Override // com.narvii.scene.dialog.VideoAdvanceDialog, com.narvii.app.NVDialog
                    protected boolean sendPageViewEventToThirdParty() {
                        return true;
                    }

                    {
                        super(this);
                    }
                };
                this.videoAdvanceDialog = videoAdvanceDialog2;
                videoAdvanceDialog2.setCancelable(true);
                VideoAdvanceDialog videoAdvanceDialog3 = this.videoAdvanceDialog;
                if (videoAdvanceDialog3 != null) {
                    videoAdvanceDialog3.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.scene.c
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            BaseSceneListFragment.onClick$lambda$15(this.f2662a, dialogInterface);
                        }
                    });
                }
                VideoAdvanceDialog videoAdvanceDialog4 = this.videoAdvanceDialog;
                if (videoAdvanceDialog4 != null) {
                    videoAdvanceDialog4.show();
                    return;
                }
                return;
            }
            return;
        }
        int i13 = R.id.fl_warning;
        if (numValueOf != null && numValueOf.intValue() == i13) {
            getPreviewLayout().pause();
            toSceneEditor(getSelectedSceneInfo(this.selectedSceneId), false);
            return;
        }
        int i14 = R.id.empty_placeholder_view;
        if (numValueOf != null && numValueOf.intValue() == i14) {
            SceneDraft sceneDraft2 = this.sceneDraft;
            SceneInfo sceneInfo = sceneDraft2 != null ? sceneDraft2.getSceneInfo(this.selectedSceneId) : null;
            if (sceneInfo != null) {
                pickVideo(sceneInfo, this.selectedSceneIndex);
                return;
            }
            return;
        }
        int i15 = R.id.error_placeholder_view;
        if (numValueOf != null && numValueOf.intValue() == i15) {
            updateData();
            loadingVideo();
            getPreviewLayout().play();
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
        Object obj = notification != null ? notification.obj : null;
        if (obj instanceof CloseSceneTemplateObject) {
            SceneMediaPickerHelper sceneMediaPickerHelper = this.sceneMediaPickerHelper;
            if (sceneMediaPickerHelper != null) {
                sceneMediaPickerHelper.dismissTemplate();
                return;
            }
            return;
        }
        if (obj instanceof SceneInfoObject) {
            Object obj2 = notification.obj;
            t.h(obj2, "null cannot be cast to non-null type com.narvii.scene.notification.SceneInfoObject");
            SceneInfo sceneInfo = ((SceneInfoObject) obj2).sceneInfo;
            SceneDraft sceneDraft = this.sceneDraft;
            t.g(sceneDraft);
            SceneInfo sceneInfo2 = sceneDraft.getSceneInfo(sceneInfo != null ? sceneInfo.id : null);
            if (sceneInfo2 != null) {
                sceneInfo2.copyScene(sceneInfo);
            }
            String str = sceneInfo2 != null ? sceneInfo2.id : null;
            if (str == null) {
                str = "";
            }
            this.selectedSceneId = str;
            SceneDraft sceneDraft2 = this.sceneDraft;
            t.g(sceneDraft2);
            sceneDraft2.correctBgMusicClip();
            updateView();
            updatePreviewLayout();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionDenied(int i10, boolean z6, @NotNull ArrayList<String> deniedPermissions) {
        t.j(deniedPermissions, "deniedPermissions");
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i10) {
        this.permissionDenied = false;
        if (i10 == 1) {
            updateSceneDraft();
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneEnd(@NotNull String sceneId, int i10) {
        t.j(sceneId, "sceneId");
    }

    protected final void setDraftManager(@NotNull DraftManager draftManager) {
        t.j(draftManager, "<set-?>");
        this.draftManager = draftManager;
    }

    protected final void setMediaPickerFragment(@NotNull MediaPickerFragment mediaPickerFragment) {
        t.j(mediaPickerFragment, "<set-?>");
        this.mediaPickerFragment = mediaPickerFragment;
    }

    protected boolean showAdvancedEditor() {
        return true;
    }

    protected boolean useRoundCornerCover() {
        return false;
    }

    protected int warningViewTintColor() {
        return -1953618;
    }

    private final <T extends View> m<T> bind(@IdRes int i10) {
        return o.b(q.NONE, new AnonymousClass1(i10));
    }

    private final void checkPermission() {
        if (Build.VERSION.SDK_INT >= 33) {
            checkPermissionAndroid13();
        } else {
            checkPermissionAndroid12AndBellow();
        }
    }

    private final void checkPermissionAndroid13() {
        PermissionUtilsV2 permissionUtilsV2 = PermissionUtilsV2.INSTANCE;
        Context contextRequireContext = requireContext();
        t.i(contextRequireContext, "requireContext(...)");
        if (!permissionUtilsV2.hasSelfPermissionReadImagesAndVideos(contextRequireContext)) {
            NVPermission.builder(this).requestCode(1).permissions(new String[]{permissionUtilsV2.obtainPermissionName(GranularMediaPermissions.READ_MEDIA_IMAGES), permissionUtilsV2.obtainPermissionName(GranularMediaPermissions.READ_MEDIA_VIDEO)}).permissionListener(this).rationaleDneyCallback(new Callback() { // from class: com.narvii.scene.f
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    BaseSceneListFragment.checkPermissionAndroid13$lambda$28(this.f2667a, obj);
                }
            }).request();
        } else {
            getPreviewLayout().toResume(this.isWaitingPlaying);
            this.isWaitingPlaying = false;
        }
    }

    private final NvStoryBackgroundMusicButton getBackgroundMusicButton() {
        return (NvStoryBackgroundMusicButton) this.backgroundMusicButton$delegate.getValue();
    }

    private final View getCreateSceneLayout() {
        return (View) this.createSceneLayout$delegate.getValue();
    }

    private final View getCreateSceneView() {
        return (View) this.createSceneView$delegate.getValue();
    }

    private final TextView getEmptyManageLayout() {
        return (TextView) this.emptyManageLayout$delegate.getValue();
    }

    private final View getEmptyScenePlaceholder() {
        return (View) this.emptyScenePlaceholder$delegate.getValue();
    }

    private final View getErrorScenePlaceholder() {
        return (View) this.errorScenePlaceholder$delegate.getValue();
    }

    private final ACMAlertDialog getFileMisssingDialog() {
        return (ACMAlertDialog) this.fileMisssingDialog$delegate.getValue();
    }

    private final AlertDialog getInvalidDialog() {
        return (AlertDialog) this.invalidDialog$delegate.getValue();
    }

    private final View getManageLayout() {
        return (View) this.manageLayout$delegate.getValue();
    }

    private final ViewGroup getPlayerContainer() {
        return (ViewGroup) this.playerContainer$delegate.getValue();
    }

    private final View getPlayerView() {
        return (View) this.playerView$delegate.getValue();
    }

    private final FrameLayout getPreviewContainer() {
        return (FrameLayout) this.previewContainer$delegate.getValue();
    }

    private final BaseScenePreviewLayout getPreviewLayout() {
        return (BaseScenePreviewLayout) this.previewLayout$delegate.getValue();
    }

    private final RadiusLayout getRadiusLayout() {
        return (RadiusLayout) this.radiusLayout$delegate.getValue();
    }

    private final View getRoundCornerCover() {
        return (View) this.roundCornerCover$delegate.getValue();
    }

    private final SceneRecyclerView getSceneRecyclerView() {
        return (SceneRecyclerView) this.sceneRecyclerView$delegate.getValue();
    }

    private final SceneInfo getSelectedSceneInfo(String str) {
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft != null) {
            return sceneDraft.getSceneInfo(str);
        }
        return null;
    }

    private final TextView getTvAdvancedStory() {
        return (TextView) this.tvAdvancedStory$delegate.getValue();
    }

    private final TextView getTvManage() {
        return (TextView) this.tvManage$delegate.getValue();
    }

    private final TextView getTvTimeCurrent() {
        return (TextView) this.tvTimeCurrent$delegate.getValue();
    }

    private final TextView getTvTimeTotal() {
        return (TextView) this.tvTimeTotal$delegate.getValue();
    }

    private final View getVideoPlayButton() {
        return (View) this.videoPlayButton$delegate.getValue();
    }

    private final View getWarningLayout() {
        return (View) this.warningLayout$delegate.getValue();
    }

    private final TintButton getWarningView() {
        return (TintButton) this.warningView$delegate.getValue();
    }

    private final void loadingVideo() {
        if (this.loadingVideoProgressDialog == null) {
            ProgressDialog progressDialog = new ProgressDialog(getActivity());
            progressDialog.setCancelable(false);
            progressDialog.setCanceledOnTouchOutside(false);
            this.loadingVideoProgressDialog = progressDialog;
        }
        ProgressDialog progressDialog2 = this.loadingVideoProgressDialog;
        t.g(progressDialog2);
        if (!progressDialog2.isShowing()) {
            ProgressDialog progressDialog3 = this.loadingVideoProgressDialog;
            t.g(progressDialog3);
            progressDialog3.show();
        }
        getVideoPlayButton().setVisibility(8);
    }

    private final void logEditClose() {
        LogEvent.clickBuilder(this, ActSemantic.editClose).area("EditArea").extraParam("storyDraftId", this.draftId).send();
    }

    private final void pickBackgroundMusic() {
        Bundle bundle = new Bundle();
        bundle.putString("type", "audio");
        File dir = getDraftManager().getDir(this.draftId);
        SceneDraft sceneDraft = this.sceneDraft;
        File file = new File(dir, sceneDraft != null ? sceneDraft.globalFileFolder : null);
        if (FileUtils.isEmpty(file)) {
            file.mkdirs();
        }
        getMediaPickerFragment().pickMedia(null, bundle, 16902, 1, null);
    }

    private final void showTip() {
        Context contextRequireContext = requireContext();
        t.i(contextRequireContext, "requireContext(...)");
        if (new ScenePrefsHelper(contextRequireContext).isFirstEdit()) {
            this.toolTipHelper = new ToolTipHelper();
            getSceneRecyclerView().post(new Runnable() { // from class: com.narvii.scene.a
                @Override // java.lang.Runnable
                public final void run() {
                    BaseSceneListFragment.showTip$lambda$25(this.f2660a);
                }
            });
            getSceneRecyclerView().addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.scene.BaseSceneListFragment.showTip.2
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(@NotNull RecyclerView recyclerView, int i10, int i11) {
                    t.j(recyclerView, "recyclerView");
                    super.onScrolled(recyclerView, i10, i11);
                    if (i10 <= 0 || BaseSceneListFragment.this.toolTipHelper == null) {
                        return;
                    }
                    ToolTipHelper toolTipHelper = BaseSceneListFragment.this.toolTipHelper;
                    t.g(toolTipHelper);
                    if (toolTipHelper.isTooltipShowing()) {
                        ToolTipHelper toolTipHelper2 = BaseSceneListFragment.this.toolTipHelper;
                        t.g(toolTipHelper2);
                        toolTipHelper2.hideToolTip();
                    }
                }
            });
        }
    }

    private final void toSceneEditor(SceneInfo sceneInfo, boolean z6) {
        SceneListHelper sceneListHelper = this.sceneListHelper;
        if (sceneListHelper == null) {
            t.B("sceneListHelper");
            sceneListHelper = null;
        }
        sceneListHelper.launchSceneEditor(sceneInfo, z6, getDraftAbsolutePath());
    }

    private final void updatePlayerContainer(String str) {
        if (isEditMode()) {
            if (TextUtils.equals(str, this.selectedSceneId)) {
                getPlayerView().setVisibility(8);
                getPreviewLayout().setVisibility(8);
                getErrorScenePlaceholder().setVisibility(0);
            } else {
                getPlayerView().setVisibility(0);
                getPreviewLayout().setVisibility(0);
                getErrorScenePlaceholder().setVisibility(8);
            }
            getEmptyScenePlaceholder().setVisibility(8);
            getWarningLayout().setVisibility(8);
            getVideoPlayButton().setVisibility(getPreviewLayout().isPlaying() ? 8 : 0);
            getBackgroundMusicButton().setVisibility(8);
            getTvManage().setVisibility(8);
            return;
        }
        if (hasNoScene()) {
            getPlayerContainer().setBackgroundColor(isDarkTheme() ? 855638015 : -328963);
            getEmptyScenePlaceholder().setVisibility(8);
            getPlayerView().setVisibility(8);
            return;
        }
        getPlayerContainer().setBackgroundColor(-1);
        SceneDraft sceneDraft = this.sceneDraft;
        t.g(sceneDraft);
        SceneInfo sceneInfo = sceneDraft.getSceneInfo(this.selectedSceneId);
        if (sceneInfo.isEmpty()) {
            getEmptyScenePlaceholder().setVisibility(0);
            getPlayerView().setVisibility(8);
            return;
        }
        if (!sceneInfo.isCanPlay() || TextUtils.equals(str, sceneInfo.id)) {
            getEmptyScenePlaceholder().setVisibility(8);
            getPlayerView().setVisibility(0);
            getWarningLayout().setVisibility(0);
            getPreviewLayout().setVisibility(8);
            getVideoPlayButton().setVisibility(8);
            return;
        }
        getEmptyScenePlaceholder().setVisibility(8);
        getPlayerView().setVisibility(0);
        getWarningLayout().setVisibility(sceneInfo.isError() ? 0 : 8);
        getPreviewLayout().setVisibility(0);
        getVideoPlayButton().setVisibility(getPreviewLayout().isPlaying() ? 8 : 0);
    }

    private final void updateTitle() {
        if (this.selectedSceneIndex == -1) {
            setTitle("");
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.selectedSceneIndex + 1);
        sb.append('/');
        sb.append(sceneSize());
        setTitle(sb.toString());
    }

    protected void closeWhenDraftChanged() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(R.string.discard_changes, true);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.scene.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                BaseSceneListFragment.closeWhenDraftChanged$lambda$4(this.f2661a, dialogInterface, i10);
            }
        });
        actionSheetDialog.show();
    }

    public final boolean getBooleanParam(@NotNull String key, boolean z6, @Nullable Bundle bundle) {
        t.j(key, "key");
        return bundle != null ? bundle.getBoolean(key, z6) : getBooleanParam(key, z6);
    }

    @NotNull
    protected final DraftManager getDraftManager() {
        DraftManager draftManager = this.draftManager;
        if (draftManager != null) {
            return draftManager;
        }
        t.B("draftManager");
        return null;
    }

    public final int getIntParam(@NotNull String key, @Nullable Bundle bundle) {
        t.j(key, "key");
        return bundle != null ? bundle.getInt(key) : getIntParam(key);
    }

    @NotNull
    protected final MediaPickerFragment getMediaPickerFragment() {
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            return mediaPickerFragment;
        }
        t.B("mediaPickerFragment");
        return null;
    }

    @NotNull
    public final String getStringParam(@NotNull String key, @Nullable Bundle bundle) {
        t.j(key, "key");
        String string = bundle != null ? bundle.getString(key) : null;
        if (string != null) {
            return string;
        }
        String stringParam = getStringParam(key);
        return stringParam == null ? "" : stringParam;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@NotNull Menu menu, @NotNull MenuInflater inflater) {
        t.j(menu, "menu");
        t.j(inflater, "inflater");
        super.onCreateOptionsMenu(menu, inflater);
        int i10 = com.narvii.lib.R.string.compose_preview;
        menu.add(0, i10, 0, i10).setIcon(new ActionBarIcon(getContext(), getString(com.narvii.lib.R.string.ion_eye), 0.85f, ContextCompat.getColor(requireContext(), R.color.story_theme_text_color), 127, false)).setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.post_scene_layout, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@NotNull MenuItem item) {
        t.j(item, "item");
        if (item.getItemId() == R.string.compose_preview) {
            LogEvent.clickBuilder(this, ActSemantic.preview).area("PreviewIcon").send();
            getPreviewLayout().pause();
            if (isEditMode()) {
                this.isToPreview = true;
                StoryPostService storyPostService = this.storyPostService;
                if (storyPostService != null) {
                    storyPostService.launchStoryPreview(this.sceneList);
                }
            } else {
                SceneListHelper sceneListHelper = this.sceneListHelper;
                if (sceneListHelper == null) {
                    t.B("sceneListHelper");
                    sceneListHelper = null;
                }
                sceneListHelper.launchScenePreview(this.sceneDraft);
            }
        }
        return super.onOptionsItemSelected(item);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00cc A[PHI: r5
      0x00cc: PHI (r5v14 com.narvii.scene.helper.SceneListHelper) = (r5v10 com.narvii.scene.helper.SceneListHelper), (r5v17 com.narvii.scene.helper.SceneListHelper) binds: [B:46:0x00e5, B:39:0x00ca] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(@Nullable List<Media> list, @Nullable Bundle bundle) {
        Media mediaPrevious;
        SceneListHelper sceneListHelper;
        SceneInfo selectedSceneInfo = getSelectedSceneInfo(this.selectedSceneId);
        if (selectedSceneInfo == null || list == null || list.size() <= 0 || bundle == null) {
            return;
        }
        String string = bundle.getString("type");
        boolean z6 = false;
        Media media = list.get(0);
        if (TextUtils.isEmpty(string)) {
            return;
        }
        SceneListHelper sceneListHelper2 = null;
        if (!TextUtils.equals(string, "video")) {
            if (TextUtils.equals(string, "audio")) {
                SceneListHelper sceneListHelper3 = this.sceneListHelper;
                if (sceneListHelper3 == null) {
                    t.B("sceneListHelper");
                } else {
                    sceneListHelper2 = sceneListHelper3;
                }
                sceneListHelper2.launchSceneBackgroundMusic(this.sceneDraft, media, bundle);
                return;
            }
            return;
        }
        ListIterator<Media> listIterator = list.listIterator(list.size());
        do {
            if (!listIterator.hasPrevious()) {
                mediaPrevious = null;
                break;
            }
            mediaPrevious = listIterator.previous();
        } while (!mediaPrevious.isVideo());
        Media media2 = mediaPrevious;
        if (media2 != null) {
            SceneSpHelper sceneSpHelper = new SceneSpHelper(this);
            String fileName = media2.fileName;
            t.i(fileName, "fileName");
            sceneSpHelper.saveRecentVideo(media2, fileName);
        }
        Media media3 = (Media) d0.j0(list);
        if (media3 == null || com.narvii.util.text.TextUtils.isEmpty(media3.url)) {
            return;
        }
        int i10 = media3.type;
        if (i10 == 103) {
            MediaPreEditingActivityKt.startPreEditActivity(this, media3, bundle, getDraftAbsolutePath() + "/scene_intermediate_file/");
            return;
        }
        if (i10 != 123) {
            sceneListHelper = this.sceneListHelper;
            if (sceneListHelper == null) {
                t.B("sceneListHelper");
                sceneListHelper = null;
            }
            if (media3.type == 100) {
                z6 = true;
            }
        } else {
            if (media3.duration > 60999) {
                MediaPreEditingActivityKt.startPreEditActivity(this, media3, bundle, getDraftAbsolutePath() + "/scene_intermediate_file/");
                return;
            }
            sceneListHelper = this.sceneListHelper;
            if (sceneListHelper == null) {
                t.B("sceneListHelper");
                sceneListHelper = null;
            }
            if (media3.type == 100) {
                z6 = true;
            }
        }
        sceneListHelper.launchSceneEditor(list, selectedSceneInfo, z6, getDraftAbsolutePath(), bundle);
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingError(@Nullable Exception exc) {
        ProgressDialog progressDialog = this.loadingVideoProgressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        if (isEditMode()) {
            this.isError = true;
            updatePlayerContainer(this.selectedSceneId);
            getSceneRecyclerView().setSceneCanPlaying(false, this.selectedSceneId);
        } else if (PermissionUtils.hasSelfPermission(getActivity(), "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE") || this.permissionDenied) {
            showInvalidDialog();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("onPlayingError >>>  previewLayout visibility : ");
        sb.append(getPreviewLayout().getVisibility() == 0);
        Log.d(TAG, sb.toString());
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingStart() {
        ProgressDialog progressDialog = this.loadingVideoProgressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        if (this.isError) {
            this.isError = false;
            updateView();
        }
        getVideoPlayButton().setVisibility(8);
        getSceneRecyclerView().setPlaying(true);
        getSceneRecyclerView().selectedScene(this.selectedSceneIndex, true);
        getSceneRecyclerView().setSceneCanPlaying(true, this.selectedSceneId);
        StringBuilder sb = new StringBuilder();
        sb.append("onPlayingStart >>>  previewLayout visibility : ");
        sb.append(getPreviewLayout().getVisibility() == 0);
        Log.d(TAG, sb.toString());
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(@NotNull Menu menu) {
        boolean zIsEmpty;
        ActionBarIcon actionBarIcon;
        t.j(menu, "menu");
        super.onPrepareOptionsMenu(menu);
        if (isEditMode()) {
            List<? extends Scene> list = this.sceneList;
            t.g(list);
            zIsEmpty = list.isEmpty();
        } else {
            SceneDraft sceneDraft = this.sceneDraft;
            t.g(sceneDraft);
            zIsEmpty = sceneDraft.isEmpty();
        }
        MenuItem menuItemFindItem = menu.findItem(R.string.compose_preview);
        menuItemFindItem.setEnabled(!zIsEmpty);
        if (zIsEmpty) {
            actionBarIcon = new ActionBarIcon(getContext(), getString(com.narvii.lib.R.string.ion_eye), 0.85f, ContextCompat.getColor(requireContext(), isDarkTheme() ? R.color.white : R.color.story_theme_action_bar_view), 127, false);
        } else {
            actionBarIcon = new ActionBarIcon(getContext(), getString(com.narvii.lib.R.string.ion_eye), 0.85f, ContextCompat.getColor(requireContext(), isDarkTheme() ? R.color.white : R.color.story_theme_action_bar_view), 255, false);
        }
        menuItemFindItem.setIcon(actionBarIcon);
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPrepared() {
        ProgressDialog progressDialog = this.loadingVideoProgressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        if (this.isError) {
            this.isError = false;
            updateView();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putInt("selectedIndex", this.selectedSceneIndex);
        outState.putString("draftId", this.draftId);
        if (isEditMode()) {
            outState.putString("sceneList", JacksonUtils.writeAsString(this.sceneList));
        } else {
            outState.putString("sceneDraft", JacksonUtils.writeAsString(this.sceneDraft));
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneChanged(@NotNull String sceneId, int i10) {
        t.j(sceneId, "sceneId");
        if (TextUtils.isEmpty(sceneId)) {
            return;
        }
        int i11 = 0;
        if (isEditMode()) {
            List<? extends Scene> list = this.sceneList;
            t.g(list);
            int size = list.size();
            while (i11 < size) {
                List<? extends Scene> list2 = this.sceneList;
                t.g(list2);
                if (TextUtils.equals(sceneId, list2.get(i11).sceneId)) {
                    sceneChanged(i11, sceneId);
                    return;
                }
                i11++;
            }
            return;
        }
        SceneDraft sceneDraft = this.sceneDraft;
        t.g(sceneDraft);
        int size2 = sceneDraft.sceneInfos.size();
        while (i11 < size2) {
            SceneDraft sceneDraft2 = this.sceneDraft;
            t.g(sceneDraft2);
            if (TextUtils.equals(sceneId, sceneDraft2.sceneInfos.get(i11).id)) {
                sceneChanged(i11, sceneId);
                return;
            }
            i11++;
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSeekingError(@NotNull String sceneId, @NotNull Exception exception) {
        t.j(sceneId, "sceneId");
        t.j(exception, "exception");
        updatePlayerContainer(sceneId);
    }

    @Override // com.narvii.scene.view.SceneRecyclerView.OnSelectedListener
    public void onSelected(@Nullable String str, int i10) {
        this.selectedSceneIndex = i10;
        if (str == null) {
            str = "";
        }
        this.selectedSceneId = str;
        updateTitle();
        updatePlayerContainer();
        if (this.isError) {
            loadingVideo();
            updatePreviewLayout();
        } else {
            getPreviewLayout().pause();
            getPreviewLayout().seekScene(this.selectedSceneId);
        }
    }

    private final void checkPermissionAndroid12AndBellow() {
        if (PermissionUtils.hasSelfPermission(getActivity(), "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE")) {
            getPreviewLayout().toResume(this.isWaitingPlaying);
            this.isWaitingPlaying = false;
        } else {
            NVPermission.builder(this).requestCode(1).permissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}).permissionListener(this).rationaleDneyCallback(new Callback() { // from class: com.narvii.scene.e
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    BaseSceneListFragment.checkPermissionAndroid12AndBellow$lambda$29(this.f2666a, obj);
                }
            }).request();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkPermissionAndroid12AndBellow$lambda$29(BaseSceneListFragment this$0, Object obj) {
        t.j(this$0, "this$0");
        this$0.permissionDenied = true;
        this$0.updateSceneDraft();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkPermissionAndroid13$lambda$28(BaseSceneListFragment this$0, Object obj) {
        t.j(this$0, "this$0");
        this$0.permissionDenied = true;
        this$0.updateSceneDraft();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void clearUselessClip() {
        if (!isEditMode()) {
            SceneDraft sceneDraft = this.sceneDraft;
            t.g(sceneDraft);
            this.oldSceneDraft = sceneDraft.clearUselessClip().m1631clone();
            updateSceneDraft();
            saveDraft(false);
            checkPermission();
            startAutoSaveTask();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void closeWhenDraftChanged$lambda$4(BaseSceneListFragment this$0, DialogInterface dialogInterface, int i10) {
        t.j(this$0, "this$0");
        if (i10 == 0) {
            this$0.setResult(0);
            this$0.finish();
            this$0.logEditClose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BaseScenePreviewLayout createPreviewLayout() {
        if (isEditMode()) {
            return new EditScenePreviewLayout(this, null, 0, 6, null);
        }
        Context contextRequireContext = requireContext();
        t.i(contextRequireContext, "requireContext(...)");
        return new ScenePreviewLayout(contextRequireContext, null, 0, 6, null);
    }

    private final String getDraftAbsolutePath() {
        String absolutePath;
        File dir = getDraftManager().getDir(this.draftId);
        if (dir != null) {
            absolutePath = dir.getAbsolutePath();
        } else {
            absolutePath = null;
        }
        if (absolutePath == null) {
            return "";
        }
        return absolutePath;
    }

    private final boolean hasNoScene() {
        if (sceneSize() == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClick$lambda$15(BaseSceneListFragment this$0, DialogInterface dialogInterface) {
        t.j(this$0, "this$0");
        this$0.videoAdvanceDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(BaseSceneListFragment this$0, View view) {
        t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.edit).area("PollQuiz").send();
    }

    private final void resetSelectedScene() {
        if (isEditMode()) {
            List<? extends Scene> list = this.sceneList;
            t.g(list);
            if (list.isEmpty()) {
                this.selectedSceneIndex = -1;
                this.selectedSceneId = "";
                return;
            }
            if (!TextUtils.isEmpty(this.selectedSceneId)) {
                List<? extends Scene> list2 = this.sceneList;
                t.g(list2);
                int size = list2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    List<? extends Scene> list3 = this.sceneList;
                    t.g(list3);
                    if (TextUtils.equals(list3.get(i10).sceneId, this.selectedSceneId)) {
                        this.selectedSceneIndex = i10;
                        return;
                    }
                }
            }
            this.selectedSceneIndex = 0;
            List<? extends Scene> list4 = this.sceneList;
            t.g(list4);
            String sceneId = list4.get(0).sceneId;
            t.i(sceneId, "sceneId");
            this.selectedSceneId = sceneId;
            return;
        }
        SceneDraft sceneDraft = this.sceneDraft;
        t.g(sceneDraft);
        if (sceneDraft.sceneInfos.size() == 0) {
            this.selectedSceneIndex = -1;
            this.selectedSceneId = "";
            return;
        }
        if (!TextUtils.isEmpty(this.selectedSceneId)) {
            SceneDraft sceneDraft2 = this.sceneDraft;
            t.g(sceneDraft2);
            int size2 = sceneDraft2.sceneInfos.size();
            for (int i11 = 0; i11 < size2; i11++) {
                SceneDraft sceneDraft3 = this.sceneDraft;
                t.g(sceneDraft3);
                if (TextUtils.equals(sceneDraft3.sceneInfos.get(i11).id, this.selectedSceneId)) {
                    this.selectedSceneIndex = i11;
                    return;
                }
            }
        }
        this.selectedSceneIndex = 0;
        SceneDraft sceneDraft4 = this.sceneDraft;
        t.g(sceneDraft4);
        SceneInfo sceneInfo = sceneDraft4.sceneInfos.get(0);
        t.g(sceneInfo);
        String id = sceneInfo.id;
        t.i(id, "id");
        this.selectedSceneId = id;
    }

    private final void sceneChanged(int i10, String str) {
        getSceneRecyclerView().selectedScene(i10, true);
        getSceneRecyclerView().setPlaying(getPreviewLayout().isPlaying());
        if (!this.isError) {
            getSceneRecyclerView().setSceneCanPlaying(true, this.selectedSceneId);
        }
        this.selectedSceneIndex = i10;
        this.selectedSceneId = str;
        updateTitle();
        updatePlayerContainer();
        Log.d(TAG, "sceneChanged  >>>  sceneId = " + str + "  index = " + i10);
    }

    private final int sceneSize() {
        List<SceneInfo> list;
        if (isEditMode()) {
            List<? extends Scene> list2 = this.sceneList;
            if (list2 == null) {
                return 0;
            }
            return list2.size();
        }
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft == null || (list = sceneDraft.sceneInfos) == null) {
            return 0;
        }
        return list.size();
    }

    private final void showInvalidDialog() {
        if (!getInvalidDialog().isShowing() && getLifecycle().b().b(Lifecycle.State.RESUMED)) {
            getInvalidDialog().setMessage(R.string.invalid_input);
            getInvalidDialog().addButton(android.R.string.ok, 0, new View.OnClickListener() { // from class: com.narvii.scene.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseSceneListFragment.showInvalidDialog$lambda$27(this.f2668a, view);
                }
            });
            getInvalidDialog().setCancelable(false);
            getInvalidDialog().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showInvalidDialog$lambda$27(BaseSceneListFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.setResult(0);
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showTip$lambda$25(BaseSceneListFragment this$0) {
        t.j(this$0, "this$0");
        View itemView = this$0.getSceneRecyclerView().getItemView(0);
        if (itemView != null) {
            Tooltip tooltipBuild = Tooltip.builder().anchorView(itemView).textId(R.string.tap_to_add_videos).build();
            ToolTipHelper toolTipHelper = this$0.toolTipHelper;
            if (toolTipHelper != null) {
                toolTipHelper.showToolTip(tooltipBuild);
            }
        }
    }

    private final void startAutoSaveTask() {
        if (autoSaveDraftInterval() > 0) {
            Utils.handler.removeCallbacks(this.autoSaveDraft);
            Utils.postDelayed(this.autoSaveDraft, autoSaveDraftInterval());
        }
    }

    private final void updateBgMusicButton() {
        if (isEditMode()) {
            getBackgroundMusicButton().setVisibility(8);
            return;
        }
        getBackgroundMusicButton().setVisibility(0);
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft != null) {
            int i10 = 1;
            if (sceneDraft.bgMusicClip == null) {
                NvStoryBackgroundMusicButton backgroundMusicButton = getBackgroundMusicButton();
                if (!sceneDraft.isEmpty()) {
                    i10 = 2;
                }
                backgroundMusicButton.setMode(i10, requireContext().getString(R.string.background_music));
                return;
            }
            NvStoryBackgroundMusicButton backgroundMusicButton2 = getBackgroundMusicButton();
            if (!sceneDraft.isEmpty()) {
                i10 = 3;
            }
            backgroundMusicButton2.setMode(i10, sceneDraft.bgMusicClip.fileName);
        }
    }

    private final void updateData() {
        BaseScenePreviewLayout previewLayout = getPreviewLayout();
        if (previewLayout instanceof ScenePreviewLayout) {
            BaseScenePreviewLayout previewLayout2 = getPreviewLayout();
            t.h(previewLayout2, "null cannot be cast to non-null type com.narvii.scene.view.ScenePreviewLayout");
            SceneDraft sceneDraft = this.sceneDraft;
            t.g(sceneDraft);
            ((ScenePreviewLayout) previewLayout2).setSceneDraft(sceneDraft);
            return;
        }
        if (previewLayout instanceof EditScenePreviewLayout) {
            BaseScenePreviewLayout previewLayout3 = getPreviewLayout();
            t.h(previewLayout3, "null cannot be cast to non-null type com.narvii.scene.view.EditScenePreviewLayout");
            List<? extends Scene> list = this.sceneList;
            t.g(list);
            ((EditScenePreviewLayout) previewLayout3).setSceneList(list);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void updateList() {
        if (isEditMode()) {
            getSceneRecyclerView().setSceneList(this.sceneList);
        } else {
            getSceneRecyclerView().setSceneDraft(this.sceneDraft);
        }
        getSceneRecyclerView().selectedScene(this.selectedSceneIndex, false);
        getSceneRecyclerView().setPlaying(getPreviewLayout().isPlaying());
        if (isEditMode()) {
            getManageLayout().setVisibility(0);
            getSceneRecyclerView().setVisibility(0);
            getEmptyManageLayout().setVisibility(8);
            getCreateSceneLayout().setVisibility(8);
            return;
        }
        if (hasNoScene()) {
            getManageLayout().setVisibility(8);
            getSceneRecyclerView().setVisibility(8);
            getEmptyManageLayout().setVisibility(0);
            getCreateSceneLayout().setVisibility(0);
            return;
        }
        getManageLayout().setVisibility(0);
        getSceneRecyclerView().setVisibility(0);
        getEmptyManageLayout().setVisibility(8);
        getCreateSceneLayout().setVisibility(8);
    }

    private final void updatePreviewLayout() {
        BaseScenePreviewLayout previewLayout = getPreviewLayout();
        if (previewLayout instanceof ScenePreviewLayout) {
            BaseScenePreviewLayout previewLayout2 = getPreviewLayout();
            t.h(previewLayout2, "null cannot be cast to non-null type com.narvii.scene.view.ScenePreviewLayout");
            SceneDraft sceneDraft = this.sceneDraft;
            t.g(sceneDraft);
            ((ScenePreviewLayout) previewLayout2).setSceneDraft(sceneDraft);
            BaseScenePreviewLayout previewLayout3 = getPreviewLayout();
            t.h(previewLayout3, "null cannot be cast to non-null type com.narvii.scene.view.ScenePreviewLayout");
            ((ScenePreviewLayout) previewLayout3).seekScene(this.selectedSceneId);
            return;
        }
        if (previewLayout instanceof EditScenePreviewLayout) {
            BaseScenePreviewLayout previewLayout4 = getPreviewLayout();
            t.h(previewLayout4, "null cannot be cast to non-null type com.narvii.scene.view.EditScenePreviewLayout");
            List<? extends Scene> list = this.sceneList;
            t.g(list);
            ((EditScenePreviewLayout) previewLayout4).setSceneList(list);
            BaseScenePreviewLayout previewLayout5 = getPreviewLayout();
            t.h(previewLayout5, "null cannot be cast to non-null type com.narvii.scene.view.EditScenePreviewLayout");
            ((EditScenePreviewLayout) previewLayout5).seekScene(this.selectedSceneId);
        }
    }

    private final void updateSceneDraft() {
        updateData();
        updateView();
        getPreviewLayout().toResume(this.isWaitingPlaying);
        this.isWaitingPlaying = false;
    }

    private final void updateView() {
        resetSelectedScene();
        updateTitle();
        updatePlayerContainer();
        updateList();
        invalidateOptionsMenu();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.BeforePlayingListener
    public void beforePlayingStart() {
        if (isEditMode()) {
            loadingVideo();
        }
    }

    @Override // com.narvii.scene.view.SceneRecyclerView.OnEditVideoListener
    public void editVideo(@Nullable SceneInfo sceneInfo, int i10) {
        getPreviewLayout().pause();
        toSceneEditor(sceneInfo, false);
    }

    @Override // com.narvii.app.NVFragment
    protected int getActionBarLayoutId() {
        if (isDarkTheme()) {
            return R.layout.actionbar_dark_layout;
        }
        return R.layout.actionbar_layout_no_shadow;
    }

    protected int getMajorTextColor() {
        if (isDarkTheme()) {
            return -1;
        }
        return -11908534;
    }

    @NotNull
    protected final SceneRecyclerView getRecyclerView() {
        return getSceneRecyclerView();
    }

    protected void notifySceneDraftChanged(boolean z6) {
        Notification notification;
        if (isEditMode()) {
            notification = new Notification("update", new SceneDraftWrapper(this.sceneList, this.draftId, z6));
        } else {
            notification = new Notification("update", new SceneDraftWrapper(this.sceneDraft, z6));
        }
        sendNotification(notification);
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        VideoAdvanceDialog videoAdvanceDialog = this.videoAdvanceDialog;
        if (videoAdvanceDialog != null) {
            videoAdvanceDialog.onActiveChanged(z6);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (!isDarkTheme()) {
            setBackButtonTint(ContextCompat.getColor(requireContext(), R.color.story_theme_action_bar_view));
            setActionBarTitleColor(ContextCompat.getColor(requireContext(), R.color.story_theme_text_color));
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        SceneListHelper sceneListHelper;
        String str;
        super.onActivityResult(i10, i11, intent);
        Log.d(TAG, "onActivityResult  >>>  requestCode = " + i10 + "    resultCode = " + i11);
        SceneListHelper sceneListHelper2 = this.sceneListHelper;
        String str2 = null;
        Object obj = null;
        Object obj2 = null;
        if (sceneListHelper2 == null) {
            t.B("sceneListHelper");
            sceneListHelper2 = null;
        }
        if (sceneListHelper2.isSceneQuizResult(i10, i11, intent)) {
            t.g(intent);
            String stringExtra = intent.getStringExtra("sceneId");
            QuizQuestion quizQuestion = (QuizQuestion) JacksonUtils.readAs(intent.getStringExtra("question"), QuizQuestion.class);
            if (isEditMode()) {
                List<? extends Scene> list = this.sceneList;
                t.g(list);
                for (Object obj3 : list) {
                    if (TextUtils.equals(((Scene) obj3).sceneId, stringExtra)) {
                        obj = obj3;
                        break;
                    }
                }
                Scene scene = (Scene) obj;
                if (scene != null) {
                    scene.question = quizQuestion;
                    updateView();
                    return;
                }
                return;
            }
            SceneDraft sceneDraft = this.sceneDraft;
            t.g(sceneDraft);
            SceneInfo sceneInfo = sceneDraft.getSceneInfo(stringExtra);
            if (sceneInfo != null) {
                sceneInfo.question = quizQuestion;
                updateView();
                return;
            }
            return;
        }
        SceneListHelper sceneListHelper3 = this.sceneListHelper;
        if (sceneListHelper3 == null) {
            t.B("sceneListHelper");
            sceneListHelper3 = null;
        }
        boolean z6 = true;
        if (sceneListHelper3.isScenePollResult(i10, i11, intent)) {
            t.g(intent);
            SceneInfo sceneInfo2 = (SceneInfo) JacksonUtils.readAs(intent.getStringExtra("sceneInfo"), SceneInfo.class);
            String str3 = sceneInfo2.id;
            PollAttach pollAttach = sceneInfo2.pollAttach;
            if (isEditMode()) {
                List<? extends Scene> list2 = this.sceneList;
                t.g(list2);
                for (Object obj4 : list2) {
                    if (TextUtils.equals(((Scene) obj4).sceneId, str3)) {
                        obj2 = obj4;
                        break;
                    }
                }
                Scene scene2 = (Scene) obj2;
                if (scene2 != null) {
                    PollAttach pollAttach2 = scene2.pollAttach;
                    if (pollAttach2 != null && pollAttach != null) {
                        if (pollAttach2.isModified || pollAttach2.equals(pollAttach)) {
                            z6 = scene2.pollAttach.isModified;
                        }
                        pollAttach.isModified = z6;
                    }
                    scene2.pollAttach = pollAttach;
                    updateView();
                    return;
                }
                return;
            }
            SceneDraft sceneDraft2 = this.sceneDraft;
            t.g(sceneDraft2);
            SceneInfo sceneInfo3 = sceneDraft2.getSceneInfo(str3);
            if (sceneInfo3 != null) {
                sceneInfo3.pollAttach = pollAttach;
                updateView();
                return;
            }
            return;
        }
        SceneListHelper sceneListHelper4 = this.sceneListHelper;
        if (sceneListHelper4 == null) {
            t.B("sceneListHelper");
            sceneListHelper4 = null;
        }
        if (sceneListHelper4.isSceneManageResult(i10, i11, intent)) {
            t.g(intent);
            String stringExtra2 = intent.getStringExtra("scene_list");
            SceneDraft sceneDraft3 = this.sceneDraft;
            t.g(sceneDraft3);
            SceneDraft sceneDraft4 = this.sceneDraft;
            t.g(sceneDraft4);
            sceneDraft3.serialNo = intent.getIntExtra("draft_serial_no", sceneDraft4.serialNo);
            SceneDraft sceneDraft5 = this.sceneDraft;
            t.g(sceneDraft5);
            sceneDraft5.setSceneInfos(JacksonUtils.readListAs(stringExtra2, SceneInfo.class));
            updateView();
            updatePreviewLayout();
            return;
        }
        SceneListHelper sceneListHelper5 = this.sceneListHelper;
        if (sceneListHelper5 == null) {
            t.B("sceneListHelper");
            sceneListHelper5 = null;
        }
        if (sceneListHelper5.isSceneEditorResult(i10, i11, intent)) {
            t.g(intent);
            SceneInfo sceneInfo4 = (SceneInfo) JacksonUtils.readAs(intent.getStringExtra("sceneInfo"), SceneInfo.class);
            SceneDraft sceneDraft6 = this.sceneDraft;
            t.g(sceneDraft6);
            if (sceneInfo4 != null) {
                str = sceneInfo4.id;
            } else {
                str = null;
            }
            SceneInfo sceneInfo5 = sceneDraft6.getSceneInfo(str);
            if (sceneInfo5 != null) {
                sceneInfo5.copyScene(sceneInfo4);
            }
            if (sceneInfo5 != null) {
                str2 = sceneInfo5.id;
            }
            if (str2 == null) {
                str2 = "";
            }
            this.selectedSceneId = str2;
            SceneDraft sceneDraft7 = this.sceneDraft;
            t.g(sceneDraft7);
            sceneDraft7.correctBgMusicClip();
            updateView();
            updatePreviewLayout();
            return;
        }
        SceneListHelper sceneListHelper6 = this.sceneListHelper;
        if (sceneListHelper6 == null) {
            t.B("sceneListHelper");
            sceneListHelper6 = null;
        }
        if (sceneListHelper6.isScenePreviewResult(i10, i11)) {
            updatePreviewLayout();
            return;
        }
        SceneListHelper sceneListHelper7 = this.sceneListHelper;
        if (sceneListHelper7 == null) {
            t.B("sceneListHelper");
            sceneListHelper7 = null;
        }
        if (sceneListHelper7.isSceneBackgroundResult(i10, i11, intent)) {
            t.g(intent);
            AVClipInfoPack aVClipInfoPack = (AVClipInfoPack) JacksonUtils.readAs(intent.getStringExtra("bgMusicClip"), AVClipInfoPack.class);
            SceneDraft sceneDraft8 = this.sceneDraft;
            t.g(sceneDraft8);
            sceneDraft8.setBgMusicClip(aVClipInfoPack);
            updateView();
            updatePreviewLayout();
            return;
        }
        if (!isEditMode() && i11 == -1 && i10 == 64816 && intent != null) {
            Media media = (Media) JacksonUtils.readAs(intent.getStringExtra("media"), Media.class);
            Bundle bundleExtra = intent.getBundleExtra(BuildConfig.BUILD_TYPE);
            if (bundleExtra == null) {
                bundleExtra = new Bundle();
            }
            Bundle bundle = bundleExtra;
            t.g(bundle);
            t.g(media);
            SceneListHelper sceneListHelper8 = this.sceneListHelper;
            if (sceneListHelper8 == null) {
                t.B("sceneListHelper");
                sceneListHelper = null;
            } else {
                sceneListHelper = sceneListHelper8;
            }
            List<Media> listE = u.e(media);
            SceneInfo selectedSceneInfo = getSelectedSceneInfo(this.selectedSceneId);
            if (media.type != 100) {
                z6 = false;
            }
            sceneListHelper.launchSceneEditor(listE, selectedSceneInfo, z6, getDraftAbsolutePath(), bundle);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0035  */
    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        if (isEditMode()) {
            List<? extends Scene> list = this.sceneList;
            if (list != null && !Utils.isListEquals(list, this.oldSceneList)) {
                closeWhenDraftChanged();
            } else {
                setResult(0);
                finish();
                logEditClose();
            }
        } else {
            SceneDraft sceneDraft = this.sceneDraft;
            if (sceneDraft != null) {
                t.g(sceneDraft);
                if (!sceneDraft.isSame(this.oldSceneDraft, false, true)) {
                    closeWhenDraftChanged();
                } else {
                    setResult(0);
                    finish();
                    logEditClose();
                }
            } else {
                setResult(0);
                finish();
                logEditClose();
            }
        }
        return true;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        int i10;
        String str;
        MediaPickerFragment mediaPickerFragment;
        super.onCreate(bundle);
        if (getBooleanParam("isEdit", false, bundle)) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        this.mode = i10;
        this.selectedSceneIndex = getIntParam("selectedIndex", bundle);
        String str2 = "";
        if (isEditMode()) {
            ArrayList listAs = JacksonUtils.readListAs(getStringParam("sceneList", bundle), Scene.class);
            if (listAs == null) {
                listAs = new ArrayList();
            }
            this.sceneList = listAs;
            this.draftId = getStringParam("draftId", bundle);
            this.alreadyClearUselessFile = getBooleanParam("alreadyClearUselessFile", false, bundle);
            int i11 = this.selectedSceneIndex;
            if (i11 > 0) {
                List<? extends Scene> list = this.sceneList;
                t.g(list);
                if (i11 < list.size()) {
                    List<? extends Scene> list2 = this.sceneList;
                    t.g(list2);
                    String str3 = list2.get(this.selectedSceneIndex).sceneId;
                    if (str3 != null) {
                        str2 = str3;
                    }
                    this.selectedSceneId = str2;
                }
            }
            ArrayList listAs2 = JacksonUtils.readListAs(JacksonUtils.writeAsString(this.sceneList), Scene.class);
            this.oldSceneList = listAs2;
            this.autoSaveSceneList = listAs2;
        } else {
            SceneDraft sceneDraft = (SceneDraft) JacksonUtils.readAs(getStringParam("sceneDraft", bundle), SceneDraft.class);
            if (sceneDraft == null) {
                sceneDraft = new SceneDraft();
            }
            this.sceneDraft = sceneDraft;
            t.g(sceneDraft);
            this.draftId = sceneDraft.draftId;
            int i12 = this.selectedSceneIndex;
            if (i12 > 0) {
                SceneDraft sceneDraft2 = this.sceneDraft;
                t.g(sceneDraft2);
                if (i12 < sceneDraft2.sceneInfos.size()) {
                    SceneDraft sceneDraft3 = this.sceneDraft;
                    t.g(sceneDraft3);
                    SceneInfo sceneInfo = sceneDraft3.sceneInfos.get(this.selectedSceneIndex);
                    if (sceneInfo != null) {
                        str = sceneInfo.id;
                    } else {
                        str = null;
                    }
                    if (str != null) {
                        str2 = str;
                    }
                    this.selectedSceneId = str2;
                }
            }
            SceneDraft sceneDraft4 = this.sceneDraft;
            t.g(sceneDraft4);
            this.oldSceneDraft = sceneDraft4.m1631clone();
            SceneDraft sceneDraft5 = this.sceneDraft;
            t.g(sceneDraft5);
            this.autoSaveSceneDraft = sceneDraft5.m1631clone();
        }
        Object service = getService(EntryManager.ENTRY_DRAFT);
        t.i(service, "getService(...)");
        setDraftManager((DraftManager) service);
        this.sceneListHelper = new SceneListHelper(this);
        if (isEditMode()) {
            this.storyPostService = (StoryPostService) getService("storyPost");
        }
        Fragment fragmentM0 = getParentFragmentManager().m0("playListMediaPicker");
        if (fragmentM0 instanceof MediaPickerFragment) {
            mediaPickerFragment = (MediaPickerFragment) fragmentM0;
        } else {
            mediaPickerFragment = new MediaPickerFragment();
            getParentFragmentManager().q().e(mediaPickerFragment, "playListMediaPicker").k();
        }
        setMediaPickerFragment(mediaPickerFragment);
        getMediaPickerFragment().addOnResultListener(this);
        this.sceneMediaPickerHelper = new SceneMediaPickerHelper(this, getDraftAbsolutePath(), getMediaPickerFragment());
    }

    @Override // com.narvii.scene.view.SceneRecyclerView.OnDialogItemClickListener
    public void onDeletePoll(@Nullable String str) {
        SceneInfo sceneInfo;
        if (isEditMode()) {
            Scene scene = Scene.getScene(str, this.sceneList);
            if (scene != null) {
                scene.pollAttach = null;
            }
        } else {
            SceneDraft sceneDraft = this.sceneDraft;
            if (sceneDraft != null && (sceneInfo = sceneDraft.getSceneInfo(str)) != null) {
                sceneInfo.pollAttach = null;
            }
        }
        updateList();
    }

    @Override // com.narvii.scene.view.SceneRecyclerView.OnDialogItemClickListener
    public void onDeleteQuiz(@Nullable String str) {
        SceneInfo sceneInfo;
        if (isEditMode()) {
            Scene scene = Scene.getScene(str, this.sceneList);
            if (scene != null) {
                scene.question = null;
            }
        } else {
            SceneDraft sceneDraft = this.sceneDraft;
            if (sceneDraft != null && (sceneInfo = sceneDraft.getSceneInfo(str)) != null) {
                sceneInfo.question = null;
            }
        }
        updateList();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        getPreviewLayout().release();
        super.onDestroy();
        getMediaPickerFragment().removeOnResultListener(this);
    }

    @Override // com.narvii.scene.view.SceneRecyclerView.OnDialogItemClickListener
    public void onEditPoll(@Nullable SceneWrapper sceneWrapper) {
        getPreviewLayout().pause();
        if (sceneWrapper != null) {
            SceneListHelper sceneListHelper = null;
            if (isEditMode()) {
                SceneListHelper sceneListHelper2 = this.sceneListHelper;
                if (sceneListHelper2 == null) {
                    t.B("sceneListHelper");
                } else {
                    sceneListHelper = sceneListHelper2;
                }
                sceneListHelper.launchEditPoll(sceneWrapper.scene, getDraftAbsolutePath());
                return;
            }
            SceneListHelper sceneListHelper3 = this.sceneListHelper;
            if (sceneListHelper3 == null) {
                t.B("sceneListHelper");
            } else {
                sceneListHelper = sceneListHelper3;
            }
            sceneListHelper.launchEditPoll(sceneWrapper.sceneInfo, getDraftAbsolutePath());
        }
    }

    @Override // com.narvii.scene.view.SceneRecyclerView.OnDialogItemClickListener
    public void onEditQuiz(@Nullable SceneWrapper sceneWrapper) {
        getPreviewLayout().pause();
        if (sceneWrapper != null) {
            SceneListHelper sceneListHelper = null;
            if (isEditMode()) {
                SceneListHelper sceneListHelper2 = this.sceneListHelper;
                if (sceneListHelper2 == null) {
                    t.B("sceneListHelper");
                } else {
                    sceneListHelper = sceneListHelper2;
                }
                sceneListHelper.launchEditQuiz(sceneWrapper.scene, getDraftAbsolutePath());
                return;
            }
            SceneListHelper sceneListHelper3 = this.sceneListHelper;
            if (sceneListHelper3 == null) {
                t.B("sceneListHelper");
            } else {
                sceneListHelper = sceneListHelper3;
            }
            sceneListHelper.launchEditQuiz(sceneWrapper.sceneInfo, getDraftAbsolutePath());
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.isWaitingPlaying = getPreviewLayout().isPlaying();
        getPreviewLayout().toPause();
        if (!isEditMode()) {
            this.alreadyClearUselessFile = false;
            Object service = getService("editorPackFactory");
            t.h(service, "null cannot be cast to non-null type com.narvii.video.services.IEditorPackFactory");
            IEditorRecycler videoRecycler = ((IEditorPackFactory) service).getVideoRecycler();
            if (videoRecycler != null) {
                videoRecycler.clearCacheResources();
            }
            Utils.handler.removeCallbacks(this.autoSaveDraft);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingPause() {
        getVideoPlayButton().setVisibility(0);
        getSceneRecyclerView().setPlaying(false);
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingProgress(long j6, long j10) {
        getTvTimeCurrent().setText(SceneUtils.durationMsToUIText(j6));
        getTvTimeTotal().setText(SceneUtils.durationMsToUIText(j10));
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingStop() {
        if (isEditMode()) {
            onSelected(this.selectedSceneId, this.selectedSceneIndex);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (isEditMode()) {
            getPreviewLayout().toResume(this.isWaitingPlaying);
            this.isWaitingPlaying = false;
            if (this.isToPreview) {
                getPreviewLayout().seekScene(this.selectedSceneId);
            }
            startAutoSaveTask();
            return;
        }
        SceneDraft sceneDraft = this.sceneDraft;
        t.g(sceneDraft);
        if (sceneDraft.originFileMissing() && !this.alreadyClearUselessFile) {
            showOriginFileMissingDialog();
        } else {
            checkPermission();
            startAutoSaveTask();
        }
    }

    @Override // com.narvii.scene.view.SceneRecyclerView.OnListSizeChangedListener
    public void onSizeChanged(@Nullable List<SceneWrapper> list, int i10) {
        if (!isEditMode()) {
            SceneDraft sceneDraft = this.sceneDraft;
            if (sceneDraft != null) {
                sceneDraft.setSceneInfos(SceneWrapper.getSceneInfos(list));
            }
            updateTitle();
            updateList();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        int i10;
        int i11;
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        getTvTimeCurrent().setTextColor(getMajorTextColor());
        getTvTimeTotal().setTextColor(getMajorTextColor());
        getTvTimeTotal().setAlpha(0.5f);
        getTvManage().setTextColor(getMajorTextColor());
        getEmptyManageLayout().setTextColor(getMajorTextColor());
        getWarningView().setTintColor(warningViewTintColor());
        TextView tvAdvancedStory = getTvAdvancedStory();
        int iDpToPx = 0;
        if (showAdvancedEditor()) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        tvAdvancedStory.setVisibility(i10);
        View roundCornerCover = getRoundCornerCover();
        if (useRoundCornerCover()) {
            i11 = 0;
        } else {
            i11 = 8;
        }
        roundCornerCover.setVisibility(i11);
        if (!useRoundCornerCover()) {
            iDpToPx = (int) Utils.dpToPx(requireContext(), 12.0f);
        }
        getRadiusLayout().setRadius(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
        getRadiusLayout().invalidate();
        getTvManage().setOnClickListener(new OnPreventRepeatedClickListener(this));
        getTvAdvancedStory().setOnClickListener(new OnPreventRepeatedClickListener(this));
        getCreateSceneView().setOnClickListener(new OnPreventRepeatedClickListener(this));
        getPlayerView().setOnClickListener(new OnPreventRepeatedClickListener(this));
        getWarningLayout().setOnClickListener(new OnPreventRepeatedClickListener(this));
        getErrorScenePlaceholder().setOnClickListener(new OnPreventRepeatedClickListener(this));
        getEmptyScenePlaceholder().setOnClickListener(new OnPreventRepeatedClickListener(this));
        getBackgroundMusicButton().setVisibility(8);
        getSceneRecyclerView().setOnListSizeChangedListener(this);
        getSceneRecyclerView().setOnSelectedListener(this);
        getSceneRecyclerView().setOnEditVideoListener(this);
        getSceneRecyclerView().setOnDialogItemClickListener(this);
        getSceneRecyclerView().setOnAttachPreClickListener(new View.OnClickListener() { // from class: com.narvii.scene.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BaseSceneListFragment.onViewCreated$lambda$3(this.f2664a, view2);
            }
        });
        getPreviewLayout().setOnPlayingListener(this);
        getPreviewLayout().setBeforePlayingListener(this);
        getPreviewContainer().addView(getPreviewLayout());
        updateData();
        updateView();
        if (isEditMode()) {
            loadingVideo();
        }
    }

    @Override // com.narvii.scene.view.SceneRecyclerView.OnEditVideoListener
    public void pickVideo(@Nullable SceneInfo sceneInfo, int i10) {
        getPreviewLayout().pause();
        SceneMediaPickerHelper sceneMediaPickerHelper = this.sceneMediaPickerHelper;
        if (sceneMediaPickerHelper != null) {
            t.g(sceneInfo);
            String str = this.draftId;
            t.g(str);
            sceneMediaPickerHelper.showPickerDialog(sceneInfo, str);
        }
        ToolTipHelper toolTipHelper = this.toolTipHelper;
        if (toolTipHelper != null) {
            t.g(toolTipHelper);
            toolTipHelper.hideToolTip();
        }
    }

    public void previewPause() {
        getPreviewLayout().pause();
    }

    public void previewStart() {
        getPreviewLayout().play();
    }

    protected final void saveDraft(boolean z6) {
        if (isEditMode()) {
            if (Utils.isListEquals(this.autoSaveSceneList, this.sceneList)) {
                return;
            } else {
                this.autoSaveSceneList = JacksonUtils.readListAs(JacksonUtils.writeAsString(this.sceneList), Scene.class);
            }
        } else {
            SceneDraft sceneDraft = this.autoSaveSceneDraft;
            if (sceneDraft != null) {
                t.g(sceneDraft);
                if (sceneDraft.isSame(this.sceneDraft, true, true)) {
                    return;
                }
            }
            SceneDraft sceneDraft2 = this.sceneDraft;
            t.g(sceneDraft2);
            this.autoSaveSceneDraft = sceneDraft2.m1631clone();
        }
        notifySceneDraftChanged(z6);
    }

    protected final void showOriginFileMissingDialog() {
        if (!getFileMisssingDialog().isShowing()) {
            getFileMisssingDialog().show();
        }
    }

    @Override // com.narvii.scene.view.NvStoryBackgroundMusicButton.OnClickListener
    public void onClick(@Nullable NvStoryBackgroundMusicButton nvStoryBackgroundMusicButton, int i10) {
        getPreviewLayout().pause();
        if (isEditMode()) {
            return;
        }
        SceneDraft sceneDraft = this.sceneDraft;
        SceneListHelper sceneListHelper = null;
        if ((sceneDraft != null ? sceneDraft.bgMusicClip : null) == null) {
            pickBackgroundMusic();
            return;
        }
        SceneListHelper sceneListHelper2 = this.sceneListHelper;
        if (sceneListHelper2 == null) {
            t.B("sceneListHelper");
        } else {
            sceneListHelper = sceneListHelper2;
        }
        SceneDraft sceneDraft2 = this.sceneDraft;
        t.g(sceneDraft2);
        sceneListHelper.launchSceneBackgroundMusic(sceneDraft2, sceneDraft2.bgMusicClip);
    }
}
