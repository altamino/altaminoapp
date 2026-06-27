package com.narvii.scene;

import android.arch.lifecycle.Lifecycle;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.BuildConfig;
import com.narvii.app.FragmentOnBackListener;
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
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionListener;
import com.narvii.permisson.PermissionUtils;
import com.narvii.post.DraftManager;
import com.narvii.scene.dialog.VideoAdvanceDialog;
import com.narvii.scene.helper.SceneListHelper;
import com.narvii.scene.helper.SceneMediaPickerHelper;
import com.narvii.scene.helper.ScenePrefsHelper;
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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: BaseSceneListFragment.kt */
/* loaded from: classes3.dex */
public class BaseSceneListFragment extends NVFragment implements View.OnClickListener, MediaPickerFragment.OnResultListener, NvStoryBackgroundMusicButton.OnClickListener, SceneRecyclerView.OnSelectedListener, SceneRecyclerView.OnListSizeChangedListener, SceneRecyclerView.OnEditVideoListener, SceneRecyclerView.OnDialogItemClickListener, PermissionListener, FragmentOnBackListener, IScenePlayer.OnPlayingListener, IScenePlayer.BeforePlayingListener, NotificationListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "previewContainer", "getPreviewContainer()Landroid/widget/FrameLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "backgroundMusicButton", "getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "tvTimeCurrent", "getTvTimeCurrent()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "tvTimeTotal", "getTvTimeTotal()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "tvManage", "getTvManage()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "sceneRecyclerView", "getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "tvAdvancedStory", "getTvAdvancedStory()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "manageLayout", "getManageLayout()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "emptyManageLayout", "getEmptyManageLayout()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "createSceneLayout", "getCreateSceneLayout()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "createSceneView", "getCreateSceneView()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "emptyScenePlaceholder", "getEmptyScenePlaceholder()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "errorScenePlaceholder", "getErrorScenePlaceholder()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "playerView", "getPlayerView()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "playerContainer", "getPlayerContainer()Landroid/view/ViewGroup;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "videoPlayButton", "getVideoPlayButton()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "warningView", "getWarningView()Lcom/narvii/widget/TintButton;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "warningLayout", "getWarningLayout()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "roundCornerCover", "getRoundCornerCover()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "radiusLayout", "getRadiusLayout()Lcom/narvii/widget/RadiusLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "previewLayout", "getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "fileMisssingDialog", "getFileMisssingDialog()Lcom/narvii/widget/ACMAlertDialog;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BaseSceneListFragment.class), "invalidDialog", "getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;"))};
    public static final Companion Companion = new Companion(null);
    public static final int MODE_CREATE = 1;
    public static final int MODE_EDIT = 2;
    public static final int PERMISSION_COMPILE_VIDEO_TO_SHARE = 1;
    public static final String TAG = "BaseSceneListFragment";
    private HashMap _$_findViewCache;
    private boolean alreadyClearUselessFile;
    private SceneDraft autoSaveSceneDraft;
    private List<? extends Scene> autoSaveSceneList;
    protected String draftId;
    protected DraftManager draftManager;
    private boolean isError;
    private boolean isToPreview;
    private boolean isWaitingPlaying;
    private ProgressDialog loadingVideoProgressDialog;
    protected MediaPickerFragment mediaPickerFragment;
    protected SceneDraft oldSceneDraft;
    private List<? extends Scene> oldSceneList;
    private boolean permissionDenied;
    protected SceneDraft sceneDraft;
    protected List<? extends Scene> sceneList;
    private SceneListHelper sceneListHelper;
    private SceneMediaPickerHelper sceneMediaPickerHelper;
    private int selectedSceneIndex;
    private StoryPostService storyPostService;
    private ToolTipHelper toolTipHelper;
    private VideoAdvanceDialog videoAdvanceDialog;
    private int mode = 1;
    private final Lazy previewContainer$delegate = bind(R.id.preview_container);
    private final Lazy backgroundMusicButton$delegate = bind(R.id.background_music_button);
    private final Lazy tvTimeCurrent$delegate = bind(R.id.tv_time_current);
    private final Lazy tvTimeTotal$delegate = bind(R.id.tv_time_total);
    private final Lazy tvManage$delegate = bind(R.id.tv_manage_scene);
    private final Lazy sceneRecyclerView$delegate = bind(R.id.scene_recycler_view);
    private final Lazy tvAdvancedStory$delegate = bind(R.id.tv_advanced_story);
    private final Lazy manageLayout$delegate = bind(R.id.manage_layout);
    private final Lazy emptyManageLayout$delegate = bind(R.id.empty_manage_layout);
    private final Lazy createSceneLayout$delegate = bind(R.id.create_scene_layout);
    private final Lazy createSceneView$delegate = bind(R.id.iv_create_scene);
    private final Lazy emptyScenePlaceholder$delegate = bind(R.id.empty_placeholder_view);
    private final Lazy errorScenePlaceholder$delegate = bind(R.id.error_placeholder_view);
    private final Lazy playerView$delegate = bind(R.id.player_view);
    private final Lazy playerContainer$delegate = bind(R.id.player_container);
    private final Lazy videoPlayButton$delegate = bind(R.id.video_play_button);
    private final Lazy warningView$delegate = bind(R.id.iv_warning);
    private final Lazy warningLayout$delegate = bind(R.id.fl_warning);
    private final Lazy roundCornerCover$delegate = bind(R.id.round_corner_cover);
    private final Lazy radiusLayout$delegate = bind(R.id.radius_layout);
    private final Lazy previewLayout$delegate = LazyKt__LazyJVMKt.lazy(new Function0<BaseScenePreviewLayout>() { // from class: com.narvii.scene.BaseSceneListFragment$previewLayout$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final BaseScenePreviewLayout invoke() {
            return this.this$0.createPreviewLayout();
        }
    });
    private String selectedSceneId = "";
    private final Lazy fileMisssingDialog$delegate = LazyKt__LazyJVMKt.lazy(new BaseSceneListFragment$fileMisssingDialog$2(this));
    private final Lazy invalidDialog$delegate = LazyKt__LazyJVMKt.lazy(new Function0<AlertDialog>() { // from class: com.narvii.scene.BaseSceneListFragment$invalidDialog$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AlertDialog invoke() {
            return new AlertDialog(this.this$0.getActivity());
        }
    });
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

    private final NvStoryBackgroundMusicButton getBackgroundMusicButton() {
        Lazy lazy = this.backgroundMusicButton$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (NvStoryBackgroundMusicButton) lazy.getValue();
    }

    private final View getCreateSceneLayout() {
        Lazy lazy = this.createSceneLayout$delegate;
        KProperty kProperty = $$delegatedProperties[9];
        return (View) lazy.getValue();
    }

    private final View getCreateSceneView() {
        Lazy lazy = this.createSceneView$delegate;
        KProperty kProperty = $$delegatedProperties[10];
        return (View) lazy.getValue();
    }

    private final TextView getEmptyManageLayout() {
        Lazy lazy = this.emptyManageLayout$delegate;
        KProperty kProperty = $$delegatedProperties[8];
        return (TextView) lazy.getValue();
    }

    private final View getEmptyScenePlaceholder() {
        Lazy lazy = this.emptyScenePlaceholder$delegate;
        KProperty kProperty = $$delegatedProperties[11];
        return (View) lazy.getValue();
    }

    private final View getErrorScenePlaceholder() {
        Lazy lazy = this.errorScenePlaceholder$delegate;
        KProperty kProperty = $$delegatedProperties[12];
        return (View) lazy.getValue();
    }

    private final ACMAlertDialog getFileMisssingDialog() {
        Lazy lazy = this.fileMisssingDialog$delegate;
        KProperty kProperty = $$delegatedProperties[21];
        return (ACMAlertDialog) lazy.getValue();
    }

    private final AlertDialog getInvalidDialog() {
        Lazy lazy = this.invalidDialog$delegate;
        KProperty kProperty = $$delegatedProperties[22];
        return (AlertDialog) lazy.getValue();
    }

    private final View getManageLayout() {
        Lazy lazy = this.manageLayout$delegate;
        KProperty kProperty = $$delegatedProperties[7];
        return (View) lazy.getValue();
    }

    private final ViewGroup getPlayerContainer() {
        Lazy lazy = this.playerContainer$delegate;
        KProperty kProperty = $$delegatedProperties[14];
        return (ViewGroup) lazy.getValue();
    }

    private final View getPlayerView() {
        Lazy lazy = this.playerView$delegate;
        KProperty kProperty = $$delegatedProperties[13];
        return (View) lazy.getValue();
    }

    private final FrameLayout getPreviewContainer() {
        Lazy lazy = this.previewContainer$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (FrameLayout) lazy.getValue();
    }

    private final BaseScenePreviewLayout getPreviewLayout() {
        Lazy lazy = this.previewLayout$delegate;
        KProperty kProperty = $$delegatedProperties[20];
        return (BaseScenePreviewLayout) lazy.getValue();
    }

    private final RadiusLayout getRadiusLayout() {
        Lazy lazy = this.radiusLayout$delegate;
        KProperty kProperty = $$delegatedProperties[19];
        return (RadiusLayout) lazy.getValue();
    }

    private final View getRoundCornerCover() {
        Lazy lazy = this.roundCornerCover$delegate;
        KProperty kProperty = $$delegatedProperties[18];
        return (View) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SceneRecyclerView getSceneRecyclerView() {
        Lazy lazy = this.sceneRecyclerView$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (SceneRecyclerView) lazy.getValue();
    }

    private final TextView getTvAdvancedStory() {
        Lazy lazy = this.tvAdvancedStory$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (TextView) lazy.getValue();
    }

    private final TextView getTvManage() {
        Lazy lazy = this.tvManage$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (TextView) lazy.getValue();
    }

    private final TextView getTvTimeCurrent() {
        Lazy lazy = this.tvTimeCurrent$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (TextView) lazy.getValue();
    }

    private final TextView getTvTimeTotal() {
        Lazy lazy = this.tvTimeTotal$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (TextView) lazy.getValue();
    }

    private final View getVideoPlayButton() {
        Lazy lazy = this.videoPlayButton$delegate;
        KProperty kProperty = $$delegatedProperties[15];
        return (View) lazy.getValue();
    }

    private final View getWarningLayout() {
        Lazy lazy = this.warningLayout$delegate;
        KProperty kProperty = $$delegatedProperties[17];
        return (View) lazy.getValue();
    }

    private final TintButton getWarningView() {
        Lazy lazy = this.warningView$delegate;
        KProperty kProperty = $$delegatedProperties[16];
        return (TintButton) lazy.getValue();
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
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

    protected final int autoSaveDraftInterval() {
        return 10000;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.BeforePlayingListener
    public void beforePlayingPause() {
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StoryEdit";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionDenied(int i, boolean z, ArrayList<String> deniedPermissions) {
        Intrinsics.checkParameterIsNotNull(deniedPermissions, "deniedPermissions");
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneEnd(String sceneId, int i) {
        Intrinsics.checkParameterIsNotNull(sceneId, "sceneId");
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

    protected final DraftManager getDraftManager() {
        DraftManager draftManager = this.draftManager;
        if (draftManager != null) {
            return draftManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("draftManager");
        throw null;
    }

    protected final void setDraftManager(DraftManager draftManager) {
        Intrinsics.checkParameterIsNotNull(draftManager, "<set-?>");
        this.draftManager = draftManager;
    }

    protected final MediaPickerFragment getMediaPickerFragment() {
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            return mediaPickerFragment;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
        throw null;
    }

    protected final void setMediaPickerFragment(MediaPickerFragment mediaPickerFragment) {
        Intrinsics.checkParameterIsNotNull(mediaPickerFragment, "<set-?>");
        this.mediaPickerFragment = mediaPickerFragment;
    }

    /* compiled from: BaseSceneListFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        String str;
        MediaPickerFragment mediaPickerFragment;
        super.onCreate(bundle);
        this.mode = getBooleanParam("isEdit", false, bundle) ? 2 : 1;
        this.selectedSceneIndex = getIntParam("selectedIndex", bundle);
        if (isEditMode()) {
            ArrayList listAs = JacksonUtils.readListAs(getStringParam("sceneList", bundle), Scene.class);
            if (listAs == null) {
                listAs = new ArrayList();
            }
            this.sceneList = listAs;
            this.draftId = getStringParam("draftId", bundle);
            this.alreadyClearUselessFile = getBooleanParam("alreadyClearUselessFile", false, bundle);
            int i = this.selectedSceneIndex;
            if (i > 0) {
                List<? extends Scene> list = this.sceneList;
                if (list == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                if (i < list.size()) {
                    List<? extends Scene> list2 = this.sceneList;
                    if (list2 == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    String str2 = list2.get(this.selectedSceneIndex).sceneId;
                    if (str2 == null) {
                        str2 = "";
                    }
                    this.selectedSceneId = str2;
                }
            }
            this.oldSceneList = JacksonUtils.readListAs(JacksonUtils.writeAsString(this.sceneList), Scene.class);
            this.autoSaveSceneList = this.oldSceneList;
        } else {
            SceneDraft sceneDraft = (SceneDraft) JacksonUtils.readAs(getStringParam("sceneDraft", bundle), SceneDraft.class);
            if (sceneDraft == null) {
                sceneDraft = new SceneDraft();
            }
            this.sceneDraft = sceneDraft;
            SceneDraft sceneDraft2 = this.sceneDraft;
            if (sceneDraft2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            this.draftId = sceneDraft2.draftId;
            int i2 = this.selectedSceneIndex;
            if (i2 > 0) {
                if (sceneDraft2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                if (i2 < sceneDraft2.sceneInfos.size()) {
                    SceneDraft sceneDraft3 = this.sceneDraft;
                    if (sceneDraft3 == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    SceneInfo sceneInfo = sceneDraft3.sceneInfos.get(this.selectedSceneIndex);
                    if (sceneInfo == null || (str = sceneInfo.id) == null) {
                        str = "";
                    }
                    this.selectedSceneId = str;
                }
            }
            SceneDraft sceneDraft4 = this.sceneDraft;
            if (sceneDraft4 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            this.oldSceneDraft = sceneDraft4.m54clone();
            SceneDraft sceneDraft5 = this.sceneDraft;
            if (sceneDraft5 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            this.autoSaveSceneDraft = sceneDraft5.m54clone();
        }
        Object service = getService(EntryManager.ENTRY_DRAFT);
        Intrinsics.checkExpressionValueIsNotNull(service, "getService<DraftManager>(\"draft\")");
        this.draftManager = (DraftManager) service;
        this.sceneListHelper = new SceneListHelper(this);
        if (isEditMode()) {
            this.storyPostService = (StoryPostService) getService("storyPost");
        }
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag("playListMediaPicker");
        if (fragmentFindFragmentByTag instanceof MediaPickerFragment) {
            mediaPickerFragment = (MediaPickerFragment) fragmentFindFragmentByTag;
        } else {
            mediaPickerFragment = new MediaPickerFragment();
            FragmentManager fragmentManager2 = getFragmentManager();
            if (fragmentManager2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            fragmentManager2.beginTransaction().add(mediaPickerFragment, "playListMediaPicker").commitAllowingStateLoss();
        }
        this.mediaPickerFragment = mediaPickerFragment;
        MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
        if (mediaPickerFragment2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
            throw null;
        }
        mediaPickerFragment2.addOnResultListener(this);
        String draftAbsolutePath = getDraftAbsolutePath();
        MediaPickerFragment mediaPickerFragment3 = this.mediaPickerFragment;
        if (mediaPickerFragment3 != null) {
            this.sceneMediaPickerHelper = new SceneMediaPickerHelper(this, draftAbsolutePath, mediaPickerFragment3);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
            throw null;
        }
    }

    public boolean isEditMode() {
        return this.mode == 2;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putInt("selectedIndex", this.selectedSceneIndex);
        outState.putString("draftId", this.draftId);
        if (isEditMode()) {
            outState.putString("sceneList", JacksonUtils.writeAsString(this.sceneList));
        } else {
            outState.putString("sceneDraft", JacksonUtils.writeAsString(this.sceneDraft));
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (isDarkTheme()) {
            return;
        }
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        setBackButtonTint(ContextCompat.getColor(context, R.color.story_theme_action_bar_view));
        Context context2 = getContext();
        if (context2 != null) {
            setActionBarTitleColor(ContextCompat.getColor(context2, R.color.story_theme_text_color));
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (menu != null) {
            int i = com.narvii.lib.R.string.compose_preview;
            MenuItem menuItemAdd = menu.add(0, i, 0, i);
            Context context = getContext();
            String string = getString(com.narvii.lib.R.string.ion_eye);
            Context context2 = getContext();
            if (context2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            menuItemAdd.setIcon(new ActionBarIcon(context, string, 0.85f, ContextCompat.getColor(context2, R.color.story_theme_text_color), 127, false)).setShowAsAction(2);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean zIsEmpty;
        ActionBarIcon actionBarIcon;
        super.onPrepareOptionsMenu(menu);
        if (menu != null) {
            if (isEditMode()) {
                List<? extends Scene> list = this.sceneList;
                if (list == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                zIsEmpty = list.isEmpty();
            } else {
                SceneDraft sceneDraft = this.sceneDraft;
                if (sceneDraft == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                zIsEmpty = sceneDraft.isEmpty();
            }
            MenuItem previewItem = menu.findItem(R.string.compose_preview);
            Intrinsics.checkExpressionValueIsNotNull(previewItem, "previewItem");
            previewItem.setEnabled(!zIsEmpty);
            if (zIsEmpty) {
                Context context = getContext();
                String string = getString(com.narvii.lib.R.string.ion_eye);
                Context context2 = getContext();
                if (context2 != null) {
                    actionBarIcon = new ActionBarIcon(context, string, 0.85f, ContextCompat.getColor(context2, isDarkTheme() ? R.color.white : R.color.story_theme_action_bar_view), 127, false);
                } else {
                    Intrinsics.throwNpe();
                    throw null;
                }
            } else {
                Context context3 = getContext();
                String string2 = getString(com.narvii.lib.R.string.ion_eye);
                Context context4 = getContext();
                if (context4 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                actionBarIcon = new ActionBarIcon(context3, string2, 0.85f, ContextCompat.getColor(context4, isDarkTheme() ? R.color.white : R.color.story_theme_action_bar_view), 255, false);
            }
            previewItem.setIcon(actionBarIcon);
        }
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == R.string.compose_preview) {
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
                    Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
                    throw null;
                }
                sceneListHelper.launchScenePreview(this.sceneDraft);
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Override // com.narvii.app.NVFragment
    protected int getActionBarLayoutId() {
        return isDarkTheme() ? R.layout.actionbar_dark_layout : R.layout.actionbar_layout_no_shadow;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.post_scene_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        getTvTimeCurrent().setTextColor(getMajorTextColor());
        getTvTimeTotal().setTextColor(getMajorTextColor());
        getTvTimeTotal().setAlpha(0.5f);
        getTvManage().setTextColor(getMajorTextColor());
        getEmptyManageLayout().setTextColor(getMajorTextColor());
        getWarningView().setTintColor(warningViewTintColor());
        int iDpToPx = 0;
        getTvAdvancedStory().setVisibility(showAdvancedEditor() ? 0 : 8);
        getRoundCornerCover().setVisibility(useRoundCornerCover() ? 0 : 8);
        if (!useRoundCornerCover()) {
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            iDpToPx = (int) Utils.dpToPx(context, 12.0f);
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
        getSceneRecyclerView().setOnAttachPreClickListener(new View.OnClickListener() { // from class: com.narvii.scene.BaseSceneListFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LogEvent.clickBuilder(BaseSceneListFragment.this, ActSemantic.edit).area("PollQuiz").send();
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

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        VideoAdvanceDialog videoAdvanceDialog = this.videoAdvanceDialog;
        if (videoAdvanceDialog != null) {
            videoAdvanceDialog.onActiveChanged(z);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
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
        if (sceneDraft == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        if (sceneDraft.originFileMissing() && !this.alreadyClearUselessFile) {
            showOriginFileMissingDialog();
        } else {
            checkPermission();
            startAutoSaveTask();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        this.isWaitingPlaying = getPreviewLayout().isPlaying();
        getPreviewLayout().toPause();
        if (isEditMode()) {
            return;
        }
        this.alreadyClearUselessFile = false;
        Object service = getService("editorPackFactory");
        if (service == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.services.IEditorPackFactory");
        }
        IEditorRecycler videoRecycler = ((IEditorPackFactory) service).getVideoRecycler();
        if (videoRecycler != null) {
            videoRecycler.clearCacheResources();
        }
        Utils.handler.removeCallbacks(this.autoSaveDraft);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        getPreviewLayout().release();
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    @Override // com.narvii.app.FragmentOnBackListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onBackPressed(com.narvii.app.NVActivity r4) {
        /*
            r3 = this;
            boolean r4 = r3.isEditMode()
            r0 = 1
            r1 = 0
            if (r4 == 0) goto L22
            java.util.List<? extends com.narvii.model.Scene> r4 = r3.sceneList
            if (r4 == 0) goto L18
            java.util.List<? extends com.narvii.model.Scene> r2 = r3.oldSceneList
            boolean r4 = com.narvii.util.Utils.isListEquals(r4, r2)
            if (r4 != 0) goto L18
            r3.closeWhenDraftChanged()
            goto L42
        L18:
            r3.setResult(r1)
            r3.finish()
            r3.logEditClose()
            goto L42
        L22:
            com.narvii.scene.model.SceneDraft r4 = r3.sceneDraft
            if (r4 == 0) goto L39
            if (r4 == 0) goto L34
            com.narvii.scene.model.SceneDraft r2 = r3.oldSceneDraft
            boolean r4 = r4.isSame(r2, r1, r0)
            if (r4 != 0) goto L39
            r3.closeWhenDraftChanged()
            goto L42
        L34:
            kotlin.jvm.internal.Intrinsics.throwNpe()
            r4 = 0
            throw r4
        L39:
            r3.setResult(r1)
            r3.finish()
            r3.logEditClose()
        L42:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.scene.BaseSceneListFragment.onBackPressed(com.narvii.app.NVActivity):boolean");
    }

    protected void closeWhenDraftChanged() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(R.string.discard_changes, true);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.scene.BaseSceneListFragment.closeWhenDraftChanged.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (i != 0) {
                    return;
                }
                BaseSceneListFragment.this.setResult(0);
                BaseSceneListFragment.this.finish();
                BaseSceneListFragment.this.logEditClose();
            }
        });
        actionSheetDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logEditClose() {
        LogEvent.clickBuilder(this, ActSemantic.editClose).area("EditArea").extraParam("storyDraftId", this.draftId).send();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        String str;
        Object next;
        Object next2;
        super.onActivityResult(i, i2, intent);
        Log.d(TAG, "onActivityResult  >>>  requestCode = " + i + "    resultCode = " + i2);
        SceneListHelper sceneListHelper = this.sceneListHelper;
        if (sceneListHelper == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
            throw null;
        }
        if (sceneListHelper.isSceneQuizResult(i, i2, intent)) {
            if (intent != null) {
                String stringExtra = intent.getStringExtra("sceneId");
                QuizQuestion quizQuestion = (QuizQuestion) JacksonUtils.readAs(intent.getStringExtra(EntryManager.ENTRY_QUEATION), QuizQuestion.class);
                if (isEditMode()) {
                    List<? extends Scene> list = this.sceneList;
                    if (list == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    Iterator<T> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        } else {
                            next2 = it.next();
                            if (TextUtils.equals(((Scene) next2).sceneId, stringExtra)) {
                                break;
                            }
                        }
                    }
                    Scene scene = (Scene) next2;
                    if (scene != null) {
                        scene.question = quizQuestion;
                        updateView();
                        return;
                    }
                    return;
                }
                SceneDraft sceneDraft = this.sceneDraft;
                if (sceneDraft == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                SceneInfo sceneInfo = sceneDraft.getSceneInfo(stringExtra);
                if (sceneInfo != null) {
                    sceneInfo.question = quizQuestion;
                    updateView();
                    return;
                }
                return;
            }
            Intrinsics.throwNpe();
            throw null;
        }
        SceneListHelper sceneListHelper2 = this.sceneListHelper;
        if (sceneListHelper2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
            throw null;
        }
        if (sceneListHelper2.isScenePollResult(i, i2, intent)) {
            if (intent != null) {
                SceneInfo sceneInfo2 = (SceneInfo) JacksonUtils.readAs(intent.getStringExtra("sceneInfo"), SceneInfo.class);
                String str2 = sceneInfo2.id;
                PollAttach pollAttach = sceneInfo2.pollAttach;
                if (isEditMode()) {
                    List<? extends Scene> list2 = this.sceneList;
                    if (list2 == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    Iterator<T> it2 = list2.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        } else {
                            next = it2.next();
                            if (TextUtils.equals(((Scene) next).sceneId, str2)) {
                                break;
                            }
                        }
                    }
                    Scene scene2 = (Scene) next;
                    if (scene2 != null) {
                        PollAttach pollAttach2 = scene2.pollAttach;
                        if (pollAttach2 != null && pollAttach != null) {
                            pollAttach.isModified = (pollAttach2.isModified || pollAttach2.equals(pollAttach)) ? scene2.pollAttach.isModified : true;
                        }
                        scene2.pollAttach = pollAttach;
                        updateView();
                        return;
                    }
                    return;
                }
                SceneDraft sceneDraft2 = this.sceneDraft;
                if (sceneDraft2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                SceneInfo sceneInfo3 = sceneDraft2.getSceneInfo(str2);
                if (sceneInfo3 != null) {
                    sceneInfo3.pollAttach = pollAttach;
                    updateView();
                    return;
                }
                return;
            }
            Intrinsics.throwNpe();
            throw null;
        }
        SceneListHelper sceneListHelper3 = this.sceneListHelper;
        if (sceneListHelper3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
            throw null;
        }
        if (sceneListHelper3.isSceneManageResult(i, i2, intent)) {
            if (intent != null) {
                String stringExtra2 = intent.getStringExtra("scene_list");
                SceneDraft sceneDraft3 = this.sceneDraft;
                if (sceneDraft3 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                if (sceneDraft3 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                sceneDraft3.serialNo = intent.getIntExtra("draft_serial_no", sceneDraft3.serialNo);
                SceneDraft sceneDraft4 = this.sceneDraft;
                if (sceneDraft4 != null) {
                    sceneDraft4.setSceneInfos(JacksonUtils.readListAs(stringExtra2, SceneInfo.class));
                    updateView();
                    updatePreviewLayout();
                    return;
                }
                Intrinsics.throwNpe();
                throw null;
            }
            Intrinsics.throwNpe();
            throw null;
        }
        SceneListHelper sceneListHelper4 = this.sceneListHelper;
        if (sceneListHelper4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
            throw null;
        }
        if (sceneListHelper4.isSceneEditorResult(i, i2, intent)) {
            if (intent != null) {
                SceneInfo sceneInfo4 = (SceneInfo) JacksonUtils.readAs(intent.getStringExtra("sceneInfo"), SceneInfo.class);
                SceneDraft sceneDraft5 = this.sceneDraft;
                if (sceneDraft5 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                SceneInfo sceneInfo5 = sceneDraft5.getSceneInfo(sceneInfo4 != null ? sceneInfo4.id : null);
                if (sceneInfo5 != null) {
                    sceneInfo5.copyScene(sceneInfo4);
                }
                if (sceneInfo5 == null || (str = sceneInfo5.id) == null) {
                    str = "";
                }
                this.selectedSceneId = str;
                SceneDraft sceneDraft6 = this.sceneDraft;
                if (sceneDraft6 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                sceneDraft6.correctBgMusicClip();
                updateView();
                updatePreviewLayout();
                return;
            }
            Intrinsics.throwNpe();
            throw null;
        }
        SceneListHelper sceneListHelper5 = this.sceneListHelper;
        if (sceneListHelper5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
            throw null;
        }
        if (sceneListHelper5.isScenePreviewResult(i, i2)) {
            updatePreviewLayout();
            return;
        }
        SceneListHelper sceneListHelper6 = this.sceneListHelper;
        if (sceneListHelper6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
            throw null;
        }
        if (sceneListHelper6.isSceneBackgroundResult(i, i2, intent)) {
            if (intent != null) {
                AVClipInfoPack aVClipInfoPack = (AVClipInfoPack) JacksonUtils.readAs(intent.getStringExtra("bgMusicClip"), AVClipInfoPack.class);
                SceneDraft sceneDraft7 = this.sceneDraft;
                if (sceneDraft7 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                sceneDraft7.setBgMusicClip(aVClipInfoPack);
                updateView();
                updatePreviewLayout();
                return;
            }
            Intrinsics.throwNpe();
            throw null;
        }
        if (isEditMode() || i2 != -1 || i != 64816 || intent == null) {
            return;
        }
        Media media = (Media) JacksonUtils.readAs(intent.getStringExtra("media"), Media.class);
        Bundle bundle = intent.getBundleExtra(BuildConfig.BUILD_TYPE);
        Intrinsics.checkExpressionValueIsNotNull(media, "media");
        Intrinsics.checkExpressionValueIsNotNull(bundle, "bundle");
        SceneListHelper sceneListHelper7 = this.sceneListHelper;
        if (sceneListHelper7 != null) {
            sceneListHelper7.launchSceneEditor(CollectionsKt__CollectionsJVMKt.listOf(media), getSelectedSceneInfo(this.selectedSceneId), media.type == 100, getDraftAbsolutePath(), bundle);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BaseScenePreviewLayout createPreviewLayout() {
        if (isEditMode()) {
            return new EditScenePreviewLayout(this, null, 0, 6, null);
        }
        Context context = getContext();
        if (context != null) {
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            return new ScenePreviewLayout(context, null, 0, 6, null);
        }
        Intrinsics.throwNpe();
        throw null;
    }

    protected int getMajorTextColor() {
        return isDarkTheme() ? -1 : -11908534;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00cb A[PHI: r1
  0x00cb: PHI (r1v11 com.narvii.scene.helper.SceneListHelper) = (r1v10 com.narvii.scene.helper.SceneListHelper), (r1v14 com.narvii.scene.helper.SceneListHelper) binds: [B:45:0x00c9, B:39:0x00bd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cd A[PHI: r1
  0x00cd: PHI (r1v13 com.narvii.scene.helper.SceneListHelper) = (r1v10 com.narvii.scene.helper.SceneListHelper), (r1v14 com.narvii.scene.helper.SceneListHelper) binds: [B:45:0x00c9, B:39:0x00bd] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPickMediaResult(java.util.List<com.narvii.model.Media> r18, android.os.Bundle r19) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.scene.BaseSceneListFragment.onPickMediaResult(java.util.List, android.os.Bundle):void");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i = R.id.tv_manage_scene;
        if (numValueOf != null && numValueOf.intValue() == i) {
            getPreviewLayout().pause();
            SceneListHelper sceneListHelper = this.sceneListHelper;
            if (sceneListHelper != null) {
                sceneListHelper.launchSceneManager(this.sceneDraft);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
                throw null;
            }
        }
        int i2 = R.id.iv_create_scene;
        if (numValueOf != null && numValueOf.intValue() == i2) {
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
        int i3 = R.id.tv_advanced_story;
        if (numValueOf != null && numValueOf.intValue() == i3) {
            VideoAdvanceDialog videoAdvanceDialog = this.videoAdvanceDialog;
            if (videoAdvanceDialog == null || !videoAdvanceDialog.isShowing()) {
                this.videoAdvanceDialog = new VideoAdvanceDialog(this) { // from class: com.narvii.scene.BaseSceneListFragment.onClick.2
                    @Override // com.narvii.scene.dialog.VideoAdvanceDialog, com.narvii.app.NVDialog
                    protected boolean sendPageViewEventToThirdParty() {
                        return true;
                    }
                };
                VideoAdvanceDialog videoAdvanceDialog2 = this.videoAdvanceDialog;
                if (videoAdvanceDialog2 != null) {
                    videoAdvanceDialog2.setCancelable(true);
                }
                VideoAdvanceDialog videoAdvanceDialog3 = this.videoAdvanceDialog;
                if (videoAdvanceDialog3 != null) {
                    videoAdvanceDialog3.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.scene.BaseSceneListFragment.onClick.3
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            BaseSceneListFragment.this.videoAdvanceDialog = null;
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
        int i4 = R.id.fl_warning;
        if (numValueOf != null && numValueOf.intValue() == i4) {
            getPreviewLayout().pause();
            toSceneEditor(getSelectedSceneInfo(this.selectedSceneId), false);
            return;
        }
        int i5 = R.id.empty_placeholder_view;
        if (numValueOf != null && numValueOf.intValue() == i5) {
            SceneDraft sceneDraft2 = this.sceneDraft;
            SceneInfo sceneInfo = sceneDraft2 != null ? sceneDraft2.getSceneInfo(this.selectedSceneId) : null;
            if (sceneInfo != null) {
                pickVideo(sceneInfo, this.selectedSceneIndex);
                return;
            }
            return;
        }
        int i6 = R.id.error_placeholder_view;
        if (numValueOf != null && numValueOf.intValue() == i6) {
            updateData();
            loadingVideo();
            getPreviewLayout().play();
        }
    }

    private final void loadingVideo() {
        if (this.loadingVideoProgressDialog == null) {
            ProgressDialog progressDialog = new ProgressDialog(getActivity());
            progressDialog.setCancelable(false);
            progressDialog.setCanceledOnTouchOutside(false);
            this.loadingVideoProgressDialog = progressDialog;
        }
        ProgressDialog progressDialog2 = this.loadingVideoProgressDialog;
        if (progressDialog2 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        if (!progressDialog2.isShowing()) {
            ProgressDialog progressDialog3 = this.loadingVideoProgressDialog;
            if (progressDialog3 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            progressDialog3.show();
        }
        getVideoPlayButton().setVisibility(8);
    }

    @Override // com.narvii.scene.view.NvStoryBackgroundMusicButton.OnClickListener
    public void onClick(NvStoryBackgroundMusicButton nvStoryBackgroundMusicButton, int i) {
        getPreviewLayout().pause();
        if (isEditMode()) {
            return;
        }
        SceneDraft sceneDraft = this.sceneDraft;
        if ((sceneDraft != null ? sceneDraft.bgMusicClip : null) != null) {
            SceneListHelper sceneListHelper = this.sceneListHelper;
            if (sceneListHelper == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
                throw null;
            }
            SceneDraft sceneDraft2 = this.sceneDraft;
            if (sceneDraft2 != null) {
                sceneListHelper.launchSceneBackgroundMusic(sceneDraft2, sceneDraft2.bgMusicClip);
                return;
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        pickBackgroundMusic();
    }

    @Override // com.narvii.scene.view.SceneRecyclerView.OnDialogItemClickListener
    public void onEditQuiz(SceneWrapper sceneWrapper) {
        getPreviewLayout().pause();
        if (sceneWrapper != null) {
            if (isEditMode()) {
                SceneListHelper sceneListHelper = this.sceneListHelper;
                if (sceneListHelper != null) {
                    sceneListHelper.launchEditQuiz(sceneWrapper.scene, getDraftAbsolutePath());
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
                    throw null;
                }
            }
            SceneListHelper sceneListHelper2 = this.sceneListHelper;
            if (sceneListHelper2 != null) {
                sceneListHelper2.launchEditQuiz(sceneWrapper.sceneInfo, getDraftAbsolutePath());
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
                throw null;
            }
        }
    }

    @Override // com.narvii.scene.view.SceneRecyclerView.OnDialogItemClickListener
    public void onEditPoll(SceneWrapper sceneWrapper) {
        getPreviewLayout().pause();
        if (sceneWrapper != null) {
            if (isEditMode()) {
                SceneListHelper sceneListHelper = this.sceneListHelper;
                if (sceneListHelper != null) {
                    sceneListHelper.launchEditPoll(sceneWrapper.scene, getDraftAbsolutePath());
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
                    throw null;
                }
            }
            SceneListHelper sceneListHelper2 = this.sceneListHelper;
            if (sceneListHelper2 != null) {
                sceneListHelper2.launchEditPoll(sceneWrapper.sceneInfo, getDraftAbsolutePath());
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
                throw null;
            }
        }
    }

    @Override // com.narvii.scene.view.SceneRecyclerView.OnDialogItemClickListener
    public void onDeletePoll(String str) {
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
    public void onDeleteQuiz(String str) {
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

    @Override // com.narvii.scene.view.SceneRecyclerView.OnListSizeChangedListener
    public void onSizeChanged(List<SceneWrapper> list, int i) {
        if (isEditMode()) {
            return;
        }
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft != null) {
            sceneDraft.setSceneInfos(SceneWrapper.getSceneInfos(list));
        }
        updateTitle();
        updateList();
    }

    @Override // com.narvii.scene.view.SceneRecyclerView.OnSelectedListener
    public void onSelected(String str, int i) {
        this.selectedSceneIndex = i;
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

    @Override // com.narvii.scene.view.SceneRecyclerView.OnEditVideoListener
    public void editVideo(SceneInfo sceneInfo, int i) {
        getPreviewLayout().pause();
        toSceneEditor(sceneInfo, false);
    }

    @Override // com.narvii.scene.view.SceneRecyclerView.OnEditVideoListener
    public void pickVideo(SceneInfo sceneInfo, int i) throws Resources.NotFoundException {
        getPreviewLayout().pause();
        SceneMediaPickerHelper sceneMediaPickerHelper = this.sceneMediaPickerHelper;
        if (sceneMediaPickerHelper != null) {
            if (sceneInfo == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            String str = this.draftId;
            if (str == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            sceneMediaPickerHelper.showPickerDialog(sceneInfo, str);
        }
        ToolTipHelper toolTipHelper = this.toolTipHelper;
        if (toolTipHelper != null) {
            if (toolTipHelper != null) {
                toolTipHelper.hideToolTip();
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
    }

    private final void toSceneEditor(SceneInfo sceneInfo, boolean z) {
        SceneListHelper sceneListHelper = this.sceneListHelper;
        if (sceneListHelper != null) {
            sceneListHelper.launchSceneEditor(sceneInfo, z, getDraftAbsolutePath());
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("sceneListHelper");
            throw null;
        }
    }

    private final void pickBackgroundMusic() {
        Bundle bundle = new Bundle();
        bundle.putString("type", "audio");
        DraftManager draftManager = this.draftManager;
        if (draftManager != null) {
            File dir = draftManager.getDir(this.draftId);
            SceneDraft sceneDraft = this.sceneDraft;
            File file = new File(dir, sceneDraft != null ? sceneDraft.globalFileFolder : null);
            if (FileUtils.isEmpty(file)) {
                file.mkdirs();
            }
            MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
            if (mediaPickerFragment != null) {
                mediaPickerFragment.pickMedia(null, bundle, 16902, 1, null);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPickerFragment");
                throw null;
            }
        }
        Intrinsics.throwUninitializedPropertyAccessException("draftManager");
        throw null;
    }

    private final void showTip() {
        Context context = getContext();
        if (context != null) {
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            if (new ScenePrefsHelper(context).isFirstEdit()) {
                this.toolTipHelper = new ToolTipHelper();
                getSceneRecyclerView().post(new Runnable() { // from class: com.narvii.scene.BaseSceneListFragment.showTip.1
                    @Override // java.lang.Runnable
                    public final void run() throws Resources.NotFoundException {
                        View itemView = BaseSceneListFragment.this.getSceneRecyclerView().getItemView(0);
                        if (itemView != null) {
                            Tooltip tooltipBuild = Tooltip.builder().anchorView(itemView).textId(R.string.tap_to_add_videos).build();
                            ToolTipHelper toolTipHelper = BaseSceneListFragment.this.toolTipHelper;
                            if (toolTipHelper != null) {
                                toolTipHelper.showToolTip(tooltipBuild);
                            }
                        }
                    }
                });
                getSceneRecyclerView().addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.scene.BaseSceneListFragment.showTip.2
                    @Override // android.support.v7.widget.RecyclerView.OnScrollListener
                    public void onScrolled(RecyclerView recyclerView, int i, int i2) throws Resources.NotFoundException {
                        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
                        super.onScrolled(recyclerView, i, i2);
                        if (i <= 0 || BaseSceneListFragment.this.toolTipHelper == null) {
                            return;
                        }
                        ToolTipHelper toolTipHelper = BaseSceneListFragment.this.toolTipHelper;
                        if (toolTipHelper == null) {
                            Intrinsics.throwNpe();
                            throw null;
                        }
                        if (toolTipHelper.isTooltipShowing()) {
                            ToolTipHelper toolTipHelper2 = BaseSceneListFragment.this.toolTipHelper;
                            if (toolTipHelper2 != null) {
                                toolTipHelper2.hideToolTip();
                            } else {
                                Intrinsics.throwNpe();
                                throw null;
                            }
                        }
                    }
                });
                return;
            }
            return;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    private final void updateView() {
        resetSelectedScene();
        updateTitle();
        updatePlayerContainer();
        updateList();
        invalidateOptionsMenu();
    }

    private final void updatePreviewLayout() {
        BaseScenePreviewLayout previewLayout = getPreviewLayout();
        if (previewLayout instanceof ScenePreviewLayout) {
            BaseScenePreviewLayout previewLayout2 = getPreviewLayout();
            if (previewLayout2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.scene.view.ScenePreviewLayout");
            }
            ScenePreviewLayout scenePreviewLayout = (ScenePreviewLayout) previewLayout2;
            SceneDraft sceneDraft = this.sceneDraft;
            if (sceneDraft == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            scenePreviewLayout.setSceneDraft(sceneDraft);
            BaseScenePreviewLayout previewLayout3 = getPreviewLayout();
            if (previewLayout3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.scene.view.ScenePreviewLayout");
            }
            ((ScenePreviewLayout) previewLayout3).seekScene(this.selectedSceneId);
            return;
        }
        if (previewLayout instanceof EditScenePreviewLayout) {
            BaseScenePreviewLayout previewLayout4 = getPreviewLayout();
            if (previewLayout4 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.scene.view.EditScenePreviewLayout");
            }
            EditScenePreviewLayout editScenePreviewLayout = (EditScenePreviewLayout) previewLayout4;
            List<? extends Scene> list = this.sceneList;
            if (list == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            editScenePreviewLayout.setSceneList(list);
            BaseScenePreviewLayout previewLayout5 = getPreviewLayout();
            if (previewLayout5 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.scene.view.EditScenePreviewLayout");
            }
            ((EditScenePreviewLayout) previewLayout5).seekScene(this.selectedSceneId);
        }
    }

    private final void resetSelectedScene() {
        if (isEditMode()) {
            List<? extends Scene> list = this.sceneList;
            if (list == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            if (list.isEmpty()) {
                this.selectedSceneIndex = -1;
                this.selectedSceneId = "";
                return;
            }
            if (!TextUtils.isEmpty(this.selectedSceneId)) {
                List<? extends Scene> list2 = this.sceneList;
                if (list2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                int size = list2.size();
                for (int i = 0; i < size; i++) {
                    List<? extends Scene> list3 = this.sceneList;
                    if (list3 == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    if (TextUtils.equals(list3.get(i).sceneId, this.selectedSceneId)) {
                        this.selectedSceneIndex = i;
                        return;
                    }
                }
            }
            this.selectedSceneIndex = 0;
            List<? extends Scene> list4 = this.sceneList;
            if (list4 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            String str = list4.get(0).sceneId;
            Intrinsics.checkExpressionValueIsNotNull(str, "sceneList!![0].sceneId");
            this.selectedSceneId = str;
            return;
        }
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        if (sceneDraft.sceneInfos.size() == 0) {
            this.selectedSceneIndex = -1;
            this.selectedSceneId = "";
            return;
        }
        if (!TextUtils.isEmpty(this.selectedSceneId)) {
            SceneDraft sceneDraft2 = this.sceneDraft;
            if (sceneDraft2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            List<SceneInfo> list5 = sceneDraft2.sceneInfos;
            Intrinsics.checkExpressionValueIsNotNull(list5, "sceneDraft!!.sceneInfos");
            int size2 = list5.size();
            for (int i2 = 0; i2 < size2; i2++) {
                SceneDraft sceneDraft3 = this.sceneDraft;
                if (sceneDraft3 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                if (TextUtils.equals(sceneDraft3.sceneInfos.get(i2).id, this.selectedSceneId)) {
                    this.selectedSceneIndex = i2;
                    return;
                }
            }
        }
        this.selectedSceneIndex = 0;
        SceneDraft sceneDraft4 = this.sceneDraft;
        if (sceneDraft4 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        SceneInfo sceneInfo = sceneDraft4.sceneInfos.get(0);
        if (sceneInfo == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        String str2 = sceneInfo.id;
        Intrinsics.checkExpressionValueIsNotNull(str2, "sceneDraft!!.sceneInfos[0]!!.id");
        this.selectedSceneId = str2;
    }

    private final void updateBgMusicButton() throws Resources.NotFoundException {
        if (isEditMode()) {
            getBackgroundMusicButton().setVisibility(8);
            return;
        }
        getBackgroundMusicButton().setVisibility(0);
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft != null) {
            if (sceneDraft.bgMusicClip == null) {
                NvStoryBackgroundMusicButton backgroundMusicButton = getBackgroundMusicButton();
                int i = sceneDraft.isEmpty() ? 1 : 2;
                Context context = getContext();
                if (context != null) {
                    backgroundMusicButton.setMode(i, context.getString(R.string.background_music));
                    return;
                } else {
                    Intrinsics.throwNpe();
                    throw null;
                }
            }
            getBackgroundMusicButton().setMode(sceneDraft.isEmpty() ? 1 : 3, sceneDraft.bgMusicClip.fileName);
        }
    }

    private final void updateTitle() {
        if (this.selectedSceneIndex == -1) {
            setTitle("");
            return;
        }
        setTitle(String.valueOf(this.selectedSceneIndex + 1) + "/" + sceneSize());
    }

    private final void updatePlayerContainer() {
        updatePlayerContainer(null);
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
            getPlayerContainer().setBackgroundColor(isDarkTheme() ? 855638015 : (int) 4294638333L);
            getEmptyScenePlaceholder().setVisibility(8);
            getPlayerView().setVisibility(8);
            return;
        }
        getPlayerContainer().setBackgroundColor((int) 4294967295L);
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        SceneInfo selectedSceneInfo = sceneDraft.getSceneInfo(this.selectedSceneId);
        Intrinsics.checkExpressionValueIsNotNull(selectedSceneInfo, "selectedSceneInfo");
        if (selectedSceneInfo.isEmpty()) {
            getEmptyScenePlaceholder().setVisibility(0);
            getPlayerView().setVisibility(8);
            return;
        }
        if (!selectedSceneInfo.isCanPlay() || TextUtils.equals(str, selectedSceneInfo.id)) {
            getEmptyScenePlaceholder().setVisibility(8);
            getPlayerView().setVisibility(0);
            getWarningLayout().setVisibility(0);
            getPreviewLayout().setVisibility(8);
            getVideoPlayButton().setVisibility(8);
            return;
        }
        getEmptyScenePlaceholder().setVisibility(8);
        getPlayerView().setVisibility(0);
        getWarningLayout().setVisibility(selectedSceneInfo.isError() ? 0 : 8);
        getPreviewLayout().setVisibility(0);
        getVideoPlayButton().setVisibility(getPreviewLayout().isPlaying() ? 8 : 0);
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

    private final boolean hasNoScene() {
        return sceneSize() == 0;
    }

    private final int sceneSize() {
        List<SceneInfo> list;
        if (isEditMode()) {
            List<? extends Scene> list2 = this.sceneList;
            if (list2 != null) {
                return list2.size();
            }
            return 0;
        }
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft == null || (list = sceneDraft.sceneInfos) == null) {
            return 0;
        }
        return list.size();
    }

    private final String getDraftAbsolutePath() {
        String absolutePath;
        DraftManager draftManager = this.draftManager;
        if (draftManager != null) {
            File dir = draftManager.getDir(this.draftId);
            return (dir == null || (absolutePath = dir.getAbsolutePath()) == null) ? "" : absolutePath;
        }
        Intrinsics.throwUninitializedPropertyAccessException("draftManager");
        throw null;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
        this.permissionDenied = false;
        if (i == 1) {
            updateSceneDraft();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSceneDraft() {
        updateData();
        updateView();
        getPreviewLayout().toResume(this.isWaitingPlaying);
        this.isWaitingPlaying = false;
    }

    private final void updateData() {
        BaseScenePreviewLayout previewLayout = getPreviewLayout();
        if (previewLayout instanceof ScenePreviewLayout) {
            BaseScenePreviewLayout previewLayout2 = getPreviewLayout();
            if (previewLayout2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.scene.view.ScenePreviewLayout");
            }
            ScenePreviewLayout scenePreviewLayout = (ScenePreviewLayout) previewLayout2;
            SceneDraft sceneDraft = this.sceneDraft;
            if (sceneDraft != null) {
                scenePreviewLayout.setSceneDraft(sceneDraft);
                return;
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        if (previewLayout instanceof EditScenePreviewLayout) {
            BaseScenePreviewLayout previewLayout3 = getPreviewLayout();
            if (previewLayout3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.scene.view.EditScenePreviewLayout");
            }
            EditScenePreviewLayout editScenePreviewLayout = (EditScenePreviewLayout) previewLayout3;
            List<? extends Scene> list = this.sceneList;
            if (list != null) {
                editScenePreviewLayout.setSceneList(list);
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
    }

    protected final void showOriginFileMissingDialog() {
        if (getFileMisssingDialog().isShowing()) {
            return;
        }
        getFileMisssingDialog().show();
    }

    private final void showInvalidDialog() {
        if (getInvalidDialog().isShowing()) {
            return;
        }
        Lifecycle lifecycle = getLifecycle();
        Intrinsics.checkExpressionValueIsNotNull(lifecycle, "lifecycle");
        if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.RESUMED)) {
            getInvalidDialog().setMessage(R.string.invalid_input);
            getInvalidDialog().addButton(android.R.string.ok, 0, new View.OnClickListener() { // from class: com.narvii.scene.BaseSceneListFragment.showInvalidDialog.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseSceneListFragment.this.setResult(0);
                    BaseSceneListFragment.this.finish();
                }
            });
            getInvalidDialog().setCancelable(false);
            getInvalidDialog().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void clearUselessClip() {
        if (isEditMode()) {
            return;
        }
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        this.oldSceneDraft = sceneDraft.clearUselessClip().m54clone();
        updateSceneDraft();
        saveDraft(false);
        checkPermission();
        startAutoSaveTask();
    }

    protected final void checkPermission() {
        if (PermissionUtils.hasSelfPermission(getActivity(), "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE")) {
            getPreviewLayout().toResume(this.isWaitingPlaying);
            this.isWaitingPlaying = false;
        } else {
            NVPermission.builder(this).requestCode(1).permissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}).permissionListener(this).rationaleDneyCallback(new Callback<Object>() { // from class: com.narvii.scene.BaseSceneListFragment.checkPermission.1
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    BaseSceneListFragment.this.permissionDenied = true;
                    BaseSceneListFragment.this.updateSceneDraft();
                }
            }).request();
        }
    }

    private final void startAutoSaveTask() {
        if (autoSaveDraftInterval() > 0) {
            Utils.handler.removeCallbacks(this.autoSaveDraft);
            Utils.postDelayed(this.autoSaveDraft, autoSaveDraftInterval());
        }
    }

    private final SceneInfo getSelectedSceneInfo(String str) {
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft != null) {
            return sceneDraft.getSceneInfo(str);
        }
        return null;
    }

    protected final void saveDraft(boolean z) {
        if (isEditMode()) {
            if (Utils.isListEquals(this.autoSaveSceneList, this.sceneList)) {
                return;
            } else {
                this.autoSaveSceneList = JacksonUtils.readListAs(JacksonUtils.writeAsString(this.sceneList), Scene.class);
            }
        } else {
            SceneDraft sceneDraft = this.autoSaveSceneDraft;
            if (sceneDraft != null) {
                if (sceneDraft == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                if (sceneDraft.isSame(this.sceneDraft, true, true)) {
                    return;
                }
            }
            SceneDraft sceneDraft2 = this.sceneDraft;
            if (sceneDraft2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            this.autoSaveSceneDraft = sceneDraft2.m54clone();
        }
        notifySceneDraftChanged(z);
    }

    protected void notifySceneDraftChanged(boolean z) {
        Notification notification;
        if (isEditMode()) {
            notification = new Notification("update", new SceneDraftWrapper(this.sceneList, this.draftId, z));
        } else {
            notification = new Notification("update", new SceneDraftWrapper(this.sceneDraft, z));
        }
        sendNotification(notification);
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

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingStop() {
        if (isEditMode()) {
            onSelected(this.selectedSceneId, this.selectedSceneIndex);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingPause() {
        getVideoPlayButton().setVisibility(0);
        getSceneRecyclerView().setPlaying(false);
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

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingError(Exception exc) {
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
    public void onSeekingError(String sceneId, Exception exception) {
        Intrinsics.checkParameterIsNotNull(sceneId, "sceneId");
        Intrinsics.checkParameterIsNotNull(exception, "exception");
        updatePlayerContainer(sceneId);
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneChanged(String sceneId, int i) {
        Intrinsics.checkParameterIsNotNull(sceneId, "sceneId");
        if (TextUtils.isEmpty(sceneId)) {
            return;
        }
        int i2 = 0;
        if (isEditMode()) {
            List<? extends Scene> list = this.sceneList;
            if (list == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            int size = list.size();
            while (i2 < size) {
                List<? extends Scene> list2 = this.sceneList;
                if (list2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                if (TextUtils.equals(sceneId, list2.get(i2).sceneId)) {
                    sceneChanged(i2, sceneId);
                    return;
                }
                i2++;
            }
            return;
        }
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        List<SceneInfo> list3 = sceneDraft.sceneInfos;
        Intrinsics.checkExpressionValueIsNotNull(list3, "sceneDraft!!.sceneInfos");
        int size2 = list3.size();
        while (i2 < size2) {
            SceneDraft sceneDraft2 = this.sceneDraft;
            if (sceneDraft2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            if (TextUtils.equals(sceneId, sceneDraft2.sceneInfos.get(i2).id)) {
                sceneChanged(i2, sceneId);
                return;
            }
            i2++;
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.BeforePlayingListener
    public void beforePlayingStart() {
        if (isEditMode()) {
            loadingVideo();
        }
    }

    private final void sceneChanged(int i, String str) {
        getSceneRecyclerView().selectedScene(i, true);
        getSceneRecyclerView().setPlaying(getPreviewLayout().isPlaying());
        if (!this.isError) {
            getSceneRecyclerView().setSceneCanPlaying(true, this.selectedSceneId);
        }
        this.selectedSceneIndex = i;
        this.selectedSceneId = str;
        updateTitle();
        updatePlayerContainer();
        Log.d(TAG, "sceneChanged  >>>  sceneId = " + str + "  index = " + i);
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingProgress(long j, long j2) {
        getTvTimeCurrent().setText(SceneUtils.durationMsToUIText(j));
        getTvTimeTotal().setText(SceneUtils.durationMsToUIText(j2));
    }

    public void previewPause() {
        getPreviewLayout().pause();
    }

    public void previewStart() {
        getPreviewLayout().play();
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        String str;
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
            if (obj2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.scene.notification.SceneInfoObject");
            }
            SceneInfo sceneInfo = ((SceneInfoObject) obj2).sceneInfo;
            SceneDraft sceneDraft = this.sceneDraft;
            if (sceneDraft == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            SceneInfo sceneInfo2 = sceneDraft.getSceneInfo(sceneInfo != null ? sceneInfo.id : null);
            if (sceneInfo2 != null) {
                sceneInfo2.copyScene(sceneInfo);
            }
            if (sceneInfo2 == null || (str = sceneInfo2.id) == null) {
                str = "";
            }
            this.selectedSceneId = str;
            SceneDraft sceneDraft2 = this.sceneDraft;
            if (sceneDraft2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            sceneDraft2.correctBgMusicClip();
            updateView();
            updatePreviewLayout();
        }
    }

    protected final SceneRecyclerView getRecyclerView() {
        return getSceneRecyclerView();
    }

    public final boolean getBooleanParam(String key, boolean z, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        if (bundle != null) {
            return bundle.getBoolean(key, z);
        }
        return getBooleanParam(key, z);
    }

    public final String getStringParam(String key, Bundle bundle) {
        String string;
        Intrinsics.checkParameterIsNotNull(key, "key");
        if (bundle != null && (string = bundle.getString(key)) != null) {
            return string;
        }
        String stringParam = getStringParam(key);
        return stringParam != null ? stringParam : "";
    }

    public final int getIntParam(String key, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        return bundle != null ? bundle.getInt(key) : getIntParam(key);
    }

    private final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.scene.BaseSceneListFragment.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View view = BaseSceneListFragment.this.getView();
                View viewFindViewById = view != null ? view.findViewById(i) : null;
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }
}
