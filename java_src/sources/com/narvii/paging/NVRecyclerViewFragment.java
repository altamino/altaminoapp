package com.narvii.paging;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.narvii.app.NVFragment;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.Impression.ImpressionHost;
import com.narvii.logging.ImpressionDelegate;
import com.narvii.model.NVObject;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.nvplayerview.broadcast.NetworkConnectChangeReceiver;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.paging.adapter.NVRecyclerViewAdapter;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.state.PageStatusView;
import com.narvii.setting.VideoAutoPlayChangeListener;
import com.narvii.setting.VideoAutoPlayService;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.recycleview.NVRecyclerView;

/* JADX INFO: loaded from: classes9.dex */
public abstract class NVRecyclerViewFragment extends NVFragment implements NetworkConnectChangeReceiver.IWifiStateChangeListener, VideoAutoPlayChangeListener, SwipeRefreshLayout.OnRefreshListener, ImpressionHost {
    protected NVRecyclerViewBaseAdapter adapter;
    ConnectivityManager connectivityManager;
    boolean first;
    private ImpressionDelegate impressionDelegate;
    protected RecyclerView.LayoutManager layoutManager;
    protected IVideoListDelegate mVideoListDelegate;
    protected PageRequestCallback outerRefreshCallback;
    View playerView;
    SharedPreferences prefs;
    protected NVRecyclerView recyclerView;
    protected SnapHelper snapHelper;
    protected SwipeRefreshLayout swipeRefreshLayout;
    public boolean videoAutoPlay;
    protected boolean wifiActive;
    protected PageStatusView pageStatusView = null;
    private int curSnapPosition = -1;
    protected boolean isSwipeRefreshEnabled = true;
    PageRequestCallback refreshCallback = new PageRequestCallback() { // from class: com.narvii.paging.NVRecyclerViewFragment.1
        @Override // com.narvii.paging.source.PageRequestCallback
        public void onPageRequestFinished(int i10) {
            SwipeRefreshLayout swipeRefreshLayout = NVRecyclerViewFragment.this.swipeRefreshLayout;
            if (swipeRefreshLayout != null) {
                swipeRefreshLayout.setRefreshing(false);
            }
            PageRequestCallback pageRequestCallback = NVRecyclerViewFragment.this.outerRefreshCallback;
            if (pageRequestCallback != null) {
                pageRequestCallback.onPageRequestFinished(i10);
            }
            NVRecyclerViewFragment.this.clearImpression();
            if (NVRecyclerViewFragment.this.isActive()) {
                NVRecyclerViewFragment.this.sendPageViewEvent(false);
            }
            NVRecyclerViewFragment nVRecyclerViewFragment = NVRecyclerViewFragment.this;
            IVideoListDelegate iVideoListDelegate = nVRecyclerViewFragment.mVideoListDelegate;
            if (iVideoListDelegate != null && nVRecyclerViewFragment.videoAutoPlay) {
                iVideoListDelegate.onRefresh();
            }
            NVRecyclerViewFragment.this.resetPvId();
            if (NVRecyclerViewFragment.this.isActive()) {
                NVRecyclerViewFragment.this.sendPageViewEvent(true);
            }
            INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(NVRecyclerViewFragment.this.getContext());
            if (nVPlayer != null) {
                nVPlayer.getVideoLogHelper().resetIds();
            }
        }
    };
    NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener = new NVRecyclerViewBaseAdapter.DataSetChangeListener() { // from class: com.narvii.paging.NVRecyclerViewFragment.2
        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter.DataSetChangeListener
        public void onDataSetChanged() {
            NVRecyclerViewFragment.this.updateViews();
            NVRecyclerViewFragment.this.impressionDelegate.postImpressionRunnable();
            NVRecyclerViewFragment nVRecyclerViewFragment = NVRecyclerViewFragment.this;
            IVideoListDelegate iVideoListDelegate = nVRecyclerViewFragment.mVideoListDelegate;
            if (iVideoListDelegate == null || !nVRecyclerViewFragment.videoAutoPlay) {
                return;
            }
            iVideoListDelegate.listViewFirstBecomeVisible();
        }
    };
    View.OnClickListener errorRetryClickListener = new View.OnClickListener() { // from class: com.narvii.paging.NVRecyclerViewFragment.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = NVRecyclerViewFragment.this.adapter;
            if (nVRecyclerViewBaseAdapter != null) {
                nVRecyclerViewBaseAdapter.onErrorRetry();
            }
        }
    };
    View.OnClickListener refreshClickListener = new View.OnClickListener() { // from class: com.narvii.paging.NVRecyclerViewFragment.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = NVRecyclerViewFragment.this.adapter;
            if (nVRecyclerViewBaseAdapter != null) {
                nVRecyclerViewBaseAdapter.refresh(0, null);
            }
        }
    };
    int position = -1;
    RecyclerView.OnScrollListener scrollListener = new RecyclerView.OnScrollListener() { // from class: com.narvii.paging.NVRecyclerViewFragment.5
        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            RecyclerView.LayoutManager layoutManager;
            SnapHelper snapHelper;
            if (i10 == 0 && (layoutManager = recyclerView.getLayoutManager()) != null && (snapHelper = NVRecyclerViewFragment.this.snapHelper) != null) {
                View viewH = snapHelper.h(layoutManager);
                int position = viewH != null ? layoutManager.getPosition(viewH) : -1;
                if (position != -1 && position != NVRecyclerViewFragment.this.curSnapPosition) {
                    RecyclerView.Adapter adapter = recyclerView.getAdapter();
                    NVObject item = adapter instanceof NVRecyclerViewAdapter ? ((NVRecyclerViewAdapter) adapter).getItem(position) : null;
                    NVRecyclerViewFragment nVRecyclerViewFragment = NVRecyclerViewFragment.this;
                    nVRecyclerViewFragment.onSnapPotionChanged(nVRecyclerViewFragment.curSnapPosition, position, item);
                    NVRecyclerViewFragment.this.curSnapPosition = position;
                }
                if (viewH != null) {
                    int position2 = layoutManager.getPosition(viewH);
                    NVRecyclerViewFragment nVRecyclerViewFragment2 = NVRecyclerViewFragment.this;
                    if (position2 != nVRecyclerViewFragment2.position) {
                        View view = nVRecyclerViewFragment2.playerView;
                        if (view instanceof PageView) {
                            ((PageView) view).setVisibleHint(false);
                        }
                        if (viewH instanceof PageView) {
                            ((PageView) viewH).setVisibleHint(NVRecyclerViewFragment.this.getUserVisibleHint());
                        }
                        int i11 = NVRecyclerViewFragment.this.position;
                        if (i11 != -1 && Math.abs(i11 - position2) == 1) {
                            NVRecyclerViewFragment nVRecyclerViewFragment3 = NVRecyclerViewFragment.this;
                            nVRecyclerViewFragment3.onScrollNext(nVRecyclerViewFragment3.playerView, viewH, nVRecyclerViewFragment3.position, position2);
                        }
                        NVRecyclerViewFragment.this.onPlayerViewChanged(position2, viewH);
                        NVRecyclerViewFragment nVRecyclerViewFragment4 = NVRecyclerViewFragment.this;
                        nVRecyclerViewFragment4.position = position2;
                        nVRecyclerViewFragment4.playerView = viewH;
                    }
                }
            }
            NVRecyclerViewFragment.this.impressionDelegate.onScrollIdleStateChanged(i10 == 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            View childAt;
            NVObject item;
            super.onScrolled(recyclerView, i10, i11);
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if ((layoutManager instanceof LinearLayoutManager) && ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition() == NVRecyclerViewFragment.this.firstShownPosition() && !NVRecyclerViewFragment.this.first && (childAt = layoutManager.getChildAt(0)) != null) {
                NVRecyclerViewFragment.this.position = layoutManager.getPosition(childAt);
                NVRecyclerViewFragment nVRecyclerViewFragment = NVRecyclerViewFragment.this;
                int i12 = nVRecyclerViewFragment.position;
                if (i12 != -1 && i12 != nVRecyclerViewFragment.curSnapPosition) {
                    RecyclerView.Adapter adapter = recyclerView.getAdapter();
                    if (adapter instanceof NVRecyclerViewAdapter) {
                        item = ((NVRecyclerViewAdapter) adapter).getItem(NVRecyclerViewFragment.this.position);
                    } else {
                        item = null;
                    }
                    NVRecyclerViewFragment nVRecyclerViewFragment2 = NVRecyclerViewFragment.this;
                    nVRecyclerViewFragment2.onSnapPotionChanged(nVRecyclerViewFragment2.curSnapPosition, NVRecyclerViewFragment.this.position, item);
                    NVRecyclerViewFragment nVRecyclerViewFragment3 = NVRecyclerViewFragment.this;
                    nVRecyclerViewFragment3.curSnapPosition = nVRecyclerViewFragment3.position;
                }
                NVRecyclerViewFragment nVRecyclerViewFragment4 = NVRecyclerViewFragment.this;
                nVRecyclerViewFragment4.onPlayerViewChanged(nVRecyclerViewFragment4.position, childAt);
                NVRecyclerViewFragment nVRecyclerViewFragment5 = NVRecyclerViewFragment.this;
                nVRecyclerViewFragment5.playerView = childAt;
                if (childAt instanceof PageView) {
                    ((PageView) childAt).setVisibleHint(nVRecyclerViewFragment5.getUserVisibleHint());
                }
                NVRecyclerViewFragment.this.first = true;
            }
        }
    };
    private boolean recyclerViewFirstBecomeVisible = false;

    protected abstract NVRecyclerViewBaseAdapter createAdapter();

    protected SnapHelper createSnapHelper() {
        return null;
    }

    protected int firstShownPosition() {
        return 0;
    }

    public View getPlayerView() {
        return this.playerView;
    }

    public RecyclerView getRecyclerView() {
        return this.recyclerView;
    }

    protected int getSwipeRefreshFlag() {
        return 0;
    }

    public IVideoListDelegate getVideoListDelegate() {
        return this.mVideoListDelegate;
    }

    protected IVideoListDelegate initVideoListDelegate() {
        return null;
    }

    protected boolean isRefreshEnable() {
        return this.isSwipeRefreshEnabled;
    }

    @Override // com.narvii.app.NVFragment
    protected boolean observeThemeDownloadFinish() {
        return true;
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        onRefresh(null);
    }

    protected void onScrollNext(View view, View view2, int i10, int i11) {
    }

    protected void onSnapPotionChanged(int i10, int i11, Object obj) {
    }

    protected boolean showGlobalPageStatus() {
        return true;
    }

    @Override // com.narvii.setting.VideoAutoPlayChangeListener
    public void videoAutoPlayChange(int i10) {
        if (i10 == 0) {
            this.videoAutoPlay = true;
        } else if (i10 == 1) {
            this.videoAutoPlay = this.wifiActive;
        } else {
            this.videoAutoPlay = false;
        }
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate == null) {
            return;
        }
        if (this.videoAutoPlay && !iVideoListDelegate.prepared()) {
            this.recyclerView.post(new Runnable() { // from class: com.narvii.paging.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2568a.lambda$videoAutoPlayChange$1();
                }
            });
        }
        this.mVideoListDelegate.setAutoPlay(this.videoAutoPlay);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onWifiStateChange$0() {
        this.mVideoListDelegate.onListViewCreated(this.recyclerView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$videoAutoPlayChange$1() {
        this.mVideoListDelegate.onListViewCreated(this.recyclerView);
    }

    private void setRecyclerViewVisibility(RecyclerView recyclerView, boolean z6) {
        recyclerView.setVisibility(z6 ? 0 : 4);
        if (this.recyclerViewFirstBecomeVisible || !z6) {
            return;
        }
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate != null && this.videoAutoPlay) {
            iVideoListDelegate.listViewFirstBecomeVisible();
        }
        this.recyclerViewFirstBecomeVisible = true;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0028  */
    private void updateWifiActive() {
        boolean z6;
        try {
            if (this.connectivityManager == null) {
                this.connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
            }
            NetworkInfo activeNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                z6 = false;
            } else {
                z6 = true;
                if (activeNetworkInfo.getType() != 1) {
                    z6 = false;
                }
            }
            this.wifiActive = z6;
        } catch (Exception unused) {
        }
    }

    public void addImpressionCollectorInListView(ImpressionCollector impressionCollector) {
        this.impressionDelegate.addImpressionCollectorInListView(impressionCollector);
    }

    protected void clearImpression() {
        this.impressionDelegate.clearImpression();
    }

    public RecyclerView.LayoutManager createLayoutManager() {
        return new LinearLayoutManager(getContext());
    }

    @Override // com.narvii.logging.Impression.ImpressionHost
    public void logImpression() {
        this.impressionDelegate.logImpression();
    }

    @Override // com.narvii.logging.Impression.ImpressionHost
    public void logImpressionQuit() {
        this.impressionDelegate.logImpressionQuit();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_recycleview, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment
    protected void onLoginResult(boolean z6, Intent intent) {
        if (this.adapter == null || !intent.hasExtra("__adapter")) {
            super.onLoginResult(z6, intent);
        } else {
            this.adapter.dispatchLoginResult(z6, intent);
        }
    }

    @CallSuper
    protected void onPlayerViewChanged(int i10, View view) {
        if (view instanceof PageView) {
            ((PageView) view).resetPvId();
        }
    }

    public void onRefresh(PageRequestCallback pageRequestCallback) {
        this.outerRefreshCallback = pageRequestCallback;
        this.adapter.refresh(getSwipeRefreshFlag(), this.refreshCallback);
    }

    @Override // com.narvii.nvplayerview.broadcast.NetworkConnectChangeReceiver.IWifiStateChangeListener
    public void onWifiStateChange(boolean z6) {
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate == null || z6 == this.wifiActive) {
            return;
        }
        this.wifiActive = z6;
        if (z6 && !iVideoListDelegate.prepared()) {
            this.recyclerView.post(new Runnable() { // from class: com.narvii.paging.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2564a.lambda$onWifiStateChange$0();
                }
            });
        }
        updateVideoAutoPlay();
        this.mVideoListDelegate.setAutoPlay(this.videoAutoPlay);
    }

    public void setEmptyMessage(int i10) {
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            pageStatusView.setEmptyMessage(i10);
        }
    }

    public View setGlobalEmptyView(int i10) {
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            return pageStatusView.setEmptyView(i10);
        }
        return null;
    }

    public View setGlobalErrorView(int i10) {
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            return pageStatusView.setErrorView(i10);
        }
        return null;
    }

    public View setGlobalLoadingView(int i10) {
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            return pageStatusView.setLoadingView(i10);
        }
        return null;
    }

    public void setOverScrollMode(int i10) {
        NVRecyclerView nVRecyclerView = this.recyclerView;
        if (nVRecyclerView != null) {
            nVRecyclerView.setOverScrollMode(i10);
        }
    }

    public void setSwipeRefreshEnabled(boolean z6) {
        this.isSwipeRefreshEnabled = z6;
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setEnabled(isRefreshEnable());
        }
    }

    @Override // com.narvii.app.NVFragment
    public void updateThemeUI() {
        if (this.swipeRefreshLayout != null) {
            this.swipeRefreshLayout.setColorSchemeColors(((ConfigService) getService("config")).getTheme().colorPrimary());
        }
    }

    protected void updateVideoAutoPlay() {
        if (this.prefs == null) {
            this.prefs = (SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY);
        }
        int i10 = this.prefs.getInt(INVPlayer.VIDEO_AUTO_PLAY_PREFS_KEY, 0);
        if (i10 == 0) {
            this.videoAutoPlay = true;
        } else if (i10 == 1) {
            this.videoAutoPlay = this.wifiActive;
        } else {
            this.videoAutoPlay = false;
        }
    }

    private void ensureGlobalPageStatusView(View view) {
        if (!showGlobalPageStatus()) {
            PageStatusView pageStatusView = this.pageStatusView;
            if (pageStatusView != null) {
                pageStatusView.setVisibility(8);
                return;
            }
            return;
        }
        if (this.pageStatusView == null) {
            PageStatusView pageStatusView2 = new PageStatusView(view.getContext());
            this.pageStatusView = pageStatusView2;
            pageStatusView2.setId(R.id.status_view);
            ((ViewGroup) this.recyclerView.getParent()).addView(this.pageStatusView, -1, this.recyclerView.getLayoutParams());
        }
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate != null && this.videoAutoPlay) {
            iVideoListDelegate.onActiveChanged(z6);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.snapHelper = createSnapHelper();
        this.impressionDelegate = new ImpressionDelegate(this);
        IVideoListDelegate iVideoListDelegateInitVideoListDelegate = initVideoListDelegate();
        this.mVideoListDelegate = iVideoListDelegateInitVideoListDelegate;
        if (iVideoListDelegateInitVideoListDelegate != null) {
            updateWifiActive();
            updateVideoAutoPlay();
            NetworkConnectChangeReceiver.getInstance(getContext()).registerWifiStateChangeListener(this);
            VideoAutoPlayService.INSTANCE.registerVideoAutoPlayChangeListener(this);
        }
        if (bundle != null) {
            this.isSwipeRefreshEnabled = bundle.getBoolean("isRefreshEnable", true);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.onDetach();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.removeDataSetChangeListener(this.dataSetChangeListener);
            IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
            if (iVideoListDelegate != null) {
                iVideoListDelegate.onDestroy();
                NetworkConnectChangeReceiver.getInstance(getContext()).unRegisterWifiStateChangeListener(this);
                VideoAutoPlayService.INSTANCE.unRegisterVideoAutoPlayChangeListener(this);
            }
        }
    }

    @Override // com.narvii.app.NVFragment
    public void onLogLevelActiveChanged(boolean z6) {
        if (!canSendActiveLog(z6)) {
            return;
        }
        super.onLogLevelActiveChanged(z6);
        this.impressionDelegate.onLogActiveChanged(z6);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.recyclerView != null) {
            for (int i10 = 0; i10 < this.recyclerView.getChildCount(); i10++) {
                View childAt = this.recyclerView.getChildAt(i10);
                if (childAt instanceof PageView) {
                    ((PageView) childAt).onPause();
                }
            }
            IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
            if (iVideoListDelegate != null && this.videoAutoPlay) {
                iVideoListDelegate.onPause();
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.recyclerView != null) {
            for (int i10 = 0; i10 < this.recyclerView.getChildCount(); i10++) {
                View childAt = this.recyclerView.getChildAt(i10);
                if (childAt instanceof PageView) {
                    ((PageView) childAt).onResume();
                }
            }
            IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
            if (iVideoListDelegate != null && this.videoAutoPlay) {
                iVideoListDelegate.onResume();
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isRefreshEnable", this.isSwipeRefreshEnabled);
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i10) {
        boolean z6;
        super.onThemeChange(i10);
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            if (i10 != 2 && !isDarkTheme()) {
                z6 = false;
            } else {
                z6 = true;
            }
            pageStatusView.setDarkTheme(z6);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.adapter = createAdapter();
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh);
        this.swipeRefreshLayout = swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setEnabled(isRefreshEnable());
            this.swipeRefreshLayout.setOnRefreshListener(this);
        }
        NVRecyclerView nVRecyclerView = (NVRecyclerView) view.findViewById(R.id.recycle_layout);
        this.recyclerView = nVRecyclerView;
        this.impressionDelegate.setListView(nVRecyclerView);
        RecyclerView.LayoutManager layoutManagerCreateLayoutManager = createLayoutManager();
        this.layoutManager = layoutManagerCreateLayoutManager;
        this.recyclerView.setLayoutManager(layoutManagerCreateLayoutManager);
        this.recyclerView.setAdapter(this.adapter);
        this.recyclerView.setItemAnimator(null);
        this.recyclerView.addOnScrollListener(this.scrollListener);
        this.pageStatusView = (PageStatusView) view.findViewById(R.id.status_view);
        ensureGlobalPageStatusView(view);
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            pageStatusView.setVisibility(8);
            this.pageStatusView.setEmptyRetryListener(this.refreshClickListener);
            this.pageStatusView.setErrorRetryListener(this.errorRetryClickListener);
        }
        SnapHelper snapHelper = this.snapHelper;
        if (snapHelper != null) {
            snapHelper.b(this.recyclerView);
        }
        this.adapter.addDataSetChangeListener(this.dataSetChangeListener);
        this.adapter.onAttach();
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate != null && this.videoAutoPlay) {
            iVideoListDelegate.onListViewCreated(this.recyclerView);
        }
        if (showGlobalPageStatus()) {
            updateViews();
        }
    }

    @Override // com.narvii.app.NVFragment
    protected void updateChildrenVisibleHint(boolean z6) {
        super.updateChildrenVisibleHint(z6);
        NVRecyclerView nVRecyclerView = this.recyclerView;
        if (nVRecyclerView != null) {
            View view = this.playerView;
            if ((view instanceof PageView) && nVRecyclerView.indexOfChild(view) != -1) {
                ((PageView) this.playerView).setVisibleHint(z6);
            }
        }
    }

    public void updateViews() {
        boolean z6;
        int i10;
        int i11;
        if (!showGlobalPageStatus()) {
            return;
        }
        String errorMessage = this.adapter.getErrorMessage();
        boolean zIsEmpty = this.adapter.isEmpty();
        boolean z10 = false;
        if (this.adapter.isLoading() && !this.adapter.isListShow()) {
            z6 = true;
        } else {
            z6 = false;
        }
        boolean z11 = !TextUtils.isEmpty(errorMessage);
        this.pageStatusView.setErrorMessage(this.adapter.getErrorMessage());
        this.pageStatusView.setDarkTheme(isDarkTheme());
        if (z11) {
            i10 = 2;
        } else if (z6) {
            i10 = 1;
        } else if (zIsEmpty) {
            i10 = 3;
        } else {
            i10 = 0;
        }
        this.pageStatusView.updateStatus(i10);
        PageStatusView pageStatusView = this.pageStatusView;
        if (!zIsEmpty && !z6 && (!z11 || this.adapter.isListShow())) {
            i11 = 4;
        } else {
            i11 = 0;
        }
        pageStatusView.setVisibility(i11);
        NVRecyclerView nVRecyclerView = this.recyclerView;
        if (this.adapter.isListShow() && !z6) {
            z10 = true;
        }
        setRecyclerViewVisibility(nVRecyclerView, z10);
    }
}
