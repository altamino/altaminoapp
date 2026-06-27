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
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.PagerAdapter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.TabPagerAdapter;
import com.narvii.app.TabPagerFragment;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
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
import com.narvii.widget.ThumbImageView;
import ffmpeg.base.NVEditor;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.UUID;

/* loaded from: classes3.dex */
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
        public void onStickerPreviewStart() {
            if (((TabPagerFragment) StickerPickerTabFragment.this).mViewPager != null) {
                ((TabPagerFragment) StickerPickerTabFragment.this).mViewPager.disableScroll = true;
            }
        }

        @Override // com.narvii.monetization.sticker.StickerPreviewListener
        public void onStickerPreviewEnd() {
            if (((TabPagerFragment) StickerPickerTabFragment.this).mViewPager != null) {
                ((TabPagerFragment) StickerPickerTabFragment.this).mViewPager.disableScroll = false;
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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isFinalPage() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return true;
    }

    public void setCurrentSticker(Sticker sticker) {
        this.currentSticker = sticker;
        if (isAdded()) {
            notifyPagerSelectedStickerChanged(sticker);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("collectionIdSelected", this.collectionIdSelected);
    }

    public void notifyPagerSelectedStickerChanged(Sticker sticker) {
        Adapter adapter = (Adapter) getAdapter();
        if (adapter != null) {
            for (int i = 0; i < adapter.getCount(); i++) {
                Fragment fragmentAt = adapter.getFragmentAt(i);
                if (fragmentAt instanceof MoodPickerListFragment) {
                    ((MoodPickerListFragment) fragmentAt).setMood(sticker == null ? null : sticker.getMoodUnicode());
                }
                if (fragmentAt instanceof StickerPickerListFragment) {
                    ((StickerPickerListFragment) fragmentAt).setSelectedSticker(sticker);
                }
            }
        }
        StickerPickerListFragment stickerPickerListFragment = (StickerPickerListFragment) getChildFragmentManager().findFragmentByTag("trial");
        if (stickerPickerListFragment != null) {
            stickerPickerListFragment.setSelectedSticker(sticker);
        }
    }

    @Override // com.narvii.app.TabPagerFragment
    protected PagerAdapter createAdapter() {
        Adapter adapter = new Adapter(getContext(), getChildFragmentManager());
        resetTabList(adapter);
        return adapter;
    }

    private void resetTabList(TabPagerAdapter tabPagerAdapter) {
        TabPagerAdapter.TabInfo tabInfo;
        ArrayList arrayList = new ArrayList();
        if (this.stickerCollectionList != null) {
            for (int i = 0; i < this.stickerCollectionList.size(); i++) {
                StickerCollection stickerCollection = this.stickerCollectionList.get(Utils.isRtl() ? (this.stickerCollectionList.size() - 1) - i : i);
                String string = stickerCollection.id() == null ? UUID.randomUUID().toString() : stickerCollection.id();
                View tabView = getTabView(stickerCollection);
                if (stickerCollection.isLocalMood()) {
                    Bundle bundle = new Bundle();
                    bundle.putString(CommentListFragment.COMMENT_KEY_SOURCE, getStringParam(CommentListFragment.COMMENT_KEY_SOURCE));
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

    public void resetPagerAdapter(String str) throws Resources.NotFoundException {
        int iIndexOfId;
        int curIndex = getCurIndex();
        PagerAdapter adapter = getAdapter();
        boolean z = false;
        int count = adapter == null ? 0 : adapter.getCount();
        boolean z2 = count == 0;
        resetTabList((TabPagerAdapter) getAdapter());
        List<StickerCollection> list = this.stickerCollectionList;
        if (list == null) {
            this.mViewPager.setCurrentItem(0);
            return;
        }
        if (list != null && getStringParam("collectionId") != null && !this.collectionIdSelected) {
            this.collectionIdSelected = true;
            this.mViewPager.setCurrentItem(Utils.indexOfId(this.stickerCollectionList, getStringParam("collectionId")));
            return;
        }
        if (z2) {
            this.mViewPager.setCurrentItem(0);
            return;
        }
        if (str != null && (iIndexOfId = Utils.indexOfId(this.stickerCollectionList, str)) != -1) {
            this.mViewPager.setCurrentItem(iIndexOfId);
            z = true;
        }
        if (z) {
            return;
        }
        if (Utils.isRtl()) {
            curIndex = this.stickerCollectionList.size() - (count - curIndex);
        }
        this.mViewPager.setCurrentPosition(curIndex);
    }

    public void selectStickerCollection(StickerCollection stickerCollection) throws Resources.NotFoundException {
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

    public void correctScrollTab() {
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout != null) {
            tabLayout.scrollToCurrentPosition();
        }
    }

    public void setStickerSelectListener(StickerSelectListener stickerSelectListener) {
        this.stickerSelectListener = stickerSelectListener;
    }

    private View getTabView(StickerCollection stickerCollection) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.sticker_tab_layout, (ViewGroup) null);
        viewInflate.setBackground(getResources().getDrawable(this.editorTheme ? R.drawable.mood_tab_bg_dark : R.drawable.mood_tab_bg));
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
    public void showSharedStickerPackPicker(boolean z) {
        if (this.dialog == null) {
            if (this.sharedObserver == null) {
                this.sharedObserver = new AnonymousClass4();
            }
            this.stickerService.removeSharedStickerPackObserver(this.sharedObserver);
            List<StickerCollection> sharedStickerPackList = this.stickerService.getSharedStickerPackList();
            if (!z && CollectionUtils.isEmpty(sharedStickerPackList)) {
                NVToast.makeText(getContext(), R.string.no_shared_sticker_pack_toast, 0).show();
                return;
            }
            if (CollectionUtils.isEmpty(sharedStickerPackList)) {
                if (this.sharedDialog == null) {
                    this.sharedDialog = new ProgressDialog(getContext());
                }
                this.sharedDialog.show();
                this.sharedDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.monetization.sticker.picker.-$$Lambda$StickerPickerTabFragment$jEmxJ7Thhj4y8iSs6irOGkAUYf4
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        this.f$0.lambda$showSharedStickerPackPicker$0$StickerPickerTabFragment(dialogInterface);
                    }
                });
                if (!this.stickerService.isSharedRequesting()) {
                    this.stickerService.refreshSharedStickerPackList(true);
                }
                this.stickerService.addSharedStickerPackListObserver(this.sharedObserver);
                return;
            }
            this.dialog = new SharedStickerCollectionPickerDialog(this, this, sharedStickerPackList, this.stickerService.sharedStickerPackCount);
            this.dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.monetization.sticker.picker.-$$Lambda$StickerPickerTabFragment$MM32-iHPxebeWycDmqImcgDQHp8
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.lambda$showSharedStickerPackPicker$1$StickerPickerTabFragment(dialogInterface);
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

    /* renamed from: com.narvii.monetization.sticker.picker.StickerPickerTabFragment$4, reason: invalid class name */
    class AnonymousClass4 implements StickerService.StickerCollectionListObserver {
        AnonymousClass4() {
        }

        @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
        public void onListChanged() {
            StickerPickerTabFragment.this.sharedFinishRunnable = new Runnable() { // from class: com.narvii.monetization.sticker.picker.-$$Lambda$StickerPickerTabFragment$4$N4B2iBu2IOnEfWVJUx6XM4pr-X0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onListChanged$0$StickerPickerTabFragment$4();
                }
            };
            Utils.postDelayed(StickerPickerTabFragment.this.sharedFinishRunnable, (StickerPickerTabFragment.this.sharedDialog == null || !StickerPickerTabFragment.this.sharedDialog.isShowing()) ? 0L : StickerPickerTabFragment.this.sharedDialog.getShowDelay());
        }

        public /* synthetic */ void lambda$onListChanged$0$StickerPickerTabFragment$4() {
            if (StickerPickerTabFragment.this.sharedDialog != null) {
                StickerPickerTabFragment.this.sharedDialog.dismiss();
            }
            StickerPickerTabFragment.this.showSharedStickerPackPicker(false);
        }

        @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
        public void onRequestFailed() {
            StickerPickerTabFragment.this.sharedFailRunnable = new Runnable() { // from class: com.narvii.monetization.sticker.picker.-$$Lambda$StickerPickerTabFragment$4$_xeaDL6xTE0KlHAkGaq1HceoWnk
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onRequestFailed$1$StickerPickerTabFragment$4();
                }
            };
            Utils.postDelayed(StickerPickerTabFragment.this.sharedFailRunnable, (StickerPickerTabFragment.this.sharedDialog == null || !StickerPickerTabFragment.this.sharedDialog.isShowing()) ? 0L : StickerPickerTabFragment.this.sharedDialog.getShowDelay());
        }

        public /* synthetic */ void lambda$onRequestFailed$1$StickerPickerTabFragment$4() {
            if (StickerPickerTabFragment.this.sharedDialog != null) {
                StickerPickerTabFragment.this.sharedDialog.dismiss();
            }
            NVToast.makeText(StickerPickerTabFragment.this.getContext(), StickerPickerTabFragment.this.stickerService.getSharedError(), 0).show();
        }
    }

    public /* synthetic */ void lambda$showSharedStickerPackPicker$0$StickerPickerTabFragment(DialogInterface dialogInterface) {
        this.stickerService.removeSharedStickerPackObserver(this.sharedObserver);
        Utils.handler.removeCallbacks(this.sharedFinishRunnable);
        Utils.handler.removeCallbacks(this.sharedFailRunnable);
    }

    public /* synthetic */ void lambda$showSharedStickerPackPicker$1$StickerPickerTabFragment(DialogInterface dialogInterface) {
        updateCommunityStickerView();
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        SharedStickerCollectionPickerDialog sharedStickerCollectionPickerDialog = this.dialog;
        if (sharedStickerCollectionPickerDialog != null) {
            sharedStickerCollectionPickerDialog.dismiss();
        }
    }

    @Override // com.narvii.app.TabPagerFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        final StickerInfoPack stickerInfoPack;
        super.onViewCreated(view, bundle);
        this.trialLayout = view.findViewById(R.id.shared_sticker_pack_trial);
        this.progressView = view.findViewById(android.R.id.progress);
        this.errorView = view.findViewById(R.id.error_container);
        this.retryView = view.findViewById(R.id.retry);
        this.retryView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.-$$Lambda$StickerPickerTabFragment$GfFCGC4B4xAdsAg3rCWEjPUWXRk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$2$StickerPickerTabFragment(view2);
            }
        });
        this.tabLayout = view.findViewById(R.id.picker_tab_layout);
        if (this.scrollableTabLayout != null) {
            this.scrollableTabLayout.setScrollOffset((Utils.getScreenWidth(getContext()) - (Utils.dpToPxInt(getContext(), 50.0f) * 3)) / 2);
            this.scrollableTabLayout.setOnTabItemClickListener(this);
        }
        updateCommunityStickerView();
        this.communityStickers.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.-$$Lambda$StickerPickerTabFragment$gMvAGAgGDQ1LUlPAPk6ZJblAz2U
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$3$StickerPickerTabFragment(view2);
            }
        });
        if (this.editorTheme) {
            view.findViewById(R.id.sticker_add).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.-$$Lambda$StickerPickerTabFragment$9m4T7YDV4z3Lac60DgSP8ZGJ9Cw
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$onViewCreated$4$StickerPickerTabFragment(view2);
                }
            });
            view.findViewById(R.id.sticker_store).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.-$$Lambda$StickerPickerTabFragment$jkDLyy_ZZ6rFJBJDkllvq6X8liA
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$onViewCreated$5$StickerPickerTabFragment(view2);
                }
            });
            view.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.-$$Lambda$StickerPickerTabFragment$vmmUPjLuHC0kbYXdeUUwrvJ_M2w
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$onViewCreated$6$StickerPickerTabFragment(view2);
                }
            });
            view.findViewById(R.id.submit).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.-$$Lambda$StickerPickerTabFragment$HGy_IsjViCGoD-4HoryNrlOSMmY
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$onViewCreated$7$StickerPickerTabFragment(view2);
                }
            });
        } else {
            view.findViewById(R.id.sticker_add).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.picker.-$$Lambda$StickerPickerTabFragment$MF-MUs5py1RvnBYiv5eFw3IFBe0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$onViewCreated$8$StickerPickerTabFragment(view2);
                }
            });
        }
        updateViews();
        resetPagerAdapter(null);
        if (!this.editorTheme || (stickerInfoPack = (StickerInfoPack) JacksonUtils.readAs(getStringParam("activeSticker"), StickerInfoPack.class)) == null) {
            return;
        }
        final Sticker sticker = new Sticker();
        sticker.stickerId = stickerInfoPack.stickerId;
        sticker.stickerCollectionId = stickerInfoPack.stickerCollectionId;
        Utils.post(new Runnable() { // from class: com.narvii.monetization.sticker.picker.-$$Lambda$StickerPickerTabFragment$Nk56aw3ENpAKGaLEcsGw7ZDhMiw
            @Override // java.lang.Runnable
            public final void run() throws Resources.NotFoundException {
                this.f$0.lambda$onViewCreated$9$StickerPickerTabFragment(stickerInfoPack, sticker);
            }
        });
    }

    public /* synthetic */ void lambda$onViewCreated$2$StickerPickerTabFragment(View view) {
        retry();
    }

    public /* synthetic */ void lambda$onViewCreated$3$StickerPickerTabFragment(View view) {
        LogEvent.clickBuilder(this, ActSemantic.expand).area("SharedStickerPack").send();
        showSharedStickerPackPicker(true);
    }

    public /* synthetic */ void lambda$onViewCreated$4$StickerPickerTabFragment(View view) {
        LogEvent.clickBuilder(this, ActSemantic.popUp).area("More").send();
        this.stickerHelper.pickStickerImage(this.mediaPickerFragment, false);
    }

    public /* synthetic */ void lambda$onViewCreated$5$StickerPickerTabFragment(View view) {
        goToStore();
    }

    public /* synthetic */ void lambda$onViewCreated$6$StickerPickerTabFragment(View view) {
        dismiss(true);
    }

    public /* synthetic */ void lambda$onViewCreated$7$StickerPickerTabFragment(View view) {
        dismiss(false);
    }

    public /* synthetic */ void lambda$onViewCreated$8$StickerPickerTabFragment(View view) {
        goToStore();
    }

    public /* synthetic */ void lambda$onViewCreated$9$StickerPickerTabFragment(StickerInfoPack stickerInfoPack, Sticker sticker) throws Resources.NotFoundException {
        StickerCollection stickerCollection = new StickerCollection();
        stickerCollection.collectionId = stickerInfoPack.stickerCollectionId;
        selectStickerCollection(stickerCollection);
        setCurrentSticker(sticker);
    }

    private void dismiss(boolean z) {
        IEditorStickerPickerCallback iEditorStickerPickerCallback = this.editorStickerPickerCallback;
        if (iEditorStickerPickerCallback != null) {
            if (z) {
                iEditorStickerPickerCallback.forsakePreviewSticker();
            } else {
                iEditorStickerPickerCallback.savePreviewSticker();
            }
        }
        this.videoManager.abortAnimatedStickerConvertTasks();
        this.videoManager.removeAllViewInstallStickerCallback();
        getFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
        getFragmentManager().executePendingTransactions();
    }

    private void goToStore() {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("StoreIcon").send();
        Intent intent = FragmentWrapperActivity.intent(MonetizationStoreSectionDetailFragment.class);
        intent.putExtra("Source", "Keyboard");
        intent.putExtra("sectionGroupId", "sticker");
        if (isGlobalInteractionScope()) {
            intent.putExtra("__communityId", 0);
        }
        startActivity(intent);
    }

    private void updateCommunityStickerView() {
        if (getView() == null) {
            return;
        }
        this.communityStickers = (ThumbImageView) getView().findViewById(R.id.community_stickers);
        Community community = ((CommunityService) getService("community")).getCommunity(((ConfigService) getService("config")).getCommunityId());
        SharedStickerCollectionPickerDialog sharedStickerCollectionPickerDialog = this.dialog;
        if (sharedStickerCollectionPickerDialog != null && sharedStickerCollectionPickerDialog.isShowing()) {
            this.communityStickers.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.communityStickers.setShadowColor(0);
            this.communityStickers.setShadowSize(0);
            this.communityStickers.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_shared_sticker_close));
        } else {
            this.communityStickers.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.communityStickers.setImageUrl(community != null ? community.icon : null);
            this.communityStickers.setShadowColor(1711276032);
            this.communityStickers.setShadowSize(Utils.dpToPxInt(getContext(), 4.0f));
        }
        getView().findViewById(R.id.community_stickers_layout).setSelected(this.showingTrial);
        getView().findViewById(R.id.community_stickers_layout).setVisibility(isGlobalInteractionScope() ? 8 : 0);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
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
            this.affiliationsService = (AffiliationsService) getService("affiliations");
            this.affiliationsService.addAffiliationChangeListener(this);
        }
        this.stickerService.addStickerCollectionListObserver(this);
        this.stickerService.addSharedStickerPackListObserver(this.sharedEmptyObserver);
        if (bundle != null) {
            this.collectionIdSelected = bundle.getBoolean("collectionIdSelected");
        }
        this.editorTheme = TextUtils.equals(getStringParam(CommentListFragment.COMMENT_KEY_SOURCE), "editor");
        this.stickerHelper = new StickerHelper(this);
        this.mediaPickerFragment = (MediaPickerFragment) getFragmentManager().findFragmentByTag("mediaPicker");
        if (this.mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            getFragmentManager().beginTransaction().add(this.mediaPickerFragment, "mediaPicker").commitAllowingStateLoss();
        }
        this.mediaPickerFragment.addOnResultListener(this);
        ((VideoManager) getService("videoManager")).registerStickerInstallCallback(this);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
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

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.editorTheme) {
            return layoutInflater.inflate(R.layout.fragment_sticker_picker_tab_editor, viewGroup, false);
        }
        if (getBooleanParam("tabBottom")) {
            return layoutInflater.inflate(R.layout.fragment_sticker_picker_tab_bottom, viewGroup, false);
        }
        return layoutInflater.inflate(R.layout.fragment_sticker_picker, viewGroup, false);
    }

    private void updateViews() {
        if (getView() == null) {
            return;
        }
        this.stickerCollectionList = filterStickerCollections(this.stickerService.getStickerCollectionList());
        String error = this.stickerService.getError();
        List<StickerCollection> list = this.stickerCollectionList;
        boolean z = list != null && list.size() > 0;
        boolean z2 = !TextUtils.isEmpty(error);
        if (new CommunityConfigHelper(this).isPremiumFeatureEnabled()) {
            this.tabLayout.setVisibility(z ? 0 : 4);
        } else {
            this.tabLayout.setVisibility(8);
        }
        this.mViewPager.setVisibility(z ? 0 : 4);
        this.progressView.setVisibility((z || z2) ? 8 : 0);
        this.errorView.setVisibility((z || !z2) ? 8 : 0);
    }

    private void retry() {
        this.stickerService.refreshStickerCollectionInfo(true);
        updateViews();
    }

    private List<StickerCollection> filterStickerCollections(List<StickerCollection> list) {
        if (list != null && this.editorTheme) {
            ListIterator<StickerCollection> listIterator = list.listIterator();
            while (true) {
                if (!listIterator.hasNext()) {
                    break;
                }
                if (listIterator.next().isPersonal()) {
                    listIterator.remove();
                    break;
                }
            }
        }
        return list;
    }

    @Override // com.narvii.app.TabPagerFragment
    protected void updateTabView(int i) {
        super.updateTabView(i);
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout == null) {
            return;
        }
        int i2 = 0;
        while (i2 < tabLayout.getTabCount()) {
            View childTabAt = tabLayout.getChildTabAt(i2);
            if (childTabAt != null) {
                childTabAt.setSelected(i2 == i);
            }
            i2++;
        }
    }

    @Override // com.narvii.app.TabPagerFragment
    public Drawable tabLayoutBackground() {
        return new ColorDrawable(this.editorTheme ? Color.parseColor("#2C2C2D") : -1);
    }

    @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
    public void onListChanged() throws Resources.NotFoundException {
        String currentSelectedCollectionId = getCurrentSelectedCollectionId();
        updateViews();
        resetPagerAdapter(currentSelectedCollectionId);
    }

    @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
    public void onRequestFailed() {
        updateViews();
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
        getChildFragmentManager().beginTransaction().replace(R.id.shared_sticker_pack_trial, stickerPickerListFragment, "trial").commitAllowingStateLoss();
        showTrial(true);
        this.trialStickerCollection = stickerCollection;
        SharedStickerCollectionPickerDialog sharedStickerCollectionPickerDialog = this.dialog;
        if (sharedStickerCollectionPickerDialog != null) {
            sharedStickerCollectionPickerDialog.dismiss();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return this.editorTheme ? "StickerPicker" : "StickerKeyboard";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showTrial(boolean z) {
        ViewUtils.show(this.trialLayout, z);
        this.showingTrial = z;
        NVPagerTabLayout nVPagerTabLayout = this.scrollableTabLayout;
        if (nVPagerTabLayout != null) {
            nVPagerTabLayout.setShowSelectedStatus(!z);
        }
        if (!z) {
            this.trialStickerCollection = null;
            this.dialog = null;
        }
        updateCommunityStickerView();
    }

    @Override // com.narvii.app.NVFragment
    protected boolean canSendActiveLog(boolean z) {
        if (getView() == null) {
            return false;
        }
        if (!z || getView().isShown()) {
            return super.canSendActiveLog(z);
        }
        return false;
    }

    @Override // com.narvii.widget.NVPagerTabLayout.OnTabItemClickListener
    public void onTabItemClicked(int i) {
        LogEvent.clickBuilder(this, ActSemantic.tabSelected).area("StickerPack").send();
        if (getChildFragmentManager() == null) {
            return;
        }
        Fragment fragmentFindFragmentByTag = getChildFragmentManager().findFragmentByTag("trial");
        if (fragmentFindFragmentByTag != null) {
            getChildFragmentManager().beginTransaction().remove(fragmentFindFragmentByTag).commitAllowingStateLoss();
        }
        showTrial(false);
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (!this.editorTheme) {
            return false;
        }
        dismiss(true);
        return true;
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPicker
    public void setEditorStickerPickerCallback(IEditorStickerPickerCallback iEditorStickerPickerCallback) {
        this.editorStickerPickerCallback = iEditorStickerPickerCallback;
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPicker
    public void onEditorStickerRemoved() {
        setCurrentSticker(null);
    }

    @Override // com.narvii.video.attachment.sticker.IEditorStickerPicker
    public void onLocalAnimatedStickerConvertTerminated() {
        StickerInfoPack stickerInfoPack;
        if (this.editorTheme && this.stickerFromLocalPicker && (stickerInfoPack = this.installingSticker) != null) {
            this.videoManager.abortAnimatedStickerConvertTask(stickerInfoPack);
            String str = this.installingSticker.installedPath;
            FileUtils.deleteFile(str == null ? null : new File(str));
            this.stickerFromLocalPicker = false;
            this.installingSticker = null;
        }
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstallStart(StickerInfoPack stickerInfoPack) {
        this.installingSticker = stickerInfoPack;
    }

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstalled(StickerInfoPack stickerInfoPack) {
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

    @Override // com.narvii.video.services.VideoManager.IInstallStickerCallback
    public void onStickerInstallFailed(Sticker sticker) {
        Log.e(NVEditor.TAG, "Sticker installed failed, collection id: " + sticker.stickerCollectionId + " id: " + sticker.stickerId);
        this.installingSticker = null;
        this.stickerFromLocalPicker = false;
        IEditorStickerPickerCallback iEditorStickerPickerCallback = this.editorStickerPickerCallback;
        if (iEditorStickerPickerCallback != null) {
            iEditorStickerPickerCallback.onStickerInstallFailed();
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
        int i = bundle == null ? 2 : bundle.getInt(MediaPickerFragment.PICK_FROM, 2);
        this.stickerFromLocalPicker = true;
        String absolutePath = path.getAbsolutePath();
        Sticker sticker = new Sticker();
        sticker.stickerId = FileUtils.md5(path.getPath());
        sticker.sourceType = i != 3 ? 2 : 3;
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

    class Adapter extends TabPagerAdapter {
        public Adapter(Context context, FragmentManager fragmentManager) {
            super(context, fragmentManager);
        }

        @Override // com.narvii.util.FixedFragmentStatePagerAdapter, android.support.v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            Object objInstantiateItem = super.instantiateItem(viewGroup, i);
            StickerCollection stickerCollection = null;
            if (objInstantiateItem instanceof MoodPickerListFragment) {
                MoodPickerListFragment moodPickerListFragment = (MoodPickerListFragment) objInstantiateItem;
                moodPickerListFragment.setIsEditorTheme(StickerPickerTabFragment.this.editorTheme);
                moodPickerListFragment.setStickerSelectListener(StickerPickerTabFragment.this.internalStickerSelectListener);
                StickerPickerTabFragment stickerPickerTabFragment = StickerPickerTabFragment.this;
                if (stickerPickerTabFragment.showSelected) {
                    moodPickerListFragment.setMood(stickerPickerTabFragment.currentSticker == null ? null : StickerPickerTabFragment.this.currentSticker.getMoodUnicode());
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
                        i = (StickerPickerTabFragment.this.stickerCollectionList.size() - 1) - i;
                    }
                    stickerCollection = StickerPickerTabFragment.this.stickerCollectionList.get(i);
                }
                stickerPickerListFragment.setStickerCollection(stickerCollection);
            }
            return objInstantiateItem;
        }
    }
}
