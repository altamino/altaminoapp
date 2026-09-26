package com.narvii.video;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.viewpager.widget.PagerAdapter;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.TabPagerAdapter;
import com.narvii.app.TabPagerFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.media.giphy.GiphyItem;
import com.narvii.media.giphy.GiphyPack;
import com.narvii.media.giphy.GiphyStickerService;
import com.narvii.mediaeditor.databinding.FragmentGiphyStickerPickerTabBinding;
import com.narvii.mediaeditor.databinding.GiphyStickerTabLayoutBinding;
import com.narvii.model.Media;
import com.narvii.model.Sticker;
import com.narvii.photos.PhotoManager;
import com.narvii.util.FileUtils;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.video.attachment.sticker.IEditorStickerPicker;
import com.narvii.video.attachment.sticker.IEditorStickerPickerCallback;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.services.VideoManager;
import com.narvii.widget.NVPagerTabLayout;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class EditorStickerPickerTabFragment extends TabPagerFragment implements NVPagerTabLayout.OnTabItemClickListener, GiphyStickerService.GiphyPackListingListener, IEditorStickerPicker, VideoManager.IInstallStickerCallback, FragmentOnBackListener, MediaPickerFragment.OnResultListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {kotlin.jvm.internal.q0.g(new kotlin.jvm.internal.g0(EditorStickerPickerTabFragment.class, "binding", "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;", 0))};

    @Nullable
    private GiphyItem currentSticker;

    @Nullable
    private IEditorStickerPickerCallback editorStickerPickerCallback;
    private GiphyStickerService giphyStickerService;

    @Nullable
    private StickerInfoPack installingSticker;

    @Nullable
    private MediaPickerFragment mediaPickerFragment;
    private boolean stickerFromLocalPicker;
    private int stickerPickerType;
    private VideoManager videoManager;
    private final int STICKER_PICKER_TYPE_GALLERY = 1;
    private final int STICKER_PICKER_TYPE_GIPHY = 2;

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, EditorStickerPickerTabFragment$binding$2.INSTANCE);

    @NotNull
    private final ArrayList<GiphyPack> giphyPackList = new ArrayList<>();

    @NotNull
    private final EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1 internalGiphyStickerSelectedCallback = new GiphyStickerSelectedCallback() { // from class: com.narvii.video.EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1
        @Override // com.narvii.video.EditorStickerPickerTabFragment.GiphyStickerSelectedCallback
        public void onGiphyStickerSelected(@NotNull GiphyItem sticker) {
            kotlin.jvm.internal.t.j(sticker, "sticker");
            this.this$0.currentSticker = sticker;
        }
    };

    private final class Adapter extends TabPagerAdapter {
        public Adapter() {
            super(EditorStickerPickerTabFragment.this.getContext(), EditorStickerPickerTabFragment.this.getChildFragmentManager());
        }

        @Override // com.narvii.util.FixedFragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
        @NotNull
        public Object instantiateItem(@NotNull ViewGroup container, int i10) {
            GiphyPack giphyPack;
            kotlin.jvm.internal.t.j(container, "container");
            Object objInstantiateItem = super.instantiateItem(container, i10);
            kotlin.jvm.internal.t.i(objInstantiateItem, "instantiateItem(...)");
            if (objInstantiateItem instanceof EditorStickerPickerListFragment) {
                EditorStickerPickerListFragment editorStickerPickerListFragment = (EditorStickerPickerListFragment) objInstantiateItem;
                editorStickerPickerListFragment.setGiphyStickerSelectedCallback(EditorStickerPickerTabFragment.this.internalGiphyStickerSelectedCallback);
                if (!EditorStickerPickerTabFragment.this.giphyPackList.isEmpty()) {
                    if (Utils.isRtl()) {
                        i10 = (EditorStickerPickerTabFragment.this.giphyPackList.size() - 1) - i10;
                    }
                    giphyPack = (GiphyPack) EditorStickerPickerTabFragment.this.giphyPackList.get(i10);
                } else {
                    giphyPack = null;
                }
                if (giphyPack != null) {
                    String id = giphyPack.id;
                    kotlin.jvm.internal.t.i(id, "id");
                    editorStickerPickerListFragment.setStickerPackId(id);
                }
            }
            return objInstantiateItem;
        }
    }

    public interface GiphyStickerSelectedCallback {
        void onGiphyStickerSelected(@NotNull GiphyItem giphyItem);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "sticker_picker";
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPicker
    public void onEditorStickerRemoved() {
        setCurrentSticker(null);
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstallStart(@NotNull StickerInfoPack stickerInfoPack) {
        kotlin.jvm.internal.t.j(stickerInfoPack, "stickerInfoPack");
        this.installingSticker = stickerInfoPack;
    }

    @Override // com.narvii.widget.NVPagerTabLayout.OnTabItemClickListener
    public void onTabItemClicked(int i10) {
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPicker
    public void setEditorStickerPickerCallback(@NotNull IEditorStickerPickerCallback callback) {
        kotlin.jvm.internal.t.j(callback, "callback");
        this.editorStickerPickerCallback = callback;
    }

    private final void dismiss(boolean z6) {
        if (z6) {
            IEditorStickerPickerCallback iEditorStickerPickerCallback = this.editorStickerPickerCallback;
            if (iEditorStickerPickerCallback != null) {
                iEditorStickerPickerCallback.forsakePreviewSticker();
            }
        } else {
            IEditorStickerPickerCallback iEditorStickerPickerCallback2 = this.editorStickerPickerCallback;
            if (iEditorStickerPickerCallback2 != null) {
                iEditorStickerPickerCallback2.savePreviewSticker();
            }
        }
        VideoManager videoManager = this.videoManager;
        VideoManager videoManager2 = null;
        if (videoManager == null) {
            kotlin.jvm.internal.t.B("videoManager");
            videoManager = null;
        }
        videoManager.abortAnimatedStickerConvertTasks();
        VideoManager videoManager3 = this.videoManager;
        if (videoManager3 == null) {
            kotlin.jvm.internal.t.B("videoManager");
        } else {
            videoManager2 = videoManager3;
        }
        videoManager2.removeAllViewInstallStickerCallback();
        requireFragmentManager().q().t(this).k();
        requireFragmentManager().i0();
    }

    private final FragmentGiphyStickerPickerTabBinding getBinding() {
        return (FragmentGiphyStickerPickerTabBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final void pickSticker(int i10) {
        File file;
        if (this.mediaPickerFragment == null) {
            return;
        }
        this.stickerPickerType = i10;
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.setSize(128, 128, 68, 68);
        mediaPickerConfiguration.isSingle = true;
        if (i10 == this.STICKER_PICKER_TYPE_GIPHY) {
            mediaPickerConfiguration.optionList = 4;
            mediaPickerConfiguration.isGiphySticker = true;
            file = new File(requireContext().getFilesDir(), "photo");
            file.mkdirs();
        } else {
            mediaPickerConfiguration.optionList = 8;
            file = null;
        }
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.pickMedia(file, (Bundle) null, mediaPickerConfiguration);
        }
    }

    private final void resetTabList(TabPagerAdapter tabPagerAdapter) {
        ArrayList arrayList = new ArrayList();
        int size = this.giphyPackList.size();
        for (int i10 = 0; i10 < size; i10++) {
            GiphyPack giphyPack = this.giphyPackList.get(Utils.isRtl() ? (this.giphyPackList.size() - 1) - i10 : i10);
            kotlin.jvm.internal.t.i(giphyPack, "get(...)");
            GiphyPack giphyPack2 = giphyPack;
            String string = giphyPack2.id() == null ? UUID.randomUUID().toString() : giphyPack2.id();
            View tabView = getTabView(giphyPack2);
            Bundle bundle = new Bundle();
            bundle.putString("stickerPackId", giphyPack2.id);
            arrayList.add(new TabPagerAdapter.TabInfo(string, null, tabView, EditorStickerPickerListFragment.class, bundle));
        }
        tabPagerAdapter.setTabs(arrayList);
    }

    @Override // com.narvii.app.TabPagerFragment
    @NotNull
    protected PagerAdapter createAdapter() {
        return new Adapter();
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@NotNull NVActivity a7) {
        kotlin.jvm.internal.t.j(a7, "a");
        dismiss(true);
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPicker
    public void onLocalAnimatedStickerConvertTerminated() {
        if (!this.stickerFromLocalPicker || this.installingSticker == null) {
            return;
        }
        VideoManager videoManager = this.videoManager;
        if (videoManager == null) {
            kotlin.jvm.internal.t.B("videoManager");
            videoManager = null;
        }
        StickerInfoPack stickerInfoPack = this.installingSticker;
        kotlin.jvm.internal.t.g(stickerInfoPack);
        videoManager.abortAnimatedStickerConvertTask(stickerInfoPack);
        StickerInfoPack stickerInfoPack2 = this.installingSticker;
        kotlin.jvm.internal.t.g(stickerInfoPack2);
        String str = stickerInfoPack2.installedPath;
        FileUtils.deleteFile(str != null ? new File(str) : null);
        this.stickerFromLocalPicker = false;
        this.installingSticker = null;
        this.stickerPickerType = 0;
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(@Nullable List<Media> list, @Nullable Bundle bundle) {
        if (list == null || !(!list.isEmpty())) {
            return;
        }
        PhotoManager photoManager = (PhotoManager) getService("photo");
        kotlin.jvm.internal.t.g(photoManager);
        File path = photoManager.getPath(list.get(0).getMediaUrl());
        if (path == null || !path.exists()) {
            this.stickerPickerType = 0;
            IEditorStickerPickerCallback iEditorStickerPickerCallback = this.editorStickerPickerCallback;
            if (iEditorStickerPickerCallback != null) {
                iEditorStickerPickerCallback.onStickerInstallFailed();
                return;
            }
            return;
        }
        this.stickerFromLocalPicker = true;
        String absolutePath = path.getAbsolutePath();
        Sticker sticker = new Sticker();
        sticker.stickerId = FileUtils.md5(path.getPath());
        sticker.sourceType = this.stickerPickerType == this.STICKER_PICKER_TYPE_GIPHY ? 3 : 2;
        this.stickerPickerType = 0;
        VideoManager videoManager = (VideoManager) getService("videoManager");
        kotlin.jvm.internal.t.g(videoManager);
        StickerInfoPack stickerInfoPackObtainInstalledStickerInfo = videoManager.obtainInstalledStickerInfo(sticker, absolutePath);
        if (stickerInfoPackObtainInstalledStickerInfo != null) {
            IEditorStickerPickerCallback iEditorStickerPickerCallback2 = this.editorStickerPickerCallback;
            if (iEditorStickerPickerCallback2 != null) {
                iEditorStickerPickerCallback2.setPickedPreviewSticker(stickerInfoPackObtainInstalledStickerInfo);
                return;
            }
            return;
        }
        IEditorStickerPickerCallback iEditorStickerPickerCallback3 = this.editorStickerPickerCallback;
        if (iEditorStickerPickerCallback3 != null) {
            iEditorStickerPickerCallback3.onBlockedInstallingSticker();
        }
        videoManager.installSticker(sticker, absolutePath, false, null);
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstallFailed(@NotNull Sticker sticker) {
        kotlin.jvm.internal.t.j(sticker, "sticker");
        Log.e(g7.e.TAG, "Sticker installed failed, collection id: " + sticker.stickerCollectionId + " id: " + sticker.stickerId);
        this.installingSticker = null;
        this.stickerFromLocalPicker = false;
        GiphyItem giphyItem = this.currentSticker;
        if (giphyItem != null) {
            if (!kotlin.jvm.internal.t.e(sticker.stickerId, giphyItem != null ? giphyItem.id() : null)) {
                return;
            }
            String str = sticker.stickerCollectionId;
            GiphyItem giphyItem2 = this.currentSticker;
            if (!kotlin.jvm.internal.t.e(str, giphyItem2 != null ? giphyItem2.collectionId() : null)) {
                return;
            }
        }
        IEditorStickerPickerCallback iEditorStickerPickerCallback = this.editorStickerPickerCallback;
        if (iEditorStickerPickerCallback != null) {
            iEditorStickerPickerCallback.onStickerInstallFailed();
        }
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstalled(@NotNull StickerInfoPack stickerInfoPack) {
        GiphyItem giphyItem;
        kotlin.jvm.internal.t.j(stickerInfoPack, "stickerInfoPack");
        this.installingSticker = null;
        if (!this.stickerFromLocalPicker && (giphyItem = this.currentSticker) != null) {
            if (!kotlin.jvm.internal.t.e(stickerInfoPack.stickerId, giphyItem != null ? giphyItem.id() : null)) {
                return;
            }
            String str = stickerInfoPack.stickerCollectionId;
            GiphyItem giphyItem2 = this.currentSticker;
            if (!kotlin.jvm.internal.t.e(str, giphyItem2 != null ? giphyItem2.collectionId() : null)) {
                return;
            }
        }
        this.stickerFromLocalPicker = false;
        GiphyItem giphyItem3 = new GiphyItem();
        giphyItem3.id = stickerInfoPack.stickerId;
        giphyItem3.packId = stickerInfoPack.stickerCollectionId;
        setCurrentSticker(giphyItem3);
        IEditorStickerPickerCallback iEditorStickerPickerCallback = this.editorStickerPickerCallback;
        if (iEditorStickerPickerCallback != null) {
            iEditorStickerPickerCallback.setPickedPreviewSticker(stickerInfoPack);
        }
    }

    public final void selectStickerCollection(@Nullable GiphyPack giphyPack) {
        if (giphyPack == null) {
            return;
        }
        int iIndexOfId = Utils.indexOfId(this.giphyPackList, giphyPack.id());
        if (iIndexOfId != -1) {
            this.mViewPager.setCurrentItem(iIndexOfId);
        }
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout != null) {
            tabLayout.scrollToCurrentPosition();
        }
    }

    public final void setCurrentSticker(@Nullable GiphyItem giphyItem) {
        this.currentSticker = giphyItem;
        if (isAdded()) {
            notifyPagerSelectedStickerChanged(giphyItem);
        }
    }

    @Override // com.narvii.app.TabPagerFragment
    @NotNull
    public Drawable tabLayoutBackground() {
        return new ColorDrawable(Color.parseColor("#2C2C2D"));
    }

    private final View getTabView(GiphyPack giphyPack) {
        GiphyStickerTabLayoutBinding giphyStickerTabLayoutBindingInflate = GiphyStickerTabLayoutBinding.inflate(LayoutInflater.from(getContext()), null, false);
        kotlin.jvm.internal.t.i(giphyStickerTabLayoutBindingInflate, "inflate(...)");
        giphyStickerTabLayoutBindingInflate.getRoot().setBackground(ContextCompat.getDrawable(requireContext(), com.narvii.mediaeditor.R.drawable.giphy_sticker_tab_bg));
        giphyStickerTabLayoutBindingInflate.tabIcon.setImageUrl(giphyPack.featured_gif.thumbUrl());
        FrameLayout root = giphyStickerTabLayoutBindingInflate.getRoot();
        kotlin.jvm.internal.t.i(root, "getRoot(...)");
        return root;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(EditorStickerPickerTabFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(EditorStickerPickerTabFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.dismiss(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(EditorStickerPickerTabFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.pickSticker(this$0.STICKER_PICKER_TYPE_GALLERY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$4(EditorStickerPickerTabFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.pickSticker(this$0.STICKER_PICKER_TYPE_GIPHY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$5(StickerInfoPack stickerInfoPack, EditorStickerPickerTabFragment this$0, GiphyItem sticker) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(sticker, "$sticker");
        GiphyPack giphyPack = new GiphyPack();
        giphyPack.id = stickerInfoPack.stickerCollectionId;
        this$0.selectStickerCollection(giphyPack);
        this$0.setCurrentSticker(sticker);
    }

    public final void notifyPagerSelectedStickerChanged(@Nullable GiphyItem giphyItem) {
        PagerAdapter adapter = getAdapter();
        kotlin.jvm.internal.t.h(adapter, "null cannot be cast to non-null type com.narvii.video.EditorStickerPickerTabFragment.Adapter");
        Adapter adapter2 = (Adapter) adapter;
        int count = adapter2.getCount();
        for (int i10 = 0; i10 < count; i10++) {
            Fragment fragmentAt = adapter2.getFragmentAt(i10);
            if (fragmentAt instanceof EditorStickerPickerListFragment) {
                ((EditorStickerPickerListFragment) fragmentAt).setCurrentSelectedSticker(giphyItem);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        getBinding().giphyStickerPickerPage.progress.setVisibility(0);
        GiphyStickerService giphyStickerService = this.giphyStickerService;
        if (giphyStickerService == null) {
            kotlin.jvm.internal.t.B("giphyStickerService");
            giphyStickerService = null;
        }
        GiphyStickerService.loadGiphyPackList$default(giphyStickerService, false, this, 1, null);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("videoManager");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.videoManager = (VideoManager) service;
        Object service2 = getService("giphySticker");
        kotlin.jvm.internal.t.i(service2, "getService(...)");
        this.giphyStickerService = (GiphyStickerService) service2;
        VideoManager videoManager = this.videoManager;
        if (videoManager == null) {
            kotlin.jvm.internal.t.B("videoManager");
            videoManager = null;
        }
        videoManager.registerStickerInstallCallback(this);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            Fragment fragmentM0 = fragmentManager.m0("mediaPicker");
            if (!(fragmentM0 instanceof MediaPickerFragment)) {
                this.mediaPickerFragment = new MediaPickerFragment();
                FragmentTransaction fragmentTransactionQ = fragmentManager.q();
                MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
                kotlin.jvm.internal.t.g(mediaPickerFragment);
                fragmentTransactionQ.e(mediaPickerFragment, "mediaPicker").k();
            } else {
                this.mediaPickerFragment = (MediaPickerFragment) fragmentM0;
            }
            MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
            if (mediaPickerFragment2 != null) {
                mediaPickerFragment2.addOnResultListener(this);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        VideoManager videoManager = this.videoManager;
        GiphyStickerService giphyStickerService = null;
        if (videoManager == null) {
            kotlin.jvm.internal.t.B("videoManager");
            videoManager = null;
        }
        videoManager.unregisterStickerInstallCallback();
        GiphyStickerService giphyStickerService2 = this.giphyStickerService;
        if (giphyStickerService2 == null) {
            kotlin.jvm.internal.t.B("giphyStickerService");
        } else {
            giphyStickerService = giphyStickerService2;
        }
        giphyStickerService.unregisterPackListingListener();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.media.giphy.GiphyStickerService.GiphyPackListingListener
    public void onGiphyPackListLoaded(@Nullable ArrayList<GiphyPack> arrayList) {
        int i10;
        ArrayList<GiphyPack> arrayListSubList;
        int i11 = 8;
        getBinding().giphyStickerPickerPage.progress.setVisibility(8);
        if (arrayList != null && !arrayList.isEmpty()) {
            this.giphyPackList.clear();
            ArrayList<GiphyPack> arrayList2 = this.giphyPackList;
            if (arrayList.size() > 20) {
                arrayListSubList = arrayList;
                arrayListSubList = arrayList.subList(0, 20);
            }
            arrayListSubList = arrayList;
            arrayList2.addAll(arrayListSubList);
            PagerAdapter adapter = getAdapter();
            kotlin.jvm.internal.t.h(adapter, "null cannot be cast to non-null type com.narvii.video.EditorStickerPickerTabFragment.Adapter");
            resetTabList((Adapter) adapter);
            return;
        }
        LinearLayout linearLayout = getBinding().giphyStickerPickerPage.errorView.errorContainer;
        if (this.giphyPackList.isEmpty()) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        linearLayout.setVisibility(i10);
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout != null) {
            if (!this.giphyPackList.isEmpty()) {
                i11 = 0;
            }
            tabLayout.setVisibility(i11);
        }
    }

    @Override // com.narvii.app.TabPagerFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        if (this.scrollableTabLayout != null) {
            this.scrollableTabLayout.setScrollOffset((Utils.getScreenWidth(requireContext()) - (Utils.dpToPxInt(getContext(), 50.0f) * 3)) / 2);
            this.scrollableTabLayout.setOnTabItemClickListener(this);
        }
        getBinding().close.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditorStickerPickerTabFragment.onViewCreated$lambda$1(this.f2854a, view2);
            }
        });
        getBinding().submit.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditorStickerPickerTabFragment.onViewCreated$lambda$2(this.f2864a, view2);
            }
        });
        getBinding().giphyStickerPickerTab.stickerAdd.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditorStickerPickerTabFragment.onViewCreated$lambda$3(this.f2866a, view2);
            }
        });
        getBinding().giphyStickerPickerTab.stickerSearch.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditorStickerPickerTabFragment.onViewCreated$lambda$4(this.f2868a, view2);
            }
        });
        final StickerInfoPack stickerInfoPack = (StickerInfoPack) JacksonUtils.readAs(getStringParam("activeSticker"), StickerInfoPack.class);
        if (stickerInfoPack != null) {
            final GiphyItem giphyItem = new GiphyItem();
            giphyItem.id = stickerInfoPack.stickerId;
            giphyItem.packId = stickerInfoPack.stickerCollectionId;
            Utils.post(new Runnable() { // from class: com.narvii.video.e0
                @Override // java.lang.Runnable
                public final void run() {
                    EditorStickerPickerTabFragment.onViewCreated$lambda$5(stickerInfoPack, this, giphyItem);
                }
            });
        }
    }

    @Override // com.narvii.app.TabPagerFragment
    protected void updateTabView(int i10) {
        boolean z6;
        super.updateTabView(i10);
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout == null) {
            return;
        }
        int tabCount = tabLayout.getTabCount();
        for (int i11 = 0; i11 < tabCount; i11++) {
            View childTabAt = tabLayout.getChildTabAt(i11);
            if (childTabAt != null) {
                if (i11 == i10) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                childTabAt.setSelected(z6);
            }
        }
    }
}
