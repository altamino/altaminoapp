package com.narvii.story;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.app.theme.NVThemeOwner;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.photos.PhotoManager;
import com.narvii.post.DraftManager;
import com.narvii.scene.SceneConstant;
import com.narvii.scene.model.SceneCoverImageInfo;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.text.TextUtils;
import com.narvii.video.ScrollingTimeLineFragment;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.services.IEditorPackFactory;
import com.narvii.video.services.SceneMediaProcessor;
import com.narvii.video.services.VideoManager;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;
import ffmpeg.base.MediaEditingConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: CoverImageFragment.kt */
/* loaded from: classes3.dex */
public final class CoverImageFragment extends ScrollingTimeLineFragment implements MediaPickerFragment.OnResultListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CoverImageFragment.class), "dialog", "getDialog()Lcom/narvii/util/dialog/ProgressDialog;"))};
    public static final Companion Companion = new Companion(null);
    private static final int REQ_CROP_IMAGE = 64784;
    private HashMap _$_findViewCache;
    private SceneCoverImageInfo coverImageInfo;
    private boolean customSelect;
    private DraftManager draftManager;
    private MediaPickerFragment mediaPickerFragment;
    private PhotoManager photoManager;
    private SceneDraft sceneDraft;
    private boolean supportScreenshot;
    private String draftId = "";
    private String customThumbUrl = "";
    private String currentDraftFolder = "";
    private final Lazy dialog$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ProgressDialog>() { // from class: com.narvii.story.CoverImageFragment$dialog$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ProgressDialog invoke() {
            return new ProgressDialog(this.this$0.getContext());
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressDialog getDialog() {
        Lazy lazy = this.dialog$delegate;
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

    @Override // com.narvii.app.NVFragment
    protected int getActionBarLayoutId() {
        return R.layout.actionbar_layout_no_shadow;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StoryCoverImage";
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ SceneCoverImageInfo access$getCoverImageInfo$p(CoverImageFragment coverImageFragment) {
        SceneCoverImageInfo sceneCoverImageInfo = coverImageFragment.coverImageInfo;
        if (sceneCoverImageInfo != null) {
            return sceneCoverImageInfo;
        }
        Intrinsics.throwUninitializedPropertyAccessException("coverImageInfo");
        throw null;
    }

    /* compiled from: CoverImageFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        NVThemeOwner nVThemeOwner;
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        Context context = getContext();
        MediaPickerFragment mediaPickerFragment = null;
        if (context == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        setBackButtonTint(ContextCompat.getColor(context, R.color.story_theme_action_bar_view));
        Context context2 = getContext();
        if (context2 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        setBackButtonDrawable(ContextCompat.getDrawable(context2, R.drawable.ic_actionbar_close));
        Context context3 = getContext();
        if (context3 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        setActionBarTitleColor(ContextCompat.getColor(context3, R.color.story_theme_action_bar_view));
        setTitle(R.string.set_cover_image);
        Object service = getService("photo");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"photo\")");
        this.photoManager = (PhotoManager) service;
        Object service2 = getService(EntryManager.ENTRY_DRAFT);
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"draft\")");
        this.draftManager = (DraftManager) service2;
        Object as = JacksonUtils.readAs(getStringParam("sceneDraft"), SceneDraft.class);
        Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…, SceneDraft::class.java)");
        this.sceneDraft = (SceneDraft) as;
        String stringParam = getStringParam("draftId");
        Intrinsics.checkExpressionValueIsNotNull(stringParam, "getStringParam(\"draftId\")");
        this.draftId = stringParam;
        this.supportScreenshot = getBooleanParam("supportScreenshot");
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft != null) {
            SceneCoverImageInfo sceneCoverImageInfo = sceneDraft.coverImageInfo;
            if (sceneCoverImageInfo == null) {
                if (this.supportScreenshot) {
                    PhotoManager photoManager = this.photoManager;
                    if (photoManager == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("photoManager");
                        throw null;
                    }
                    if (sceneDraft == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("sceneDraft");
                        throw null;
                    }
                    String firstSceneCoverImagePath = sceneDraft.getFirstSceneCoverImagePath();
                    if (firstSceneCoverImagePath == null) {
                        firstSceneCoverImagePath = "";
                    }
                    sceneCoverImageInfo = new SceneCoverImageInfo(photoManager.getUri(new File(firstSceneCoverImagePath)), 0);
                } else if (sceneDraft != null) {
                    sceneCoverImageInfo = new SceneCoverImageInfo(sceneDraft.coverImage, 3);
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("sceneDraft");
                    throw null;
                }
            }
            this.coverImageInfo = sceneCoverImageInfo;
            StringBuilder sb = new StringBuilder();
            DraftManager draftManager = this.draftManager;
            if (draftManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("draftManager");
                throw null;
            }
            File dir = draftManager.getDir(this.draftId);
            sb.append(dir != null ? dir.getAbsolutePath() : null);
            sb.append(File.separator);
            sb.append(SceneConstant.COVER_IMAGE_FOLDER);
            sb.append(File.separator);
            this.currentDraftFolder = sb.toString();
            new File(this.currentDraftFolder).mkdirs();
            FragmentManager fragmentManager = getFragmentManager();
            if (fragmentManager != null) {
                String simpleName = MediaPickerFragment.class.getSimpleName();
                Intrinsics.checkExpressionValueIsNotNull(simpleName, "clz.simpleName");
                Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(simpleName);
                if (fragmentFindFragmentByTag == null || !(fragmentFindFragmentByTag instanceof MediaPickerFragment)) {
                    Fragment fragment = (Fragment) MediaPickerFragment.class.newInstance();
                    FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
                    fragmentTransactionBeginTransaction.add(fragment, simpleName);
                    fragmentTransactionBeginTransaction.commitAllowingStateLoss();
                    nVThemeOwner = (NVFragment) fragment;
                } else {
                    nVThemeOwner = (NVFragment) fragmentFindFragmentByTag;
                }
                mediaPickerFragment = (MediaPickerFragment) nVThemeOwner;
            }
            this.mediaPickerFragment = mediaPickerFragment;
            MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
            if (mediaPickerFragment2 != null) {
                mediaPickerFragment2.addOnResultListener(this);
                return;
            }
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sceneDraft");
        throw null;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_cover_image, viewGroup, false);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        Intrinsics.checkParameterIsNotNull(menu, "menu");
        super.onCreateOptionsMenu(menu, menuInflater);
        Context context = getContext();
        if (context != null) {
            menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(context, context.getString(R.string.fa_check), 0.85f, ContextCompat.getColor(context, R.color.story_theme_action_bar_view), 255, false)).setShowAsAction(2);
        }
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem != null) {
            if (menuItem.getItemId() == 17039370) {
                SceneCoverImageInfo sceneCoverImageInfo = this.coverImageInfo;
                if (sceneCoverImageInfo == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("coverImageInfo");
                    throw null;
                }
                int i = sceneCoverImageInfo.from;
                if (i == 2) {
                    if (sceneCoverImageInfo == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("coverImageInfo");
                        throw null;
                    }
                    sceneCoverImageInfo.customUrl = this.customThumbUrl;
                } else {
                    if (sceneCoverImageInfo == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("coverImageInfo");
                        throw null;
                    }
                    if (i == 1) {
                        if (sceneCoverImageInfo != null) {
                            sceneCoverImageInfo.screenshotUrl = getRandomJpgFileUri(this.currentDraftFolder);
                            PhotoManager photoManager = this.photoManager;
                            if (photoManager == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("photoManager");
                                throw null;
                            }
                            SceneCoverImageInfo sceneCoverImageInfo2 = this.coverImageInfo;
                            if (sceneCoverImageInfo2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("coverImageInfo");
                                throw null;
                            }
                            final File file = photoManager.getPath(sceneCoverImageInfo2.screenshotUrl);
                            if (NVApplication.isBasedOnMeishe()) {
                                getDialog().show();
                                IEditorPackFactory iEditorPackFactory = (IEditorPackFactory) getService("editorPackFactory");
                                SceneMediaProcessor sceneMediaProcessor = SceneMediaProcessor.INSTANCE;
                                SceneDraft sceneDraft = this.sceneDraft;
                                if (sceneDraft == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("sceneDraft");
                                    throw null;
                                }
                                Intrinsics.checkExpressionValueIsNotNull(file, "file");
                                sceneMediaProcessor.getStoryCoverImage(sceneDraft, file, getPreviewPlayer().getCurrentVideoPositionInTimeline(), iEditorPackFactory.getVideoGenerator(), new SceneMediaProcessor.MediaProcessListener() { // from class: com.narvii.story.CoverImageFragment.onOptionsItemSelected.1
                                    @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                                    public void onProgress(float f) {
                                        SceneMediaProcessor.MediaProcessListener.DefaultImpls.onProgress(this, f);
                                    }

                                    @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                                    public void onSuccess(ArrayList<String> outputList) {
                                        Intrinsics.checkParameterIsNotNull(outputList, "outputList");
                                        Intent intent = new Intent();
                                        intent.putExtra("coverImageInfo", JacksonUtils.writeAsString(CoverImageFragment.access$getCoverImageInfo$p(CoverImageFragment.this)));
                                        CoverImageFragment.this.setResult(-1, intent);
                                        CoverImageFragment.this.getDialog().dismiss();
                                        CoverImageFragment.this.finish();
                                    }

                                    @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
                                    public void onFailed(boolean z) {
                                        CoverImageFragment.this.getDialog().dismiss();
                                    }
                                });
                            } else {
                                AVClipInfoPack activeVideoClip = getActiveVideoClip();
                                if (activeVideoClip != null) {
                                    getDialog().show();
                                    VideoManager videoManager = getVideoManager();
                                    Intrinsics.checkExpressionValueIsNotNull(file, "file");
                                    videoManager.getCoverImage(activeVideoClip, file, getPreviewPlayer().getCurrentVideoRawPositionInClip(), (88 & 8) != 0 ? -2 : 0, (88 & 16) != 0 ? -2 : 0, (88 & 32) != 0 ? null : new IVideoServiceCallback() { // from class: com.narvii.story.CoverImageFragment$onOptionsItemSelected$$inlined$let$lambda$1
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
                                        public void onFrameBitmapLoaded(int i2, Bitmap bitmap) {
                                            IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i2, bitmap);
                                        }

                                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                                        public void onProgress(float f, String str) {
                                            IVideoServiceCallback.DefaultImpls.onProgress(this, f, str);
                                        }

                                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                                        public void onVideoProcessed(String path) {
                                            Intrinsics.checkParameterIsNotNull(path, "path");
                                            IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                                        }

                                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                                        public void onFramePicturesLoaded(int i2, File file2) {
                                            IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i2, file2);
                                            Intent intent = new Intent();
                                            intent.putExtra("coverImageInfo", JacksonUtils.writeAsString(CoverImageFragment.access$getCoverImageInfo$p(this.this$0)));
                                            this.this$0.setResult(-1, intent);
                                            this.this$0.getDialog().dismiss();
                                            this.this$0.finish();
                                        }

                                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                                        public void onActionFailed(Exception exc) {
                                            IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                                            this.this$0.getDialog().dismiss();
                                        }

                                        @Override // com.narvii.video.interfaces.IVideoServiceCallback
                                        public void onActionCancelled() {
                                            IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                                            this.this$0.getDialog().dismiss();
                                        }
                                    }, (88 & 64) != 0 ? null : null, (88 & 128) != 0 ? false : true);
                                }
                            }
                            return super.onOptionsItemSelected(menuItem);
                        }
                        Intrinsics.throwUninitializedPropertyAccessException("coverImageInfo");
                        throw null;
                    }
                }
                Intent intent = new Intent();
                SceneCoverImageInfo sceneCoverImageInfo3 = this.coverImageInfo;
                if (sceneCoverImageInfo3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("coverImageInfo");
                    throw null;
                }
                intent.putExtra("coverImageInfo", JacksonUtils.writeAsString(sceneCoverImageInfo3));
                setResult(-1, intent);
                finish();
            }
            return super.onOptionsItemSelected(menuItem);
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        if (Utils.isRtl()) {
            ((Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_screen_shoot)).setBackgroundResource(R.drawable.cover_image_right_tab_shape);
            ((Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_custom)).setBackgroundResource(R.drawable.cover_image_left_tab_shape);
        } else {
            ((Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_screen_shoot)).setBackgroundResource(R.drawable.cover_image_left_tab_shape);
            ((Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_custom)).setBackgroundResource(R.drawable.cover_image_right_tab_shape);
        }
        ((Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_screen_shoot)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.CoverImageFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CoverImageFragment.this.onSwitchTabScreenshots();
            }
        });
        ((Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_custom)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.CoverImageFragment.onViewCreated.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CoverImageFragment.this.onSwitchTabCustom();
                CoverImageFragment.this.updateCustomTabState();
            }
        });
        ((FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.custom_image_rl)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.CoverImageFragment.onViewCreated.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                if (TextUtils.isEmpty(CoverImageFragment.this.customThumbUrl)) {
                    CoverImageFragment.this.toPickCoverImage();
                    return;
                }
                if (!CoverImageFragment.this.customSelect) {
                    if (CoverImageFragment.this.customSelect) {
                        return;
                    }
                    CoverImageFragment.access$getCoverImageInfo$p(CoverImageFragment.this).from = 2;
                    CoverImageFragment.this.customSelect = true;
                    CoverImageFragment coverImageFragment = CoverImageFragment.this;
                    coverImageFragment.setPreviewContent(coverImageFragment.customThumbUrl);
                    CoverImageFragment.this.updateCustomTabState();
                    return;
                }
                if (CoverImageFragment.access$getCoverImageInfo$p(CoverImageFragment.this).from == 3) {
                    String url = NVImageView.fitSize(CoverImageFragment.this.customThumbUrl, NVImageView.TYPE_STORY_COVER, 720, 1280);
                    CoverImageFragment coverImageFragment2 = CoverImageFragment.this;
                    Intrinsics.checkExpressionValueIsNotNull(url, "url");
                    coverImageFragment2.startCrop(url);
                    return;
                }
                CoverImageFragment coverImageFragment3 = CoverImageFragment.this;
                coverImageFragment3.startCrop(coverImageFragment3.customThumbUrl);
            }
        });
        SceneCoverImageInfo sceneCoverImageInfo = this.coverImageInfo;
        if (sceneCoverImageInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coverImageInfo");
            throw null;
        }
        String customUrl = sceneCoverImageInfo.customUrl;
        Intrinsics.checkExpressionValueIsNotNull(customUrl, "customUrl");
        this.customThumbUrl = customUrl;
        int i = sceneCoverImageInfo.from;
        if (i == 0) {
            onSwitchTabScreenshots();
            String defaultUrl = sceneCoverImageInfo.defaultUrl;
            Intrinsics.checkExpressionValueIsNotNull(defaultUrl, "defaultUrl");
            setPreviewContent(defaultUrl);
        } else if (i == 1) {
            onSwitchTabScreenshots();
            String screenshotUrl = sceneCoverImageInfo.screenshotUrl;
            Intrinsics.checkExpressionValueIsNotNull(screenshotUrl, "screenshotUrl");
            setPreviewContent(screenshotUrl);
        } else if (i == 2) {
            this.customSelect = true;
            onSwitchTabCustom();
            setPreviewContent(this.customThumbUrl);
            updateCustomTabState();
        } else if (i == 3) {
            String netUrl = sceneCoverImageInfo.netUrl;
            Intrinsics.checkExpressionValueIsNotNull(netUrl, "netUrl");
            this.customThumbUrl = netUrl;
            this.customSelect = true;
            onSwitchTabCustom();
            String netUrl2 = sceneCoverImageInfo.netUrl;
            Intrinsics.checkExpressionValueIsNotNull(netUrl2, "netUrl");
            setPreviewContent(netUrl2);
            updateCustomTabState();
        }
        if (this.supportScreenshot) {
            return;
        }
        Button tab_screen_shoot = (Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_screen_shoot);
        Intrinsics.checkExpressionValueIsNotNull(tab_screen_shoot, "tab_screen_shoot");
        tab_screen_shoot.setVisibility(4);
        Button tab_custom = (Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_custom);
        Intrinsics.checkExpressionValueIsNotNull(tab_custom, "tab_custom");
        tab_custom.setVisibility(4);
        NVEditorPreviewVideoVIew video_view_player = (NVEditorPreviewVideoVIew) _$_findCachedViewById(com.narvii.amino.R.id.video_view_player);
        Intrinsics.checkExpressionValueIsNotNull(video_view_player, "video_view_player");
        video_view_player.setVisibility(4);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected boolean initInputClips() {
        if (this.supportScreenshot) {
            return super.initInputClips();
        }
        return false;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        setPreviewVideoView((NVEditorPreviewVideoVIew) _$_findCachedViewById(com.narvii.amino.R.id.video_view_player));
        setMainTimeLineComponent((MediaTimeLineComponent) _$_findCachedViewById(com.narvii.amino.R.id.video_time_line_component));
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment
    protected void innerInitMainTimeLine(int i, boolean z) {
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        if (mainTimeLineComponent != null) {
            mainTimeLineComponent.initTimeLine(100, 202, false, getPreviewPlayer().getVideoClipInfoList(), getPreviewPlayer(), (40704 & 32) != 0 ? null : getFrameRetrieverManager(), i, (40704 & 128) != 0 ? 3000 : 3000, (40704 & 256) != 0 ? -1.0f : 1000.0f, (40704 & 512) != 0 ? false : false, (40704 & 1024) != 0 ? -1 : 0, (40704 & 2048) != 0 ? false : false, (40704 & 4096) != 0, (40704 & 8192) != 0 ? 0 : 0, (40704 & 16384) != 0 ? null : this, (40704 & 32768) != 0 ? false : z);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    public ArrayList<AVClipInfoPack> getVideoInputClipList() {
        ArrayList<AVClipInfoPack> arrayList = new ArrayList<>();
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneDraft");
            throw null;
        }
        Iterator<SceneInfo> it = sceneDraft.sceneInfos.iterator();
        while (it.hasNext()) {
            Iterator<AVClipInfoPack> it2 = it.next().videoClips.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
        }
        return arrayList;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<AVClipInfoPack> getAudioInputClipList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<Caption> getCaptionList() {
        ArrayList<Caption> arrayList = new ArrayList<>();
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneDraft");
            throw null;
        }
        long duration = 0;
        for (SceneInfo sceneInfo : sceneDraft.sceneInfos) {
            Iterator<Caption> it = sceneInfo.captions.iterator();
            while (it.hasNext()) {
                Caption captionM59clone = it.next().m59clone();
                captionM59clone.startOffsetToMainTrackInMs = (int) (r6.startOffsetToMainTrackInMs + duration);
                arrayList.add(captionM59clone);
            }
            duration += sceneInfo.getDuration();
        }
        return arrayList;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<StickerInfoPack> getStickerList() {
        ArrayList<StickerInfoPack> arrayList = new ArrayList<>();
        SceneDraft sceneDraft = this.sceneDraft;
        if (sceneDraft == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sceneDraft");
            throw null;
        }
        long duration = 0;
        for (SceneInfo sceneInfo : sceneDraft.sceneInfos) {
            Iterator<StickerInfoPack> it = sceneInfo.stickers.iterator();
            while (it.hasNext()) {
                StickerInfoPack stickerInfoPackCopy = it.next().copy();
                Intrinsics.checkExpressionValueIsNotNull(stickerInfoPackCopy, "pack.copy()");
                stickerInfoPackCopy.startOffsetToMainTrackInMs = (int) (r6.startOffsetToMainTrackInMs + duration);
                arrayList.add(stickerInfoPackCopy);
            }
            duration += sceneInfo.getDuration();
        }
        return arrayList;
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment
    public void initFrameRetrieverManager() throws Resources.NotFoundException {
        FrameRetrieverManager.initRetriever$default(getFrameRetrieverManager(), this.draftId, "cover_image", true, false, 8, null);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void innerOnVideoPrepared() {
        super.innerOnVideoPrepared();
        setAutoPlaying(false);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void changeVideoPlaybackStatus(boolean z, boolean z2) {
        if (z) {
            super.changeVideoPlaybackStatus(z, z2);
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(int i, int i2) {
        super.onFrameLocatedDuringMove(i, i2);
        NVImageView custom_image_view = (NVImageView) _$_findCachedViewById(com.narvii.amino.R.id.custom_image_view);
        Intrinsics.checkExpressionValueIsNotNull(custom_image_view, "custom_image_view");
        if (custom_image_view.getVisibility() == 0) {
            this.customSelect = false;
            SceneCoverImageInfo sceneCoverImageInfo = this.coverImageInfo;
            if (sceneCoverImageInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("coverImageInfo");
                throw null;
            }
            sceneCoverImageInfo.from = 1;
            setPreviewContent("");
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        Media media;
        if (list == null || (media = (Media) CollectionsKt.first(list)) == null) {
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.setCoverImage).extraParam("storyDraftId", this.draftId).extraParam("imageType", "Customize").area("EditArea").send();
        String mediaUrl = media.getMediaUrl();
        Intrinsics.checkExpressionValueIsNotNull(mediaUrl, "it.mediaUrl");
        startCrop(mediaUrl);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        String stringExtra;
        super.onActivityResult(i, i2, intent);
        if (i != REQ_CROP_IMAGE || i2 != -1 || intent == null || (stringExtra = intent.getStringExtra("media")) == null) {
            return;
        }
        Media media = (Media) JacksonUtils.readAs(stringExtra, Media.class);
        Intrinsics.checkExpressionValueIsNotNull(media, "media");
        String mediaUrl = media.getMediaUrl();
        Intrinsics.checkExpressionValueIsNotNull(mediaUrl, "media.mediaUrl");
        this.customThumbUrl = mediaUrl;
        this.customSelect = true;
        SceneCoverImageInfo sceneCoverImageInfo = this.coverImageInfo;
        if (sceneCoverImageInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coverImageInfo");
            throw null;
        }
        sceneCoverImageInfo.from = 2;
        setPreviewContent(this.customThumbUrl);
        updateCustomTabState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startCrop(String str) {
        Intent intent = FragmentWrapperActivity.intent(CropImageFragment.class);
        intent.putExtra("imageUrl", str);
        intent.putExtra("outputUrl", getRandomJpgFileUri(this.currentDraftFolder));
        intent.putExtra("draftId", this.draftId);
        startActivityForResult(intent, REQ_CROP_IMAGE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSwitchTabScreenshots() {
        Button tab_screen_shoot = (Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_screen_shoot);
        Intrinsics.checkExpressionValueIsNotNull(tab_screen_shoot, "tab_screen_shoot");
        tab_screen_shoot.setSelected(true);
        ((Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_screen_shoot)).setTextColor(-1);
        Button tab_custom = (Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_custom);
        Intrinsics.checkExpressionValueIsNotNull(tab_custom, "tab_custom");
        tab_custom.setSelected(false);
        ((Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_custom)).setTextColor(Color.parseColor("#4A90E2"));
        ((TextView) _$_findCachedViewById(com.narvii.amino.R.id.swipe_hint_tv)).setText(R.string.swipe_to_select_cover_hint);
        FrameLayout video_time_line_component_container = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.video_time_line_component_container);
        Intrinsics.checkExpressionValueIsNotNull(video_time_line_component_container, "video_time_line_component_container");
        video_time_line_component_container.setVisibility(0);
        FrameLayout custom_image_rl = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.custom_image_rl);
        Intrinsics.checkExpressionValueIsNotNull(custom_image_rl, "custom_image_rl");
        custom_image_rl.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSwitchTabCustom() {
        Button tab_screen_shoot = (Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_screen_shoot);
        Intrinsics.checkExpressionValueIsNotNull(tab_screen_shoot, "tab_screen_shoot");
        tab_screen_shoot.setSelected(false);
        ((Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_screen_shoot)).setTextColor(Color.parseColor("#4A90E2"));
        Button tab_custom = (Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_custom);
        Intrinsics.checkExpressionValueIsNotNull(tab_custom, "tab_custom");
        tab_custom.setSelected(true);
        ((Button) _$_findCachedViewById(com.narvii.amino.R.id.tab_custom)).setTextColor(-1);
        ((TextView) _$_findCachedViewById(com.narvii.amino.R.id.swipe_hint_tv)).setText(R.string.add_cover_image);
        FrameLayout video_time_line_component_container = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.video_time_line_component_container);
        Intrinsics.checkExpressionValueIsNotNull(video_time_line_component_container, "video_time_line_component_container");
        video_time_line_component_container.setVisibility(4);
        FrameLayout custom_image_rl = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.custom_image_rl);
        Intrinsics.checkExpressionValueIsNotNull(custom_image_rl, "custom_image_rl");
        custom_image_rl.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toPickCoverImage() {
        Bundle bundle = new Bundle();
        bundle.putString("type", "photo");
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.pickMedia(null, bundle, 30, 1, 720, 720, 720, 720);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setPreviewContent(String str) {
        if (TextUtils.isEmpty(str)) {
            NVImageView custom_image_view = (NVImageView) _$_findCachedViewById(com.narvii.amino.R.id.custom_image_view);
            Intrinsics.checkExpressionValueIsNotNull(custom_image_view, "custom_image_view");
            custom_image_view.setVisibility(4);
        } else {
            NVImageView custom_image_view2 = (NVImageView) _$_findCachedViewById(com.narvii.amino.R.id.custom_image_view);
            Intrinsics.checkExpressionValueIsNotNull(custom_image_view2, "custom_image_view");
            custom_image_view2.setVisibility(0);
            ((NVImageView) _$_findCachedViewById(com.narvii.amino.R.id.custom_image_view)).setImageUrl(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateCustomTabState() {
        if (TextUtils.isEmpty(this.customThumbUrl)) {
            ((NVImageView) _$_findCachedViewById(com.narvii.amino.R.id.image_thumb_iv)).setImageUrl("");
            FrameLayout custom_image_rl = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.custom_image_rl);
            Intrinsics.checkExpressionValueIsNotNull(custom_image_rl, "custom_image_rl");
            custom_image_rl.setBackground(getResources().getDrawable(R.drawable.cover_image_thumb_dash_shape));
            TintButton select_cover_image_btn = (TintButton) _$_findCachedViewById(com.narvii.amino.R.id.select_cover_image_btn);
            Intrinsics.checkExpressionValueIsNotNull(select_cover_image_btn, "select_cover_image_btn");
            select_cover_image_btn.setVisibility(0);
            FrameLayout edit_background_view = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.edit_background_view);
            Intrinsics.checkExpressionValueIsNotNull(edit_background_view, "edit_background_view");
            edit_background_view.setVisibility(4);
            return;
        }
        ((NVImageView) _$_findCachedViewById(com.narvii.amino.R.id.image_thumb_iv)).setImageUrl(this.customThumbUrl);
        TintButton select_cover_image_btn2 = (TintButton) _$_findCachedViewById(com.narvii.amino.R.id.select_cover_image_btn);
        Intrinsics.checkExpressionValueIsNotNull(select_cover_image_btn2, "select_cover_image_btn");
        select_cover_image_btn2.setVisibility(4);
        if (this.customSelect) {
            FrameLayout edit_background_view2 = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.edit_background_view);
            Intrinsics.checkExpressionValueIsNotNull(edit_background_view2, "edit_background_view");
            edit_background_view2.setVisibility(0);
            FrameLayout custom_image_rl2 = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.custom_image_rl);
            Intrinsics.checkExpressionValueIsNotNull(custom_image_rl2, "custom_image_rl");
            custom_image_rl2.setBackground(getResources().getDrawable(R.drawable.cover_image_thumb_highlight_shape));
            return;
        }
        FrameLayout edit_background_view3 = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.edit_background_view);
        Intrinsics.checkExpressionValueIsNotNull(edit_background_view3, "edit_background_view");
        edit_background_view3.setVisibility(4);
        FrameLayout custom_image_rl3 = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.custom_image_rl);
        Intrinsics.checkExpressionValueIsNotNull(custom_image_rl3, "custom_image_rl");
        custom_image_rl3.setBackground(null);
    }

    private final String getRandomJpgFileUri(String str) {
        File file = new File(str);
        PhotoManager photoManager = this.photoManager;
        if (photoManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("photoManager");
            throw null;
        }
        String newName = photoManager.getNewName(file);
        File file2 = new File(this.currentDraftFolder, newName + ".jpg");
        PhotoManager photoManager2 = this.photoManager;
        if (photoManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("photoManager");
            throw null;
        }
        String uri = photoManager2.getUri(file2);
        Intrinsics.checkExpressionValueIsNotNull(uri, "photoManager.getUri(file)");
        return uri;
    }
}
