package com.narvii.scene.template;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.media.MediaPickerFragment;
import com.narvii.mediaeditor.R;
import com.narvii.model.Blog;
import com.narvii.model.LinkSummary;
import com.narvii.model.Media;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.notification.Notification;
import com.narvii.photos.PhotoManager;
import com.narvii.post.DraftManager;
import com.narvii.pre_editing.MediaPreEditingActivityKt;
import com.narvii.scene.SceneConstant;
import com.narvii.scene.helper.SceneListHelper;
import com.narvii.scene.model.SceneInfo;
import com.narvii.scene.model.TemplateConfig;
import com.narvii.scene.notification.CloseSceneTemplateObject;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.scene.template.SceneTemplateGeneratorFragment;
import com.narvii.scene.template.SceneTemplateHelper;
import com.narvii.scene.template.data.SceneTemplateExtraInfo;
import com.narvii.scene.template.view.SceneTemplateMaterialSortLayout;
import com.narvii.scene.view.ProgressRingDialog;
import com.narvii.theme.ThemeImage;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.OnPreventRepeatedClickListener;
import com.narvii.util.TimeUtils;
import com.narvii.util.Utils;
import com.narvii.util.WebMediaExtractor;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.VideoManager;
import com.narvii.videotemplate.Template;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PickerSelectedView;
import com.narvii.widget.ThumbImageView;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: SceneTemplateGeneratorFragment.kt */
/* loaded from: classes3.dex */
public final class SceneTemplateGeneratorFragment extends NVFragment implements MediaPickerFragment.OnResultListener, SceneTemplateHelper.OnCompileListener, DialogInterface.OnCancelListener, SceneTemplateMaterialSortLayout.OnRemoveItemListener, SceneTemplateMaterialSortLayout.OnViewClickListener {
    public static final int CROP_IMAGE = 64833;
    private HashMap _$_findViewCache;
    public Adapter adapter;
    private Function3<? super Media, ? super Boolean, ? super Boolean, Unit> addEntry;
    private Blog blog;
    private SelectedEntry curCropEntry;
    private SelectedEntry curTrimEntry;
    private final Lazy downLoadImageHelper$delegate;
    private String draftId;
    private final Lazy draftManager$delegate;
    private final List<Entry> entryList = new ArrayList();
    private final Lazy loadingBar$delegate;
    private int maxSelectedEntryCount;
    public MediaPickerFragment mediaPicker;
    private int minSelectedEntryCount;
    private final Lazy photoManager$delegate;
    private final Lazy progressDialog$delegate;
    public RecyclerView recyclerView;
    private SceneInfo sceneInfo;
    private final Lazy sceneListHelper$delegate;
    private final Lazy sceneTemplateHelper$delegate;
    private final Lazy selectImageDialog$delegate;
    public SceneTemplateMaterialSortLayout sortLayout;
    public Button submitButton;
    private TemplateConfig templateConfig;
    private String temporaryDraftId;
    private WebMediaExtractor webMediaExtractor;
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateGeneratorFragment.class), "draftManager", "getDraftManager()Lcom/narvii/post/DraftManager;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateGeneratorFragment.class), "photoManager", "getPhotoManager()Lcom/narvii/photos/PhotoManager;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateGeneratorFragment.class), "selectImageDialog", "getSelectImageDialog()Lcom/narvii/widget/ACMAlertDialog;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateGeneratorFragment.class), "sceneTemplateHelper", "getSceneTemplateHelper()Lcom/narvii/scene/template/SceneTemplateHelper;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateGeneratorFragment.class), "downLoadImageHelper", "getDownLoadImageHelper()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateGeneratorFragment.class), "progressDialog", "getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateGeneratorFragment.class), "loadingBar", "getLoadingBar()Lcom/narvii/util/dialog/ProgressDialog;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SceneTemplateGeneratorFragment.class), "sceneListHelper", "getSceneListHelper()Lcom/narvii/scene/helper/SceneListHelper;"))};
    public static final Companion Companion = new Companion(null);

    /* compiled from: SceneTemplateGeneratorFragment.kt */
    public interface ItemClickListener {
        void onClick(View view, int i, Entry entry);
    }

    private final SceneTemplateImageDownloadHelper getDownLoadImageHelper() {
        Lazy lazy = this.downLoadImageHelper$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (SceneTemplateImageDownloadHelper) lazy.getValue();
    }

    private final SceneListHelper getSceneListHelper() {
        Lazy lazy = this.sceneListHelper$delegate;
        KProperty kProperty = $$delegatedProperties[7];
        return (SceneListHelper) lazy.getValue();
    }

    private final SceneTemplateHelper getSceneTemplateHelper() {
        Lazy lazy = this.sceneTemplateHelper$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (SceneTemplateHelper) lazy.getValue();
    }

    private final ACMAlertDialog getSelectImageDialog() {
        Lazy lazy = this.selectImageDialog$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (ACMAlertDialog) lazy.getValue();
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

    public final DraftManager getDraftManager() {
        Lazy lazy = this.draftManager$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (DraftManager) lazy.getValue();
    }

    public final ProgressDialog getLoadingBar() {
        Lazy lazy = this.loadingBar$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (ProgressDialog) lazy.getValue();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "VideoTemplateMediaPicker";
    }

    public final PhotoManager getPhotoManager() {
        Lazy lazy = this.photoManager$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (PhotoManager) lazy.getValue();
    }

    public final ProgressRingDialog getProgressDialog() {
        Lazy lazy = this.progressDialog$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (ProgressRingDialog) lazy.getValue();
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public SceneTemplateGeneratorFragment() {
        String string = UUID.randomUUID().toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "UUID.randomUUID().toString()");
        this.temporaryDraftId = string;
        this.draftManager$delegate = LazyKt__LazyJVMKt.lazy(new Function0<DraftManager>() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$draftManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DraftManager invoke() {
                return (DraftManager) this.this$0.getService(EntryManager.ENTRY_DRAFT);
            }
        });
        this.photoManager$delegate = LazyKt__LazyJVMKt.lazy(new Function0<PhotoManager>() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$photoManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final PhotoManager invoke() {
                return (PhotoManager) this.this$0.getService("photo");
            }
        });
        this.selectImageDialog$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ACMAlertDialog>() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$selectImageDialog$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ACMAlertDialog invoke() {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.this$0.getContext());
                aCMAlertDialog.setMessage(this.this$0.getString(R.string.select_image_or_video_hint));
                aCMAlertDialog.addButton(R.string.got_it, new View.OnClickListener() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$selectImageDialog$2$1$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                    }
                });
                return aCMAlertDialog;
            }
        });
        this.sceneTemplateHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<SceneTemplateHelper>() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$sceneTemplateHelper$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SceneTemplateHelper invoke() {
                SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment = this.this$0;
                return new SceneTemplateHelper(sceneTemplateGeneratorFragment, sceneTemplateGeneratorFragment.getDraftFile());
            }
        });
        this.downLoadImageHelper$delegate = LazyKt__LazyJVMKt.lazy(new SceneTemplateGeneratorFragment$downLoadImageHelper$2(this));
        this.progressDialog$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ProgressRingDialog>() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$progressDialog$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ProgressRingDialog invoke() {
                Context context = this.this$0.getContext();
                if (context != null) {
                    Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
                    ProgressRingDialog progressRingDialog = new ProgressRingDialog(context);
                    progressRingDialog.setPromptTitle(R.string.normal_loading);
                    progressRingDialog.setPromptText(R.string.do_not_close_and_lock_your_device);
                    progressRingDialog.setCancelable(true);
                    progressRingDialog.setCanceledOnTouchOutside(true);
                    progressRingDialog.setOnCancelListener(this.this$0);
                    return progressRingDialog;
                }
                Intrinsics.throwNpe();
                throw null;
            }
        });
        this.loadingBar$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ProgressDialog>() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$loadingBar$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ProgressDialog invoke() {
                return new ProgressDialog(this.this$0.getContext());
            }
        });
        this.addEntry = new Function3<Media, Boolean, Boolean, Unit>() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$addEntry$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Media media, Boolean bool, Boolean bool2) {
                invoke(media, bool.booleanValue(), bool2.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Media media, boolean z, boolean z2) {
                Intrinsics.checkParameterIsNotNull(media, "media");
                boolean z3 = z2 && this.this$0.isSupportFormat(media);
                SceneTemplateGeneratorFragment.Entry entry = new SceneTemplateGeneratorFragment.Entry(null, media, z3, 0, z3, 1, null);
                this.this$0.getEntryList().add(this.this$0.getEntryList().size() - 1, entry);
                if (z) {
                    this.this$0.selectedEntry(entry);
                }
            }
        };
        this.sceneListHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<SceneListHelper>() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$sceneListHelper$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SceneListHelper invoke() {
                return new SceneListHelper(this.this$0);
            }
        });
    }

    /* compiled from: SceneTemplateGeneratorFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            return recyclerView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        throw null;
    }

    public final void setRecyclerView(RecyclerView recyclerView) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "<set-?>");
        this.recyclerView = recyclerView;
    }

    public final SceneTemplateMaterialSortLayout getSortLayout() {
        SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = this.sortLayout;
        if (sceneTemplateMaterialSortLayout != null) {
            return sceneTemplateMaterialSortLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sortLayout");
        throw null;
    }

    public final void setSortLayout(SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout) {
        Intrinsics.checkParameterIsNotNull(sceneTemplateMaterialSortLayout, "<set-?>");
        this.sortLayout = sceneTemplateMaterialSortLayout;
    }

    public final Button getSubmitButton() {
        Button button = this.submitButton;
        if (button != null) {
            return button;
        }
        Intrinsics.throwUninitializedPropertyAccessException("submitButton");
        throw null;
    }

    public final void setSubmitButton(Button button) {
        Intrinsics.checkParameterIsNotNull(button, "<set-?>");
        this.submitButton = button;
    }

    public final Adapter getAdapter() {
        Adapter adapter = this.adapter;
        if (adapter != null) {
            return adapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        throw null;
    }

    public final void setAdapter(Adapter adapter) {
        Intrinsics.checkParameterIsNotNull(adapter, "<set-?>");
        this.adapter = adapter;
    }

    public final MediaPickerFragment getMediaPicker() {
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        if (mediaPickerFragment != null) {
            return mediaPickerFragment;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mediaPicker");
        throw null;
    }

    public final void setMediaPicker(MediaPickerFragment mediaPickerFragment) {
        Intrinsics.checkParameterIsNotNull(mediaPickerFragment, "<set-?>");
        this.mediaPicker = mediaPickerFragment;
    }

    public final Blog getBlog() {
        return this.blog;
    }

    public final void setBlog(Blog blog) {
        this.blog = blog;
    }

    public final TemplateConfig getTemplateConfig() {
        return this.templateConfig;
    }

    public final void setTemplateConfig(TemplateConfig templateConfig) {
        this.templateConfig = templateConfig;
    }

    public final List<Entry> getEntryList() {
        return this.entryList;
    }

    public final int getMaxSelectedEntryCount() {
        return this.maxSelectedEntryCount;
    }

    public final void setMaxSelectedEntryCount(int i) {
        this.maxSelectedEntryCount = i;
    }

    public final int getMinSelectedEntryCount() {
        return this.minSelectedEntryCount;
    }

    public final void setMinSelectedEntryCount(int i) {
        this.minSelectedEntryCount = i;
    }

    public final WebMediaExtractor getWebMediaExtractor() {
        return this.webMediaExtractor;
    }

    public final void setWebMediaExtractor(WebMediaExtractor webMediaExtractor) {
        this.webMediaExtractor = webMediaExtractor;
    }

    public final SelectedEntry getCurTrimEntry() {
        return this.curTrimEntry;
    }

    public final void setCurTrimEntry(SelectedEntry selectedEntry) {
        this.curTrimEntry = selectedEntry;
    }

    public final SelectedEntry getCurCropEntry() {
        return this.curCropEntry;
    }

    public final void setCurCropEntry(SelectedEntry selectedEntry) {
        this.curCropEntry = selectedEntry;
    }

    public final String getTemporaryDraftId() {
        return this.temporaryDraftId;
    }

    public final void setTemporaryDraftId(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.temporaryDraftId = str;
    }

    public final String getDraftId() {
        return this.draftId;
    }

    public final void setDraftId(String str) {
        this.draftId = str;
    }

    public final SceneInfo getSceneInfo() {
        return this.sceneInfo;
    }

    public final void setSceneInfo(SceneInfo sceneInfo) {
        this.sceneInfo = sceneInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File getDraftFile() {
        File file;
        if (TextUtils.isEmpty(this.draftId)) {
            file = new File(SceneTemplateHelperKt.getTemporaryDraftRootDir(), this.temporaryDraftId);
        } else {
            file = getDraftManager().getDir(this.draftId);
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        Intrinsics.checkExpressionValueIsNotNull(file, "file");
        return file;
    }

    public final Function3<Media, Boolean, Boolean, Unit> getAddEntry() {
        return this.addEntry;
    }

    public final void setAddEntry(Function3<? super Media, ? super Boolean, ? super Boolean, Unit> function3) {
        Intrinsics.checkParameterIsNotNull(function3, "<set-?>");
        this.addEntry = function3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean selectedEntry(Entry entry) {
        int i = this.maxSelectedEntryCount;
        SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = this.sortLayout;
        if (sceneTemplateMaterialSortLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sortLayout");
            throw null;
        }
        if (i <= sceneTemplateMaterialSortLayout.getDatas().size()) {
            return false;
        }
        if (!entry.getCanSelected()) {
            showShortToast(entry.isVideo() ? R.string.invalid_input : R.string.invalid_input_image);
            return false;
        }
        entry.setSelectCount(entry.getSelectCount() + 1);
        Entry entryCopy$default = Entry.copy$default(entry, null, null, false, 0, false, 31, null);
        entryCopy$default.setId(entry.getSelectId());
        int i2 = 4;
        if (entryCopy$default.isHttpEntry() && !entry.isVideo()) {
            i2 = 2;
        }
        String id = entryCopy$default.getId();
        Media media = (Media) JacksonUtils.readAs(JacksonUtils.writeAsString(entryCopy$default.getMedia()), Media.class);
        long j = 0;
        TemplateConfig templateConfig = this.templateConfig;
        SelectedEntry selectedEntry = new SelectedEntry(id, media, i2, j, templateConfig != null ? templateConfig.maxInputLengthMs : ScenePollPlayView.POLL_COUNT_DOWN_MS, 0, null, null, 224, null);
        SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout2 = this.sortLayout;
        if (sceneTemplateMaterialSortLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sortLayout");
            throw null;
        }
        sceneTemplateMaterialSortLayout2.addData(selectedEntry);
        invalidateOptionsMenu();
        if (i2 == 2) {
            getDownLoadImageHelper().downloadMedia(entryCopy$default);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isSupportFormat(Media media) {
        if (media.isVideo()) {
            TemplateConfig templateConfig = this.templateConfig;
            if (templateConfig != null) {
                return templateConfig.videoEnabled;
            }
            return false;
        }
        String str = media.url;
        if (str == null) {
            str = "";
        }
        if (isSupportFormat(str)) {
            return true;
        }
        String str2 = media.fileName;
        if (str2 == null) {
            str2 = "";
        }
        return isSupportFormat(str2);
    }

    private final boolean isSupportFormat(String str) {
        if (str != null) {
            String lowerCase = str.toLowerCase();
            Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase()");
            return StringsKt__StringsKt.contains$default(lowerCase, ".jpg", false, 2, null) || StringsKt__StringsKt.contains$default(lowerCase, ".jpeg", false, 2, null) || StringsKt__StringsKt.contains$default(lowerCase, ".gif", false, 2, null) || StringsKt__StringsKt.contains$default(lowerCase, ".png", false, 2, null);
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("blogPost", JacksonUtils.writeAsString(this.blog));
        outState.putString("templateConfig", JacksonUtils.writeAsString(this.templateConfig));
        outState.putString("sceneInfo", JacksonUtils.writeAsString(this.sceneInfo));
        outState.putString("draftId", this.draftId);
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(1908255);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v9, types: [com.narvii.scene.template.SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1, java.lang.Runnable] */
    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        MediaPickerFragment mediaPickerFragment;
        LinkSummary linkSummary;
        String str;
        List<Media> list;
        super.onCreate(bundle);
        setActionBarTitleColor(ContextCompat.getColor(getContext(), R.color.white));
        setTitle(R.string.photos_or_videos);
        setHasOptionsMenu(true);
        if (bundle == null) {
            this.blog = (Blog) JacksonUtils.readAs(getStringParam("blogPost"), Blog.class);
            this.templateConfig = (TemplateConfig) JacksonUtils.readAs(getStringParam("templateConfig"), TemplateConfig.class);
            this.sceneInfo = (SceneInfo) JacksonUtils.readAs(getStringParam("sceneInfo"), SceneInfo.class);
            this.draftId = getStringParam("draftId");
        } else {
            this.blog = (Blog) JacksonUtils.readAs(bundle.getString("blogPost"), Blog.class);
            this.templateConfig = (TemplateConfig) JacksonUtils.readAs(bundle.getString("templateConfig"), TemplateConfig.class);
            this.sceneInfo = (SceneInfo) JacksonUtils.readAs(bundle.getString("sceneInfo"), SceneInfo.class);
            this.draftId = bundle.getString("draftId");
        }
        TemplateConfig templateConfig = this.templateConfig;
        if (templateConfig == null) {
            finish();
            return;
        }
        if (templateConfig != null) {
            this.minSelectedEntryCount = templateConfig.minInputCount;
            if (templateConfig != null) {
                this.maxSelectedEntryCount = templateConfig.maxInputCount;
                this.entryList.add(getAddMoreEntry());
                Blog blog = this.blog;
                if (blog != null && (list = blog.mediaList) != null) {
                    ArrayList<Media> arrayList = new ArrayList();
                    Iterator<T> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Object next = it.next();
                        if (!(((Media) next).type == 103)) {
                            arrayList.add(next);
                        }
                    }
                    for (Media it2 : arrayList) {
                        Function3<? super Media, ? super Boolean, ? super Boolean, Unit> function3 = this.addEntry;
                        Intrinsics.checkExpressionValueIsNotNull(it2, "it");
                        function3.invoke(it2, false, true);
                    }
                }
                Blog blog2 = this.blog;
                if (blog2 != null && (linkSummary = blog2.getLinkSummary()) != null && (str = linkSummary.link) != null) {
                    final ProgressDialog progressDialog = new ProgressDialog(getContext());
                    progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$1
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            this.this$0.finish();
                        }
                    });
                    progressDialog.show();
                    final ?? r2 = new Runnable() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$onCreate$3$dismissRunnable$1
                        @Override // java.lang.Runnable
                        public void run() {
                            progressDialog.dismiss();
                        }
                    };
                    final Context context = getContext();
                    Intrinsics.checkExpressionValueIsNotNull(context, "context");
                    WebMediaExtractor webMediaExtractor = new WebMediaExtractor(context) { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment$onCreate$$inlined$let$lambda$2
                        private int count;

                        @Override // com.narvii.util.WebMediaExtractor
                        protected void onVideoFound(String url) {
                            Intrinsics.checkParameterIsNotNull(url, "url");
                        }

                        public final int getCount() {
                            return this.count;
                        }

                        public final void setCount(int i) {
                            this.count = i;
                        }

                        @Override // com.narvii.util.WebMediaExtractor
                        public void onFailed(int i, String str2) {
                            NVToast.makeText(this.getContext(), i + ": " + str2, 0).show();
                            Utils.handler.removeCallbacks(r2);
                            progressDialog.dismiss();
                        }

                        @Override // com.narvii.util.WebMediaExtractor
                        public void onFinished(Collection<String> images, Collection<String> videos) {
                            Intrinsics.checkParameterIsNotNull(images, "images");
                            Intrinsics.checkParameterIsNotNull(videos, "videos");
                            Utils.handler.removeCallbacks(r2);
                            progressDialog.dismiss();
                        }

                        @Override // com.narvii.util.WebMediaExtractor
                        protected void onImageFound(String url) {
                            Intrinsics.checkParameterIsNotNull(url, "url");
                            Function3<Media, Boolean, Boolean, Unit> addEntry = this.getAddEntry();
                            Media media = new Media();
                            media.type = 100;
                            media.url = url;
                            addEntry.invoke(media, false, true);
                            SceneTemplateGeneratorFragment.Adapter adapter = this.getAdapter();
                            if (adapter != null) {
                                adapter.notifyDataSetChanged();
                            }
                            this.count++;
                            if (this.count >= 12) {
                                Utils.handler.removeCallbacks(r2);
                                Utils.handler.postDelayed(r2, 1500L);
                            }
                        }
                    };
                    webMediaExtractor.extract(str);
                    this.webMediaExtractor = webMediaExtractor;
                    Utils.handler.postDelayed(r2, 20000L);
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
                this.mediaPicker = mediaPickerFragment;
                MediaPickerFragment mediaPickerFragment2 = this.mediaPicker;
                if (mediaPickerFragment2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mediaPicker");
                    throw null;
                }
                mediaPickerFragment2.addOnResultListener(this);
                if (this.blog != null || this.sceneInfo == null) {
                    return;
                }
                Utils.post(new Runnable() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment.onCreate.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        SceneTemplateGeneratorFragment.this.pickResource();
                    }
                });
                return;
            }
            Intrinsics.throwNpe();
            throw null;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        int i;
        MenuItem menuItemAdd;
        MenuItem actionView;
        super.onCreateOptionsMenu(menu, menuInflater);
        View viewInflate = getLayoutInflater().inflate(R.layout.actionbar_btn, (ViewGroup) null);
        View viewFindViewById = viewInflate.findViewById(R.id.actionbar_right_btn_btn);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "v.findViewById(R.id.actionbar_right_btn_btn)");
        this.submitButton = (Button) viewFindViewById;
        Button button = this.submitButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            throw null;
        }
        ViewGroup.LayoutParams layoutParams = button.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (Build.VERSION.SDK_INT >= 17) {
            marginLayoutParams.setMarginEnd(Utils.dpToPxInt(getContext(), 10.0f));
        } else {
            marginLayoutParams.rightMargin = Utils.dpToPxInt(getContext(), 10.0f);
        }
        Button button2 = this.submitButton;
        if (button2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            throw null;
        }
        button2.setText(R.string.next);
        Button button3 = this.submitButton;
        if (button3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            throw null;
        }
        button3.setTextColor(-1);
        Button button4 = this.submitButton;
        if (button4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            throw null;
        }
        button4.setBackground(NVActivity.getRightButtonBackground((int) 4278244020L));
        Button button5 = this.submitButton;
        if (button5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            throw null;
        }
        button5.setLayoutParams(marginLayoutParams);
        Button button6 = this.submitButton;
        if (button6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            throw null;
        }
        button6.setOnClickListener(new OnPreventRepeatedClickListener(new View.OnClickListener() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment.onCreateOptionsMenu.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                SceneTemplateGeneratorFragment.this.submit();
            }
        }));
        Button button7 = this.submitButton;
        if (button7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            throw null;
        }
        button7.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment.onCreateOptionsMenu.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                SceneTemplateGeneratorFragment.this.submit();
            }
        });
        if (menu == null || (menuItemAdd = menu.add(0, (i = R.string.post_submit), 0, i)) == null || (actionView = menuItemAdd.setActionView(viewInflate)) == null) {
            return;
        }
        actionView.setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean zCheckSubmit = checkSubmit();
        Button button = this.submitButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            throw null;
        }
        button.setEnabled(zCheckSubmit);
        Button button2 = this.submitButton;
        if (button2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            throw null;
        }
        button2.setAlpha(zCheckSubmit ? 1.0f : 0.5f);
        super.onPrepareOptionsMenu(menu);
    }

    private final boolean checkSubmit() {
        if (this.templateConfig == null) {
            return false;
        }
        SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = this.sortLayout;
        if (sceneTemplateMaterialSortLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sortLayout");
            throw null;
        }
        int size = sceneTemplateMaterialSortLayout.getDatas().size();
        TemplateConfig templateConfig = this.templateConfig;
        if (templateConfig != null) {
            return size >= templateConfig.minInputCount;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onStop() {
        getProgressDialog().cancel();
        super.onStop();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        if (mediaPickerFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPicker");
            throw null;
        }
        mediaPickerFragment.removeOnResultListener(this);
        WebMediaExtractor webMediaExtractor = this.webMediaExtractor;
        if (webMediaExtractor != null) {
            webMediaExtractor.abort();
        }
        super.onDestroy();
    }

    private final Entry getAddMoreEntry() {
        return new Entry(null, null, false, 0, false, 31, null);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_scene_template_generator, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.recycler_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.recycler_view)");
        this.recyclerView = (RecyclerView) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.sort_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "view.findViewById(R.id.sort_layout)");
        this.sortLayout = (SceneTemplateMaterialSortLayout) viewFindViewById2;
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            throw null;
        }
        recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 3));
        RecyclerView recyclerView2 = this.recyclerView;
        if (recyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            throw null;
        }
        recyclerView2.addItemDecoration(new GridItemDecoration());
        this.adapter = new Adapter();
        RecyclerView recyclerView3 = this.recyclerView;
        if (recyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            throw null;
        }
        Adapter adapter = this.adapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        recyclerView3.setAdapter(adapter);
        SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = this.sortLayout;
        if (sceneTemplateMaterialSortLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sortLayout");
            throw null;
        }
        TemplateConfig templateConfig = this.templateConfig;
        sceneTemplateMaterialSortLayout.setTotalCount(templateConfig != null ? templateConfig.maxInputCount : 0);
        SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout2 = this.sortLayout;
        if (sceneTemplateMaterialSortLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sortLayout");
            throw null;
        }
        sceneTemplateMaterialSortLayout2.setOnRemoveItemListener(this);
        SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout3 = this.sortLayout;
        if (sceneTemplateMaterialSortLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sortLayout");
            throw null;
        }
        sceneTemplateMaterialSortLayout3.setOnViewClickListener(this);
        WebMediaExtractor webMediaExtractor = this.webMediaExtractor;
        if (webMediaExtractor != null) {
            View viewFindViewById3 = view.findViewById(R.id.wme_frame);
            if (viewFindViewById3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.FrameLayout");
            }
            ((FrameLayout) viewFindViewById3).addView(webMediaExtractor.getAttachView(), new FrameLayout.LayoutParams(-1, -1));
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Override // com.narvii.scene.template.view.SceneTemplateMaterialSortLayout.OnRemoveItemListener
    public void onRemove(SelectedEntry entry) {
        Intrinsics.checkParameterIsNotNull(entry, "entry");
        unSelectEntry(entry);
    }

    private final void unSelectEntry(SelectedEntry selectedEntry) {
        Object next;
        getDownLoadImageHelper().cancelRequest(selectedEntry);
        Iterator<T> it = this.entryList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (((Entry) next).equalsSelectedEntry(selectedEntry)) {
                    break;
                }
            }
        }
        Entry entry = (Entry) next;
        if (entry != null) {
            entry.setSelectCount(entry.getSelectCount() - 1);
            updateItemView();
        }
    }

    @Override // com.narvii.scene.template.view.SceneTemplateMaterialSortLayout.OnViewClickListener
    public void onItemClick(SelectedEntry entry) {
        Intrinsics.checkParameterIsNotNull(entry, "entry");
        if (entry.isVideo()) {
            this.curTrimEntry = entry;
            TemplateConfig templateConfig = this.templateConfig;
            long j = templateConfig != null ? templateConfig.maxInputLengthMs : DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS;
            Media media = entry.getMedia();
            if (media != null) {
                MediaPreEditingActivityKt.startPreEditActivity(this, media, entry.getVideoTrimStart(), entry.getVideoTrimEnd(), j, 1);
                return;
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        if (entry.isImage() && entry.getState() == 4) {
            Media media2 = entry.getMedia();
            if (Utils.isGif(media2 != null ? media2.url : null)) {
                Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryActivity.class);
                intent.putExtra("list", JacksonUtils.writeAsString(Collections.singletonList(entry.getMedia())));
                intent.putExtra("position", 0);
                intent.putExtra("preview", true);
                startActivity(intent);
                return;
            }
            this.curCropEntry = entry;
            File file = new File(getDraftFile().getAbsolutePath() + File.separator, "image_" + UUID.randomUUID() + ".jpg");
            StringBuilder sb = new StringBuilder();
            sb.append("ndc://fragment/");
            sb.append(CropTemplateImageFragment.class.getName());
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(sb.toString()));
            Media media3 = entry.getMedia();
            intent2.putExtra("imageUrl", media3 != null ? media3.url : null);
            intent2.putExtra("imageId", entry.getId());
            intent2.putExtra("outputUrl", getPhotoManager().getUri(file));
            if (entry.getCrop() != null) {
                intent2.putExtra("themeImage", JacksonUtils.writeAsString(entry.getCrop()));
            }
            startActivityForResult(intent2, CROP_IMAGE);
        }
    }

    @Override // com.narvii.scene.template.view.SceneTemplateMaterialSortLayout.OnViewClickListener
    public void onRetryClick(SelectedEntry entry) {
        Intrinsics.checkParameterIsNotNull(entry, "entry");
        getDownLoadImageHelper().downloadMedia(entry);
    }

    @Override // com.narvii.scene.template.view.SceneTemplateMaterialSortLayout.OnViewClickListener
    public void onBackgroundItemClick() {
        if (getSelectImageDialog().isShowing()) {
            return;
        }
        getSelectImageDialog().show();
    }

    public final void submit() throws IOException {
        List<Media> entryMediaList = getEntryMediaList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Media media : entryMediaList) {
            if (media.isVideo()) {
                linkedHashSet.add("Video");
            } else if (Utils.isGif(media.url)) {
                linkedHashSet.add("Gif");
            } else {
                linkedHashSet.add("Image");
            }
        }
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("CreateNow").extraParam("mediaCount", Integer.valueOf(entryMediaList.size())).extraParam("mediaType", TextUtils.join(",", linkedHashSet)).send();
        SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = this.sortLayout;
        if (sceneTemplateMaterialSortLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sortLayout");
            throw null;
        }
        Iterator<SelectedEntry> it = sceneTemplateMaterialSortLayout.getDatas().iterator();
        while (it.hasNext()) {
            if (it.next().getState() != 4) {
                showShortToast(getString(R.string.some_images_are_loading));
                return;
            }
        }
        ArrayList arrayList = new ArrayList();
        SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout2 = this.sortLayout;
        if (sceneTemplateMaterialSortLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sortLayout");
            throw null;
        }
        for (SelectedEntry selectedEntry : sceneTemplateMaterialSortLayout2.getDatas()) {
            Media media2 = selectedEntry.getMedia();
            if (media2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            SceneTemplateExtraInfo sceneTemplateExtraInfo = new SceneTemplateExtraInfo();
            sceneTemplateExtraInfo.videoTrimStart = selectedEntry.getVideoTrimStart();
            sceneTemplateExtraInfo.videoTrimEnd = selectedEntry.getVideoTrimEnd();
            sceneTemplateExtraInfo.crop = selectedEntry.getCrop();
            arrayList.add(new Pair<>(media2, sceneTemplateExtraInfo));
        }
        getSceneTemplateHelper().setOnCompileListener(this);
        SceneTemplateHelper sceneTemplateHelper = getSceneTemplateHelper();
        TemplateConfig templateConfig = this.templateConfig;
        if (templateConfig == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        sceneTemplateHelper.startCompile(arrayList, templateConfig, "storyTemplate");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSelectEntry(SelectedEntry selectedEntry) {
        SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = this.sortLayout;
        if (sceneTemplateMaterialSortLayout != null) {
            sceneTemplateMaterialSortLayout.updateData(selectedEntry);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("sortLayout");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateItemView() {
        Adapter adapter = this.adapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        adapter.notifyDataSetChanged();
        invalidateOptionsMenu();
    }

    private final File getCacheDir() {
        Context context = getContext();
        if (context != null) {
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            File file = new File(context.getCacheDir(), "storyTemplate");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void pickResource() {
        Bundle bundle = new Bundle();
        bundle.putString("type", "photo");
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.maximum = 20;
        mediaPickerConfiguration.optionList = 24;
        mediaPickerConfiguration.galleryVideoMode = 0;
        mediaPickerConfiguration.galleryPhotoMode = 1;
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        if (mediaPickerFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPicker");
            throw null;
        }
        mediaPickerFragment.pickCallback = null;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.pickCallbackParams = null;
            if (mediaPickerFragment != null) {
                mediaPickerFragment.pickMedia((File) null, bundle, mediaPickerConfiguration);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPicker");
                throw null;
            }
        }
        Intrinsics.throwUninitializedPropertyAccessException("mediaPicker");
        throw null;
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(final List<Media> list, Bundle bundle) {
        boolean z = false;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((Media) it.next()).isVideo()) {
                    z = true;
                }
            }
        }
        if (z) {
            getLoadingBar().show();
            AsyncTask.execute(new Runnable() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment.onPickMediaResult.2
                @Override // java.lang.Runnable
                public final void run() {
                    final ArrayList arrayList = new ArrayList();
                    VideoManager videoManager = (VideoManager) SceneTemplateGeneratorFragment.this.getService("videoManager");
                    PhotoManager photoManager = (PhotoManager) SceneTemplateGeneratorFragment.this.getService("photo");
                    List<Media> list2 = list;
                    if (list2 != null) {
                        for (Media media : list2) {
                            if (media.isVideo()) {
                                File path = photoManager.getPath(media.url);
                                Intrinsics.checkExpressionValueIsNotNull(path, "photoManager.getPath(it.url)");
                                String absolutePath = path.getAbsolutePath();
                                Intrinsics.checkExpressionValueIsNotNull(absolutePath, "photoManager.getPath(it.url).absolutePath");
                                StreamInfo streamInfoFetchStreamInfoSync = videoManager.fetchStreamInfoSync(absolutePath);
                                arrayList.add(Boolean.valueOf(streamInfoFetchStreamInfoSync.isVCodecInWhiteList() && streamInfoFetchStreamInfoSync.isResolutionValid()));
                            } else {
                                arrayList.add(true);
                            }
                        }
                    }
                    Utils.post(new Runnable() { // from class: com.narvii.scene.template.SceneTemplateGeneratorFragment.onPickMediaResult.2.2
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public final void run() {
                            SceneTemplateGeneratorFragment.this.getLoadingBar().dismiss();
                            List<Media> list3 = list;
                            if (list3 != null) {
                                int i = 0;
                                for (Media media2 : list3) {
                                    Function3<Media, Boolean, Boolean, Unit> addEntry = SceneTemplateGeneratorFragment.this.getAddEntry();
                                    Object obj = arrayList.get(i);
                                    Intrinsics.checkExpressionValueIsNotNull(obj, "validFormatList[index]");
                                    addEntry.invoke(media2, true, obj);
                                    i++;
                                }
                                SceneTemplateGeneratorFragment.this.updateItemView();
                                return;
                            }
                            Intrinsics.throwNpe();
                            throw null;
                        }
                    });
                }
            });
            return;
        }
        if (list != null) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                this.addEntry.invoke((Media) it2.next(), true, true);
            }
        }
        updateItemView();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 != -1 || intent == null) {
            return;
        }
        if (i == 64818) {
            SelectedEntry selectedEntry = this.curTrimEntry;
            if (selectedEntry != null) {
                selectedEntry.setVideoTrimStart(intent.getLongExtra("trimStartTime", 0L));
                selectedEntry.setVideoTrimEnd(intent.getLongExtra("trimEndTime", 0L));
                SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = this.sortLayout;
                if (sceneTemplateMaterialSortLayout == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sortLayout");
                    throw null;
                }
                sceneTemplateMaterialSortLayout.updateData(selectedEntry);
            }
            this.curTrimEntry = null;
            return;
        }
        if (i == 64833) {
            SelectedEntry selectedEntry2 = this.curCropEntry;
            if (selectedEntry2 != null) {
                ThemeImage themeImage = (ThemeImage) JacksonUtils.readAs(intent.getStringExtra("themeImage"), ThemeImage.class);
                String stringExtra = intent.getStringExtra("imageId");
                Media media = (Media) JacksonUtils.readAs(intent.getStringExtra("previewMedia"), Media.class);
                if (TextUtils.equals(stringExtra, selectedEntry2.getId())) {
                    selectedEntry2.setCrop(themeImage);
                    selectedEntry2.setPreviewMedia(media);
                }
                SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout2 = this.sortLayout;
                if (sceneTemplateMaterialSortLayout2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sortLayout");
                    throw null;
                }
                sceneTemplateMaterialSortLayout2.updateData(selectedEntry2, true);
            }
            this.curCropEntry = null;
        }
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

    private final List<Media> getEntryMediaList() {
        List<Entry> list = this.entryList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Entry entry = (Entry) obj;
            if (entry.isSelected() && entry.hasMedia()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Media media = ((Entry) it.next()).getMedia();
            if (media == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            arrayList2.add(media);
        }
        return CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        getSceneTemplateHelper().cancel();
    }

    @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
    public void onCompileStart(SceneTemplateHelper helper) {
        Intrinsics.checkParameterIsNotNull(helper, "helper");
        getProgressDialog().show();
    }

    @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
    public void onCompileProgress(SceneTemplateHelper helper, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(helper, "helper");
        getProgressDialog().updateProgress(i);
    }

    @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
    public void onCompileFinished(SceneTemplateHelper helper, Template template, String filePath, StreamInfo streamInfo) {
        Intrinsics.checkParameterIsNotNull(helper, "helper");
        Intrinsics.checkParameterIsNotNull(template, "template");
        Intrinsics.checkParameterIsNotNull(filePath, "filePath");
        Intrinsics.checkParameterIsNotNull(streamInfo, "streamInfo");
        if (isDestoryed()) {
            return;
        }
        if (getProgressDialog().isShowing()) {
            getProgressDialog().dismiss();
        }
        if (this.sceneInfo != null) {
            AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
            aVClipInfoPack.inputPath = filePath;
            aVClipInfoPack.originalInputPath = filePath;
            aVClipInfoPack.fileName = new File(filePath).getName();
            aVClipInfoPack.trimStartInMs = 0;
            aVClipInfoPack.trimEndInMs = Math.min(streamInfo.durationInMs, SceneConstant.getMaxSceneLengthMs());
            aVClipInfoPack.videoSource = 16;
            SceneInfo sceneInfo = this.sceneInfo;
            if (sceneInfo == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            sceneInfo.videoClips = CollectionsKt__CollectionsKt.arrayListOf(aVClipInfoPack);
            SceneInfo sceneInfo2 = this.sceneInfo;
            if (sceneInfo2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            sceneInfo2.template = template;
            getSceneListHelper().launchSceneEditor(this.sceneInfo, false, getDraftFile().getAbsolutePath(), 3, "");
            SceneInfo sceneInfo3 = this.sceneInfo;
            if (sceneInfo3 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            sendNotification(sceneInfo3);
        } else {
            Blog blog = this.blog;
            Context context = getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            getSceneListHelper().launchSceneEditor(SceneTemplateGeneratorFragmentKt.blogConvertToScene(blog, context, filePath, template, streamInfo), false, getDraftFile().getAbsolutePath(), 2, JacksonUtils.writeAsString(this.blog));
        }
        finish();
    }

    private final void sendNotification(SceneInfo sceneInfo) {
        CloseSceneTemplateObject closeSceneTemplateObject = new CloseSceneTemplateObject();
        closeSceneTemplateObject.id = sceneInfo.id;
        NotificationUtils.sendNotification(this, new Notification("new", closeSceneTemplateObject), false);
    }

    @Override // com.narvii.scene.template.SceneTemplateHelper.OnCompileListener
    public void onCompileFail(SceneTemplateHelper helper, int i, String str, Throwable th) {
        Intrinsics.checkParameterIsNotNull(helper, "helper");
        if (isDestoryed()) {
            return;
        }
        if (getProgressDialog().isShowing()) {
            getProgressDialog().dismiss();
        }
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(str);
        aCMAlertDialog.addButton(R.string.got_it, null);
        aCMAlertDialog.show();
    }

    /* compiled from: SceneTemplateGeneratorFragment.kt */
    public final class Adapter extends RecyclerView.Adapter<ViewHolder> {
        public Adapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment = SceneTemplateGeneratorFragment.this;
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_media_picker, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(pare…ia_picker, parent, false)");
            return new ViewHolder(sceneTemplateGeneratorFragment, viewInflate);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SceneTemplateGeneratorFragment.this.getEntryList().size();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            holder.updateView(SceneTemplateGeneratorFragment.this.getEntryList().get(i));
        }
    }

    /* compiled from: SceneTemplateGeneratorFragment.kt */
    public final class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener, NVImageView.OnImageChangedListener {
        private final View addLayout;
        private Entry entry;
        private final ThumbImageView image;
        private final View maskView;
        private final PickerSelectedView selectView;
        final /* synthetic */ SceneTemplateGeneratorFragment this$0;
        private final View videoLabel;
        private final TextView videoTime;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = sceneTemplateGeneratorFragment;
            View viewFindViewById = itemView.findViewById(R.id.image_view);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "itemView.findViewById(R.id.image_view)");
            this.image = (ThumbImageView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R.id.select);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "itemView.findViewById(R.id.select)");
            this.selectView = (PickerSelectedView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R.id.mask_view);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "itemView.findViewById(R.id.mask_view)");
            this.maskView = viewFindViewById3;
            View viewFindViewById4 = itemView.findViewById(R.id.layout_add);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "itemView.findViewById(R.id.layout_add)");
            this.addLayout = viewFindViewById4;
            View viewFindViewById5 = itemView.findViewById(R.id.media_picker_label);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "itemView.findViewById(R.id.media_picker_label)");
            this.videoLabel = viewFindViewById5;
            View viewFindViewById6 = itemView.findViewById(R.id.media_picker_video_time);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "itemView.findViewById(R.….media_picker_video_time)");
            this.videoTime = (TextView) viewFindViewById6;
            this.image.setOnClickListener(this);
            this.addLayout.setOnClickListener(this);
        }

        public final ThumbImageView getImage() {
            return this.image;
        }

        public final PickerSelectedView getSelectView() {
            return this.selectView;
        }

        public final View getMaskView() {
            return this.maskView;
        }

        public final View getAddLayout() {
            return this.addLayout;
        }

        public final View getVideoLabel() {
            return this.videoLabel;
        }

        public final TextView getVideoTime() {
            return this.videoTime;
        }

        public final Entry getEntry() {
            return this.entry;
        }

        public final void setEntry(Entry entry) {
            this.entry = entry;
        }

        public final void updateView(Entry entry) {
            String str;
            Intrinsics.checkParameterIsNotNull(entry, "entry");
            this.entry = entry;
            String str2 = null;
            if (entry.hasMedia()) {
                this.image.setVisibility(0);
                this.addLayout.setVisibility(8);
                if (entry.isVideo()) {
                    TextView textView = this.videoTime;
                    Media media = entry.getMedia();
                    textView.setText(TimeUtils.formatTimeDuration(media != null ? media.duration : 0L));
                    this.videoTime.setVisibility(0);
                    this.videoLabel.setVisibility(0);
                    ThumbImageView thumbImageView = this.image;
                    Media media2 = entry.getMedia();
                    if (media2 != null && (str = media2.coverImage) != null) {
                        str2 = str;
                    }
                    thumbImageView.setImageUrl(str2);
                } else {
                    this.image.setImageMedia(entry.getMedia());
                    this.videoTime.setVisibility(8);
                    this.videoLabel.setVisibility(8);
                }
                if (this.this$0.getWebMediaExtractor() != null) {
                    this.image.setTag(entry);
                    this.image.setOnImageChangedListener(this);
                }
            } else {
                this.image.setVisibility(8);
                this.image.setTag(null);
                this.addLayout.setVisibility(0);
                this.videoTime.setVisibility(8);
                this.videoLabel.setVisibility(8);
            }
            updateSelectStatus(entry);
            this.maskView.setVisibility((entry.getCanSelected() || !entry.hasMedia()) ? 8 : 0);
        }

        @Override // com.narvii.widget.NVImageView.OnImageChangedListener
        public void onImageChanged(NVImageView view, int i, Media media) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            if ((view.getTag() instanceof Entry) && i == 2) {
                List<Entry> entryList = this.this$0.getEntryList();
                Object tag = view.getTag();
                if (tag == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.scene.template.SceneTemplateGeneratorFragment.Entry");
                }
                entryList.remove((Entry) tag);
                this.this$0.getAdapter().notifyDataSetChanged();
            }
        }

        private final void updateSelectStatus(Entry entry) {
            if (entry.hasMedia()) {
                this.selectView.setVisibility(0);
                this.selectView.update(entry.isSelected());
            } else {
                this.selectView.setVisibility(8);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
            int i = R.id.image_view;
            if (numValueOf != null && numValueOf.intValue() == i) {
                Entry entry = this.entry;
                if (entry != null) {
                    if (entry.isSelected()) {
                        this.this$0.getSortLayout().deleteEntry(entry.getSelectId());
                        return;
                    }
                    if (this.this$0.getMaxSelectedEntryCount() > this.this$0.getSortLayout().getDatas().size()) {
                        if (this.this$0.selectedEntry(entry)) {
                            updateSelectStatus(entry);
                            return;
                        }
                        return;
                    } else {
                        SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment = this.this$0;
                        sceneTemplateGeneratorFragment.showShortToast(sceneTemplateGeneratorFragment.getString(R.string.reached_the_maximum_number));
                        return;
                    }
                }
                return;
            }
            int i2 = R.id.layout_add;
            if (numValueOf != null && numValueOf.intValue() == i2) {
                this.this$0.pickResource();
            }
        }
    }

    /* compiled from: SceneTemplateGeneratorFragment.kt */
    public static final class Entry {
        private boolean canSelected;
        private String id;
        private Media media;
        private int selectCount;
        private boolean supportFormat;

        public Entry() {
            this(null, null, false, 0, false, 31, null);
        }

        public static /* synthetic */ Entry copy$default(Entry entry, String str, Media media, boolean z, int i, boolean z2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = entry.id;
            }
            if ((i2 & 2) != 0) {
                media = entry.media;
            }
            Media media2 = media;
            if ((i2 & 4) != 0) {
                z = entry.canSelected;
            }
            boolean z3 = z;
            if ((i2 & 8) != 0) {
                i = entry.selectCount;
            }
            int i3 = i;
            if ((i2 & 16) != 0) {
                z2 = entry.supportFormat;
            }
            return entry.copy(str, media2, z3, i3, z2);
        }

        public final String component1() {
            return this.id;
        }

        public final Media component2() {
            return this.media;
        }

        public final boolean component3() {
            return this.canSelected;
        }

        public final int component4() {
            return this.selectCount;
        }

        public final boolean component5() {
            return this.supportFormat;
        }

        public final Entry copy(String id, Media media, boolean z, int i, boolean z2) {
            Intrinsics.checkParameterIsNotNull(id, "id");
            return new Entry(id, media, z, i, z2);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Entry) {
                    Entry entry = (Entry) obj;
                    if (Intrinsics.areEqual(this.id, entry.id) && Intrinsics.areEqual(this.media, entry.media)) {
                        if (this.canSelected == entry.canSelected) {
                            if (this.selectCount == entry.selectCount) {
                                if (this.supportFormat == entry.supportFormat) {
                                }
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            String str = this.id;
            int iHashCode = (str != null ? str.hashCode() : 0) * 31;
            Media media = this.media;
            int iHashCode2 = (iHashCode + (media != null ? media.hashCode() : 0)) * 31;
            boolean z = this.canSelected;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int i2 = (((iHashCode2 + i) * 31) + this.selectCount) * 31;
            boolean z2 = this.supportFormat;
            int i3 = z2;
            if (z2 != 0) {
                i3 = 1;
            }
            return i2 + i3;
        }

        public String toString() {
            return "Entry(id=" + this.id + ", media=" + this.media + ", canSelected=" + this.canSelected + ", selectCount=" + this.selectCount + ", supportFormat=" + this.supportFormat + ")";
        }

        public Entry(String id, Media media, boolean z, int i, boolean z2) {
            Intrinsics.checkParameterIsNotNull(id, "id");
            this.id = id;
            this.media = media;
            this.canSelected = z;
            this.selectCount = i;
            this.supportFormat = z2;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ Entry(String str, Media media, boolean z, int i, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i2 & 1) != 0) {
                str = UUID.randomUUID().toString();
                Intrinsics.checkExpressionValueIsNotNull(str, "UUID.randomUUID().toString()");
            }
            this(str, (i2 & 2) != 0 ? null : media, (i2 & 4) != 0 ? true : z, (i2 & 8) != 0 ? 0 : i, (i2 & 16) != 0 ? false : z2);
        }

        public final String getId() {
            return this.id;
        }

        public final void setId(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.id = str;
        }

        public final Media getMedia() {
            return this.media;
        }

        public final void setMedia(Media media) {
            this.media = media;
        }

        public final boolean getCanSelected() {
            return this.canSelected;
        }

        public final void setCanSelected(boolean z) {
            this.canSelected = z;
        }

        public final int getSelectCount() {
            return this.selectCount;
        }

        public final void setSelectCount(int i) {
            this.selectCount = i;
        }

        public final boolean getSupportFormat() {
            return this.supportFormat;
        }

        public final void setSupportFormat(boolean z) {
            this.supportFormat = z;
        }

        public final boolean hasMedia() {
            return this.media != null;
        }

        public final boolean isVideo() {
            Media media = this.media;
            if (media != null) {
                return media.isVideo();
            }
            return false;
        }

        public final boolean isImage() {
            Media media = this.media;
            if (media != null) {
                return media.isImage();
            }
            return false;
        }

        public final boolean isSelected() {
            return this.selectCount > 0;
        }

        public final boolean isHttpEntry() {
            if (!hasMedia()) {
                return false;
            }
            Media media = this.media;
            if (media == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            if (TextUtils.isEmpty(media.url)) {
                return false;
            }
            Media media2 = this.media;
            if (media2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            String str = media2.url;
            Intrinsics.checkExpressionValueIsNotNull(str, "media!!.url");
            if (!StringsKt__StringsJVMKt.startsWith$default(str, "http://", false, 2, null)) {
                Media media3 = this.media;
                if (media3 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                String str2 = media3.url;
                Intrinsics.checkExpressionValueIsNotNull(str2, "media!!.url");
                if (!StringsKt__StringsJVMKt.startsWith$default(str2, "https://", false, 2, null)) {
                    return false;
                }
            }
            return true;
        }

        public final String getSelectId() {
            return this.id + 'x' + this.selectCount;
        }

        public final boolean equalsSelectedEntry(SelectedEntry selectedEntry) {
            Intrinsics.checkParameterIsNotNull(selectedEntry, "selectedEntry");
            return StringsKt__StringsKt.contains$default(selectedEntry.getId(), this.id, false, 2, null);
        }
    }

    /* compiled from: SceneTemplateGeneratorFragment.kt */
    public final class GridItemDecoration extends RecyclerView.ItemDecoration {
        public GridItemDecoration() {
        }

        @Override // android.support.v7.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
            Intrinsics.checkParameterIsNotNull(outRect, "outRect");
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            Intrinsics.checkParameterIsNotNull(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int iDpToPx = (int) Utils.dpToPx(NVApplication.instance(), 2.0f);
            outRect.set(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
        }
    }

    /* compiled from: SceneTemplateGeneratorFragment.kt */
    public static final class SelectedEntry {
        private ThemeImage crop;
        private String id;
        private Media media;
        private Media previewMedia;
        private int progress;
        private int state;
        private long videoTrimEnd;
        private long videoTrimStart;

        public SelectedEntry() {
            this(null, null, 0, 0L, 0L, 0, null, null, 255, null);
        }

        public final String component1() {
            return this.id;
        }

        public final Media component2() {
            return this.media;
        }

        public final int component3() {
            return this.state;
        }

        public final long component4() {
            return this.videoTrimStart;
        }

        public final long component5() {
            return this.videoTrimEnd;
        }

        public final int component6() {
            return this.progress;
        }

        public final ThemeImage component7() {
            return this.crop;
        }

        public final Media component8() {
            return this.previewMedia;
        }

        public final SelectedEntry copy(String id, Media media, int i, long j, long j2, int i2, ThemeImage themeImage, Media media2) {
            Intrinsics.checkParameterIsNotNull(id, "id");
            return new SelectedEntry(id, media, i, j, j2, i2, themeImage, media2);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof SelectedEntry) {
                    SelectedEntry selectedEntry = (SelectedEntry) obj;
                    if (Intrinsics.areEqual(this.id, selectedEntry.id) && Intrinsics.areEqual(this.media, selectedEntry.media)) {
                        if (this.state == selectedEntry.state) {
                            if (this.videoTrimStart == selectedEntry.videoTrimStart) {
                                if (this.videoTrimEnd == selectedEntry.videoTrimEnd) {
                                    if (!(this.progress == selectedEntry.progress) || !Intrinsics.areEqual(this.crop, selectedEntry.crop) || !Intrinsics.areEqual(this.previewMedia, selectedEntry.previewMedia)) {
                                    }
                                }
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.id;
            int iHashCode = (str != null ? str.hashCode() : 0) * 31;
            Media media = this.media;
            int iHashCode2 = (((iHashCode + (media != null ? media.hashCode() : 0)) * 31) + this.state) * 31;
            long j = this.videoTrimStart;
            int i = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.videoTrimEnd;
            int i2 = (((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.progress) * 31;
            ThemeImage themeImage = this.crop;
            int iHashCode3 = (i2 + (themeImage != null ? themeImage.hashCode() : 0)) * 31;
            Media media2 = this.previewMedia;
            return iHashCode3 + (media2 != null ? media2.hashCode() : 0);
        }

        public String toString() {
            return "SelectedEntry(id=" + this.id + ", media=" + this.media + ", state=" + this.state + ", videoTrimStart=" + this.videoTrimStart + ", videoTrimEnd=" + this.videoTrimEnd + ", progress=" + this.progress + ", crop=" + this.crop + ", previewMedia=" + this.previewMedia + ")";
        }

        public SelectedEntry(String id, Media media, int i, long j, long j2, int i2, ThemeImage themeImage, Media media2) {
            Intrinsics.checkParameterIsNotNull(id, "id");
            this.id = id;
            this.media = media;
            this.state = i;
            this.videoTrimStart = j;
            this.videoTrimEnd = j2;
            this.progress = i2;
            this.crop = themeImage;
            this.previewMedia = media2;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ SelectedEntry(String str, Media media, int i, long j, long j2, int i2, ThemeImage themeImage, Media media2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            String string;
            if ((i3 & 1) != 0) {
                string = UUID.randomUUID().toString();
                Intrinsics.checkExpressionValueIsNotNull(string, "UUID.randomUUID().toString()");
            } else {
                string = str;
            }
            this(string, (i3 & 2) != 0 ? null : media, (i3 & 4) != 0 ? 1 : i, (i3 & 8) != 0 ? 0L : j, (i3 & 16) != 0 ? ScenePollPlayView.POLL_COUNT_DOWN_MS : j2, (i3 & 32) != 0 ? 0 : i2, (i3 & 64) != 0 ? null : themeImage, (i3 & 128) == 0 ? media2 : null);
        }

        public final String getId() {
            return this.id;
        }

        public final void setId(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.id = str;
        }

        public final Media getMedia() {
            return this.media;
        }

        public final void setMedia(Media media) {
            this.media = media;
        }

        public final int getState() {
            return this.state;
        }

        public final void setState(int i) {
            this.state = i;
        }

        public final long getVideoTrimStart() {
            return this.videoTrimStart;
        }

        public final void setVideoTrimStart(long j) {
            this.videoTrimStart = j;
        }

        public final long getVideoTrimEnd() {
            return this.videoTrimEnd;
        }

        public final void setVideoTrimEnd(long j) {
            this.videoTrimEnd = j;
        }

        public final int getProgress() {
            return this.progress;
        }

        public final void setProgress(int i) {
            this.progress = i;
        }

        public final ThemeImage getCrop() {
            return this.crop;
        }

        public final void setCrop(ThemeImage themeImage) {
            this.crop = themeImage;
        }

        public final Media getPreviewMedia() {
            return this.previewMedia;
        }

        public final void setPreviewMedia(Media media) {
            this.previewMedia = media;
        }

        public final boolean isVideo() {
            Media media = this.media;
            if (media != null) {
                return media.isVideo();
            }
            return false;
        }

        public final boolean isImage() {
            Media media = this.media;
            if (media != null) {
                return media.isImage();
            }
            return false;
        }

        public final boolean isEmpty() {
            return this.state == 1;
        }

        public final void copy(SelectedEntry entry) {
            Intrinsics.checkParameterIsNotNull(entry, "entry");
            this.id = entry.id;
            this.media = entry.media;
            this.state = entry.state;
            this.videoTrimStart = entry.videoTrimStart;
            this.videoTrimEnd = entry.videoTrimEnd;
            this.progress = entry.progress;
            this.crop = entry.crop;
            this.previewMedia = entry.previewMedia;
        }
    }
}
