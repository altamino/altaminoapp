package com.narvii.list;

import ai.medialab.medialabads2.MediaLabAds;
import ai.medialab.medialabads2.banners.MediaLabAdView;
import ai.medialab.medialabads2.data.AdSize;
import android.R;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
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
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVBaseScrollableTabFragment;
import com.narvii.app.NVFragment;
import com.narvii.app.incubator.IncubatorApplication;
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

/* JADX INFO: loaded from: classes.dex */
public abstract class NVListFragment extends NVFragment implements SwipeRefreshLayout.OnRefreshListener, NVVideoPlayHost, NetworkConnectChangeReceiver.IWifiStateChangeListener, VideoAutoPlayChangeListener, ImpressionHost {
    protected MediaLabAdView adView;
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

    protected class FlingListener implements AbsListView.OnScrollListener, Runnable {
        boolean stoped;

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        }

        protected FlingListener() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
            if (i10 == 0) {
                Utils.postDelayed(this, 200L);
            } else if (this.stoped) {
                Utils.handler.removeCallbacks(this);
            } else {
                this.stoped = true;
                ((NVImageLoader) NVListFragment.this.getService("imageLoader")).getRequestQueue().stop();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.stoped) {
                this.stoped = false;
                ((NVImageLoader) NVListFragment.this.getService("imageLoader")).getRequestQueue().start();
            }
        }
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
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            int i13;
            int i14;
            if (i12 == 0 || absListView.getChildCount() == 0 || !this.mListScrollStarted) {
                return;
            }
            View childAt = absListView.getChildAt(0);
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int height = childAt.getHeight();
            int i15 = this.mFirstVisibleItem;
            if (i10 > i15) {
                int i16 = this.mFirstVisibleTop + this.mFirstVisibleHeight;
                this.mFirstVisibleTop = i16;
                i14 = top - i16;
            } else {
                if (i10 < i15) {
                    i13 = this.mFirstVisibleBottom - this.mFirstVisibleHeight;
                    this.mFirstVisibleBottom = i13;
                } else {
                    i13 = this.mFirstVisibleBottom;
                }
                i14 = bottom - i13;
            }
            int i17 = this.mTotalScrollDistance + i14;
            this.mTotalScrollDistance = i17;
            this.isScrolling = true;
            onScrollDistance(i17);
            this.mFirstVisibleTop = top;
            this.mFirstVisibleBottom = bottom;
            this.mFirstVisibleHeight = height;
            this.mFirstVisibleItem = i10;
        }

        void onScrollDistance(int i10) {
            this.menuController.onScrollDistance(i10);
        }

        void onScrollFinish() {
            this.menuController.onScrollFinish();
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
            View childAt;
            if (absListView.getCount() == 0) {
                return;
            }
            if (i10 != 0) {
                if (i10 == 1 && (childAt = absListView.getChildAt(0)) != null) {
                    this.mFirstVisibleItem = absListView.getFirstVisiblePosition();
                    this.mFirstVisibleTop = childAt.getTop();
                    this.mFirstVisibleBottom = childAt.getBottom();
                    this.mFirstVisibleHeight = childAt.getHeight();
                    this.mListScrollStarted = true;
                    this.mTotalScrollDistance = 0;
                    return;
                }
                return;
            }
            this.mListScrollStarted = false;
            if (this.isScrolling) {
                onScrollFinish();
                this.isScrolling = false;
            }
        }
    }

    private void hoverDestory() {
        this.hoverAdapter = null;
        this.hoverView = null;
        this.hoverCurrentView = null;
        this.hoverRecycleView = null;
    }

    private boolean isDeviceOffline() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo == null || !activeNetworkInfo.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

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

    protected int errorViewLayoutId() {
        return com.narvii.lib.R.layout.error_view;
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

    public View getHoverCurrentView() {
        return this.hoverCurrentView;
    }

    public ListAdapter getListAdapter() {
        return this.adapter;
    }

    public ListView getListView() {
        return this.listView;
    }

    protected int getSwipeRefreshFlag() {
        return 1;
    }

    protected SwipeRefreshLayout getSwipeRefreshLayout() {
        return this.swipeLayout;
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoPlayHost
    public IVideoListDelegate getVideoDelegate() {
        return this.mVideoListDelegate;
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

    protected void onHoveItemCreated(View view) {
    }

    protected void onHoverRecycled() {
    }

    public void onRefresh() {
        onRefresh(null);
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

    public void setScrollToHideKeyboard(boolean z6) {
        this.scrollToHideKeyboard = z6;
    }

    public void setShowScrollBarOnlyWhenScroll(boolean z6) {
        this.showScrollBarOnlyWhenScroll = z6;
    }

    public void setSwipeRefreshEnabled(boolean z6) {
        this.isSwipeRefreshEnabled = z6;
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
        if (this.videoAutoPlay && !this.mVideoListDelegate.prepared()) {
            getListView().post(new Runnable() { // from class: com.narvii.list.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2290a.lambda$videoAutoPlayChange$2();
                }
            });
        }
        this.mVideoListDelegate.setAutoPlay(this.videoAutoPlay);
    }

    private void addAdViewFriendlyObstructions(Activity activity) {
        View viewFindViewById;
        if (this.adView == null || (viewFindViewById = activity.getWindow().getDecorView().getRootView().findViewById(com.narvii.lib.R.id.video_overlay)) == null) {
            return;
        }
        this.adView.addFriendlyObstruction(viewFindViewById);
    }

    private int getLastHoverPosition(HoverAdapter hoverAdapter, int i10) {
        while (i10 >= 0) {
            if (hoverAdapter.isHover(i10)) {
                return i10;
            }
            i10--;
        }
        return -1;
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(int i10) {
        ListView listView = this.listView;
        if (listView instanceof NVListView) {
            ((NVListView) listView).setFooterPadding(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onWifiStateChange$1() {
        this.mVideoListDelegate.onListViewCreated((IVideoListView) getListView());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$videoAutoPlayChange$2() {
        this.mVideoListDelegate.onListViewCreated((IVideoListView) getListView());
    }

    public void addImpressionCollectorInListView(ImpressionCollector impressionCollector) {
        this.impressionDelegate.addImpressionCollectorInListView(impressionCollector);
    }

    public void blinkItem(final String str, final boolean z6, long j6) {
        if (j6 > 0) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.list.NVListFragment.9
                @Override // java.lang.Runnable
                public void run() {
                    NVListFragment.this.blinkItem(str, z6, 0L);
                }
            }, j6);
        }
        if (isResumed()) {
            ListView listView = getListView();
            ListAdapter listAdapter = getListAdapter();
            int firstVisiblePosition = listView.getFirstVisiblePosition();
            int childCount = listView.getChildCount();
            int count = listAdapter.getCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                int i11 = i10 + firstVisiblePosition;
                if (i11 >= count || firstVisiblePosition < 0) {
                    break;
                }
                Object item = listAdapter.getItem(i11);
                if ((item instanceof NVObject) && Utils.isEqualsNotNull(((NVObject) item).id(), str)) {
                    View childAt = listView.getChildAt(i10);
                    if (listView instanceof NVListView) {
                        ((NVListView) listView).startBlinkLong(i11);
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
            if (z6) {
                int count2 = listAdapter.getCount();
                for (final int i12 = 0; i12 < count2; i12++) {
                    Object item2 = listAdapter.getItem(i12);
                    if ((item2 instanceof NVObject) && Utils.isEqualsNotNull(((NVObject) item2).id(), str)) {
                        listView.smoothScrollToPosition(i12);
                        Utils.post(new Runnable() { // from class: com.narvii.list.NVListFragment.10
                            int count = 0;

                            @Override // java.lang.Runnable
                            public void run() {
                                if (NVListFragment.this.isDestoryed() || !NVListFragment.this.isResumed()) {
                                    return;
                                }
                                ListView listView2 = NVListFragment.this.getListView();
                                ListAdapter listAdapter2 = NVListFragment.this.getListAdapter();
                                if (listView2.getFirstVisiblePosition() > i12 || listView2.getLastVisiblePosition() < i12) {
                                    int i13 = this.count;
                                    this.count = i13 + 1;
                                    if (i13 < 15) {
                                        Utils.postDelayed(this, 100L);
                                        return;
                                    }
                                    return;
                                }
                                int firstVisiblePosition2 = listView2.getFirstVisiblePosition();
                                int childCount2 = listView2.getChildCount();
                                int count3 = listAdapter2.getCount();
                                for (int i14 = 0; i14 < childCount2; i14++) {
                                    int i15 = i14 + firstVisiblePosition2;
                                    if (i15 >= count3 || firstVisiblePosition2 < 0) {
                                        return;
                                    }
                                    Object item3 = listAdapter2.getItem(i15);
                                    if ((item3 instanceof NVObject) && Utils.isEqualsNotNull(((NVObject) item3).id(), str) && (listView2 instanceof NVListView)) {
                                        ((NVListView) listView2).startBlinkLong(i15);
                                    }
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    protected Boolean canChildScrollUp() {
        try {
            return OVERRIDES.get(getListView());
        } catch (Exception unused) {
            return Boolean.FALSE;
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean canScrollUp() {
        ListView listView = this.listView;
        if (listView != null) {
            return ViewCompat.g(listView, -1);
        }
        return false;
    }

    protected void clearImpression() {
        this.impressionDelegate.clearImpression();
    }

    @NonNull
    protected Drawable getFrameDarkBackgroundDrawable() {
        return new ColorDrawable(getResources().getColor(com.narvii.lib.R.color.color_default_primary));
    }

    public Drawable getListDividerDrawable() {
        return new ColorDrawable(getResources().getColor((isDarkTheme() || isDarkNVTheme()) ? com.narvii.lib.R.color.list_divider_dark : com.narvii.lib.R.color.list_divider));
    }

    public Drawable getListSelector() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        int selectorDarkColor = (isDarkTheme() || isDarkNVTheme()) ? getSelectorDarkColor() : getSelectorLightColor();
        stateListDrawable.addState(STATE_PRESSED, new ColorDrawable(selectorDarkColor));
        stateListDrawable.addState(STATE_FOCUSED, new ColorDrawable(selectorDarkColor));
        stateListDrawable.addState(STATE_NORMAL, new ColorDrawable(0));
        return stateListDrawable;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
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
            this.listView.getChildAt(0).setTag(NVListView.SECTION_HEADER_TAG, Boolean.TRUE);
            lastHoverPosition = -1;
        }
        if (this.hoverCurrentPosition != lastHoverPosition || this.hoverDirty) {
            hoverRecycle();
            if (lastHoverPosition != -1) {
                float hoverTopOffset = getHoverTopOffset();
                if (this.hoverView == null) {
                    ListHoverFrame listHoverFrame = (ListHoverFrame) getLayoutInflater(null).inflate(com.narvii.lib.R.layout.list_hover_frame, (ViewGroup) this.frame, false);
                    this.hoverView = listHoverFrame;
                    this.frame.addView(listHoverFrame);
                }
                this.hoverView.setPadding(0, ((int) hoverTopOffset) + getHoveFrameMarginTop(), 0, 0);
                this.hoverCurrentPosition = lastHoverPosition;
                int itemViewType = this.adapter.getItemViewType(lastHoverPosition);
                this.hoverCurrentType = itemViewType;
                View view = itemViewType == this.hoverRecycleType ? this.hoverRecycleView : null;
                this.hoverRecycleType = -1;
                this.hoverRecycleView = null;
                this.hoverUpdating = true;
                View view2 = this.adapter.getView(lastHoverPosition, view, this.hoverView);
                this.hoverCurrentView = view2;
                onHoveItemCreated(view2);
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
        int i10 = iHoverFirstVisiblePosition + 1;
        if (this.hoverCurrentView != null && i10 < this.adapter.getCount() && hoverAdapter.isHover(i10) && this.listView.getChildCount() > 1) {
            childAt = this.listView.getChildAt(1);
        }
        ListHoverFrame listHoverFrame2 = this.hoverView;
        if (listHoverFrame2 != null) {
            listHoverFrame2.setAlignView(childAt);
        }
    }

    public boolean isRefreshing() {
        SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
        return swipeRefreshLayout != null && swipeRefreshLayout.isRefreshing();
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
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(com.narvii.lib.R.layout.list_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        MediaLabAdView mediaLabAdView = this.adView;
        if (mediaLabAdView != null) {
            mediaLabAdView.clearFriendlyObstructions();
        }
        super.onDestroyView();
    }

    protected void onEmptyRetry() {
        ListAdapter listAdapter = this.adapter;
        if (listAdapter instanceof NVAdapter) {
            ((NVAdapter) listAdapter).refresh(2, null);
        }
    }

    protected void onErrorRetry() {
        ListAdapter listAdapter = this.adapter;
        if (listAdapter instanceof NVAdapter) {
            ((NVAdapter) listAdapter).onErrorRetry();
        }
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
                public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i10) {
                    if (NVListFragment.this.scrollToHideKeyboard && i10 != 0) {
                        try {
                            if (((InputMethodManager) NVListFragment.this.getContext().getSystemService("input_method")).isAcceptingText()) {
                                SoftKeyboard.hideSoftKeyboard(NVListFragment.this.getContext());
                            }
                        } catch (Exception e) {
                            Log.e("fail to hide keyboard", e);
                        }
                    }
                    if (NVListFragment.this.showScrollBarOnlyWhenScroll) {
                        if (i10 != 0) {
                            Runnable runnable = this.dismissScrollBarRunnable;
                            if (runnable != null) {
                                Utils.handler.removeCallbacks(runnable);
                                this.dismissScrollBarRunnable = null;
                            }
                            listView.setVerticalScrollBarEnabled(true);
                        } else {
                            Runnable runnable2 = new Runnable() { // from class: com.narvii.list.NVListFragment.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    listView.setVerticalScrollBarEnabled(false);
                                }
                            };
                            this.dismissScrollBarRunnable = runnable2;
                            Utils.postDelayed(runnable2, 200L);
                        }
                    }
                    NVListFragment.this.impressionDelegate.onScrollIdleStateChanged(i10 == 0);
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

    @Override // com.narvii.app.NVFragment
    protected void onLoginResult(boolean z6, Intent intent) {
        if ((this.adapter instanceof NVAdapter) && intent.hasExtra("__adapter")) {
            ((NVAdapter) this.adapter).dispatchLoginResult(z6, intent);
        } else {
            super.onLoginResult(z6, intent);
        }
    }

    public void onRefresh(Callback<Integer> callback) {
        this.outerRefreshCallback = callback;
        ListAdapter listAdapter = getListAdapter();
        if (listAdapter instanceof NVAdapter) {
            ((NVAdapter) listAdapter).refresh(getSwipeRefreshFlag(), this.refreshCallback);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate != null && this.videoAutoPlay) {
            iVideoListDelegate.onResume();
        }
        super.onResume();
    }

    @Override // com.narvii.nvplayerview.broadcast.NetworkConnectChangeReceiver.IWifiStateChangeListener
    public void onWifiStateChange(boolean z6) {
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate == null || z6 == this.wifiActive) {
            return;
        }
        this.wifiActive = z6;
        if (z6 && !iVideoListDelegate.prepared()) {
            getListView().post(new Runnable() { // from class: com.narvii.list.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2289a.lambda$onWifiStateChange$1();
                }
            });
        }
        updateVideoAutoPlay();
        this.mVideoListDelegate.setAutoPlay(this.videoAutoPlay);
    }

    public void setEmptyText(int i10) {
        TextView textView;
        View view = this.emptyView;
        if (view == null || (textView = (TextView) view.findViewById(com.narvii.lib.R.id.empty_text)) == null) {
            return;
        }
        textView.setText(getString(i10));
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
        int i10 = -1;
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
            if (!isDarkTheme() && !isDarkNVTheme()) {
                i10 = -11184811;
            }
            textView2.setTextColor(i10);
        }
        TextView textView3 = (TextView) this.errorView.findViewById(com.narvii.lib.R.id.retry);
        if (textView3 != null) {
            textView3.setTextColor(ContextCompat.getColor(getContext(), (isDarkNVTheme() || isDarkTheme()) ? com.narvii.lib.R.color.button_text_light : com.narvii.lib.R.color.button_text_gray_w));
        }
        this.errorView.setVisibility(0);
    }

    public void setHoverAdapter(HoverAdapter hoverAdapter) {
        this.hoverAdapter = hoverAdapter;
        if (hoverAdapter != null) {
            ListView listView = this.listView;
            if (listView instanceof NVListView) {
                ((NVListView) listView).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.list.NVListFragment.4
                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScrollStateChanged(AbsListView absListView, int i10) {
                    }

                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                        NVListFragment.this.hoverUpdateView();
                    }
                });
            } else {
                listView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.list.NVListFragment.5
                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScrollStateChanged(AbsListView absListView, int i10) {
                    }

                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                        NVListFragment.this.hoverUpdateView();
                    }
                });
            }
            ((NVListView) this.listView).setSectionHeaderEnabled(true);
            hoverUpdateView();
        }
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

    protected void setListViewVisibility(ListView listView, boolean z6) {
        listView.setVisibility(z6 ? 0 : 4);
        if (this.listViewFirstBecomeVisible || !z6) {
            return;
        }
        IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
        if (iVideoListDelegate != null && this.videoAutoPlay) {
            iVideoListDelegate.listViewFirstBecomeVisible();
        }
        this.listViewFirstBecomeVisible = true;
    }

    public void setOverScrollMode(int i10) {
        if (i10 == 0 || i10 == 1 || i10 == 2) {
            this.overScrollMode = i10;
            ListView listView = this.listView;
            if (listView != null) {
                listView.setOverScrollMode(i10);
            }
        }
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

    @Override // com.narvii.app.NVFragment
    public void updateThemeUI() {
        if (this.swipeLayout != null) {
            this.swipeLayout.setColorSchemeColors(((ConfigService) getService("config")).getTheme().colorPrimary());
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

    protected void updateViews() {
        if (this.listView == null) {
            throw new IllegalStateException();
        }
        ListAdapter listAdapter = getListAdapter();
        int i10 = 4;
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
            boolean z6 = true;
            if (listAdapter instanceof NVAdapter) {
                NVAdapter nVAdapter = (NVAdapter) listAdapter;
                boolean zIsListShown = nVAdapter.isListShown();
                boolean zIsEmpty = nVAdapter.isEmpty();
                boolean z10 = nVAdapter.errorMessage() != null;
                ListView listView = this.listView;
                if (!zIsListShown && !showListviewWhenLoading()) {
                    z6 = false;
                }
                setListViewVisibility(listView, z6);
                SwipeRefreshLayout swipeRefreshLayout2 = this.swipeLayout;
                if (swipeRefreshLayout2 != null) {
                    swipeRefreshLayout2.setVisibility(((!zIsListShown || (!forceShowListWhenEmpty() && zIsEmpty)) && !showListviewWhenLoading()) ? 4 : 0);
                }
                View view3 = this.emptyView;
                if (view3 != null) {
                    view3.setVisibility((zIsListShown && zIsEmpty && !z10) ? 0 : 4);
                }
                View view4 = this.progressView;
                if (view4 != null) {
                    if (!zIsListShown && !z10) {
                        i10 = 0;
                    }
                    view4.setVisibility(i10);
                }
                setErrorMessage(nVAdapter.errorMessage());
            } else {
                boolean zIsEmpty2 = listAdapter.isEmpty();
                ListView listView2 = this.listView;
                if (zIsEmpty2 && !showListviewWhenLoading()) {
                    z6 = false;
                }
                setListViewVisibility(listView2, z6);
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

    /* JADX WARN: Code duplicated, block: B:12:0x0028  */
    protected void updateWifiActive() {
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

    public int getHoverTopOffset() {
        if (hoverBelowOverlayPlaceHolder()) {
            return getTotalOverlaySize();
        }
        return 0;
    }

    protected int getSelectorDarkColor() {
        return getResources().getColor(com.narvii.lib.R.color.list_selector_dark);
    }

    protected int getSelectorLightColor() {
        return getResources().getColor(com.narvii.lib.R.color.list_selector_light);
    }

    protected int hoverFirstVisiblePosition(ListView listView) {
        View childAt;
        if (hoverBelowOverlayPlaceHolder() && (getActivity() instanceof NVActivity) && getListAdapter() != null) {
            int hoverTopOffset = getHoverTopOffset();
            int firstVisiblePosition = listView.getFirstVisiblePosition();
            int firstVisiblePosition2 = listView.getFirstVisiblePosition();
            int childCount = listView.getChildCount();
            int count = getListAdapter().getCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                int i11 = i10 + firstVisiblePosition2;
                if (i11 >= count || firstVisiblePosition2 < 0 || (childAt = listView.getChildAt(i10)) == null) {
                    break;
                }
                if (childAt.getBottom() > hoverTopOffset) {
                    return i11;
                }
            }
            return firstVisiblePosition;
        }
        return listView.getFirstVisiblePosition();
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
        FragmentActivity activity = getActivity();
        if (activity != null && MediaLabAds.getInstance().isInitialized()) {
            MediaLabAdView mediaLabAdView = new MediaLabAdView(activity);
            this.adView = mediaLabAdView;
            mediaLabAdView.initialize("feed", AdSize.MEDIUM_RECTANGLE);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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
        FlingListener flingListener = this.flingListener;
        if (flingListener != null) {
            flingListener.run();
        }
        ListView listView = this.listView;
        if (listView instanceof NVListView) {
            ((NVListView) listView).spOnPause();
            IVideoListDelegate iVideoListDelegate = this.mVideoListDelegate;
            if (iVideoListDelegate != null && this.videoAutoPlay) {
                iVideoListDelegate.onPause();
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        Bundle bundleOnSaveInstanceState;
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isSwipeRefreshEnabled", this.isSwipeRefreshEnabled);
        bundle.putInt("overScrollMode", this.overScrollMode);
        ListAdapter listAdapter = this.adapter;
        if ((listAdapter instanceof NVAdapter) && (bundleOnSaveInstanceState = ((NVAdapter) listAdapter).onSaveInstanceState()) != null) {
            bundle.putBundle("adapter", bundleOnSaveInstanceState);
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i10) {
        super.onThemeChange(i10);
        updateListView();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        View viewFindViewById;
        final int iBottomPadding;
        int color;
        int i10;
        super.onViewCreated(view, bundle);
        ListView listView = (ListView) view.findViewById(R.id.list);
        this.listView = listView;
        listView.setDividerHeight(getResources().getDimensionPixelSize(com.narvii.lib.R.dimen.list_divider_height));
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
        View viewFindViewById2 = view.findViewById(R.id.progress);
        this.progressView = viewFindViewById2;
        int color2 = -1;
        if (viewFindViewById2 instanceof SpinningView) {
            SpinningView spinningView = (SpinningView) viewFindViewById2;
            if (!isDarkTheme() && !isDarkNVTheme()) {
                i10 = -7829368;
            } else {
                i10 = -1;
            }
            spinningView.setSpinColor(i10);
        }
        View viewFindViewById3 = view.findViewById(R.id.empty);
        this.emptyView = viewFindViewById3;
        boolean z6 = false;
        if (viewFindViewById3 != null && emptyIconId() != 0) {
            View viewFindViewById4 = this.emptyView.findViewById(com.narvii.lib.R.id.empty_icon);
            if (viewFindViewById4 instanceof ImageView) {
                viewFindViewById4.setVisibility(0);
                ((ImageView) viewFindViewById4).setImageResource(emptyIconId());
            }
        }
        View viewFindViewById5 = view.findViewById(com.narvii.lib.R.id.empty_text);
        if (viewFindViewById5 instanceof TextView) {
            TextView textView = (TextView) viewFindViewById5;
            if (!isDarkTheme() && !isDarkNVTheme()) {
                color = getResources().getColor(com.narvii.lib.R.color.empty_text_color);
            } else {
                color = -1;
            }
            textView.setTextColor(color);
            String strEmptyMessage = emptyMessage();
            if (!TextUtils.isEmpty(strEmptyMessage)) {
                textView.setText(strEmptyMessage);
            }
        }
        View view2 = this.emptyView;
        Bundle bundle2 = null;
        if (view2 == null) {
            viewFindViewById = null;
        } else {
            viewFindViewById = view2.findViewById(com.narvii.lib.R.id.empty_retry);
        }
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this.emptyRetryListener);
            if (viewFindViewById instanceof TextView) {
                TextView textView2 = (TextView) viewFindViewById;
                if (!isDarkTheme() && !isDarkNVTheme()) {
                    color2 = getResources().getColor(com.narvii.lib.R.color.button_text_gray_w);
                }
                textView2.setTextColor(color2);
            }
        }
        onListViewCreated(this.listView, bundle);
        if (getActivity() instanceof NVActivity) {
            iBottomPadding = ((NVActivity) getActivity()).bottomPadding(this);
            if (iBottomPadding > 0 && autoAddBottomPadding() && (isRootFragment() || (getParentFragment() instanceof NVBaseScrollableTabFragment))) {
                z6 = true;
            }
        } else {
            iBottomPadding = 0;
        }
        if (z6) {
            Utils.post(new Runnable() { // from class: com.narvii.list.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2291a.lambda$onViewCreated$0(iBottomPadding);
                }
            });
        }
        if (bundle != null) {
            bundle2 = bundle.getBundle("adapter");
        }
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
            ListView listView2 = this.listView;
            FlingListener flingListener = new FlingListener();
            this.flingListener = flingListener;
            listView2.setOnScrollListener(flingListener);
        }
        addAdViewFriendlyObstructions(requireActivity());
    }

    public void resetHover() {
        hoverRecycle();
        hoverUpdateView();
    }

    @Override // com.narvii.app.NVFragment
    public void setDarkTheme(boolean z6) {
        super.setDarkTheme(z6);
        updateListView();
    }

    protected boolean setListContentBgWhenHasPageBackground() {
        if (!isDarkTheme() && !isDarkNVTheme()) {
            return true;
        }
        return false;
    }

    protected boolean setSectionHeaderTag() {
        return !hoverBelowOverlayPlaceHolder();
    }

    protected boolean setupSwipeRefreshLayout() {
        ListView listView = getListView();
        ViewGroup viewGroup = (ViewGroup) listView.getParent();
        if (viewGroup instanceof SwipeRefreshLayout) {
            this.swipeLayout = (SwipeRefreshLayout) viewGroup;
        } else {
            int childCount = viewGroup.getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 < childCount) {
                    if (viewGroup.getChildAt(i10) == listView) {
                        viewGroup.removeViewAt(i10);
                        break;
                    }
                    i10++;
                } else {
                    i10 = -1;
                    break;
                }
            }
            if (i10 != -1) {
                this.swipeLayout = new SwipeRefreshLayout(getContext()) { // from class: com.narvii.list.NVListFragment.2
                    @Override // com.narvii.list.refresh.SwipeRefreshLayout
                    public boolean canChildScrollUp() {
                        Boolean boolCanChildScrollUp = NVListFragment.this.canChildScrollUp();
                        return boolCanChildScrollUp != null ? boolCanChildScrollUp.booleanValue() : super.canChildScrollUp();
                    }
                };
                ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
                this.swipeLayout.addView(listView, new ViewGroup.LayoutParams(-1, -1));
                viewGroup.addView(this.swipeLayout, i10, layoutParams);
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
        if (this.swipeLayout == null) {
            return false;
        }
        return true;
    }

    protected boolean shouldInitSwipeRefresh() {
        if (isSwipeRefresh() && this.isSwipeRefreshEnabled) {
            return true;
        }
        return false;
    }

    protected boolean showListviewWhenLoading() {
        return isPageBackgroundEnabled();
    }

    @Override // com.narvii.app.NVFragment
    public void smoothScrollToTop() {
        super.smoothScrollToTop();
        getListView().smoothScrollToPositionFromTop(this.adapter instanceof HideTopAdapter ? 1 : 0, 0, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
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

    public View setEmptyView(int i10) {
        View viewInflate = getLayoutInflater(null).inflate(i10, (ViewGroup) this.frame, false);
        View viewFindViewById = viewInflate.findViewById(com.narvii.lib.R.id.empty_text);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setTextColor((isDarkTheme() || isDarkNVTheme()) ? -1 : getResources().getColor(com.narvii.lib.R.color.empty_text_color));
        }
        setEmptyView(viewInflate);
        return viewInflate;
    }
}
