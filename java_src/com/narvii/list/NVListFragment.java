package com.narvii.list;

import android.R;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.app.NVActivity;
import com.narvii.app.NVBaseScrollableTabFragment;
import com.narvii.app.NVFragment;
import com.narvii.app.theme.NVTheme;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.config.ConfigService;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.Impression.ImpressionHost;
import com.narvii.logging.ImpressionDelegate;
import com.narvii.model.NVObject;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.nvplayerview.broadcast.NetworkConnectChangeReceiver;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.IVideoListView;
import com.narvii.nvplayerview.delegate.NVVideoPlayHost;
import com.narvii.setting.VideoAutoPlayChangeListener;
import com.narvii.setting.VideoAutoPlayService;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.ws.WsMessage;
import com.narvii.widget.NVListView;
import com.narvii.widget.SpinningView;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public abstract class NVListFragment extends NVFragment implements SwipeRefreshLayout.OnRefreshListener, NVVideoPlayHost, NetworkConnectChangeReceiver.IWifiStateChangeListener, VideoAutoPlayChangeListener, ImpressionHost {
    private ListAdapter adapter;
    ConnectivityManager connectivityManager;
    protected View emptyView;
    protected View errorView;
    private FlingListener flingListener;
    private FrameLayout frame;
    private HoverAdapter hoverAdapter;
    private View hoverCurrentView;
    private View hoverRecycleView;
    private boolean hoverUpdating;
    private ListHoverFrame hoverView;
    ImpressionDelegate impressionDelegate;
    private ListView listView;
    protected IVideoListDelegate mVideoListDelegate;
    protected Callback<Integer> outerRefreshCallback;
    SharedPreferences prefs;
    protected View progressView;
    private boolean scrollToHideKeyboard;
    private boolean showScrollBarOnlyWhenScroll;
    protected SwipeRefreshLayout swipeLayout;
    protected boolean videoAutoPlay;
    protected boolean wifiActive;
    protected static final int[] STATE_PRESSED = {R.attr.state_pressed};
    protected static final int[] STATE_FOCUSED = {R.attr.state_focused};
    protected static final int[] STATE_NORMAL = new int[0];
    public static WeakHashMap<ListView, Boolean> OVERRIDES = new WeakHashMap<>();
    private int overScrollMode = 0;
    protected boolean isSwipeRefreshEnabled = true;
    private final DataSetObserver adapterObserver = new DataSetObserver() { // from class: com.narvii.list.NVListFragment.3
        @Override // android.database.DataSetObserver
        public void onChanged() {
            NVListFragment nVListFragment = NVListFragment.this;
            nVListFragment.onDataSetChanged(nVListFragment.adapter);
        }
    };
    private final View.OnClickListener emptyRetryListener = new View.OnClickListener() { // from class: com.narvii.list.NVListFragment.7
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NVListFragment.this.onEmptyRetry();
        }
    };
    protected final Callback<Integer> refreshCallback = new Callback<Integer>() { // from class: com.narvii.list.NVListFragment.8
        @Override // com.narvii.util.Callback
        public void call(Integer num) {
            SwipeRefreshLayout swipeRefreshLayout = NVListFragment.this.swipeLayout;
            if (swipeRefreshLayout != null) {
                swipeRefreshLayout.setRefreshing(false);
            }
            Callback<Integer> callback = NVListFragment.this.outerRefreshCallback;
            if (callback != null) {
                callback.call(0);
            }
            NVListFragment.this.clearImpression();
            if (NVListFragment.this.isActive()) {
                NVListFragment.this.sendPageViewEvent(false);
            }
            NVListFragment nVListFragment = NVListFragment.this;
            IVideoListDelegate iVideoListDelegate = nVListFragment.mVideoListDelegate;
            if (iVideoListDelegate != null && nVListFragment.videoAutoPlay) {
                iVideoListDelegate.onRefresh();
            }
            NVListFragment.this.resetPvId();
            if (NVListFragment.this.isActive()) {
                NVListFragment.this.sendPageViewEvent(true);
            }
            INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(NVListFragment.this.getContext());
            if (nVPlayer != null) {
                nVPlayer.getVideoLogHelper().resetIds();
            }
        }
    };
    private int hoverCurrentPosition = -1;
    private int hoverCurrentType = -1;
    private int hoverRecycleType = -1;
    private boolean hoverDirty = false;
    private boolean listViewFirstBecomeVisible = false;

    protected boolean autoAddBottomPadding() {
        return true;
    }

    protected abstract ListAdapter createAdapter(Bundle bundle);

    protected int emptyIconId() {
        return 0;
    }

    protected String emptyMessage() {
        return null;
    }

    protected int externalOffset() {
        return 0;
    }

    public boolean flyingScroll() {
        return false;
    }

    protected boolean forceShowListWhenEmpty() {
        return false;
    }

    protected int getHoveFrameMarginTop() {
        return 0;
    }

    protected int getSwipeRefreshFlag() {
        return 1;
    }

    protected boolean hoverBelowOverlayPlaceHolder() {
        return false;
    }

    protected void hoverChange(Object obj) {
    }

    protected boolean hoverChangeTitle() {
        return false;
    }

    protected IVideoListDelegate initVideoListDelegate() {
        return null;
    }

    public boolean isNestedScrollingChild() {
        return true;
    }

    public boolean isSwipeRefresh() {
        return false;
    }

    @Override // com.narvii.app.NVFragment
    protected boolean observeThemeDownloadFinish() {
        return true;
    }

    protected void onHoveItemCreated(View view) {
    }

    protected void onHoverRecycled() {
    }

    protected void updateVideoAutoPlay() {
        this.videoAutoPlay = false;
    }

    public void setScrollToHideKeyboard(boolean z) {
        this.scrollToHideKeyboard = z;
    }

    public void setShowScrollBarOnlyWhenScroll(boolean z) {
        this.showScrollBarOnlyWhenScroll = z;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mVideoListDelegate = initVideoListDelegate();
        this.impressionDelegate = new ImpressionDelegate(this);
        if (this.mVideoListDelegate != null) {
            updateWifiActive();
            updateVideoAutoPlay();
            NetworkConnectChangeReceiver.getInstance(getContext()).registerWifiStateChangeListener(this);
            VideoAutoPlayService.INSTANCE.registerVideoAutoPlayChangeListener(this);
        }
        if (bundle != null) {
            this.isSwipeRefreshEnabled = bundle.getBoolean("isSwipeRefreshEnabled");
            this.overScrollMode = bundle.getInt("overScrollMode", 0);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(com.narvii.lib.R.layout.list_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        final int iBottomPadding;
        super.onViewCreated(view, bundle);
        this.listView = (ListView) view.findViewById(R.id.list);
        this.listView.setDividerHeight(getResources().getDimensionPixelSize(com.narvii.lib.R.dimen.list_divider_height));
        this.impressionDelegate.setListView(this.listView);
        updateListView();
        getListView();
        if (shouldInitSwipeRefresh()) {
            setupSwipeRefreshLayout();
        }
        this.frame = (FrameLayout) view.findViewById(com.narvii.lib.R.id.list_frame);
        if (isDarkNVTheme()) {
            FrameLayout frameLayout = this.frame;
            if (frameLayout instanceof NVThemeFrameLayout) {
                ((NVThemeFrameLayout) frameLayout).setDarkBackgroundDrawable(getFrameDarkBackgroundDrawable());
            }
        }
        this.progressView = view.findViewById(R.id.progress);
        View view2 = this.progressView;
        int color = -1;
        if (view2 instanceof SpinningView) {
            ((SpinningView) view2).setSpinColor((isDarkTheme() || isDarkNVTheme()) ? -1 : -7829368);
        }
        this.emptyView = view.findViewById(R.id.empty);
        boolean z = false;
        if (this.emptyView != null && emptyIconId() != 0) {
            View viewFindViewById = this.emptyView.findViewById(com.narvii.lib.R.id.empty_icon);
            if (viewFindViewById instanceof ImageView) {
                viewFindViewById.setVisibility(0);
                ((ImageView) viewFindViewById).setImageResource(emptyIconId());
            }
        }
        View viewFindViewById2 = view.findViewById(com.narvii.lib.R.id.empty_text);
        if (viewFindViewById2 instanceof TextView) {
            TextView textView = (TextView) viewFindViewById2;
            textView.setTextColor((isDarkTheme() || isDarkNVTheme()) ? -1 : getResources().getColor(com.narvii.lib.R.color.empty_text_color));
            String strEmptyMessage = emptyMessage();
            if (!TextUtils.isEmpty(strEmptyMessage)) {
                textView.setText(strEmptyMessage);
            }
        }
        View view3 = this.emptyView;
        View viewFindViewById3 = view3 == null ? null : view3.findViewById(com.narvii.lib.R.id.empty_retry);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(this.emptyRetryListener);
            if (viewFindViewById3 instanceof TextView) {
                TextView textView2 = (TextView) viewFindViewById3;
                if (!isDarkTheme() && !isDarkNVTheme()) {
                    color = getResources().getColor(com.narvii.lib.R.color.button_text_gray_w);
                }
                textView2.setTextColor(color);
            }
        }
        onListViewCreated(this.listView, bundle);
        if (getActivity() instanceof NVActivity) {
            iBottomPadding = ((NVActivity) getActivity()).bottomPadding(this);
            if (iBottomPadding > 0 && autoAddBottomPadding() && (isRootFragment() || (getParentFragment() instanceof NVBaseScrollableTabFragment))) {
                z = true;
            }
        } else {
            iBottomPadding = 0;
        }
        if (z) {
            Utils.post(new Runnable() { // from class: com.narvii.list.-$$Lambda$NVListFragment$dYZH4xAZUiX4CGa2qrgLon9ViB0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onViewCreated$0$NVListFragment(iBottomPadding);
                }
            });
        }
        Bundle bundle2 = bundle != null ? bundle.getBundle("adapter") : null;
        ListAdapter listAdapterCreateAdapter = createAdapter(bundle2);
        if (listAdapterCreateAdapter != null) {
            if (listAdapterCreateAdapter instanceof NVAdapter) {
                NVAdapter nVAdapter = (NVAdapter) listAdapterCreateAdapter;
                if (bundle2 != null) {
                    nVAdapter.onRestoreInstanceState(bundle2);
                }
                nVAdapter.onAttach();
            }
            setListAdapter(listAdapterCreateAdapter);
        }
        if (flyingScroll()) {
            ListView listView = this.listView;
            FlingListener flingListener = new FlingListener();
            this.flingListener = flingListener;
            listView.setOnScrollListener(flingListener);
        }
    }

    public /* synthetic */ void lambda$onViewCreated$0$NVListFragment(int i) {
        ListView listView = this.listView;
        if (listView instanceof NVListView) {
            ((NVListView) listView).setFooterPadding(i);
        }
    }

    protected Drawable getFrameDarkBackgroundDrawable() {
        return new ColorDrawable(getResources().getColor(com.narvii.lib.R.color.color_default_primary));
    }

    protected boolean shouldInitSwipeRefresh() {
        return isSwipeRefresh() && this.isSwipeRefreshEnabled;
    }

    protected boolean showListviewWhenLoading() {
        return isPageBackgroundEnabled();
    }

    protected void updateListView() {
        if (this.listView == null) {
            return;
        }
        Drawable listSelector = getListSelector();
        if (listSelector != null) {
            this.listView.setSelector(listSelector);
            ListView listView = this.listView;
            if (listView instanceof NVListView) {
                ((NVListView) listView).setBlinkDrawable(getListSelector());
            }
        }
        int dividerHeight = this.listView.getDividerHeight();
        this.listView.setDivider(getListDividerDrawable());
        this.listView.setDividerHeight(dividerHeight);
        this.listView.setOverScrollMode(this.overScrollMode);
    }

    protected boolean setListContentBgWhenHasPageBackground() {
        return (isDarkTheme() || isDarkNVTheme()) ? false : true;
    }

    protected void onListViewCreated(final ListView listView, Bundle bundle) {
        if (this.showScrollBarOnlyWhenScroll) {
            listView.setVerticalScrollBarEnabled(false);
        }
        if (listView instanceof NVListView) {
            NVListView nVListView = (NVListView) listView;
            nVListView.setIsNestedScrollingChild(isSwipeRefresh() || isNestedScrollingChild());
            updateListViewContentBackground();
            updateListViewConfig();
            nVListView.addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.list.NVListFragment.1
                public Runnable dismissScrollBarRunnable;

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i) {
                    if (NVListFragment.this.scrollToHideKeyboard && i != 0) {
                        try {
                            if (((InputMethodManager) NVListFragment.this.getContext().getSystemService("input_method")).isAcceptingText()) {
                                SoftKeyboard.hideSoftKeyboard(NVListFragment.this.getContext());
                            }
                        } catch (Exception e) {
                            Log.e("fail to hide keyboard", e);
                        }
                    }
                    if (NVListFragment.this.showScrollBarOnlyWhenScroll) {
                        if (i != 0) {
                            Runnable runnable = this.dismissScrollBarRunnable;
                            if (runnable != null) {
                                Utils.handler.removeCallbacks(runnable);
                                this.dismissScrollBarRunnable = null;
                            }
                            listView.setVerticalScrollBarEnabled(true);
                        } else {
                            this.dismissScrollBarRunnable = new Runnable() { // from class: com.narvii.list.NVListFragment.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    listView.setVerticalScrollBarEnabled(false);
                                }
                            };
                            Utils.postDelayed(this.dismissScrollBarRunnable, 200L);
                        }
                    }
                    NVListFragment.this.impressionDelegate.onScrollIdleStateChanged(i == 0);
                }
            });
            NVFragment.MenuController menuController = getMenuController();
            if (menuController != null) {
                nVListView.addOnScrollListener(new ListScrollDistanceCalculator(menuController));
            }
            IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
            if (iVideoListDelegate == null || !this.videoAutoPlay) {
                return;
            }
            iVideoListDelegate.onListViewCreated(nVListView);
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

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateListViewContentBackground() {
        if (getListView() instanceof NVListView) {
            if (shouldShowPageBackground() && setListContentBgWhenHasPageBackground()) {
                ((NVListView) getListView()).setListContentBackground(new ColorDrawable(-1));
            } else {
                ((NVListView) getListView()).setListContentBackground(new ColorDrawable(0));
            }
        }
    }

    public void updateListViewConfig() {
        if ((this.listView instanceof NVListView) && shouldShowPageBackground() && !isEmbedFragment()) {
            NVListView nVListView = (NVListView) this.listView;
            if (isActionBarOverlaying()) {
                nVListView.addActionBarOverlayHeader(this);
                return;
            }
            ViewGroup.LayoutParams layoutParams = nVListView.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = Utils.getActionBarHeight(getContext()) + Utils.getStatusBarHeight(getContext());
            }
        }
    }

    public void setOverScrollMode(int i) {
        if (i == 0 || i == 1 || i == 2) {
            this.overScrollMode = i;
            ListView listView = this.listView;
            if (listView != null) {
                listView.setOverScrollMode(i);
            }
        }
    }

    public void setEmptyText(int i) {
        TextView textView;
        View view = this.emptyView;
        if (view == null || (textView = (TextView) view.findViewById(com.narvii.lib.R.id.empty_text)) == null) {
            return;
        }
        textView.setText(getString(i));
    }

    public void setSwipeRefreshEnabled(boolean z) {
        this.isSwipeRefreshEnabled = z;
    }

    class ListScrollDistanceCalculator implements AbsListView.OnScrollListener {
        private boolean isScrolling;
        private int mFirstVisibleBottom;
        private int mFirstVisibleHeight;
        private int mFirstVisibleItem;
        private int mFirstVisibleTop;
        private boolean mListScrollStarted;
        private int mTotalScrollDistance;
        NVFragment.MenuController menuController;

        ListScrollDistanceCalculator(NVFragment.MenuController menuController) {
            this.menuController = menuController;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            View childAt;
            if (absListView.getCount() == 0) {
                return;
            }
            if (i == 0) {
                this.mListScrollStarted = false;
                if (this.isScrolling) {
                    onScrollFinish();
                    this.isScrolling = false;
                    return;
                }
                return;
            }
            if (i == 1 && (childAt = absListView.getChildAt(0)) != null) {
                this.mFirstVisibleItem = absListView.getFirstVisiblePosition();
                this.mFirstVisibleTop = childAt.getTop();
                this.mFirstVisibleBottom = childAt.getBottom();
                this.mFirstVisibleHeight = childAt.getHeight();
                this.mListScrollStarted = true;
                this.mTotalScrollDistance = 0;
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            int i4;
            int i5;
            if (i3 == 0 || absListView.getChildCount() == 0 || !this.mListScrollStarted) {
                return;
            }
            View childAt = absListView.getChildAt(0);
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int height = childAt.getHeight();
            int i6 = this.mFirstVisibleItem;
            if (i > i6) {
                this.mFirstVisibleTop += this.mFirstVisibleHeight;
                i5 = top - this.mFirstVisibleTop;
            } else {
                if (i < i6) {
                    this.mFirstVisibleBottom -= this.mFirstVisibleHeight;
                    i4 = this.mFirstVisibleBottom;
                } else {
                    i4 = this.mFirstVisibleBottom;
                }
                i5 = bottom - i4;
            }
            this.mTotalScrollDistance += i5;
            this.isScrolling = true;
            onScrollDistance(this.mTotalScrollDistance);
            this.mFirstVisibleTop = top;
            this.mFirstVisibleBottom = bottom;
            this.mFirstVisibleHeight = height;
            this.mFirstVisibleItem = i;
        }

        void onScrollDistance(int i) {
            this.menuController.onScrollDistance(i);
        }

        void onScrollFinish() {
            this.menuController.onScrollFinish();
        }
    }

    protected boolean setupSwipeRefreshLayout() {
        ListView listView = getListView();
        ViewGroup viewGroup = (ViewGroup) listView.getParent();
        if (viewGroup instanceof SwipeRefreshLayout) {
            this.swipeLayout = (SwipeRefreshLayout) viewGroup;
        } else {
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    i = -1;
                    break;
                }
                if (viewGroup.getChildAt(i) == listView) {
                    viewGroup.removeViewAt(i);
                    break;
                }
                i++;
            }
            if (i != -1) {
                this.swipeLayout = new SwipeRefreshLayout(getContext()) { // from class: com.narvii.list.NVListFragment.2
                    @Override // com.narvii.list.refresh.SwipeRefreshLayout
                    public boolean canChildScrollUp() {
                        Boolean boolCanChildScrollUp = NVListFragment.this.canChildScrollUp();
                        if (boolCanChildScrollUp != null) {
                            return boolCanChildScrollUp.booleanValue();
                        }
                        return super.canChildScrollUp();
                    }
                };
                ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
                this.swipeLayout.addView(listView, new ViewGroup.LayoutParams(-1, -1));
                viewGroup.addView(this.swipeLayout, i, layoutParams);
            }
        }
        SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setIsNestedScrollingChild(isNestedScrollingChild());
            this.swipeLayout.setOnRefreshListener(this);
            this.swipeLayout.setColorSchemeColors(((ConfigService) getService("config")).getTheme().colorPrimary());
            int actionBarOverlaySize = getActionBarOverlaySize();
            if (actionBarOverlaySize > 0) {
                actionBarOverlaySize += getStatusBarOverlaySize();
            }
            this.swipeLayout.setProgressViewOffset(false, getResources().getDimensionPixelOffset(com.narvii.lib.R.dimen.swipe_refresh_start) + externalOffset() + actionBarOverlaySize, actionBarOverlaySize + getResources().getDimensionPixelOffset(com.narvii.lib.R.dimen.swipe_refresh_end) + externalOffset());
        }
        return this.swipeLayout != null;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        Bundle bundleOnSaveInstanceState;
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isSwipeRefreshEnabled", this.isSwipeRefreshEnabled);
        bundle.putInt("overScrollMode", this.overScrollMode);
        ListAdapter listAdapter = this.adapter;
        if (!(listAdapter instanceof NVAdapter) || (bundleOnSaveInstanceState = ((NVAdapter) listAdapter).onSaveInstanceState()) == null) {
            return;
        }
        bundle.putBundle("adapter", bundleOnSaveInstanceState);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.frame = null;
        ListAdapter listAdapter = this.adapter;
        if (listAdapter instanceof NVAdapter) {
            ((NVAdapter) listAdapter).onDetach();
            IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
            if (iVideoListDelegate != null && this.videoAutoPlay) {
                iVideoListDelegate.onDestroy();
            }
        }
        hoverDestory();
        if (this.mVideoListDelegate != null) {
            NetworkConnectChangeReceiver.getInstance(getContext()).unRegisterWifiStateChangeListener(this);
            VideoAutoPlayService.INSTANCE.unRegisterVideoAutoPlayChangeListener(this);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate != null && this.videoAutoPlay) {
            iVideoListDelegate.onResume();
        }
        super.onResume();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        FlingListener flingListener = this.flingListener;
        if (flingListener != null) {
            flingListener.run();
        }
        ListView listView = this.listView;
        if (listView instanceof NVListView) {
            ((NVListView) listView).spOnPause();
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

    @Override // com.narvii.app.NVFragment
    public void onLogLevelActiveChanged(boolean z) {
        if (canSendActiveLog(z)) {
            super.onLogLevelActiveChanged(z);
            this.impressionDelegate.onLogActiveChanged(z);
        }
    }

    protected void onDataSetChanged(ListAdapter listAdapter) {
        this.hoverDirty = true;
        updateViews();
        this.impressionDelegate.postImpressionRunnable();
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate == null || !this.videoAutoPlay) {
            return;
        }
        iVideoListDelegate.listViewFirstBecomeVisible();
    }

    public ListView getListView() {
        return this.listView;
    }

    protected SwipeRefreshLayout getSwipeRefreshLayout() {
        return this.swipeLayout;
    }

    protected void setListAdapter(ListAdapter listAdapter) {
        ListAdapter listAdapter2 = this.adapter;
        if (listAdapter2 != null) {
            listAdapter2.unregisterDataSetObserver(this.adapterObserver);
            if (this.adapter instanceof NVAdapter) {
                getListView().setOnItemClickListener(null);
            }
        }
        this.adapter = listAdapter;
        getListView().setAdapter(listAdapter);
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.adapterObserver);
            if (listAdapter instanceof NVAdapter) {
                getListView().setOnItemClickListener((NVAdapter) listAdapter);
            }
        }
        onDataSetChanged(listAdapter);
    }

    public ListAdapter getListAdapter() {
        return this.adapter;
    }

    public void setHoverAdapter(HoverAdapter hoverAdapter) {
        this.hoverAdapter = hoverAdapter;
        if (hoverAdapter != null) {
            ListView listView = this.listView;
            if (listView instanceof NVListView) {
                ((NVListView) listView).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.list.NVListFragment.4
                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScrollStateChanged(AbsListView absListView, int i) {
                    }

                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                        NVListFragment.this.hoverUpdateView();
                    }
                });
            } else {
                listView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.list.NVListFragment.5
                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScrollStateChanged(AbsListView absListView, int i) {
                    }

                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                        NVListFragment.this.hoverUpdateView();
                    }
                });
            }
            ((NVListView) this.listView).setSectionHeaderEnabled(true);
            hoverUpdateView();
        }
    }

    public void setEmptyView(View view) {
        View view2 = this.emptyView;
        if (view2 != null) {
            this.frame.removeView(view2);
        }
        this.emptyView = view;
        if (view != null) {
            this.frame.addView(view);
            NVTheme.Companion.bindNVThemeView(getNVTheme(), view);
            View viewFindViewById = view.findViewById(com.narvii.lib.R.id.empty_retry);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(this.emptyRetryListener);
            }
        }
        updateViews();
    }

    public View setEmptyView(int i) {
        View viewInflate = getLayoutInflater(null).inflate(i, (ViewGroup) this.frame, false);
        View viewFindViewById = viewInflate.findViewById(com.narvii.lib.R.id.empty_text);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setTextColor((isDarkTheme() || isDarkNVTheme()) ? -1 : getResources().getColor(com.narvii.lib.R.color.empty_text_color));
        }
        setEmptyView(viewInflate);
        return viewInflate;
    }

    public void setErrorMessage(String str) {
        View view;
        if (str == null || this.frame == null) {
            if (str != null || (view = this.errorView) == null) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        if (this.errorView == null) {
            this.errorView = getLayoutInflater(null).inflate(errorViewLayoutId(), (ViewGroup) this.frame, false);
            NVTheme.Companion.bindNVThemeView(getNVTheme(), this.errorView);
            this.errorView.findViewById(com.narvii.lib.R.id.retry).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.list.NVListFragment.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    NVListFragment.this.onErrorRetry();
                }
            });
            this.frame.addView(this.errorView);
        }
        TextView textView = (TextView) this.errorView.findViewById(com.narvii.lib.R.id.text);
        if (textView != null) {
            String str2 = getString(com.narvii.lib.R.string.normal_error_offline1) + "\n" + getString(com.narvii.lib.R.string.normal_error_offline2);
            if (isDeviceOffline()) {
                str = str2;
            }
            textView.setText(str);
            textView.setTextColor((isDarkTheme() || isDarkNVTheme()) ? -1 : -11184811);
        }
        TextView textView2 = (TextView) this.errorView.findViewById(com.narvii.lib.R.id.error);
        if (textView2 != null) {
            textView2.setTextColor((isDarkTheme() || isDarkNVTheme()) ? -1 : -11184811);
        }
        TextView textView3 = (TextView) this.errorView.findViewById(com.narvii.lib.R.id.retry);
        if (textView3 != null) {
            textView3.setTextColor(ContextCompat.getColor(getContext(), (isDarkNVTheme() || isDarkTheme()) ? com.narvii.lib.R.color.button_text_light : com.narvii.lib.R.color.button_text_gray_w));
        }
        this.errorView.setVisibility(0);
    }

    protected void onErrorRetry() {
        ListAdapter listAdapter = this.adapter;
        if (listAdapter instanceof NVAdapter) {
            ((NVAdapter) listAdapter).onErrorRetry();
        }
    }

    protected int errorViewLayoutId() {
        return com.narvii.lib.R.layout.error_view;
    }

    private boolean isDeviceOffline() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.narvii.app.NVFragment
    protected void onLoginResult(boolean z, Intent intent) {
        if ((this.adapter instanceof NVAdapter) && intent.hasExtra("__adapter")) {
            ((NVAdapter) this.adapter).dispatchLoginResult(z, intent);
        } else {
            super.onLoginResult(z, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateViews() {
        if (this.listView == null) {
            throw new IllegalStateException();
        }
        ListAdapter listAdapter = getListAdapter();
        int i = 4;
        if (listAdapter == null) {
            setListViewVisibility(this.listView, showListviewWhenLoading());
            SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
            if (swipeRefreshLayout != null) {
                swipeRefreshLayout.setVisibility(showListviewWhenLoading() ? 0 : 4);
            }
            View view = this.emptyView;
            if (view != null) {
                view.setVisibility(0);
            }
            View view2 = this.progressView;
            if (view2 != null) {
                view2.setVisibility(4);
            }
        } else {
            boolean z = true;
            if (listAdapter instanceof NVAdapter) {
                NVAdapter nVAdapter = (NVAdapter) listAdapter;
                boolean zIsListShown = nVAdapter.isListShown();
                boolean zIsEmpty = nVAdapter.isEmpty();
                boolean z2 = nVAdapter.errorMessage() != null;
                ListView listView = this.listView;
                if (!zIsListShown && !showListviewWhenLoading()) {
                    z = false;
                }
                setListViewVisibility(listView, z);
                SwipeRefreshLayout swipeRefreshLayout2 = this.swipeLayout;
                if (swipeRefreshLayout2 != null) {
                    swipeRefreshLayout2.setVisibility(((!zIsListShown || (!forceShowListWhenEmpty() && zIsEmpty)) && !showListviewWhenLoading()) ? 4 : 0);
                }
                View view3 = this.emptyView;
                if (view3 != null) {
                    view3.setVisibility((zIsListShown && zIsEmpty && !z2) ? 0 : 4);
                }
                View view4 = this.progressView;
                if (view4 != null) {
                    if (!zIsListShown && !z2) {
                        i = 0;
                    }
                    view4.setVisibility(i);
                }
                setErrorMessage(nVAdapter.errorMessage());
            } else {
                boolean zIsEmpty2 = listAdapter.isEmpty();
                ListView listView2 = this.listView;
                if (zIsEmpty2 && !showListviewWhenLoading()) {
                    z = false;
                }
                setListViewVisibility(listView2, z);
                SwipeRefreshLayout swipeRefreshLayout3 = this.swipeLayout;
                if (swipeRefreshLayout3 != null) {
                    swipeRefreshLayout3.setVisibility((!zIsEmpty2 || showListviewWhenLoading()) ? 0 : 4);
                }
                View view5 = this.emptyView;
                if (view5 != null) {
                    view5.setVisibility(zIsEmpty2 ? 0 : 4);
                }
                View view6 = this.progressView;
                if (view6 != null) {
                    view6.setVisibility(4);
                }
            }
        }
        hoverUpdateView();
    }

    protected void onEmptyRetry() {
        ListAdapter listAdapter = this.adapter;
        if (listAdapter instanceof NVAdapter) {
            ((NVAdapter) listAdapter).refresh(2, null);
        }
    }

    @Override // com.narvii.app.NVFragment
    public void smoothScrollToTop() {
        super.smoothScrollToTop();
        getListView().smoothScrollToPositionFromTop(this.adapter instanceof HideTopAdapter ? 1 : 0, 0, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
    }

    @Override // com.narvii.app.NVFragment
    public boolean canScrollUp() {
        ListView listView = this.listView;
        if (listView != null) {
            return ViewCompat.canScrollVertically(listView, -1);
        }
        return false;
    }

    @Override // com.narvii.app.NVFragment
    public void setDarkTheme(boolean z) {
        super.setDarkTheme(z);
        updateListView();
    }

    public Drawable getListSelector() {
        int selectorDarkColor;
        StateListDrawable stateListDrawable = new StateListDrawable();
        if (isDarkTheme() || isDarkNVTheme()) {
            selectorDarkColor = getSelectorDarkColor();
        } else {
            selectorDarkColor = getSelectorLightColor();
        }
        stateListDrawable.addState(STATE_PRESSED, new ColorDrawable(selectorDarkColor));
        stateListDrawable.addState(STATE_FOCUSED, new ColorDrawable(selectorDarkColor));
        stateListDrawable.addState(STATE_NORMAL, new ColorDrawable(0));
        return stateListDrawable;
    }

    protected int getSelectorDarkColor() {
        return getResources().getColor(com.narvii.lib.R.color.list_selector_dark);
    }

    protected int getSelectorLightColor() {
        return getResources().getColor(com.narvii.lib.R.color.list_selector_light);
    }

    public Drawable getListDividerDrawable() {
        return new ColorDrawable(getResources().getColor((isDarkTheme() || isDarkNVTheme()) ? com.narvii.lib.R.color.list_divider_dark : com.narvii.lib.R.color.list_divider));
    }

    protected class FlingListener implements AbsListView.OnScrollListener, Runnable {
        boolean stoped;

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        protected FlingListener() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i != 0) {
                if (this.stoped) {
                    Utils.handler.removeCallbacks(this);
                    return;
                } else {
                    this.stoped = true;
                    ((NVImageLoader) NVListFragment.this.getService("imageLoader")).getRequestQueue().stop();
                    return;
                }
            }
            Utils.postDelayed(this, 200L);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.stoped) {
                this.stoped = false;
                ((NVImageLoader) NVListFragment.this.getService("imageLoader")).getRequestQueue().start();
            }
        }
    }

    public void onRefresh() {
        onRefresh(null);
    }

    public void onRefresh(Callback<Integer> callback) {
        this.outerRefreshCallback = callback;
        ListAdapter listAdapter = getListAdapter();
        if (listAdapter instanceof NVAdapter) {
            ((NVAdapter) listAdapter).refresh(getSwipeRefreshFlag(), this.refreshCallback);
        }
    }

    public boolean isRefreshing() {
        SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
        return swipeRefreshLayout != null && swipeRefreshLayout.isRefreshing();
    }

    protected Boolean canChildScrollUp() {
        try {
            return OVERRIDES.get(getListView());
        } catch (Exception unused) {
            return false;
        }
    }

    protected int hoverFirstVisiblePosition(ListView listView) {
        View childAt;
        if (hoverBelowOverlayPlaceHolder() && (getActivity() instanceof NVActivity) && getListAdapter() != null) {
            int hoverTopOffset = getHoverTopOffset();
            int firstVisiblePosition = listView.getFirstVisiblePosition();
            int firstVisiblePosition2 = listView.getFirstVisiblePosition();
            int childCount = listView.getChildCount();
            int count = getListAdapter().getCount();
            for (int i = 0; i < childCount; i++) {
                int i2 = i + firstVisiblePosition2;
                if (i2 >= count || firstVisiblePosition2 < 0 || (childAt = listView.getChildAt(i)) == null) {
                    break;
                }
                if (childAt.getBottom() > hoverTopOffset) {
                    return i2;
                }
            }
            return firstVisiblePosition;
        }
        return listView.getFirstVisiblePosition();
    }

    protected boolean setSectionHeaderTag() {
        return !hoverBelowOverlayPlaceHolder();
    }

    protected void hoverUpdateView() {
        HoverAdapter hoverAdapter;
        ListView listView;
        ListView listView2 = this.listView;
        if (listView2 == null || this.adapter == null || (hoverAdapter = this.hoverAdapter) == null || this.hoverUpdating) {
            return;
        }
        int iHoverFirstVisiblePosition = hoverFirstVisiblePosition(listView2);
        if (iHoverFirstVisiblePosition < 0 || iHoverFirstVisiblePosition >= this.adapter.getCount()) {
            hoverRecycle();
            return;
        }
        int lastHoverPosition = getLastHoverPosition(hoverAdapter, iHoverFirstVisiblePosition);
        View childAt = null;
        childAt = null;
        childAt = null;
        childAt = null;
        if (hoverChangeTitle()) {
            hoverChange(lastHoverPosition != -1 ? this.adapter.getItem(lastHoverPosition) : null);
            return;
        }
        if (setSectionHeaderTag() && iHoverFirstVisiblePosition == lastHoverPosition && this.listView.getChildCount() > 0) {
            this.listView.getChildAt(0).setTag(NVListView.SECTION_HEADER_TAG, true);
            lastHoverPosition = -1;
        }
        if (this.hoverCurrentPosition != lastHoverPosition || this.hoverDirty) {
            hoverRecycle();
            if (lastHoverPosition != -1) {
                float hoverTopOffset = getHoverTopOffset();
                if (this.hoverView == null) {
                    this.hoverView = (ListHoverFrame) getLayoutInflater(null).inflate(com.narvii.lib.R.layout.list_hover_frame, (ViewGroup) this.frame, false);
                    this.frame.addView(this.hoverView);
                }
                this.hoverView.setPadding(0, ((int) hoverTopOffset) + getHoveFrameMarginTop(), 0, 0);
                this.hoverCurrentPosition = lastHoverPosition;
                this.hoverCurrentType = this.adapter.getItemViewType(lastHoverPosition);
                View view = this.hoverCurrentType == this.hoverRecycleType ? this.hoverRecycleView : null;
                this.hoverRecycleType = -1;
                this.hoverRecycleView = null;
                this.hoverUpdating = true;
                this.hoverCurrentView = this.adapter.getView(lastHoverPosition, view, this.hoverView);
                onHoveItemCreated(this.hoverCurrentView);
                this.hoverUpdating = false;
                ViewGroup.LayoutParams layoutParams = this.hoverView.getLayoutParams();
                if ((layoutParams instanceof ViewGroup.MarginLayoutParams) && (listView = this.listView) != null) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginLayoutParams.leftMargin = listView.getPaddingLeft();
                    marginLayoutParams.rightMargin = this.listView.getPaddingRight();
                }
                this.hoverView.addView(this.hoverCurrentView, layoutParams);
            }
        }
        this.hoverDirty = false;
        int i = iHoverFirstVisiblePosition + 1;
        if (this.hoverCurrentView != null && i < this.adapter.getCount() && hoverAdapter.isHover(i) && this.listView.getChildCount() > 1) {
            childAt = this.listView.getChildAt(1);
        }
        ListHoverFrame listHoverFrame = this.hoverView;
        if (listHoverFrame != null) {
            listHoverFrame.setAlignView(childAt);
        }
    }

    public View getHoverCurrentView() {
        return this.hoverCurrentView;
    }

    public int getHoverTopOffset() {
        if (hoverBelowOverlayPlaceHolder()) {
            return getTotalOverlaySize();
        }
        return 0;
    }

    private int getLastHoverPosition(HoverAdapter hoverAdapter, int i) {
        while (i >= 0) {
            if (hoverAdapter.isHover(i)) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public void resetHover() {
        hoverRecycle();
        hoverUpdateView();
    }

    private void hoverRecycle() {
        if (this.hoverCurrentView != null) {
            ListHoverFrame listHoverFrame = this.hoverView;
            if (listHoverFrame != null) {
                listHoverFrame.removeAllViews();
            }
            this.hoverRecycleView = this.hoverCurrentView;
            this.hoverRecycleType = this.hoverCurrentType;
        }
        this.hoverCurrentPosition = -1;
        this.hoverCurrentView = null;
        this.hoverCurrentType = -1;
        onHoverRecycled();
    }

    private void hoverDestory() {
        this.hoverAdapter = null;
        this.hoverView = null;
        this.hoverCurrentView = null;
        this.hoverRecycleView = null;
    }

    public void blinkItem(final String str, final boolean z, long j) {
        if (j > 0) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.list.NVListFragment.9
                @Override // java.lang.Runnable
                public void run() {
                    NVListFragment.this.blinkItem(str, z, 0L);
                }
            }, j);
        }
        if (isResumed()) {
            ListView listView = getListView();
            ListAdapter listAdapter = getListAdapter();
            int firstVisiblePosition = listView.getFirstVisiblePosition();
            int childCount = listView.getChildCount();
            int count = listAdapter.getCount();
            for (int i = 0; i < childCount; i++) {
                int i2 = i + firstVisiblePosition;
                if (i2 >= count || firstVisiblePosition < 0) {
                    break;
                }
                Object item = listAdapter.getItem(i2);
                if ((item instanceof NVObject) && Utils.isEqualsNotNull(((NVObject) item).id(), str)) {
                    View childAt = listView.getChildAt(i);
                    if (listView instanceof NVListView) {
                        ((NVListView) listView).startBlinkLong(i2);
                    }
                    if (childAt.getTop() < 0) {
                        listView.smoothScrollBy(childAt.getTop(), 200);
                        return;
                    } else {
                        if (childAt.getBottom() > listView.getHeight()) {
                            listView.smoothScrollBy(childAt.getBottom() - listView.getHeight(), 200);
                            return;
                        }
                        return;
                    }
                }
            }
            if (z) {
                int count2 = listAdapter.getCount();
                for (final int i3 = 0; i3 < count2; i3++) {
                    Object item2 = listAdapter.getItem(i3);
                    if ((item2 instanceof NVObject) && Utils.isEqualsNotNull(((NVObject) item2).id(), str)) {
                        listView.smoothScrollToPosition(i3);
                        Utils.post(new Runnable() { // from class: com.narvii.list.NVListFragment.10
                            int count = 0;

                            @Override // java.lang.Runnable
                            public void run() {
                                if (NVListFragment.this.isDestoryed() || !NVListFragment.this.isResumed()) {
                                    return;
                                }
                                ListView listView2 = NVListFragment.this.getListView();
                                ListAdapter listAdapter2 = NVListFragment.this.getListAdapter();
                                if (listView2.getFirstVisiblePosition() <= i3 && listView2.getLastVisiblePosition() >= i3) {
                                    int firstVisiblePosition2 = listView2.getFirstVisiblePosition();
                                    int childCount2 = listView2.getChildCount();
                                    int count3 = listAdapter2.getCount();
                                    for (int i4 = 0; i4 < childCount2; i4++) {
                                        int i5 = i4 + firstVisiblePosition2;
                                        if (i5 >= count3 || firstVisiblePosition2 < 0) {
                                            return;
                                        }
                                        Object item3 = listAdapter2.getItem(i5);
                                        if ((item3 instanceof NVObject) && Utils.isEqualsNotNull(((NVObject) item3).id(), str) && (listView2 instanceof NVListView)) {
                                            ((NVListView) listView2).startBlinkLong(i5);
                                        }
                                    }
                                    return;
                                }
                                int i6 = this.count;
                                this.count = i6 + 1;
                                if (i6 < 15) {
                                    Utils.postDelayed(this, 100L);
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoPlayHost
    public IVideoListDelegate getVideoDelegate() {
        return this.mVideoListDelegate;
    }

    protected void updateWifiActive() {
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
            getListView().post(new Runnable() { // from class: com.narvii.list.-$$Lambda$NVListFragment$ZGk3eivad7zXOf3HVxW6WEqG_sE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onWifiStateChange$1$NVListFragment();
                }
            });
        }
        updateVideoAutoPlay();
        this.mVideoListDelegate.setAutoPlay(this.videoAutoPlay);
    }

    public /* synthetic */ void lambda$onWifiStateChange$1$NVListFragment() {
        this.mVideoListDelegate.onListViewCreated((IVideoListView) getListView());
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
        if (this.videoAutoPlay && !this.mVideoListDelegate.prepared()) {
            getListView().post(new Runnable() { // from class: com.narvii.list.-$$Lambda$NVListFragment$JxSITtD7ZPUkiTJOJqFk7IHSzAk
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$videoAutoPlayChange$2$NVListFragment();
                }
            });
        }
        this.mVideoListDelegate.setAutoPlay(this.videoAutoPlay);
    }

    public /* synthetic */ void lambda$videoAutoPlayChange$2$NVListFragment() {
        this.mVideoListDelegate.onListViewCreated((IVideoListView) getListView());
    }

    protected void setListViewVisibility(ListView listView, boolean z) {
        listView.setVisibility(z ? 0 : 4);
        if (this.listViewFirstBecomeVisible || !z) {
            return;
        }
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate != null && this.videoAutoPlay) {
            iVideoListDelegate.listViewFirstBecomeVisible();
        }
        this.listViewFirstBecomeVisible = true;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i) {
        super.onThemeChange(i);
        updateListView();
    }

    @Override // com.narvii.app.NVFragment
    public void updateThemeUI() {
        if (this.swipeLayout != null) {
            this.swipeLayout.setColorSchemeColors(((ConfigService) getService("config")).getTheme().colorPrimary());
        }
    }
}
