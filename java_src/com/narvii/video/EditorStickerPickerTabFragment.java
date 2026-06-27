package com.narvii.video;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.TabPagerAdapter;
import com.narvii.app.TabPagerFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.media.giphy.GiphyItem;
import com.narvii.media.giphy.GiphyPack;
import com.narvii.media.giphy.GiphyStickerService;
import com.narvii.model.Media;
import com.narvii.model.Sticker;
import com.narvii.photos.PhotoManager;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.video.attachment.sticker.IEditorStickerPicker;
import com.narvii.video.attachment.sticker.IEditorStickerPickerCallback;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.services.VideoManager;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;
import ffmpeg.base.NVEditor;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EditorStickerPickerTabFragment.kt */
/* loaded from: classes3.dex */
public final class EditorStickerPickerTabFragment extends TabPagerFragment implements NVPagerTabLayout.OnTabItemClickListener, GiphyStickerService.GiphyPackListingListener, IEditorStickerPicker, VideoManager.IInstallStickerCallback, FragmentOnBackListener, MediaPickerFragment.OnResultListener {
    private HashMap _$_findViewCache;
    private GiphyItem currentSticker;
    private IEditorStickerPickerCallback editorStickerPickerCallback;
    private GiphyStickerService giphyStickerService;
    private StickerInfoPack installingSticker;
    private MediaPickerFragment mediaPickerFragment;
    private boolean stickerFromLocalPicker;
    private int stickerPickerType;
    private VideoManager videoManager;
    private final int STICKER_PICKER_TYPE_GALLERY = 1;
    private final int STICKER_PICKER_TYPE_GIPHY = 2;
    private final ArrayList<GiphyPack> giphyPackList = new ArrayList<>();
    private final EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1 internalGiphyStickerSelectedCallback = new GiphyStickerSelectedCallback() { // from class: com.narvii.video.EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1
        @Override // com.narvii.video.EditorStickerPickerTabFragment.GiphyStickerSelectedCallback
        public void onGiphyStickerSelected(GiphyItem sticker) {
            Intrinsics.checkParameterIsNotNull(sticker, "sticker");
            this.this$0.currentSticker = sticker;
        }
    };

    /* compiled from: EditorStickerPickerTabFragment.kt */
    public interface GiphyStickerSelectedCallback {
        void onGiphyStickerSelected(GiphyItem giphyItem);
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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StickerPicker";
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.widget.NVPagerTabLayout.OnTabItemClickListener
    public void onTabItemClicked(int i) {
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("videoManager");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService<VideoManager>(\"videoManager\")");
        this.videoManager = (VideoManager) service;
        Object service2 = getService("giphySticker");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService<GiphyStickerService>(\"giphySticker\")");
        this.giphyStickerService = (GiphyStickerService) service2;
        VideoManager videoManager = this.videoManager;
        if (videoManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoManager");
            throw null;
        }
        videoManager.registerStickerInstallCallback(this);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag("mediaPicker");
            if (!(fragmentFindFragmentByTag instanceof MediaPickerFragment)) {
                this.mediaPickerFragment = new MediaPickerFragment();
                FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
                MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
                if (mediaPickerFragment == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                fragmentTransactionBeginTransaction.add(mediaPickerFragment, "mediaPicker").commitAllowingStateLoss();
            } else {
                this.mediaPickerFragment = (MediaPickerFragment) fragmentFindFragmentByTag;
            }
            MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
            if (mediaPickerFragment2 != null) {
                mediaPickerFragment2.addOnResultListener(this);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(com.narvii.mediaeditor.R.layout.fragment_giphy_sticker_picker_tab, viewGroup, false);
    }

    @Override // com.narvii.app.TabPagerFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        if (this.scrollableTabLayout != null) {
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            this.scrollableTabLayout.setScrollOffset((Utils.getScreenWidth(context) - (Utils.dpToPxInt(getContext(), 50.0f) * 3)) / 2);
            this.scrollableTabLayout.setOnTabItemClickListener(this);
        }
        ((ImageView) view.findViewById(com.narvii.mediaeditor.R.id.close)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.EditorStickerPickerTabFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditorStickerPickerTabFragment.this.dismiss(true);
            }
        });
        ((ImageView) view.findViewById(com.narvii.mediaeditor.R.id.submit)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.EditorStickerPickerTabFragment.onViewCreated.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditorStickerPickerTabFragment.this.dismiss(false);
            }
        });
        ((TintButton) view.findViewById(com.narvii.mediaeditor.R.id.sticker_add)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.EditorStickerPickerTabFragment.onViewCreated.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditorStickerPickerTabFragment editorStickerPickerTabFragment = EditorStickerPickerTabFragment.this;
                editorStickerPickerTabFragment.pickSticker(editorStickerPickerTabFragment.STICKER_PICKER_TYPE_GALLERY);
            }
        });
        ((TintButton) view.findViewById(com.narvii.mediaeditor.R.id.sticker_search)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.EditorStickerPickerTabFragment.onViewCreated.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EditorStickerPickerTabFragment editorStickerPickerTabFragment = EditorStickerPickerTabFragment.this;
                editorStickerPickerTabFragment.pickSticker(editorStickerPickerTabFragment.STICKER_PICKER_TYPE_GIPHY);
            }
        });
        final StickerInfoPack stickerInfoPack = (StickerInfoPack) JacksonUtils.readAs(getStringParam("activeSticker"), StickerInfoPack.class);
        if (stickerInfoPack != null) {
            final GiphyItem giphyItem = new GiphyItem();
            giphyItem.id = stickerInfoPack.stickerId;
            giphyItem.packId = stickerInfoPack.stickerCollectionId;
            Utils.post(new Runnable() { // from class: com.narvii.video.EditorStickerPickerTabFragment.onViewCreated.5
                @Override // java.lang.Runnable
                public final void run() throws Resources.NotFoundException {
                    GiphyPack giphyPack = new GiphyPack();
                    giphyPack.id = stickerInfoPack.stickerCollectionId;
                    EditorStickerPickerTabFragment.this.selectStickerCollection(giphyPack);
                    EditorStickerPickerTabFragment.this.setCurrentSticker(giphyItem);
                }
            });
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        SpinningView progress = (SpinningView) _$_findCachedViewById(android.R.id.progress);
        Intrinsics.checkExpressionValueIsNotNull(progress, "progress");
        progress.setVisibility(0);
        GiphyStickerService giphyStickerService = this.giphyStickerService;
        if (giphyStickerService != null) {
            GiphyStickerService.loadGiphyPackList$default(giphyStickerService, false, this, 1, null);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("giphyStickerService");
            throw null;
        }
    }

    @Override // com.narvii.app.TabPagerFragment
    protected PagerAdapter createAdapter() {
        return new Adapter();
    }

    @Override // com.narvii.media.giphy.GiphyStickerService.GiphyPackListingListener
    public void onGiphyPackListLoaded(ArrayList<GiphyPack> arrayList) {
        SpinningView progress = (SpinningView) _$_findCachedViewById(android.R.id.progress);
        Intrinsics.checkExpressionValueIsNotNull(progress, "progress");
        progress.setVisibility(8);
        if (arrayList == null || arrayList.isEmpty()) {
            View error_view = _$_findCachedViewById(com.narvii.mediaeditor.R.id.error_view);
            Intrinsics.checkExpressionValueIsNotNull(error_view, "error_view");
            error_view.setVisibility(this.giphyPackList.isEmpty() ? 0 : 8);
            NVPagerTabLayout tabLayout = getTabLayout();
            if (tabLayout != null) {
                tabLayout.setVisibility(this.giphyPackList.isEmpty() ? 8 : 0);
                return;
            }
            return;
        }
        this.giphyPackList.clear();
        ArrayList<GiphyPack> arrayList2 = this.giphyPackList;
        int size = arrayList.size();
        List<GiphyPack> list = arrayList;
        if (size > 20) {
            List<GiphyPack> listSubList = arrayList.subList(0, 20);
            Intrinsics.checkExpressionValueIsNotNull(listSubList, "giphyPackList.subList(0, 20)");
            list = listSubList;
        }
        arrayList2.addAll(list);
        PagerAdapter adapter = getAdapter();
        if (adapter == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.EditorStickerPickerTabFragment.Adapter");
        }
        resetTabList((Adapter) adapter);
    }

    @Override // com.narvii.app.TabPagerFragment
    protected void updateTabView(int i) {
        super.updateTabView(i);
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout != null) {
            int tabCount = tabLayout.getTabCount();
            int i2 = 0;
            while (i2 < tabCount) {
                View childTabAt = tabLayout.getChildTabAt(i2);
                if (childTabAt != null) {
                    childTabAt.setSelected(i2 == i);
                }
                i2++;
            }
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        if (list == null || !(!list.isEmpty())) {
            return;
        }
        PhotoManager photoManager = (PhotoManager) getService("photo");
        if (photoManager != null) {
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
            if (videoManager != null) {
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
                return;
            }
            Intrinsics.throwNpe();
            throw null;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.app.TabPagerFragment
    public Drawable tabLayoutBackground() {
        return new ColorDrawable(Color.parseColor("#2C2C2D"));
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        VideoManager videoManager = this.videoManager;
        if (videoManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoManager");
            throw null;
        }
        videoManager.unregisterStickerInstallCallback();
        GiphyStickerService giphyStickerService = this.giphyStickerService;
        if (giphyStickerService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphyStickerService");
            throw null;
        }
        giphyStickerService.unregisterPackListingListener();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity a) {
        Intrinsics.checkParameterIsNotNull(a, "a");
        dismiss(true);
        return true;
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPicker
    public void setEditorStickerPickerCallback(IEditorStickerPickerCallback callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        this.editorStickerPickerCallback = callback;
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPicker
    public void onEditorStickerRemoved() {
        setCurrentSticker(null);
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPicker
    public void onLocalAnimatedStickerConvertTerminated() {
        StickerInfoPack stickerInfoPack;
        if (!this.stickerFromLocalPicker || (stickerInfoPack = this.installingSticker) == null) {
            return;
        }
        VideoManager videoManager = this.videoManager;
        if (videoManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoManager");
            throw null;
        }
        if (stickerInfoPack == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        videoManager.abortAnimatedStickerConvertTask(stickerInfoPack);
        StickerInfoPack stickerInfoPack2 = this.installingSticker;
        if (stickerInfoPack2 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        String str = stickerInfoPack2.installedPath;
        FileUtils.deleteFile(str != null ? new File(str) : null);
        this.stickerFromLocalPicker = false;
        this.installingSticker = null;
        this.stickerPickerType = 0;
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstallStart(StickerInfoPack stickerInfoPack) {
        Intrinsics.checkParameterIsNotNull(stickerInfoPack, "stickerInfoPack");
        this.installingSticker = stickerInfoPack;
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstalled(StickerInfoPack stickerInfoPack) {
        GiphyItem giphyItem;
        Intrinsics.checkParameterIsNotNull(stickerInfoPack, "stickerInfoPack");
        this.installingSticker = null;
        if (!this.stickerFromLocalPicker && (giphyItem = this.currentSticker) != null) {
            if (!Intrinsics.areEqual(stickerInfoPack.stickerId, giphyItem != null ? giphyItem.id() : null)) {
                return;
            }
            String str = stickerInfoPack.stickerCollectionId;
            GiphyItem giphyItem2 = this.currentSticker;
            if (!Intrinsics.areEqual(str, giphyItem2 != null ? giphyItem2.collectionId() : null)) {
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

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstallFailed(Sticker sticker) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        Log.e(NVEditor.TAG, "Sticker installed failed, collection id: " + sticker.stickerCollectionId + " id: " + sticker.stickerId);
        this.installingSticker = null;
        this.stickerFromLocalPicker = false;
        GiphyItem giphyItem = this.currentSticker;
        if (giphyItem != null) {
            if (!Intrinsics.areEqual(sticker.stickerId, giphyItem != null ? giphyItem.id() : null)) {
                return;
            }
            String str = sticker.stickerCollectionId;
            GiphyItem giphyItem2 = this.currentSticker;
            if (!Intrinsics.areEqual(str, giphyItem2 != null ? giphyItem2.collectionId() : null)) {
                return;
            }
        }
        IEditorStickerPickerCallback iEditorStickerPickerCallback = this.editorStickerPickerCallback;
        if (iEditorStickerPickerCallback != null) {
            iEditorStickerPickerCallback.onStickerInstallFailed();
        }
    }

    public final void setCurrentSticker(GiphyItem giphyItem) {
        this.currentSticker = giphyItem;
        if (isAdded()) {
            notifyPagerSelectedStickerChanged(giphyItem);
        }
    }

    public final void notifyPagerSelectedStickerChanged(GiphyItem giphyItem) {
        PagerAdapter adapter = getAdapter();
        if (adapter == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.EditorStickerPickerTabFragment.Adapter");
        }
        Adapter adapter2 = (Adapter) adapter;
        int count = adapter2.getCount();
        for (int i = 0; i < count; i++) {
            Fragment fragmentAt = adapter2.getFragmentAt(i);
            if (fragmentAt instanceof EditorStickerPickerListFragment) {
                ((EditorStickerPickerListFragment) fragmentAt).setCurrentSelectedSticker(giphyItem);
            }
        }
    }

    public final void selectStickerCollection(GiphyPack giphyPack) throws Resources.NotFoundException {
        if (giphyPack == null) {
            return;
        }
        int iIndexOfId = Utils.indexOfId(this.giphyPackList, giphyPack.id());
        if (iIndexOfId != -1) {
            NVViewPager mViewPager = this.mViewPager;
            Intrinsics.checkExpressionValueIsNotNull(mViewPager, "mViewPager");
            mViewPager.setCurrentItem(iIndexOfId);
        }
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout != null) {
            tabLayout.scrollToCurrentPosition();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void pickSticker(int i) {
        File file;
        if (this.mediaPickerFragment == null) {
            return;
        }
        this.stickerPickerType = i;
        MediaPickerFragment.MediaPickerConfiguration mediaPickerConfiguration = new MediaPickerFragment.MediaPickerConfiguration();
        mediaPickerConfiguration.setSize(128, 128, 68, 68);
        mediaPickerConfiguration.isSingle = true;
        if (i == this.STICKER_PICKER_TYPE_GIPHY) {
            mediaPickerConfiguration.optionList = 4;
            mediaPickerConfiguration.isGiphySticker = true;
            Context context = getContext();
            if (context != null) {
                Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
                file = new File(context.getFilesDir(), "photo");
                file.mkdirs();
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        } else {
            mediaPickerConfiguration.optionList = 8;
            file = null;
        }
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.pickMedia(file, (Bundle) null, mediaPickerConfiguration);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dismiss(boolean z) {
        if (z) {
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
        if (videoManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoManager");
            throw null;
        }
        videoManager.abortAnimatedStickerConvertTasks();
        VideoManager videoManager2 = this.videoManager;
        if (videoManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoManager");
            throw null;
        }
        videoManager2.removeAllViewInstallStickerCallback();
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        fragmentManager.beginTransaction().remove(this).commitAllowingStateLoss();
        FragmentManager fragmentManager2 = getFragmentManager();
        if (fragmentManager2 != null) {
            fragmentManager2.executePendingTransactions();
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    private final void resetTabList(TabPagerAdapter tabPagerAdapter) {
        ArrayList arrayList = new ArrayList();
        int size = this.giphyPackList.size();
        for (int i = 0; i < size; i++) {
            GiphyPack giphyPack = this.giphyPackList.get(Utils.isRtl() ? (this.giphyPackList.size() - 1) - i : i);
            Intrinsics.checkExpressionValueIsNotNull(giphyPack, "giphyPackList[realIndex]");
            GiphyPack giphyPack2 = giphyPack;
            String string = giphyPack2.id() == null ? UUID.randomUUID().toString() : giphyPack2.id();
            View tabView = getTabView(giphyPack2);
            Bundle bundle = new Bundle();
            bundle.putString("stickerPackId", giphyPack2.id);
            arrayList.add(new TabPagerAdapter.TabInfo(string, null, tabView, EditorStickerPickerListFragment.class, bundle));
        }
        tabPagerAdapter.setTabs(arrayList);
    }

    private final View getTabView(GiphyPack giphyPack) {
        View tab = LayoutInflater.from(getContext()).inflate(com.narvii.mediaeditor.R.layout.giphy_sticker_tab_layout, (ViewGroup) null);
        Intrinsics.checkExpressionValueIsNotNull(tab, "tab");
        tab.setBackground(getResources().getDrawable(com.narvii.mediaeditor.R.drawable.giphy_sticker_tab_bg));
        ((NVImageView) tab.findViewById(com.narvii.mediaeditor.R.id.tab_icon)).setImageUrl(giphyPack.featured_gif.thumbUrl());
        return tab;
    }

    /* compiled from: EditorStickerPickerTabFragment.kt */
    private final class Adapter extends TabPagerAdapter {
        public Adapter() {
            super(EditorStickerPickerTabFragment.this.getContext(), EditorStickerPickerTabFragment.this.getChildFragmentManager());
        }

        @Override // com.narvii.util.FixedFragmentStatePagerAdapter, android.support.v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup container, int i) {
            Intrinsics.checkParameterIsNotNull(container, "container");
            Object objInstantiateItem = super.instantiateItem(container, i);
            Intrinsics.checkExpressionValueIsNotNull(objInstantiateItem, "super.instantiateItem(container, position)");
            if (objInstantiateItem instanceof EditorStickerPickerListFragment) {
                EditorStickerPickerListFragment editorStickerPickerListFragment = (EditorStickerPickerListFragment) objInstantiateItem;
                editorStickerPickerListFragment.setGiphyStickerSelectedCallback(EditorStickerPickerTabFragment.this.internalGiphyStickerSelectedCallback);
                GiphyPack giphyPack = null;
                if (!EditorStickerPickerTabFragment.this.giphyPackList.isEmpty()) {
                    if (Utils.isRtl()) {
                        i = (EditorStickerPickerTabFragment.this.giphyPackList.size() - 1) - i;
                    }
                    giphyPack = (GiphyPack) EditorStickerPickerTabFragment.this.giphyPackList.get(i);
                }
                if (giphyPack != null) {
                    String str = giphyPack.id;
                    Intrinsics.checkExpressionValueIsNotNull(str, "it.id");
                    editorStickerPickerListFragment.setStickerPackId(str);
                }
            }
            return objInstantiateItem;
        }
    }
}
