package com.narvii.list;

import android.R;
import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.app.theme.NVTheme;
import com.narvii.app.theme.NVThemeOwner;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.config.ConfigService;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.widget.NVListView;
import com.narvii.widget.SpinningView;

/* loaded from: classes3.dex */
public abstract class NVListViewWrapper extends NVThemeFrameLayout implements SwipeRefreshLayout.OnRefreshListener {
    private ListAdapter adapter;
    private final DataSetObserver adapterObserver;
    private final View.OnClickListener emptyRetryListener;
    protected View emptyView;
    protected View errorView;
    private FrameLayout frame;
    protected boolean isSwipeRefreshEnabled;
    private ListView listView;
    protected NVContext nvContext;
    private NVTheme nvTheme;
    protected Callback<Integer> outerRefreshCallback;
    private int overScrollMode;
    protected View progressView;
    protected final Callback<Integer> refreshCallback;
    protected SwipeRefreshLayout swipeLayout;
    protected static final int[] STATE_PRESSED = {R.attr.state_pressed};
    protected static final int[] STATE_FOCUSED = {R.attr.state_focused};
    protected static final int[] STATE_NORMAL = new int[0];

    protected abstract ListAdapter createAdapter();

    protected int emptyIconId() {
        return 0;
    }

    protected String emptyMessage() {
        return null;
    }

    protected int externalOffset() {
        return 0;
    }

    protected int getSwipeRefreshFlag() {
        return 1;
    }

    public boolean isNestedScrollingChild() {
        return true;
    }

    public boolean isSwipeRefresh() {
        return false;
    }

    public NVListViewWrapper(Context context) {
        super(context);
        this.isSwipeRefreshEnabled = true;
        this.nvTheme = new NVTheme();
        this.overScrollMode = 0;
        this.adapterObserver = new DataSetObserver() { // from class: com.narvii.list.NVListViewWrapper.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                NVListViewWrapper nVListViewWrapper = NVListViewWrapper.this;
                nVListViewWrapper.onDataSetChanged(nVListViewWrapper.adapter);
            }
        };
        this.refreshCallback = new Callback<Integer>() { // from class: com.narvii.list.NVListViewWrapper.4
            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                SwipeRefreshLayout swipeRefreshLayout = NVListViewWrapper.this.swipeLayout;
                if (swipeRefreshLayout != null) {
                    swipeRefreshLayout.setRefreshing(false);
                }
                Callback<Integer> callback = NVListViewWrapper.this.outerRefreshCallback;
                if (callback != null) {
                    callback.call(0);
                }
                INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(NVListViewWrapper.this.getContext());
                if (nVPlayer != null) {
                    nVPlayer.getVideoLogHelper().resetIds();
                }
            }
        };
        this.emptyRetryListener = new View.OnClickListener() { // from class: com.narvii.list.NVListViewWrapper.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NVListViewWrapper.this.adapter instanceof NVAdapter) {
                    ((NVAdapter) NVListViewWrapper.this.adapter).refresh(2, null);
                }
            }
        };
        init();
    }

    public NVListViewWrapper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isSwipeRefreshEnabled = true;
        this.nvTheme = new NVTheme();
        this.overScrollMode = 0;
        this.adapterObserver = new DataSetObserver() { // from class: com.narvii.list.NVListViewWrapper.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                NVListViewWrapper nVListViewWrapper = NVListViewWrapper.this;
                nVListViewWrapper.onDataSetChanged(nVListViewWrapper.adapter);
            }
        };
        this.refreshCallback = new Callback<Integer>() { // from class: com.narvii.list.NVListViewWrapper.4
            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                SwipeRefreshLayout swipeRefreshLayout = NVListViewWrapper.this.swipeLayout;
                if (swipeRefreshLayout != null) {
                    swipeRefreshLayout.setRefreshing(false);
                }
                Callback<Integer> callback = NVListViewWrapper.this.outerRefreshCallback;
                if (callback != null) {
                    callback.call(0);
                }
                INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(NVListViewWrapper.this.getContext());
                if (nVPlayer != null) {
                    nVPlayer.getVideoLogHelper().resetIds();
                }
            }
        };
        this.emptyRetryListener = new View.OnClickListener() { // from class: com.narvii.list.NVListViewWrapper.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NVListViewWrapper.this.adapter instanceof NVAdapter) {
                    ((NVAdapter) NVListViewWrapper.this.adapter).refresh(2, null);
                }
            }
        };
        init();
    }

    private void init() {
        this.nvContext = Utils.getNVContext(getContext());
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
    }

    protected int getLayoutId() {
        return com.narvii.lib.R.layout.list_layout;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        onViewCreated(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.frame = null;
    }

    public void onViewCreated(View view) {
        this.listView = (ListView) view.findViewById(R.id.list);
        this.listView.setDividerHeight(getResources().getDimensionPixelSize(com.narvii.lib.R.dimen.list_divider_height));
        updateListView();
        getListView();
        if (shouldInitSwipeRefresh()) {
            setupSwipeRefreshLayout();
        }
        this.frame = (FrameLayout) view.findViewById(com.narvii.lib.R.id.list_frame);
        if (isDarkNvTheme()) {
            FrameLayout frameLayout = this.frame;
            if (frameLayout instanceof NVThemeFrameLayout) {
                ((NVThemeFrameLayout) frameLayout).setDarkBackgroundDrawable(getFrameDarkBackgroundDrawable());
            }
        }
        this.progressView = view.findViewById(R.id.progress);
        View view2 = this.progressView;
        int color = -1;
        if (view2 instanceof SpinningView) {
            ((SpinningView) view2).setSpinColor((isDarkTheme() || isDarkNvTheme()) ? -1 : -7829368);
        }
        this.emptyView = view.findViewById(R.id.empty);
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
            textView.setTextColor((isDarkTheme() || isDarkNvTheme()) ? -1 : getResources().getColor(com.narvii.lib.R.color.empty_text_color));
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
                if (!isDarkTheme() && !isDarkNvTheme()) {
                    color = getResources().getColor(com.narvii.lib.R.color.button_text_gray_w);
                }
                textView2.setTextColor(color);
            }
        }
        onListViewCreated(this.listView);
        ListAdapter listAdapterCreateAdapter = createAdapter();
        if (listAdapterCreateAdapter != null) {
            if (listAdapterCreateAdapter instanceof NVAdapter) {
                ((NVAdapter) listAdapterCreateAdapter).onAttach();
            }
            setListAdapter(listAdapterCreateAdapter);
        }
    }

    protected Drawable getFrameDarkBackgroundDrawable() {
        return new ColorDrawable(getResources().getColor(com.narvii.lib.R.color.color_default_primary));
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

    protected void onListViewCreated(ListView listView) {
        if (listView instanceof NVListView) {
            NVListView nVListView = (NVListView) listView;
            nVListView.setIsNestedScrollingChild(isSwipeRefresh() || isNestedScrollingChild());
            updateListViewContentBackground();
            nVListView.addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.list.NVListViewWrapper.1
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i) {
                }
            });
        }
    }

    protected void updateListViewContentBackground() {
        if (getListView() instanceof NVListView) {
            ((NVListView) getListView()).setListContentBackground(new ColorDrawable(0));
        }
    }

    public void setEmptyText(int i) {
        TextView textView;
        View view = this.emptyView;
        if (view == null || (textView = (TextView) view.findViewById(com.narvii.lib.R.id.empty_text)) == null) {
            return;
        }
        textView.setText(getContext().getString(i));
    }

    protected void onDataSetChanged(ListAdapter listAdapter) {
        updateViews();
    }

    public ListView getListView() {
        return this.listView;
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
        View viewInflate = LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this.frame, false);
        View viewFindViewById = viewInflate.findViewById(com.narvii.lib.R.id.empty_text);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setTextColor((isDarkTheme() || isDarkNvTheme()) ? -1 : getResources().getColor(com.narvii.lib.R.color.empty_text_color));
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
            this.errorView = LayoutInflater.from(getContext()).inflate(errorViewLayoutId(), (ViewGroup) this.frame, false);
            NVTheme.Companion.bindNVThemeView(getNVTheme(), this.errorView);
            this.errorView.findViewById(com.narvii.lib.R.id.retry).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.list.NVListViewWrapper.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    NVListViewWrapper.this.onErrorRetry();
                }
            });
            this.frame.addView(this.errorView);
        }
        TextView textView = (TextView) this.errorView.findViewById(com.narvii.lib.R.id.text);
        if (textView != null) {
            String str2 = getContext().getString(com.narvii.lib.R.string.normal_error_offline1) + "\n" + getContext().getString(com.narvii.lib.R.string.normal_error_offline2);
            if (isDeviceOffline()) {
                str = str2;
            }
            textView.setText(str);
            textView.setTextColor((isDarkTheme() || isDarkNvTheme()) ? -1 : -11184811);
        }
        TextView textView2 = (TextView) this.errorView.findViewById(com.narvii.lib.R.id.error);
        if (textView2 != null) {
            textView2.setTextColor((isDarkTheme() || isDarkNvTheme()) ? -1 : -11184811);
        }
        TextView textView3 = (TextView) this.errorView.findViewById(com.narvii.lib.R.id.retry);
        if (textView3 != null) {
            textView3.setTextColor(ContextCompat.getColor(getContext(), (isDarkNvTheme() || isDarkTheme()) ? com.narvii.lib.R.color.button_text_light : com.narvii.lib.R.color.button_text_gray_w));
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

    protected void updateViews() {
        if (this.listView == null) {
            throw new IllegalStateException();
        }
        ListAdapter listAdapter = getListAdapter();
        if (listAdapter == null) {
            this.listView.setVisibility(4);
            View view = this.emptyView;
            if (view != null) {
                view.setVisibility(0);
            }
            View view2 = this.progressView;
            if (view2 != null) {
                view2.setVisibility(4);
                return;
            }
            return;
        }
        if (listAdapter instanceof NVAdapter) {
            NVAdapter nVAdapter = (NVAdapter) listAdapter;
            boolean zIsListShown = nVAdapter.isListShown();
            boolean zIsEmpty = nVAdapter.isEmpty();
            boolean z = nVAdapter.errorMessage() != null;
            this.listView.setVisibility(zIsListShown ? 0 : 4);
            View view3 = this.emptyView;
            if (view3 != null) {
                view3.setVisibility((zIsListShown && zIsEmpty && !z) ? 0 : 4);
            }
            View view4 = this.progressView;
            if (view4 != null) {
                view4.setVisibility((zIsListShown || z) ? 4 : 0);
            }
            setErrorMessage(nVAdapter.errorMessage());
            return;
        }
        boolean zIsEmpty2 = listAdapter.isEmpty();
        this.listView.setVisibility(!zIsEmpty2 ? 0 : 4);
        View view5 = this.emptyView;
        if (view5 != null) {
            view5.setVisibility(zIsEmpty2 ? 0 : 4);
        }
        View view6 = this.progressView;
        if (view6 != null) {
            view6.setVisibility(4);
        }
    }

    public void setSwipeRefreshEnabled(boolean z) {
        this.isSwipeRefreshEnabled = z;
    }

    protected boolean shouldInitSwipeRefresh() {
        return isSwipeRefresh() && this.isSwipeRefreshEnabled;
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
                this.swipeLayout = new SwipeRefreshLayout(getContext());
                ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
                this.swipeLayout.addView(listView, new ViewGroup.LayoutParams(-1, -1));
                viewGroup.addView(this.swipeLayout, i, layoutParams);
            }
        }
        SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setIsNestedScrollingChild(isNestedScrollingChild());
            this.swipeLayout.setOnRefreshListener(this);
            this.swipeLayout.setColorSchemeColors(((ConfigService) this.nvContext.getService("config")).getTheme().colorPrimary());
            this.swipeLayout.setProgressViewOffset(false, getResources().getDimensionPixelOffset(com.narvii.lib.R.dimen.swipe_refresh_start) + externalOffset() + 0, getResources().getDimensionPixelOffset(com.narvii.lib.R.dimen.swipe_refresh_end) + externalOffset() + 0);
        }
        return this.swipeLayout != null;
    }

    protected SwipeRefreshLayout getSwipeRefreshLayout() {
        return this.swipeLayout;
    }

    @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
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

    public Drawable getListSelector() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        int selectorDarkColor = (isDarkTheme() || isDarkNvTheme()) ? getSelectorDarkColor() : -1644826;
        stateListDrawable.addState(STATE_PRESSED, new ColorDrawable(selectorDarkColor));
        stateListDrawable.addState(STATE_FOCUSED, new ColorDrawable(selectorDarkColor));
        stateListDrawable.addState(STATE_NORMAL, new ColorDrawable(0));
        return stateListDrawable;
    }

    protected int getSelectorDarkColor() {
        return getResources().getColor(com.narvii.lib.R.color.list_selector_dark);
    }

    public Drawable getListDividerDrawable() {
        return new ColorDrawable(getResources().getColor((isDarkTheme() || isDarkNvTheme()) ? com.narvii.lib.R.color.list_divider_dark : com.narvii.lib.R.color.list_divider));
    }

    private boolean isDarkTheme() {
        return isDarkNvTheme();
    }

    private NVTheme getNVTheme() {
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof NVThemeOwner) {
            return ((NVThemeOwner) nVContext).getNVTheme();
        }
        return this.nvTheme;
    }

    @Override // com.narvii.app.theme.view.NVThemeFrameLayout, com.narvii.app.theme.NVThemeObserver
    public void onThemeChange(int i) {
        super.onThemeChange(i);
        updateListView();
    }
}
