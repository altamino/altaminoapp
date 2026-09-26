package com.narvii.monetization.sticker.picker;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.PagerAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.TabPagerAdapter;
import com.narvii.app.TabPagerFragment;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.Sticker;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.StickerPreviewListener;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.shared.SharedStickerCollectionPickerDialog;
import com.narvii.monetization.sticker.widget.StickerCacheImageView;
import com.narvii.monetization.store.MonetizationStoreSectionDetailFragment;
import com.narvii.photos.PhotoManager;
import com.narvii.util.CollectionUtils;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.video.attachment.sticker.IEditorStickerPicker;
import com.narvii.video.attachment.sticker.IEditorStickerPickerCallback;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.services.VideoManager;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.ThumbImageView;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.UUID;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public class StickerPickerTabFragment extends TabPagerFragment implements StickerService.StickerCollectionListObserver, IEditorStickerPicker, VideoManager.IInstallStickerCallback, MediaPickerFragment.OnResultListener, SharedStickerCollectionPickerDialog.OnStickerCollectionSelectListener, NVPagerTabLayout.OnTabItemClickListener, FragmentOnBackListener, AffiliationsService.AffiliationChangeListener {
    private AffiliationsService affiliationsService;
    private ThumbImageView communityStickers;
    private Sticker currentSticker;
    private SharedStickerCollectionPickerDialog dialog;
    private IEditorStickerPickerCallback editorStickerPickerCallback;
    boolean editorTheme;
    private View errorView;
    private StickerInfoPack installingSticker;
    MediaPickerFragment mediaPickerFragment;
    private View progressView;
    private View retryView;
    private ProgressDialog sharedDialog;
    private Runnable sharedFailRunnable;
    private Runnable sharedFinishRunnable;
    private StickerService.StickerCollectionListObserver sharedObserver;
    boolean showSelected;
    boolean showingTrial;
    List<StickerCollection> stickerCollectionList;
    private boolean stickerFromLocalPicker;
    private StickerHelper stickerHelper;
    private StickerSelectListener stickerSelectListener;
    private StickerService stickerService;
    View tabLayout;
    private View trialLayout;
    StickerCollection trialStickerCollection;
    private VideoManager videoManager;
    boolean collectionIdSelected = false;
    private StickerSelectListener internalStickerSelectListener = new StickerSelectListener() { // from class: com.narvii.monetization.sticker.picker.StickerPickerTabFragment.1
        @Override // com.narvii.monetization.sticker.picker.StickerSelectListener
        public void onStickerSelected(Sticker sticker, StickerCollection stickerCollection) {
            StickerPickerTabFragment.this.currentSticker = sticker;
            StickerPickerTabFragment stickerPickerTabFragment = StickerPickerTabFragment.this;
            if (stickerPickerTabFragment.showSelected) {
                stickerPickerTabFragment.notifyPagerSelectedStickerChanged(sticker);
            }
            if (StickerPickerTabFragment.this.stickerSelectListener != null) {
                StickerPickerTabFragment.this.stickerSelectListener.onStickerSelected(sticker, stickerCollection);
            }
        }
    };
    StickerPreviewListener stickerPreviewListener = new StickerPreviewListener() { // from class: com.narvii.monetization.sticker.picker.StickerPickerTabFragment.2
        @Override // com.narvii.monetization.sticker.StickerPreviewListener
        public void onStickerPreviewEnd() {
            if (((TabPagerFragment) StickerPickerTabFragment.this).mViewPager != null) {
                ((TabPagerFragment) StickerPickerTabFragment.this).mViewPager.disableScroll = false;
            }
        }

        @Override // com.narvii.monetization.sticker.StickerPreviewListener
        public void onStickerPreviewStart() {
            if (((TabPagerFragment) StickerPickerTabFragment.this).mViewPager != null) {
                ((TabPagerFragment) StickerPickerTabFragment.this).mViewPager.disableScroll = true;
            }
        }
    };
    private StickerService.StickerCollectionListObserver sharedEmptyObserver = new StickerService.StickerCollectionListObserver() { // from class: com.narvii.monetization.sticker.picker.StickerPickerTabFragment.3
        @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
        public void onRequestFailed() {
        }

        @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
        public void onListChanged() {
            List<StickerCollection> sharedStickerPackList;
            if (StickerPickerTabFragment.this.stickerService == null || StickerPickerTabFragment.this.dialog == null || (sharedStickerPackList = StickerPickerTabFragment.this.stickerService.getSharedStickerPackList()) == null || !sharedStickerPackList.isEmpty()) {
                return;
            }
            StickerPickerTabFragment.this.dialog.dismissWithoutAnimation();
            StickerPickerTabFragment.this.showTrial(false);
        }
    };

    /* JADX INFO: renamed from: com.narvii.monetization.sticker.picker.StickerPickerTabFragment$4, reason: invalid class name */
    class AnonymousClass4 implements StickerService.StickerCollectionListObserver {
        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onListChanged$0() {
            if (StickerPickerTabFragment.this.sharedDialog != null) {
                StickerPickerTabFragment.this.sharedDialog.dismiss();
            }
            StickerPickerTabFragment.this.showSharedStickerPackPicker(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRequestFailed$1() {
            if (StickerPickerTabFragment.this.sharedDialog != null) {
                StickerPickerTabFragment.this.sharedDialog.dismiss();
            }
            NVToast.makeText(StickerPickerTabFragment.this.getContext(), StickerPickerTabFragment.this.stickerService.getSharedError(), 0).show();
        }

        @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
        public void onListChanged() {
            StickerPickerTabFragment.this.sharedFinishRunnable = new Runnable() { // from class: com.narvii.monetization.sticker.picker.l
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2519a.lambda$onListChanged$0();
                }
            };
            Utils.postDelayed(StickerPickerTabFragment.this.sharedFinishRunnable, (StickerPickerTabFragment.this.sharedDialog == null || !StickerPickerTabFragment.this.sharedDialog.isShowing()) ? 0L : StickerPickerTabFragment.this.sharedDialog.getShowDelay());
        }

        @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
        public void onRequestFailed() {
            StickerPickerTabFragment.this.sharedFailRunnable = new Runnable() { // from class: com.narvii.monetization.sticker.picker.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2518a.lambda$onRequestFailed$1();
                }
            };
            Utils.postDelayed(StickerPickerTabFragment.this.sharedFailRunnable, (StickerPickerTabFragment.this.sharedDialog == null || !StickerPickerTabFragment.this.sharedDialog.isShowing()) ? 0L : StickerPickerTabFragment.this.sharedDialog.getShowDelay());
        }
    }

    class Adapter extends TabPagerAdapter {
        public Adapter(Context context, FragmentManager fragmentManager) {
            super(context, fragmentManager);
        }

        @Override // com.narvii.util.FixedFragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i10) {
            String moodUnicode;
            Object objInstantiateItem = super.instantiateItem(viewGroup, i10);
            StickerCollection stickerCollection = null;
            if (objInstantiateItem instanceof MoodPickerListFragment) {
                MoodPickerListFragment moodPickerListFragment = (MoodPickerListFragment) objInstantiateItem;
                moodPickerListFragment.setIsEditorTheme(StickerPickerTabFragment.this.editorTheme);
                moodPickerListFragment.setStickerSelectListener(StickerPickerTabFragment.this.internalStickerSelectListener);
                StickerPickerTabFragment stickerPickerTabFragment = StickerPickerTabFragment.this;
                if (stickerPickerTabFragment.showSelected) {
                    if (stickerPickerTabFragment.currentSticker == null) {
                        moodUnicode = null;
                    } else {
                        moodUnicode = StickerPickerTabFragment.this.currentSticker.getMoodUnicode();
                    }
                    moodPickerListFragment.setMood(moodUnicode);
                }
            }
            if (objInstantiateItem instanceof StickerPickerListFragment) {
                StickerPickerListFragment stickerPickerListFragment = (StickerPickerListFragment) objInstantiateItem;
                stickerPickerListFragment.setIsEditorTheme(StickerPickerTabFragment.this.editorTheme);
                stickerPickerListFragment.setStickerSelectListener(StickerPickerTabFragment.this.internalStickerSelectListener);
                stickerPickerListFragment.setStickerPreviewListener(StickerPickerTabFragment.this.stickerPreviewListener);
                StickerPickerTabFragment stickerPickerTabFragment2 = StickerPickerTabFragment.this;
                if (stickerPickerTabFragment2.showSelected) {
                    stickerPickerListFragment.setSelectedSticker(stickerPickerTabFragment2.currentSticker);
                }
                if (StickerPickerTabFragment.this.stickerCollectionList != null) {
                    if (Utils.isRtl()) {
                        i10 = (StickerPickerTabFragment.this.stickerCollectionList.size() - 1) - i10;
                    }
                    stickerCollection = StickerPickerTabFragment.this.stickerCollectionList.get(i10);
                }
                stickerPickerListFragment.setStickerCollection(stickerCollection);
            }
            return objInstantiateItem;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$6(View view) {
        dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$7(View view) {
        dismiss(false);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return this.editorTheme ? "sticker_picker" : "sticker_keyboard";
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isFinalPage() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return true;
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPicker
    public void onEditorStickerRemoved() {
        setCurrentSticker(null);
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstallStart(@NotNull StickerInfoPack stickerInfoPack) {
        this.installingSticker = stickerInfoPack;
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstalled(@NotNull StickerInfoPack stickerInfoPack) {
        Sticker sticker;
        this.installingSticker = null;
        if (this.stickerFromLocalPicker || (sticker = this.currentSticker) == null || (TextUtils.equals(stickerInfoPack.stickerId, sticker.stickerId) && TextUtils.equals(stickerInfoPack.stickerCollectionId, this.currentSticker.stickerCollectionId))) {
            this.stickerFromLocalPicker = false;
            Sticker sticker2 = new Sticker();
            sticker2.stickerId = stickerInfoPack.stickerId;
            sticker2.stickerCollectionId = stickerInfoPack.stickerCollectionId;
            setCurrentSticker(sticker2);
            IEditorStickerPickerCallback iEditorStickerPickerCallback = this.editorStickerPickerCallback;
            if (iEditorStickerPickerCallback != null) {
                iEditorStickerPickerCallback.setPickedPreviewSticker(stickerInfoPack);
            }
        }
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPicker
    public void setEditorStickerPickerCallback(@NotNull IEditorStickerPickerCallback iEditorStickerPickerCallback) {
        this.editorStickerPickerCallback = iEditorStickerPickerCallback;
    }

    public void setStickerSelectListener(StickerSelectListener stickerSelectListener) {
        this.stickerSelectListener = stickerSelectListener;
    }

    private void dismiss(boolean z6) {
        IEditorStickerPickerCallback iEditorStickerPickerCallback = this.editorStickerPickerCallback;
        if (iEditorStickerPickerCallback != null) {
            if (z6) {
                iEditorStickerPickerCallback.forsakePreviewSticker();
            } else {
                iEditorStickerPickerCallback.savePreviewSticker();
            }
        }
        this.videoManager.abortAnimatedStickerConvertTasks();
        this.videoManager.removeAllViewInstallStickerCallback();
        getFragmentManager().q().t(this).k();
        getFragmentManager().i0();
    }

    private List<StickerCollection> filterStickerCollections(List<StickerCollection> list) {
        if (list != null && this.editorTheme) {
            ListIterator<StickerCollection> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                if (listIterator.next().isPersonal()) {
                    listIterator.remove();
                    break;
                }
            }
        }
        return list;
    }

    private void goToStore() {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("StoreIcon").send();
        Intent intent = FragmentWrapperActivity.intent(MonetizationStoreSectionDetailFragment.class);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Keyboard");
        intent.putExtra("sectionGroupId", "sticker");
        if (isGlobalInteractionScope()) {
            intent.putExtra("__communityId", 0);
        }
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$3(View view) {
        LogEvent.clickBuilder(this, ActSemantic.expand).area("SharedStickerPack").send();
        showSharedStickerPackPicker(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$4(View view) {
        LogEvent.clickBuilder(this, ActSemantic.popUp).area("More").send();
        this.stickerHelper.pickStickerImage(this.mediaPickerFragment, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$9(StickerInfoPack stickerInfoPack, Sticker sticker) {
        StickerCollection stickerCollection = new StickerCollection();
        stickerCollection.collectionId = stickerInfoPack.stickerCollectionId;
        selectStickerCollection(stickerCollection);
        setCurrentSticker(sticker);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSharedStickerPackPicker$0(DialogInterface dialogInterface) {
        this.stickerService.removeSharedStickerPackObserver(this.sharedObserver);
        Handler handler = Utils.handler;
        handler.removeCallbacks(this.sharedFinishRunnable);
        handler.removeCallbacks(this.sharedFailRunnable);
    }

    private void resetTabList(TabPagerAdapter tabPagerAdapter) {
        TabPagerAdapter.TabInfo tabInfo;
        ArrayList arrayList = new ArrayList();
        if (this.stickerCollectionList != null) {
            for (int i10 = 0; i10 < this.stickerCollectionList.size(); i10++) {
                StickerCollection stickerCollection = this.stickerCollectionList.get(Utils.isRtl() ? (this.stickerCollectionList.size() - 1) - i10 : i10);
                String string = stickerCollection.id() == null ? UUID.randomUUID().toString() : stickerCollection.id();
                View tabView = getTabView(stickerCollection);
                if (stickerCollection.isLocalMood()) {
                    Bundle bundle = new Bundle();
                    bundle.putString("source", getStringParam("source"));
                    tabInfo = new TabPagerAdapter.TabInfo(string, null, tabView, MoodPickerListFragment.class, bundle);
                } else {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("stickerCollection", JacksonUtils.writeAsString(stickerCollection.getLiteStickerCollection()));
                    tabInfo = new TabPagerAdapter.TabInfo(string, null, tabView, StickerPickerListFragment.class, bundle2);
                }
                arrayList.add(tabInfo);
            }
        }
        tabPagerAdapter.setTabs(arrayList);
    }

    private void retry() {
        this.stickerService.refreshStickerCollectionInfo(true);
        updateViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSharedStickerPackPicker(boolean z6) {
        if (this.dialog == null) {
            if (this.sharedObserver == null) {
                this.sharedObserver = new AnonymousClass4();
            }
            this.stickerService.removeSharedStickerPackObserver(this.sharedObserver);
            List<StickerCollection> sharedStickerPackList = this.stickerService.getSharedStickerPackList();
            if (!z6 && CollectionUtils.isEmpty(sharedStickerPackList)) {
                NVToast.makeText(getContext(), R.string.no_shared_sticker_pack_toast, 0).show();
                return;
            }
            if (CollectionUtils.isEmpty(sharedStickerPackList)) {
                if (this.sharedDialog == null) {
                    this.sharedDialog = new ProgressDialog(getContext());
                }
                this.sharedDialog.show();
                this.sharedDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.monetization.sticker.picker.i
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        this.f2516a.lambda$showSharedStickerPackPicker$0(dialogInterface);
                    }
                });
                if (!this.stickerService.isSharedRequesting()) {
                    this.stickerService.refreshSharedStickerPackList(true);
                }
                this.stickerService.addSharedStickerPackListObserver(this.sharedObserver);
                return;
            }
            SharedStickerCollectionPickerDialog sharedStickerCollectionPickerDialog = new SharedStickerCollectionPickerDialog(this, this, sharedStickerPackList, this.stickerService.sharedStickerPackCount);
            this.dialog = sharedStickerCollectionPickerDialog;
            sharedStickerCollectionPickerDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.monetization.sticker.picker.j
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f2517a.lambda$showSharedStickerPackPicker$1(dialogInterface);
                }
            });
            this.stickerService.removeSharedStickerPackObserver(this.sharedObserver);
        }
        if (isDestoryed() || isFinishing()) {
            return;
        }
        this.dialog.refreshData();
        this.dialog.setSelectedStickerCollection(this.trialStickerCollection);
        this.dialog.show();
        this.stickerService.refreshSharedStickerPackList(false);
        updateCommunityStickerView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showTrial(boolean z6) {
        ViewUtils.show(this.trialLayout, z6);
        this.showingTrial = z6;
        NVPagerTabLayout nVPagerTabLayout = this.scrollableTabLayout;
        if (nVPagerTabLayout != null) {
            nVPagerTabLayout.setShowSelectedStatus(!z6);
        }
        if (!z6) {
            this.trialStickerCollection = null;
            this.dialog = null;
        }
        updateCommunityStickerView();
    }

    @Override // com.narvii.app.TabPagerFragment
    protected PagerAdapter createAdapter() {
        Adapter adapter = new Adapter(getContext(), getChildFragmentManager());
        resetTabList(adapter);
        return adapter;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (!this.editorTheme) {
            return false;
        }
        dismiss(true);
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        if (this.editorTheme) {
            return layoutInflater.inflate(R.layout.fragment_sticker_picker_tab_editor, viewGroup, false);
        }
        return getBooleanParam("tabBottom") ? layoutInflater.inflate(R.layout.fragment_sticker_picker_tab_bottom, viewGroup, false) : layoutInflater.inflate(R.layout.fragment_sticker_picker, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        ((VideoManager) getService("videoManager")).unregisterStickerInstallCallback();
        this.stickerService.removeSharedStickerPackObserver(this.sharedEmptyObserver);
        this.stickerService.removeStickerCollectionListObserver(this);
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPicker
    public void onLocalAnimatedStickerConvertTerminated() {
        StickerInfoPack stickerInfoPack;
        if (this.editorTheme && this.stickerFromLocalPicker && (stickerInfoPack = this.installingSticker) != null) {
            this.videoManager.abortAnimatedStickerConvertTask(stickerInfoPack);
            FileUtils.deleteFile(this.installingSticker.installedPath == null ? null : new File(this.installingSticker.installedPath));
            this.stickerFromLocalPicker = false;
            this.installingSticker = null;
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        if (!this.editorTheme || list == null || list.size() <= 0) {
            return;
        }
        File path = ((PhotoManager) getService("photo")).getPath(list.get(0).getMediaUrl());
        if (path == null || !path.exists()) {
            IEditorStickerPickerCallback iEditorStickerPickerCallback = this.editorStickerPickerCallback;
            if (iEditorStickerPickerCallback != null) {
                iEditorStickerPickerCallback.onStickerInstallFailed();
                return;
            }
            return;
        }
        int i10 = bundle == null ? 2 : bundle.getInt(MediaPickerFragment.PICK_FROM, 2);
        this.stickerFromLocalPicker = true;
        String absolutePath = path.getAbsolutePath();
        Sticker sticker = new Sticker();
        sticker.stickerId = FileUtils.md5(path.getPath());
        sticker.sourceType = i10 == 3 ? 3 : 2;
        VideoManager videoManager = (VideoManager) getService("videoManager");
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

    @Override // com.narvii.monetization.sticker.shared.SharedStickerCollectionPickerDialog.OnStickerCollectionSelectListener
    public void onStickerCollectionSelected(StickerCollection stickerCollection) {
        if (stickerCollection == null) {
            return;
        }
        StickerPickerListFragment stickerPickerListFragment = new StickerPickerListFragment();
        stickerPickerListFragment.setStickerCollection(stickerCollection);
        Bundle bundle = new Bundle();
        bundle.putString("stickerCollection", JacksonUtils.writeAsString(stickerCollection.getLiteStickerCollection()));
        bundle.putBoolean("trial", true);
        stickerPickerListFragment.setArguments(bundle);
        stickerPickerListFragment.setIsEditorTheme(this.editorTheme);
        stickerPickerListFragment.setStickerSelectListener(this.internalStickerSelectListener);
        if (this.showSelected) {
            stickerPickerListFragment.setSelectedSticker(this.currentSticker);
        }
        getChildFragmentManager().q().v(R.id.shared_sticker_pack_trial, stickerPickerListFragment, "trial").k();
        showTrial(true);
        this.trialStickerCollection = stickerCollection;
        SharedStickerCollectionPickerDialog sharedStickerCollectionPickerDialog = this.dialog;
        if (sharedStickerCollectionPickerDialog != null) {
            sharedStickerCollectionPickerDialog.dismiss();
        }
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstallFailed(@NotNull Sticker sticker) {
        Log.e(g7.e.TAG, "Sticker installed failed, collection id: " + sticker.stickerCollectionId + " id: " + sticker.stickerId);
        this.installingSticker = null;
        this.stickerFromLocalPicker = false;
        IEditorStickerPickerCallback iEditorStickerPickerCallback = this.editorStickerPickerCallback;
        if (iEditorStickerPickerCallback != null) {
            iEditorStickerPickerCallback.onStickerInstallFailed();
        }
    }

    @Override // com.narvii.widget.NVPagerTabLayout.OnTabItemClickListener
    public void onTabItemClicked(int i10) {
        LogEvent.clickBuilder(this, ActSemantic.tabSelected).area("StickerPack").send();
        if (getChildFragmentManager() == null) {
            return;
        }
        Fragment fragmentM0 = getChildFragmentManager().m0("trial");
        if (fragmentM0 != null) {
            getChildFragmentManager().q().t(fragmentM0).k();
        }
        showTrial(false);
    }

    public void selectStickerCollection(StickerCollection stickerCollection) {
        if (stickerCollection == null) {
            return;
        }
        int iIndexOfId = Utils.indexOfId(this.stickerCollectionList, stickerCollection.id());
        if (iIndexOfId != -1) {
            this.mViewPager.setCurrentItem(iIndexOfId);
        }
        correctScrollTab();
        showTrial(false);
    }

    public void setCurrentSticker(Sticker sticker) {
        this.currentSticker = sticker;
        if (isAdded()) {
            notifyPagerSelectedStickerChanged(sticker);
        }
    }

    @Override // com.narvii.app.TabPagerFragment
    public Drawable tabLayoutBackground() {
        return new ColorDrawable(this.editorTheme ? Color.parseColor("#2C2C2D") : -1);
    }

    private View getTabView(StickerCollection stickerCollection) {
        int i10;
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.sticker_tab_layout, (ViewGroup) null);
        Resources resources = getResources();
        if (this.editorTheme) {
            i10 = R.drawable.mood_tab_bg_dark;
        } else {
            i10 = R.drawable.mood_tab_bg;
        }
        viewInflate.setBackground(resources.getDrawable(i10));
        StickerCacheImageView stickerCacheImageView = (StickerCacheImageView) viewInflate.findViewById(R.id.tab_icon);
        if (stickerCollection.isLocalMood()) {
            stickerCacheImageView.setImageUrl(stickerCollection.smallIcon);
        } else {
            stickerCacheImageView.setStickerImageUrl(stickerCollection.id(), stickerCollection.smallIcon);
        }
        ViewUtils.show(viewInflate.findViewById(R.id.not_available_mark), stickerCollection.notAvailable());
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$2(View view) {
        retry();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$5(View view) {
        goToStore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$8(View view) {
        goToStore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSharedStickerPackPicker$1(DialogInterface dialogInterface) {
        updateCommunityStickerView();
    }

    private void updateCommunityStickerView() {
        String str;
        if (getView() == null) {
            return;
        }
        this.communityStickers = (ThumbImageView) getView().findViewById(R.id.community_stickers);
        Community community = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(((ConfigService) getService("config")).getCommunityId());
        SharedStickerCollectionPickerDialog sharedStickerCollectionPickerDialog = this.dialog;
        int i10 = 0;
        if (sharedStickerCollectionPickerDialog != null && sharedStickerCollectionPickerDialog.isShowing()) {
            this.communityStickers.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.communityStickers.setShadowColor(0);
            this.communityStickers.setShadowSize(0);
            this.communityStickers.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_shared_sticker_close));
        } else {
            this.communityStickers.setScaleType(ImageView.ScaleType.CENTER_CROP);
            ThumbImageView thumbImageView = this.communityStickers;
            if (community != null) {
                str = community.icon;
            } else {
                str = null;
            }
            thumbImageView.setImageUrl(str);
            this.communityStickers.setShadowColor(1711276032);
            this.communityStickers.setShadowSize(Utils.dpToPxInt(getContext(), 4.0f));
        }
        getView().findViewById(R.id.community_stickers_layout).setSelected(this.showingTrial);
        View viewFindViewById = getView().findViewById(R.id.community_stickers_layout);
        if (isGlobalInteractionScope()) {
            i10 = 8;
        }
        viewFindViewById.setVisibility(i10);
    }

    private void updateViews() {
        boolean z6;
        int i10;
        int i11;
        if (getView() == null) {
            return;
        }
        this.stickerCollectionList = filterStickerCollections(this.stickerService.getStickerCollectionList());
        String error = this.stickerService.getError();
        List<StickerCollection> list = this.stickerCollectionList;
        int i12 = 0;
        if (list != null && list.size() > 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        boolean z10 = !TextUtils.isEmpty(error);
        int i13 = 4;
        if (new CommunityConfigHelper(this).isPremiumFeatureEnabled()) {
            View view = this.tabLayout;
            if (z6) {
                i11 = 0;
            } else {
                i11 = 4;
            }
            view.setVisibility(i11);
        } else {
            this.tabLayout.setVisibility(8);
        }
        NVViewPager nVViewPager = this.mViewPager;
        if (z6) {
            i13 = 0;
        }
        nVViewPager.setVisibility(i13);
        View view2 = this.progressView;
        if (!z6 && !z10) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        view2.setVisibility(i10);
        View view3 = this.errorView;
        if (z6 || !z10) {
            i12 = 8;
        }
        view3.setVisibility(i12);
    }

    @Override // com.narvii.app.NVFragment
    protected boolean canSendActiveLog(boolean z6) {
        if (getView() != null) {
            if (!z6 || getView().isShown()) {
                return super.canSendActiveLog(z6);
            }
            return false;
        }
        return false;
    }

    public void correctScrollTab() {
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout != null) {
            tabLayout.scrollToCurrentPosition();
        }
    }

    public String getCurrentSelectedCollectionId() {
        int curIndex = getCurIndex();
        if (this.stickerCollectionList != null) {
            if (Utils.isRtl()) {
                curIndex = (this.stickerCollectionList.size() - 1) - curIndex;
            }
            if (curIndex >= 0 && curIndex < this.stickerCollectionList.size()) {
                return this.stickerCollectionList.get(curIndex).id();
            }
        }
        return null;
    }

    public void notifyPagerSelectedStickerChanged(Sticker sticker) {
        String moodUnicode;
        Adapter adapter = (Adapter) getAdapter();
        if (adapter != null) {
            for (int i10 = 0; i10 < adapter.getCount(); i10++) {
                Fragment fragmentAt = adapter.getFragmentAt(i10);
                if (fragmentAt instanceof MoodPickerListFragment) {
                    MoodPickerListFragment moodPickerListFragment = (MoodPickerListFragment) fragmentAt;
                    if (sticker == null) {
                        moodUnicode = null;
                    } else {
                        moodUnicode = sticker.getMoodUnicode();
                    }
                    moodPickerListFragment.setMood(moodUnicode);
                }
                if (fragmentAt instanceof StickerPickerListFragment) {
                    ((StickerPickerListFragment) fragmentAt).setSelectedSticker(sticker);
                }
            }
        }
        StickerPickerListFragment stickerPickerListFragment = (StickerPickerListFragment) getChildFragmentManager().m0("trial");
        if (stickerPickerListFragment != null) {
            stickerPickerListFragment.setSelectedSticker(sticker);
        }
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        if (isInVisitorMode() && isCurrentCommunityJoined()) {
            this.stickerService.refreshStickerCollectionInfo(false);
            AffiliationsService affiliationsService = this.affiliationsService;
            if (affiliationsService != null) {
                affiliationsService.removeAffiliationChangeListener(this);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        SharedStickerCollectionPickerDialog sharedStickerCollectionPickerDialog = this.dialog;
        if (sharedStickerCollectionPickerDialog != null) {
            sharedStickerCollectionPickerDialog.dismiss();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.showSelected = getBooleanParam("showSelected");
        this.stickerService = (StickerService) getService("sticker");
        this.videoManager = (VideoManager) getService("videoManager");
        if (isGlobalInteractionScope()) {
            this.stickerService = (StickerService) NVApplication.instance().getService("sticker");
        }
        if (!this.stickerService.isStickerPackListRefreshedThisSession()) {
            this.stickerService.refreshStickerCollectionInfo(false);
        }
        if (isVisitorNotJoined()) {
            AffiliationsService affiliationsService = (AffiliationsService) getService("affiliations");
            this.affiliationsService = affiliationsService;
            affiliationsService.addAffiliationChangeListener(this);
        }
        this.stickerService.addStickerCollectionListObserver(this);
        this.stickerService.addSharedStickerPackListObserver(this.sharedEmptyObserver);
        if (bundle != null) {
            this.collectionIdSelected = bundle.getBoolean("collectionIdSelected");
        }
        this.editorTheme = TextUtils.equals(getStringParam("source"), "editor");
        this.stickerHelper = new StickerHelper(this);
        MediaPickerFragment mediaPickerFragment = (MediaPickerFragment) getFragmentManager().m0("mediaPicker");
        this.mediaPickerFragment = mediaPickerFragment;
        if (mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            getFragmentManager().q().e(this.mediaPickerFragment, "mediaPicker").k();
        }
        this.mediaPickerFragment.addOnResultListener(this);
        ((VideoManager) getService("videoManager")).registerStickerInstallCallback(this);
    }

    @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
    public void onListChanged() {
        String currentSelectedCollectionId = getCurrentSelectedCollectionId();
        updateViews();
        resetPagerAdapter(currentSelectedCollectionId);
    }

    @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
    public void onRequestFailed() {
        updateViews();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("collectionIdSelected", this.collectionIdSelected);
    }

    @Override // com.narvii.app.TabPagerFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        final StickerInfoPack stickerInfoPack;
        super.onViewCreated(view, bundle);
        this.trialLayout = view.findViewById(R.id.shared_sticker_pack_trial);
        this.progressView = view.findViewById(android.R.id.progress);
        this.errorView = view.findViewById(R.id.error_container);
        View viewFindViewById = view.findViewById(R.id.retry);
        this.retryView = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2506a.lambda$onViewCreated$2(view2);
            }
        });
        this.tabLayout = view.findViewById(R.id.picker_tab_layout);
        if (this.scrollableTabLayout != null) {
            this.scrollableTabLayout.setScrollOffset((Utils.getScreenWidth(getContext()) - (Utils.dpToPxInt(getContext(), 50.0f) * 3)) / 2);
            this.scrollableTabLayout.setOnTabItemClickListener(this);
        }
        updateCommunityStickerView();
        this.communityStickers.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2507a.lambda$onViewCreated$3(view2);
            }
        });
        if (this.editorTheme) {
            view.findViewById(R.id.sticker_add).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f2508a.lambda$onViewCreated$4(view2);
                }
            });
            view.findViewById(R.id.sticker_store).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f2509a.lambda$onViewCreated$5(view2);
                }
            });
            view.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f2510a.lambda$onViewCreated$6(view2);
                }
            });
            view.findViewById(R.id.submit).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f2511a.lambda$onViewCreated$7(view2);
                }
            });
        } else {
            view.findViewById(R.id.sticker_add).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f2512a.lambda$onViewCreated$8(view2);
                }
            });
        }
        updateViews();
        resetPagerAdapter(null);
        if (this.editorTheme && (stickerInfoPack = (StickerInfoPack) JacksonUtils.readAs(getStringParam("activeSticker"), StickerInfoPack.class)) != null) {
            final Sticker sticker = new Sticker();
            sticker.stickerId = stickerInfoPack.stickerId;
            sticker.stickerCollectionId = stickerInfoPack.stickerCollectionId;
            Utils.post(new Runnable() { // from class: com.narvii.monetization.sticker.picker.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2513a.lambda$onViewCreated$9(stickerInfoPack, sticker);
                }
            });
        }
    }

    public void resetPagerAdapter(String str) {
        int count;
        boolean z6;
        int iIndexOfId;
        int curIndex = getCurIndex();
        PagerAdapter adapter = getAdapter();
        if (adapter == null) {
            count = 0;
        } else {
            count = adapter.getCount();
        }
        if (count == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        resetTabList((TabPagerAdapter) getAdapter());
        List<StickerCollection> list = this.stickerCollectionList;
        if (list == null) {
            this.mViewPager.setCurrentItem(0);
            return;
        }
        if (list != null && getStringParam("collectionId") != null && !this.collectionIdSelected) {
            this.collectionIdSelected = true;
            this.mViewPager.setCurrentItem(Utils.indexOfId(this.stickerCollectionList, getStringParam("collectionId")));
        } else {
            if (z6) {
                this.mViewPager.setCurrentItem(0);
                return;
            }
            if (str != null && (iIndexOfId = Utils.indexOfId(this.stickerCollectionList, str)) != -1) {
                this.mViewPager.setCurrentItem(iIndexOfId);
                return;
            }
            if (Utils.isRtl()) {
                curIndex = this.stickerCollectionList.size() - (count - curIndex);
            }
            this.mViewPager.setCurrentPosition(curIndex);
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
        for (int i11 = 0; i11 < tabLayout.getTabCount(); i11++) {
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
