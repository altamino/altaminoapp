package com.narvii.poweruser.history;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.User;
import com.narvii.user.list.UserListExAdapter;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NicknameView;

/* loaded from: classes3.dex */
public class MembersFilterFragment extends NVListFragment {
    AllAdapter allAdapter;
    String checkedUid;
    CuratorAdapter curatorAdapter;
    TabAdapter curatorTitleAdapter;
    LeaderAdapter leaderAdapter;
    TabAdapter leaderTitleAdapter;
    FilterItemClickListener listener;

    public interface FilterItemClickListener {
        void onItemClicked(User user);
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.checkedUid = bundle.getString("checked_uid");
        }
    }

    public void setFilterItemClickListener(FilterItemClickListener filterItemClickListener) {
        this.listener = filterItemClickListener;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("checked_uid", this.checkedUid);
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return super.isDarkTheme();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (isDarkTheme()) {
            listView.setBackgroundDrawable(new ColorDrawable(-12961222));
        } else {
            listView.setBackgroundDrawable(new ColorDrawable(-1));
        }
        listView.setDivider(getListDividerDrawable());
        listView.setDividerHeight(getResources().getDimensionPixelSize(R.dimen.list_divider_height));
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.allAdapter = new AllAdapter();
        this.leaderTitleAdapter = new TabAdapter(getString(R.string.leaders));
        this.leaderAdapter = new LeaderAdapter();
        this.curatorTitleAdapter = new TabAdapter(getString(R.string.curators));
        this.curatorAdapter = new CuratorAdapter();
        this.curatorTitleAdapter.setHost(this.curatorAdapter);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(new AllAdapter());
        mergeAdapter.addAdapter(this.leaderTitleAdapter);
        mergeAdapter.addAdapter(this.leaderAdapter);
        mergeAdapter.addAdapter(this.curatorTitleAdapter);
        mergeAdapter.addAdapter(this.curatorAdapter);
        return mergeAdapter;
    }

    class AllAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public AllAdapter() {
            super(MembersFilterFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_member_filter_all, viewGroup, view);
            View viewFindViewById = viewCreateView.findViewById(R.id.checkmark);
            if (TextUtils.isEmpty(MembersFilterFragment.this.checkedUid)) {
                viewFindViewById.setVisibility(0);
            } else {
                viewFindViewById.setVisibility(4);
            }
            ((TextView) viewCreateView.findViewById(R.id.all)).setTextColor(MembersFilterFragment.this.isDarkTheme() ? -1 : -11184811);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            MembersFilterFragment.this.checkedUid = null;
            notifyDataSetChanged();
            FilterItemClickListener filterItemClickListener = MembersFilterFragment.this.listener;
            if (filterItemClickListener != null) {
                filterItemClickListener.onItemClicked(null);
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    class TabAdapter extends NVAdapter {
        private NVAdapter host;
        private String title;

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public TabAdapter(String str) {
            super(MembersFilterFragment.this);
            this.title = str;
        }

        public void setHost(NVAdapter nVAdapter) {
            this.host = nVAdapter;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            NVAdapter nVAdapter = this.host;
            return (nVAdapter == null || nVAdapter.getCount() > 0) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView = (TextView) createView(R.layout.item_member_filter_tab, viewGroup, view);
            textView.setText(this.title);
            textView.setTextColor(MembersFilterFragment.this.isDarkTheme() ? -1 : -11184811);
            return textView;
        }
    }

    class LeaderAdapter extends FilterUserAdapter {
        @Override // com.narvii.poweruser.history.MembersFilterFragment.FilterUserAdapter
        protected String type() {
            return "leaders";
        }

        LeaderAdapter() {
            super();
        }
    }

    class CuratorAdapter extends FilterUserAdapter {
        @Override // com.narvii.poweruser.history.MembersFilterFragment.FilterUserAdapter
        protected String type() {
            return "curators";
        }

        CuratorAdapter() {
            super();
        }
    }

    class FilterUserAdapter extends UserListExAdapter {
        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.item_member_filter;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 20;
        }

        protected String type() {
            return null;
        }

        public FilterUserAdapter() {
            super(MembersFilterFragment.this);
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", type());
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            View viewFindViewById = itemView.findViewById(R.id.checkmark);
            if (viewFindViewById != null && (obj instanceof User)) {
                if (Utils.isEqualsNotNull(((User) obj).uid, MembersFilterFragment.this.checkedUid)) {
                    viewFindViewById.setVisibility(0);
                } else {
                    viewFindViewById.setVisibility(4);
                }
            }
            View viewFindViewById2 = itemView.findViewById(R.id.nickname);
            if (viewFindViewById2 instanceof NicknameView) {
                ((NicknameView) viewFindViewById2).setTextColor(MembersFilterFragment.this.isDarkTheme() ? -1 : -11184811);
            }
            return itemView;
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof User) {
                User user = (User) obj;
                MembersFilterFragment.this.checkedUid = user.uid();
                FilterItemClickListener filterItemClickListener = MembersFilterFragment.this.listener;
                if (filterItemClickListener != null) {
                    filterItemClickListener.onItemClicked(user);
                }
                notifyDataSetChanged();
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
