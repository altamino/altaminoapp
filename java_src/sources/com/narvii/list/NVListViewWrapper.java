package com.narvii.list;

import android.R;
import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
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
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
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

/* JADX INFO: loaded from: classes3.dex */
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

    private boolean isDeviceOffline() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo == null || !activeNetworkInfo.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

    protected abstract ListAdapter createAdapter();

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

    protected int getLayoutId() {
        return com.narvii.lib.R.layout.list_layout;
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

    public boolean isNestedScrollingChild() {
        return true;
    }

    public boolean isSwipeRefresh() {
        return false;
    }

    @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
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

    public void setSwipeRefreshEnabled(boolean z6) {
        this.isSwipeRefreshEnabled = z6;
    }

    private NVTheme getNVTheme() {
        NVContext nVContext = this.nvContext;
        return nVContext instanceof NVThemeOwner ? ((NVThemeOwner) nVContext).getNVTheme() : this.nvTheme;
    }

    @NonNull
    protected Drawable getFrameDarkBackgroundDrawable() {
        return new ColorDrawable(getResources().getColor(com.narvii.lib.R.color.color_default_primary));
    }

    public Drawable getListDividerDrawable() {
        return new ColorDrawable(getResources().getColor((isDarkTheme() || isDarkNvTheme()) ? com.narvii.lib.R.color.list_divider_dark : com.narvii.lib.R.color.list_divider));
    }

    public Drawable getListSelector() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        int selectorDarkColor = (isDarkTheme() || isDarkNvTheme()) ? getSelectorDarkColor() : -1644826;
        stateListDrawable.addState(STATE_PRESSED, new ColorDrawable(selectorDarkColor));
        stateListDrawable.addState(STATE_FOCUSED, new ColorDrawable(selectorDarkColor));
        stateListDrawable.addState(STATE_NORMAL, new ColorDrawable(0));
        return stateListDrawable;
    }

    public boolean isRefreshing() {
        SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
        return swipeRefreshLayout != null && swipeRefreshLayout.isRefreshing();
    }

    protected void onErrorRetry() {
        ListAdapter listAdapter = this.adapter;
        if (listAdapter instanceof NVAdapter) {
            ((NVAdapter) listAdapter).onErrorRetry();
        }
    }

    protected void onListViewCreated(ListView listView) {
        if (listView instanceof NVListView) {
            NVListView nVListView = (NVListView) listView;
            nVListView.setIsNestedScrollingChild(isSwipeRefresh() || isNestedScrollingChild());
            updateListViewContentBackground();
            nVListView.addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.list.NVListViewWrapper.1
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i10) {
                }
            });
        }
    }

    public void onRefresh(Callback<Integer> callback) {
        this.outerRefreshCallback = callback;
        ListAdapter listAdapter = getListAdapter();
        if (listAdapter instanceof NVAdapter) {
            ((NVAdapter) listAdapter).refresh(getSwipeRefreshFlag(), this.refreshCallback);
        }
    }

    public void setEmptyText(int i10) {
        TextView textView;
        View view = this.emptyView;
        if (view == null || (textView = (TextView) view.findViewById(com.narvii.lib.R.id.empty_text)) == null) {
            return;
        }
        textView.setText(getContext().getString(i10));
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
        int i10 = -1;
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
            if (!isDarkTheme() && !isDarkNvTheme()) {
                i10 = -11184811;
            }
            textView2.setTextColor(i10);
        }
        TextView textView3 = (TextView) this.errorView.findViewById(com.narvii.lib.R.id.retry);
        if (textView3 != null) {
            textView3.setTextColor(ContextCompat.getColor(getContext(), (isDarkNvTheme() || isDarkTheme()) ? com.narvii.lib.R.color.button_text_light : com.narvii.lib.R.color.button_text_gray_w));
        }
        this.errorView.setVisibility(0);
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
        if (!(listAdapter instanceof NVAdapter)) {
            boolean zIsEmpty = listAdapter.isEmpty();
            this.listView.setVisibility(!zIsEmpty ? 0 : 4);
            View view3 = this.emptyView;
            if (view3 != null) {
                view3.setVisibility(zIsEmpty ? 0 : 4);
            }
            View view4 = this.progressView;
            if (view4 != null) {
                view4.setVisibility(4);
                return;
            }
            return;
        }
        NVAdapter nVAdapter = (NVAdapter) listAdapter;
        boolean zIsListShown = nVAdapter.isListShown();
        boolean zIsEmpty2 = nVAdapter.isEmpty();
        boolean z6 = nVAdapter.errorMessage() != null;
        this.listView.setVisibility(zIsListShown ? 0 : 4);
        View view5 = this.emptyView;
        if (view5 != null) {
            view5.setVisibility((zIsListShown && zIsEmpty2 && !z6) ? 0 : 4);
        }
        View view6 = this.progressView;
        if (view6 != null) {
            view6.setVisibility((zIsListShown || z6) ? 4 : 0);
        }
        setErrorMessage(nVAdapter.errorMessage());
    }

    private void init() {
        this.nvContext = Utils.getNVContext(getContext());
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
    }

    private boolean isDarkTheme() {
        return isDarkNvTheme();
    }

    protected int getSelectorDarkColor() {
        return getResources().getColor(com.narvii.lib.R.color.list_selector_dark);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        onViewCreated(this);
    }

    protected void onDataSetChanged(ListAdapter listAdapter) {
        updateViews();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.frame = null;
    }

    @Override // com.narvii.app.theme.view.NVThemeFrameLayout, com.narvii.app.theme.NVThemeObserver
    public void onThemeChange(int i10) {
        super.onThemeChange(i10);
        updateListView();
    }

    public void onViewCreated(View view) {
        View viewFindViewById;
        int color;
        int i10;
        ListView listView = (ListView) view.findViewById(R.id.list);
        this.listView = listView;
        listView.setDividerHeight(getResources().getDimensionPixelSize(com.narvii.lib.R.dimen.list_divider_height));
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
        View viewFindViewById2 = view.findViewById(R.id.progress);
        this.progressView = viewFindViewById2;
        int color2 = -1;
        if (viewFindViewById2 instanceof SpinningView) {
            SpinningView spinningView = (SpinningView) viewFindViewById2;
            if (!isDarkTheme() && !isDarkNvTheme()) {
                i10 = -7829368;
            } else {
                i10 = -1;
            }
            spinningView.setSpinColor(i10);
        }
        View viewFindViewById3 = view.findViewById(R.id.empty);
        this.emptyView = viewFindViewById3;
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
            if (!isDarkTheme() && !isDarkNvTheme()) {
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
        if (view2 == null) {
            viewFindViewById = null;
        } else {
            viewFindViewById = view2.findViewById(com.narvii.lib.R.id.empty_retry);
        }
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this.emptyRetryListener);
            if (viewFindViewById instanceof TextView) {
                TextView textView2 = (TextView) viewFindViewById;
                if (!isDarkTheme() && !isDarkNvTheme()) {
                    color2 = getResources().getColor(com.narvii.lib.R.color.button_text_gray_w);
                }
                textView2.setTextColor(color2);
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
                this.swipeLayout = new SwipeRefreshLayout(getContext());
                ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
                this.swipeLayout.addView(listView, new ViewGroup.LayoutParams(-1, -1));
                viewGroup.addView(this.swipeLayout, i10, layoutParams);
            }
        }
        SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setIsNestedScrollingChild(isNestedScrollingChild());
            this.swipeLayout.setOnRefreshListener(this);
            this.swipeLayout.setColorSchemeColors(((ConfigService) this.nvContext.getService("config")).getTheme().colorPrimary());
            this.swipeLayout.setProgressViewOffset(false, getResources().getDimensionPixelOffset(com.narvii.lib.R.dimen.swipe_refresh_start) + externalOffset(), getResources().getDimensionPixelOffset(com.narvii.lib.R.dimen.swipe_refresh_end) + externalOffset());
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

    protected void updateListViewContentBackground() {
        if (getListView() instanceof NVListView) {
            ((NVListView) getListView()).setListContentBackground(new ColorDrawable(0));
        }
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

    public View setEmptyView(int i10) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this.frame, false);
        View viewFindViewById = viewInflate.findViewById(com.narvii.lib.R.id.empty_text);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setTextColor((isDarkTheme() || isDarkNvTheme()) ? -1 : getResources().getColor(com.narvii.lib.R.color.empty_text_color));
        }
        setEmptyView(viewInflate);
        return viewInflate;
    }
}
