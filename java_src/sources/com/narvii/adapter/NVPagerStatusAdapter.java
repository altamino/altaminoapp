package com.narvii.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.util.Utils;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes2.dex */
public class NVPagerStatusAdapter extends NVAdapter {
    public static final int VIEW_TYPE_EMPTY = -1;
    public static final int VIEW_TYPE_ERROR = -2;
    public static final int VIEW_TYPE_LOADING = -3;
    protected NVAdapter boundAdapter;
    private View.OnClickListener emptyListener;
    private View.OnClickListener errorListener;

    protected int emptyLayoutId() {
        return R.layout.status_empty_view;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    protected int getMinHeight() {
        return 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof NVAdapter)) {
            throw new RuntimeException("not NVPagedAdapter");
        }
        this.boundAdapter = (NVAdapter) listAdapter;
        setDarkTheme(true);
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
        int i10 = R.id.main;
        viewCreateView.findViewById(i10).setMinimumHeight(getMinHeight());
        viewCreateView.findViewById(i10).setMinimumHeight(getMinHeight());
        return viewCreateView;
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
        int i10 = -1;
        textView.setTextColor((this.darkTheme || isDarkNVTheme()) ? -1 : -11184811);
        TextView textView2 = (TextView) viewCreateView.findViewById(R.id.error);
        if (!this.darkTheme && !isDarkNVTheme()) {
            i10 = -11184811;
        }
        textView2.setTextColor(i10);
        TextView textView3 = (TextView) viewCreateView.findViewById(R.id.retry);
        textView3.setTextColor(ContextCompat.getColor(getContext(), (this.darkTheme || isDarkNVTheme()) ? R.color.button_text_light : R.color.button_text_gray_w));
        textView3.setOnClickListener(this.errorListener);
        viewCreateView.findViewById(R.id.main).setMinimumHeight(getMinHeight());
        return viewCreateView;
    }

    public View createLoadingView(ViewGroup viewGroup, View view) {
        View viewCreateView = this.boundAdapter.createView(R.layout.status_loading_view, viewGroup, view);
        viewCreateView.findViewById(R.id.main).setMinimumHeight(getMinHeight());
        ((SpinningView) viewCreateView.findViewById(R.id.loading)).setSpinColor((this.darkTheme || isDarkNVTheme()) ? -1 : -11184811);
        return viewCreateView;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.boundAdapter.getCount() == 0 ? 1 : 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        return this.boundAdapter.errorMessage() != null ? -2 : -1;
    }

    protected void onEmptyClickRetry() {
        this.boundAdapter.refresh(2, null);
    }

    protected void onErrorClickRetry() {
        this.boundAdapter.onErrorRetry();
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

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i10);
        String strErrorMessage = this.boundAdapter.errorMessage();
        if (itemViewType != -3) {
            if (itemViewType != -2) {
                if (itemViewType != -1) {
                    return createEmptyView(viewGroup, view);
                }
                return createEmptyView(viewGroup, view);
            }
            return createErrorItem(viewGroup, view, strErrorMessage);
        }
        return createLoadingView(viewGroup, view);
    }

    public void setAdapter(ListAdapter listAdapter, Boolean bool) {
        if (listAdapter instanceof NVAdapter) {
            this.boundAdapter = (NVAdapter) listAdapter;
            setDarkTheme(bool.booleanValue());
            return;
        }
        throw new RuntimeException("not NVPagedAdapter");
    }
}
