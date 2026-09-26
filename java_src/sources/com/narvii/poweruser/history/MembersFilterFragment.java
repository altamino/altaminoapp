package com.narvii.poweruser.history;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.User;
import com.narvii.user.list.UserListExAdapter;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes2.dex */
public class MembersFilterFragment extends NVListFragment {
    AllAdapter allAdapter;
    String checkedUid;
    CuratorAdapter curatorAdapter;
    TabAdapter curatorTitleAdapter;
    LeaderAdapter leaderAdapter;
    TabAdapter leaderTitleAdapter;
    FilterItemClickListener listener;

    class AllAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public AllAdapter() {
            super(MembersFilterFragment.this);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            MembersFilterFragment.this.checkedUid = null;
            notifyDataSetChanged();
            FilterItemClickListener filterItemClickListener = MembersFilterFragment.this.listener;
            if (filterItemClickListener != null) {
                filterItemClickListener.onItemClicked(null);
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            View viewCreateView = createView(R.layout.item_member_filter_all, viewGroup, view);
            View viewFindViewById = viewCreateView.findViewById(R.id.checkmark);
            if (TextUtils.isEmpty(MembersFilterFragment.this.checkedUid)) {
                viewFindViewById.setVisibility(0);
            } else {
                viewFindViewById.setVisibility(4);
            }
            TextView textView = (TextView) viewCreateView.findViewById(R.id.all);
            if (MembersFilterFragment.this.isDarkTheme()) {
                i11 = -1;
            } else {
                i11 = -11184811;
            }
            textView.setTextColor(i11);
            return viewCreateView;
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

    public interface FilterItemClickListener {
        void onItemClicked(User user);
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

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof User)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            User user = (User) obj;
            MembersFilterFragment.this.checkedUid = user.uid();
            FilterItemClickListener filterItemClickListener = MembersFilterFragment.this.listener;
            if (filterItemClickListener != null) {
                filterItemClickListener.onItemClicked(user);
            }
            notifyDataSetChanged();
            return true;
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", type());
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            int i10;
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
                NicknameView nicknameView = (NicknameView) viewFindViewById2;
                if (MembersFilterFragment.this.isDarkTheme()) {
                    i10 = -1;
                } else {
                    i10 = -11184811;
                }
                nicknameView.setTextColor(i10);
            }
            return itemView;
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

    class TabAdapter extends NVAdapter {
        private NVAdapter host;
        private String title;

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        public void setHost(NVAdapter nVAdapter) {
            this.host = nVAdapter;
        }

        public TabAdapter(String str) {
            super(MembersFilterFragment.this);
            this.title = str;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            NVAdapter nVAdapter = this.host;
            return (nVAdapter == null || nVAdapter.getCount() > 0) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            TextView textView = (TextView) createView(R.layout.item_member_filter_tab, viewGroup, view);
            textView.setText(this.title);
            if (MembersFilterFragment.this.isDarkTheme()) {
                i11 = -1;
            } else {
                i11 = -11184811;
            }
            textView.setTextColor(i11);
            return textView;
        }
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    public void setFilterItemClickListener(FilterItemClickListener filterItemClickListener) {
        this.listener = filterItemClickListener;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.allAdapter = new AllAdapter();
        this.leaderTitleAdapter = new TabAdapter(getString(R.string.leaders));
        this.leaderAdapter = new LeaderAdapter();
        this.curatorTitleAdapter = new TabAdapter(getString(R.string.curators));
        CuratorAdapter curatorAdapter = new CuratorAdapter();
        this.curatorAdapter = curatorAdapter;
        this.curatorTitleAdapter.setHost(curatorAdapter);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(new AllAdapter());
        mergeAdapter.addAdapter(this.leaderTitleAdapter);
        mergeAdapter.addAdapter(this.leaderAdapter);
        mergeAdapter.addAdapter(this.curatorTitleAdapter);
        mergeAdapter.addAdapter(this.curatorAdapter);
        return mergeAdapter;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return super.isDarkTheme();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.checkedUid = bundle.getString("checked_uid");
        }
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("checked_uid", this.checkedUid);
    }
}
