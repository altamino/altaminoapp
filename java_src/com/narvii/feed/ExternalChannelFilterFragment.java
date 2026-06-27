package com.narvii.feed;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
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

/* loaded from: classes2.dex */
public class ExternalChannelFilterFragment extends NVListFragment {
    ExternalChannelListAdapter externalChannelListAdapter;
    FilterChangeListener filterChangeListener;
    PopupBubble popupBubble;
    private String selectedFilterChannelId;

    interface FilterChangeListener {
        void onFilterChanged(ExternalSource externalSource);
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.selectedFilterChannelId = bundle.getString("selectedFilterChannelId");
        }
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_external_channel_filter, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.popupBubble = (PopupBubble) view.findViewById(R.id.popup_bubble);
        this.popupBubble.setIndicator(true, (int) ((Utils.getScreenSize(getActivity()).x * (isEmbedFragment() ? 0.7f : 0.8f)) - ((int) Utils.dpToPx(getContext(), isEmbedFragment() ? 12.0f : 0.0f))));
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        setDarkTheme(true);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("selectedFilterChannelId", this.selectedFilterChannelId);
    }

    public void setFilterChangeListener(FilterChangeListener filterChangeListener) {
        this.filterChangeListener = filterChangeListener;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MyDividerAdapter myDividerAdapter = new MyDividerAdapter(this);
        this.externalChannelListAdapter = new ExternalChannelListAdapter(this);
        myDividerAdapter.setAdapter(this.externalChannelListAdapter);
        return myDividerAdapter;
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
    public Drawable getListSelector() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(NVListFragment.STATE_PRESSED, new ColorDrawable(-10132123));
        stateListDrawable.addState(NVListFragment.STATE_FOCUSED, new ColorDrawable(-10132123));
        stateListDrawable.addState(NVListFragment.STATE_NORMAL, new ColorDrawable(0));
        return stateListDrawable;
    }

    private class ExternalChannelListAdapter extends NVPagedAdapter<ExternalSource, ExternalSourceListResponse> {
        private List<ExternalSource> l;

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 20;
        }

        public ExternalChannelListAdapter(NVContext nVContext) {
            super(nVContext);
            setDarkTheme(true);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<ExternalSource> dataType() {
            return ExternalSource.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ExternalSourceListResponse> responseType() {
            return ExternalSourceListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("external-source");
            if (z) {
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
                externalSource.sourceId = ExternalSource.EXTERNAL_SOURCE_ALL_ID;
                externalSource.type = -1;
                externalSource.title = ExternalChannelFilterFragment.this.getString(R.string.rss_channel_filter_all);
                this.l.add(0, externalSource);
                this.l.addAll(listRawList);
            }
            super.notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.l;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, ExternalSourceListResponse externalSourceListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) externalSourceListResponse, i);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof ExternalSource)) {
                return null;
            }
            ExternalSource externalSource = (ExternalSource) obj;
            View viewCreateView = createView(R.layout.item_channel_filter, viewGroup, view);
            boolean z = Utils.isEqualsNotNull(externalSource.id(), ExternalChannelFilterFragment.this.selectedFilterChannelId) || (TextUtils.isEmpty(ExternalChannelFilterFragment.this.selectedFilterChannelId) && ExternalSource.EXTERNAL_SOURCE_ALL_ID.equals(externalSource.id()));
            TintButton tintButton = (TintButton) viewCreateView.findViewById(R.id.icon);
            int i = R.color.selector_color_checked;
            if (tintButton != null) {
                tintButton.setImageDrawable(getIconDrawable(externalSource.type));
                tintButton.setTintColor(ContextCompat.getColorStateList(getContext(), z ? R.color.selector_color_checked : R.color.text_clickable_white));
            }
            TextView textView = (TextView) viewCreateView.findViewById(R.id.channel_name);
            if (textView != null) {
                textView.setText(externalSource.title);
                Context context = getContext();
                if (!z) {
                    i = R.color.text_clickable_white;
                }
                textView.setTextColor(ContextCompat.getColorStateList(context, i));
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            ExternalChannelFilterFragment externalChannelFilterFragment = ExternalChannelFilterFragment.this;
            if (externalChannelFilterFragment.filterChangeListener != null && (obj instanceof ExternalSource)) {
                ExternalSource externalSource = (ExternalSource) obj;
                externalChannelFilterFragment.selectedFilterChannelId = externalSource.id();
                notifyDataSetChanged();
                ExternalChannelFilterFragment.this.filterChangeListener.onFilterChanged(externalSource);
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        private Drawable getIconDrawable(int i) {
            if (i == -1) {
                return ContextCompat.getDrawable(getContext(), R.drawable.ic_rss_channel_all);
            }
            if (i == 1) {
                return ContextCompat.getDrawable(getContext(), R.drawable.ic_rss_channel_youtube);
            }
            if (i == 2) {
                return ContextCompat.getDrawable(getContext(), R.drawable.ic_rss_channel_reddit);
            }
            return ContextCompat.getDrawable(getContext(), R.drawable.ic_rss_channel_rss);
        }
    }
}
