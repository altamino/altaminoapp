package com.narvii.adapter;

import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.util.Utils;
import com.narvii.widget.SpinningView;

/* loaded from: classes2.dex */
public class NVPagerStatusAdapter extends NVAdapter {
    public static final int VIEW_TYPE_EMPTY = -1;
    public static final int VIEW_TYPE_ERROR = -2;
    public static final int VIEW_TYPE_LOADING = -3;
    protected NVAdapter boundAdapter;
    private View.OnClickListener emptyListener;
    private View.OnClickListener errorListener;

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    protected int getMinHeight() {
        return 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }

    public NVPagerStatusAdapter(NVContext nVContext) {
        super(nVContext);
        this.emptyListener = new View.OnClickListener() { // from class: com.narvii.adapter.NVPagerStatusAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NVPagerStatusAdapter.this.onEmptyClickRetry();
            }
        };
        this.errorListener = new View.OnClickListener() { // from class: com.narvii.adapter.NVPagerStatusAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NVPagerStatusAdapter.this.onErrorClickRetry();
            }
        };
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof NVAdapter) {
            this.boundAdapter = (NVAdapter) listAdapter;
            setDarkTheme(true);
            return;
        }
        throw new RuntimeException("not NVPagedAdapter");
    }

    public void setAdapter(ListAdapter listAdapter, Boolean bool) {
        if (listAdapter instanceof NVAdapter) {
            this.boundAdapter = (NVAdapter) listAdapter;
            setDarkTheme(bool.booleanValue());
            return;
        }
        throw new RuntimeException("not NVPagedAdapter");
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.boundAdapter.getCount() == 0 ? 1 : 0;
    }

    @Override // com.narvii.list.NVAdapter
    public View createErrorItem(ViewGroup viewGroup, View view, String str) {
        View viewCreateView = this.boundAdapter.createView(R.layout.status_error_view, viewGroup, view);
        viewCreateView.setOnClickListener(this.errorListener);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
        String str2 = getContext().getString(R.string.normal_error_offline1) + "\n" + getContext().getString(R.string.normal_error_offline2);
        if (Utils.isDeviceOffline(getContext())) {
            str = str2;
        }
        textView.setText(str);
        textView.setTextColor((this.darkTheme || isDarkNVTheme()) ? -1 : -11184811);
        ((TextView) viewCreateView.findViewById(R.id.error)).setTextColor((this.darkTheme || isDarkNVTheme()) ? -1 : -11184811);
        TextView textView2 = (TextView) viewCreateView.findViewById(R.id.retry);
        textView2.setTextColor(ContextCompat.getColor(getContext(), (this.darkTheme || isDarkNVTheme()) ? R.color.button_text_light : R.color.button_text_gray_w));
        textView2.setOnClickListener(this.errorListener);
        viewCreateView.findViewById(R.id.main).setMinimumHeight(getMinHeight());
        return viewCreateView;
    }

    public View createEmptyView(ViewGroup viewGroup, View view) {
        View viewCreateView = this.boundAdapter.createView(emptyLayoutId(), viewGroup, view);
        viewCreateView.setOnClickListener(this.emptyListener);
        ((TextView) viewCreateView.findViewById(R.id.empty_text)).setTextColor((this.darkTheme || isDarkNVTheme()) ? -1 : -11184811);
        View viewFindViewById = viewCreateView.findViewById(R.id.empty_retry);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setTextColor(ContextCompat.getColor(getContext(), (this.darkTheme || isDarkNVTheme()) ? R.color.button_text_light : R.color.button_text_gray_w));
        }
        viewFindViewById.setOnClickListener(this.emptyListener);
        viewCreateView.findViewById(R.id.main).setMinimumHeight(getMinHeight());
        viewCreateView.findViewById(R.id.main).setMinimumHeight(getMinHeight());
        return viewCreateView;
    }

    protected int emptyLayoutId() {
        return R.layout.status_empty_view;
    }

    public View createLoadingView(ViewGroup viewGroup, View view) {
        View viewCreateView = this.boundAdapter.createView(R.layout.status_loading_view, viewGroup, view);
        viewCreateView.findViewById(R.id.main).setMinimumHeight(getMinHeight());
        ((SpinningView) viewCreateView.findViewById(R.id.loading)).setSpinColor((this.darkTheme || isDarkNVTheme()) ? -1 : -11184811);
        return viewCreateView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return this.boundAdapter.errorMessage() != null ? -2 : -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i);
        String strErrorMessage = this.boundAdapter.errorMessage();
        if (itemViewType == -3) {
            return createLoadingView(viewGroup, view);
        }
        if (itemViewType == -2) {
            return createErrorItem(viewGroup, view, strErrorMessage);
        }
        if (itemViewType == -1) {
            return createEmptyView(viewGroup, view);
        }
        return createEmptyView(viewGroup, view);
    }

    protected void onEmptyClickRetry() {
        this.boundAdapter.refresh(2, null);
    }

    protected void onErrorClickRetry() {
        this.boundAdapter.onErrorRetry();
    }
}
