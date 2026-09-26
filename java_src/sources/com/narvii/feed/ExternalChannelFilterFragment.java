package com.narvii.feed;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.list.DividerAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.ExternalSource;
import com.narvii.model.ExternalSourceListResponse;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.PopupBubble;
import com.narvii.widget.TintButton;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class ExternalChannelFilterFragment extends NVListFragment {
    ExternalChannelListAdapter externalChannelListAdapter;
    FilterChangeListener filterChangeListener;
    PopupBubble popupBubble;
    private String selectedFilterChannelId;

    private class ExternalChannelListAdapter extends NVPagedAdapter<ExternalSource, ExternalSourceListResponse> {
        private List<ExternalSource> l;

        private Drawable getIconDrawable(int i10) {
            if (i10 == -1) {
                return ContextCompat.getDrawable(getContext(), R.drawable.ic_rss_channel_all);
            }
            if (i10 != 1) {
                return i10 != 2 ? ContextCompat.getDrawable(getContext(), R.drawable.ic_rss_channel_rss) : ContextCompat.getDrawable(getContext(), R.drawable.ic_rss_channel_reddit);
            }
            return ContextCompat.getDrawable(getContext(), R.drawable.ic_rss_channel_youtube);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<ExternalSource> dataType() {
            return ExternalSource.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.l;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 20;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ExternalSourceListResponse> responseType() {
            return ExternalSourceListResponse.class;
        }

        public ExternalChannelListAdapter(NVContext nVContext) {
            super(nVContext);
            setDarkTheme(true);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof ExternalSource)) {
                return null;
            }
            ExternalSource externalSource = (ExternalSource) obj;
            View viewCreateView = createView(R.layout.item_channel_filter, viewGroup, view);
            boolean z6 = Utils.isEqualsNotNull(externalSource.id(), ExternalChannelFilterFragment.this.selectedFilterChannelId) || (TextUtils.isEmpty(ExternalChannelFilterFragment.this.selectedFilterChannelId) && "all".equals(externalSource.id()));
            TintButton tintButton = (TintButton) viewCreateView.findViewById(R.id.icon);
            int i10 = R.color.text_clickable_white;
            if (tintButton != null) {
                tintButton.setImageDrawable(getIconDrawable(externalSource.type));
                tintButton.setTintColor(ContextCompat.getColorStateList(getContext(), z6 ? R.color.selector_color_checked : R.color.text_clickable_white));
            }
            TextView textView = (TextView) viewCreateView.findViewById(R.id.channel_name);
            if (textView != null) {
                textView.setText(externalSource.title);
                Context context = getContext();
                if (z6) {
                    i10 = R.color.selector_color_checked;
                }
                textView.setTextColor(ContextCompat.getColorStateList(context, i10));
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            ExternalChannelFilterFragment externalChannelFilterFragment = ExternalChannelFilterFragment.this;
            if (externalChannelFilterFragment.filterChangeListener != null && (obj instanceof ExternalSource)) {
                ExternalSource externalSource = (ExternalSource) obj;
                externalChannelFilterFragment.selectedFilterChannelId = externalSource.id();
                notifyDataSetChanged();
                ExternalChannelFilterFragment.this.filterChangeListener.onFilterChanged(externalSource);
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, ExternalSourceListResponse externalSourceListResponse, int i10) {
            super.onPageResponse(apiRequest, externalSourceListResponse, i10);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("external-source");
            if (z6) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List<? extends ExternalSource> listRawList = rawList();
            if (listRawList == null) {
                this.l = null;
            } else if (listRawList.isEmpty()) {
                this.l = new ArrayList();
            } else {
                this.l = new ArrayList();
                ExternalSource externalSource = new ExternalSource();
                externalSource.sourceId = "all";
                externalSource.type = -1;
                externalSource.title = ExternalChannelFilterFragment.this.getString(R.string.rss_channel_filter_all);
                this.l.add(0, externalSource);
                this.l.addAll(listRawList);
            }
            super.notifyDataSetChanged();
        }
    }

    interface FilterChangeListener {
        void onFilterChanged(ExternalSource externalSource);
    }

    private class MyDividerAdapter extends DividerAdapter {
        @Override // com.narvii.list.DividerAdapter
        protected int getDividerLayoutId() {
            return R.layout.channel_filter_list_divider;
        }

        public MyDividerAdapter(NVContext nVContext) {
            super(nVContext);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected int errorViewLayoutId() {
        return R.layout.filter_error_layout;
    }

    @Override // com.narvii.app.NVFragment
    public NVFragment.MenuController getMenuController() {
        return null;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isNestedScrollingChild() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    public void setFilterChangeListener(FilterChangeListener filterChangeListener) {
        this.filterChangeListener = filterChangeListener;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MyDividerAdapter myDividerAdapter = new MyDividerAdapter(this);
        ExternalChannelListAdapter externalChannelListAdapter = new ExternalChannelListAdapter(this);
        this.externalChannelListAdapter = externalChannelListAdapter;
        myDividerAdapter.setAdapter(externalChannelListAdapter);
        return myDividerAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(NVListFragment.STATE_PRESSED, new ColorDrawable(-10132123));
        stateListDrawable.addState(NVListFragment.STATE_FOCUSED, new ColorDrawable(-10132123));
        stateListDrawable.addState(NVListFragment.STATE_NORMAL, new ColorDrawable(0));
        return stateListDrawable;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.selectedFilterChannelId = bundle.getString("selectedFilterChannelId");
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_external_channel_filter, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        setDarkTheme(true);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("selectedFilterChannelId", this.selectedFilterChannelId);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        float f;
        float f6;
        super.onViewCreated(view, bundle);
        this.popupBubble = (PopupBubble) view.findViewById(R.id.popup_bubble);
        Point screenSize = Utils.getScreenSize(getActivity());
        PopupBubble popupBubble = this.popupBubble;
        float f7 = screenSize.x;
        if (isEmbedFragment()) {
            f = 0.7f;
        } else {
            f = 0.8f;
        }
        float f10 = f7 * f;
        Context context = getContext();
        if (isEmbedFragment()) {
            f6 = 12.0f;
        } else {
            f6 = 0.0f;
        }
        popupBubble.setIndicator(true, (int) (f10 - ((int) Utils.dpToPx(context, f6))));
    }
}
