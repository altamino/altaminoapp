package com.narvii.paging;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SnapHelper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVFragment;
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

/* loaded from: classes3.dex */
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
        public void onPageRequestFinished(int i) {
            SwipeRefreshLayout swipeRefreshLayout = NVRecyclerViewFragment.this.swipeRefreshLayout;
            if (swipeRefreshLayout != null) {
                swipeRefreshLayout.setRefreshing(false);
            }
            PageRequestCallback pageRequestCallback = NVRecyclerViewFragment.this.outerRefreshCallback;
            if (pageRequestCallback != null) {
                pageRequestCallback.onPageRequestFinished(i);
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
        @Override // android.support.v7.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            RecyclerView.LayoutManager layoutManager;
            SnapHelper snapHelper;
            if (i == 0 && (layoutManager = recyclerView.getLayoutManager()) != null && (snapHelper = NVRecyclerViewFragment.this.snapHelper) != null) {
                View viewFindSnapView = snapHelper.findSnapView(layoutManager);
                int position = viewFindSnapView != null ? layoutManager.getPosition(viewFindSnapView) : -1;
                if (position != -1 && position != NVRecyclerViewFragment.this.curSnapPosition) {
                    RecyclerView.Adapter adapter = recyclerView.getAdapter();
                    NVObject item = adapter instanceof NVRecyclerViewAdapter ? ((NVRecyclerViewAdapter) adapter).getItem(position) : null;
                    NVRecyclerViewFragment nVRecyclerViewFragment = NVRecyclerViewFragment.this;
                    nVRecyclerViewFragment.onSnapPotionChanged(nVRecyclerViewFragment.curSnapPosition, position, item);
                    NVRecyclerViewFragment.this.curSnapPosition = position;
                }
                if (viewFindSnapView != null) {
                    int position2 = layoutManager.getPosition(viewFindSnapView);
                    NVRecyclerViewFragment nVRecyclerViewFragment2 = NVRecyclerViewFragment.this;
                    if (position2 != nVRecyclerViewFragment2.position) {
                        View view = nVRecyclerViewFragment2.playerView;
                        if (view instanceof PageView) {
                            ((PageView) view).setVisibleHint(false);
                        }
                        if (viewFindSnapView instanceof PageView) {
                            ((PageView) viewFindSnapView).setVisibleHint(NVRecyclerViewFragment.this.getUserVisibleHint());
                        }
                        int i2 = NVRecyclerViewFragment.this.position;
                        if (i2 != -1 && Math.abs(i2 - position2) == 1) {
                            NVRecyclerViewFragment nVRecyclerViewFragment3 = NVRecyclerViewFragment.this;
                            nVRecyclerViewFragment3.onScrollNext(nVRecyclerViewFragment3.playerView, viewFindSnapView, nVRecyclerViewFragment3.position, position2);
                        }
                        NVRecyclerViewFragment.this.onPlayerViewChanged(position2, viewFindSnapView);
                        NVRecyclerViewFragment nVRecyclerViewFragment4 = NVRecyclerViewFragment.this;
                        nVRecyclerViewFragment4.position = position2;
                        nVRecyclerViewFragment4.playerView = viewFindSnapView;
                    }
                }
            }
            NVRecyclerViewFragment.this.impressionDelegate.onScrollIdleStateChanged(i == 0);
        }

        @Override // android.support.v7.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            View childAt;
            super.onScrolled(recyclerView, i, i2);
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (!(layoutManager instanceof LinearLayoutManager) || ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition() != NVRecyclerViewFragment.this.firstShownPosition() || NVRecyclerViewFragment.this.first || (childAt = layoutManager.getChildAt(0)) == null) {
                return;
            }
            NVRecyclerViewFragment.this.position = layoutManager.getPosition(childAt);
            NVRecyclerViewFragment nVRecyclerViewFragment = NVRecyclerViewFragment.this;
            int i3 = nVRecyclerViewFragment.position;
            if (i3 != -1 && i3 != nVRecyclerViewFragment.curSnapPosition) {
                RecyclerView.Adapter adapter = recyclerView.getAdapter();
                NVObject item = adapter instanceof NVRecyclerViewAdapter ? ((NVRecyclerViewAdapter) adapter).getItem(NVRecyclerViewFragment.this.position) : null;
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
    };
    private boolean recyclerViewFirstBecomeVisible = false;

    protected abstract NVRecyclerViewBaseAdapter createAdapter();

    protected SnapHelper createSnapHelper() {
        return null;
    }

    protected int firstShownPosition() {
        return 0;
    }

    protected int getSwipeRefreshFlag() {
        return 0;
    }

    protected IVideoListDelegate initVideoListDelegate() {
        return null;
    }

    @Override // com.narvii.app.NVFragment
    protected boolean observeThemeDownloadFinish() {
        return true;
    }

    protected void onScrollNext(View view, View view2, int i, int i2) {
    }

    protected void onSnapPotionChanged(int i, int i2, Object obj) {
    }

    protected boolean showGlobalPageStatus() {
        return true;
    }

    protected void updateVideoAutoPlay() {
        this.videoAutoPlay = false;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.snapHelper = createSnapHelper();
        this.impressionDelegate = new ImpressionDelegate(this);
        this.mVideoListDelegate = initVideoListDelegate();
        if (this.mVideoListDelegate != null) {
            updateWifiActive();
            updateVideoAutoPlay();
            NetworkConnectChangeReceiver.getInstance(getContext()).registerWifiStateChangeListener(this);
            VideoAutoPlayService.INSTANCE.registerVideoAutoPlayChangeListener(this);
        }
        if (bundle != null) {
            this.isSwipeRefreshEnabled = bundle.getBoolean("isRefreshEnable", true);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_recycleview, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isRefreshEnable", this.isSwipeRefreshEnabled);
    }

    protected boolean isRefreshEnable() {
        return this.isSwipeRefreshEnabled;
    }

    public void setSwipeRefreshEnabled(boolean z) {
        this.isSwipeRefreshEnabled = z;
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setEnabled(isRefreshEnable());
        }
    }

    public void setOverScrollMode(int i) {
        NVRecyclerView nVRecyclerView = this.recyclerView;
        if (nVRecyclerView != null) {
            nVRecyclerView.setOverScrollMode(i);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.adapter = createAdapter();
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh);
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setEnabled(isRefreshEnable());
            this.swipeRefreshLayout.setOnRefreshListener(this);
        }
        this.recyclerView = (NVRecyclerView) view.findViewById(R.id.recycle_layout);
        this.impressionDelegate.setListView(this.recyclerView);
        this.layoutManager = createLayoutManager();
        this.recyclerView.setLayoutManager(this.layoutManager);
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
            snapHelper.attachToRecyclerView(this.recyclerView);
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
            this.pageStatusView = new PageStatusView(view.getContext());
            this.pageStatusView.setId(R.id.status_view);
            ((ViewGroup) this.recyclerView.getParent()).addView(this.pageStatusView, -1, this.recyclerView.getLayoutParams());
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
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

    @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        onRefresh(null);
    }

    public void onRefresh(PageRequestCallback pageRequestCallback) {
        this.outerRefreshCallback = pageRequestCallback;
        this.adapter.refresh(getSwipeRefreshFlag(), this.refreshCallback);
    }

    public void updateViews() {
        if (showGlobalPageStatus()) {
            String errorMessage = this.adapter.getErrorMessage();
            boolean zIsEmpty = this.adapter.isEmpty();
            boolean z = this.adapter.isLoading() && !this.adapter.isListShow();
            boolean z2 = !TextUtils.isEmpty(errorMessage);
            this.pageStatusView.setErrorMessage(this.adapter.getErrorMessage());
            this.pageStatusView.setDarkTheme(isDarkTheme());
            this.pageStatusView.updateStatus(z2 ? 2 : z ? 1 : zIsEmpty ? 3 : 0);
            this.pageStatusView.setVisibility((zIsEmpty || z || (z2 && !this.adapter.isListShow())) ? 0 : 4);
            setRecyclerViewVisibility(this.recyclerView, this.adapter.isListShow() && !z);
        }
    }

    protected void onPlayerViewChanged(int i, View view) {
        if (view instanceof PageView) {
            ((PageView) view).resetPvId();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.onDetach();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.recyclerView != null) {
            for (int i = 0; i < this.recyclerView.getChildCount(); i++) {
                View childAt = this.recyclerView.getChildAt(i);
                if (childAt instanceof PageView) {
                    ((PageView) childAt).onResume();
                }
            }
            IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
            if (iVideoListDelegate == null || !this.videoAutoPlay) {
                return;
            }
            iVideoListDelegate.onResume();
        }
    }

    @Override // com.narvii.app.NVFragment
    protected void updateChildrenVisibleHint(boolean z) {
        super.updateChildrenVisibleHint(z);
        NVRecyclerView nVRecyclerView = this.recyclerView;
        if (nVRecyclerView != null) {
            View view = this.playerView;
            if (!(view instanceof PageView) || nVRecyclerView.indexOfChild(view) == -1) {
                return;
            }
            ((PageView) this.playerView).setVisibleHint(z);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.recyclerView != null) {
            for (int i = 0; i < this.recyclerView.getChildCount(); i++) {
                View childAt = this.recyclerView.getChildAt(i);
                if (childAt instanceof PageView) {
                    ((PageView) childAt).onPause();
                }
            }
            IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
            if (iVideoListDelegate == null || !this.videoAutoPlay) {
                return;
            }
            iVideoListDelegate.onPause();
        }
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate == null || !this.videoAutoPlay) {
            return;
        }
        iVideoListDelegate.onActiveChanged(z);
    }

    public View getPlayerView() {
        return this.playerView;
    }

    public RecyclerView getRecyclerView() {
        return this.recyclerView;
    }

    public RecyclerView.LayoutManager createLayoutManager() {
        return new LinearLayoutManager(getContext());
    }

    public View setGlobalEmptyView(int i) {
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            return pageStatusView.setEmptyView(i);
        }
        return null;
    }

    public View setGlobalLoadingView(int i) {
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            return pageStatusView.setLoadingView(i);
        }
        return null;
    }

    public View setGlobalErrorView(int i) {
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            return pageStatusView.setErrorView(i);
        }
        return null;
    }

    public void setEmptyMessage(int i) {
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            pageStatusView.setEmptyMessage(i);
        }
    }

    public void addImpressionCollectorInListView(ImpressionCollector impressionCollector) {
        this.impressionDelegate.addImpressionCollectorInListView(impressionCollector);
    }

    @Override // com.narvii.logging.Impression.ImpressionHost
    public void logImpressionQuit() {
        this.impressionDelegate.logImpressionQuit();
    }

    protected void clearImpression() {
        this.impressionDelegate.clearImpression();
    }

    @Override // com.narvii.logging.Impression.ImpressionHost
    public void logImpression() {
        this.impressionDelegate.logImpression();
    }

    @Override // com.narvii.app.NVFragment
    public void onLogLevelActiveChanged(boolean z) {
        if (canSendActiveLog(z)) {
            super.onLogLevelActiveChanged(z);
            this.impressionDelegate.onLogActiveChanged(z);
        }
    }

    private void setRecyclerViewVisibility(RecyclerView recyclerView, boolean z) {
        recyclerView.setVisibility(z ? 0 : 4);
        if (this.recyclerViewFirstBecomeVisible || !z) {
            return;
        }
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate != null && this.videoAutoPlay) {
            iVideoListDelegate.listViewFirstBecomeVisible();
        }
        this.recyclerViewFirstBecomeVisible = true;
    }

    private void updateWifiActive() {
        try {
            if (this.connectivityManager == null) {
                this.connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
            }
            NetworkInfo activeNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
            boolean z = true;
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting() || activeNetworkInfo.getType() != 1) {
                z = false;
            }
            this.wifiActive = z;
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.nvplayerview.broadcast.NetworkConnectChangeReceiver.IWifiStateChangeListener
    public void onWifiStateChange(boolean z) {
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate == null || z == this.wifiActive) {
            return;
        }
        this.wifiActive = z;
        if (z && !iVideoListDelegate.prepared()) {
            this.recyclerView.post(new Runnable() { // from class: com.narvii.paging.-$$Lambda$NVRecyclerViewFragment$fB62vzOHNTC-SG607XD_G13SLZU
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onWifiStateChange$0$NVRecyclerViewFragment();
                }
            });
        }
        updateVideoAutoPlay();
        this.mVideoListDelegate.setAutoPlay(this.videoAutoPlay);
    }

    public /* synthetic */ void lambda$onWifiStateChange$0$NVRecyclerViewFragment() {
        this.mVideoListDelegate.onListViewCreated(this.recyclerView);
    }

    @Override // com.narvii.setting.VideoAutoPlayChangeListener
    public void videoAutoPlayChange(int i) {
        if (i == 0) {
            this.videoAutoPlay = true;
        } else if (i == 1) {
            this.videoAutoPlay = this.wifiActive;
        } else {
            this.videoAutoPlay = false;
        }
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate == null) {
            return;
        }
        if (this.videoAutoPlay && !iVideoListDelegate.prepared()) {
            this.recyclerView.post(new Runnable() { // from class: com.narvii.paging.-$$Lambda$NVRecyclerViewFragment$wKn9yWsPZD0SeBL4id-2AA66dI4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$videoAutoPlayChange$1$NVRecyclerViewFragment();
                }
            });
        }
        this.mVideoListDelegate.setAutoPlay(this.videoAutoPlay);
    }

    public /* synthetic */ void lambda$videoAutoPlayChange$1$NVRecyclerViewFragment() {
        this.mVideoListDelegate.onListViewCreated(this.recyclerView);
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i) {
        super.onThemeChange(i);
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            pageStatusView.setDarkTheme(i == 2 || isDarkTheme());
        }
    }

    @Override // com.narvii.app.NVFragment
    protected void onLoginResult(boolean z, Intent intent) {
        if (this.adapter != null && intent.hasExtra("__adapter")) {
            this.adapter.dispatchLoginResult(z, intent);
        } else {
            super.onLoginResult(z, intent);
        }
    }

    public IVideoListDelegate getVideoListDelegate() {
        return this.mVideoListDelegate;
    }

    @Override // com.narvii.app.NVFragment
    public void updateThemeUI() {
        if (this.swipeRefreshLayout != null) {
            this.swipeRefreshLayout.setColorSchemeColors(((ConfigService) getService("config")).getTheme().colorPrimary());
        }
    }
}
