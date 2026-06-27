package com.narvii.onlinestatus;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.config.ConfigService;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import java.util.List;

/* loaded from: classes3.dex */
public class OnlineMembersFragment extends BaseOnlineMembersFragment {
    FavoriteHeaderAdapter favoriteHeaderAdapter;
    FavoriteOnlineAdapter favoriteOnlineAdapter;
    LiveLayerService liveLayerService;
    OnlineAdapter onlineAdapter;

    @Override // com.narvii.onlinestatus.BaseOnlineMembersFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.members_online);
        this.liveLayerService = (LiveLayerService) getService("liveLayer");
    }

    @Override // com.narvii.onlinestatus.BaseOnlineMembersFragment
    protected void updateTitle(int i) {
        FavoriteHeaderAdapter favoriteHeaderAdapter = this.favoriteHeaderAdapter;
        boolean z = favoriteHeaderAdapter != null && favoriteHeaderAdapter.getCount() > 0;
        int i2 = z ? 2 : 0;
        FavoriteHeaderAdapter favoriteHeaderAdapter2 = this.favoriteHeaderAdapter;
        int count = favoriteHeaderAdapter2 != null ? ((favoriteHeaderAdapter2.getCount() + 2) / 3) + 2 : 2;
        FavoriteOnlineAdapter favoriteOnlineAdapter = this.favoriteOnlineAdapter;
        if (favoriteOnlineAdapter != null) {
            count += ((favoriteOnlineAdapter.getCount() + 2) / 3) + (z ? 2 : 0);
        }
        if (i < i2) {
            setTitle(R.string.members_online);
            return;
        }
        if (i >= count) {
            setTitle(R.string.online_all_members);
        } else if (z) {
            setTitle(R.string.online_favorite_members);
        } else {
            setTitle(R.string.members_online);
        }
    }

    @Override // com.narvii.onlinestatus.BaseOnlineMembersFragment, com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.favoriteHeaderAdapter = new FavoriteHeaderAdapter();
        this.favoriteOnlineAdapter = new FavoriteOnlineAdapter();
        int iDpToPx = (int) Utils.dpToPx(getContext(), 10.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPx, iDpToPx);
        divideColumnAdapter.setAdapter(this.favoriteOnlineAdapter, 3);
        this.onlineAdapter = new OnlineAdapter();
        DivideColumnAdapter divideColumnAdapter2 = new DivideColumnAdapter(this, iDpToPx, iDpToPx);
        divideColumnAdapter2.setAdapter(this.onlineAdapter, 3);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(this.favoriteHeaderAdapter);
        mergeAdapter.addAdapter(divideColumnAdapter);
        mergeAdapter.addAdapter(new OnlineHeaderAdapter());
        mergeAdapter.addAdapter(divideColumnAdapter2, true);
        this.mergeAdapter = mergeAdapter;
        return mergeAdapter;
    }

    class FavoriteHeaderAdapter extends NVAdapter {
        boolean show;

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public FavoriteHeaderAdapter() {
            super(OnlineMembersFragment.this);
        }

        public void setShow(boolean z) {
            if (this.show != z) {
                this.show = z;
                notifyDataSetChanged();
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.show ? 3 : 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return i == 1 ? BaseOnlineMembersFragment.SECTION_HEADER : this;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (i == 0 || i == 2) {
                return createView(R.layout.online_section_header_space, viewGroup, view);
            }
            if (i == 1) {
                View viewCreateView = createView(R.layout.online_section_header, viewGroup, view);
                ((TextView) viewCreateView.findViewById(R.id.text)).setText(R.string.online_favorite_members);
                return viewCreateView;
            }
            return createView(R.layout.online_favorite_empty_view, viewGroup, view);
        }
    }

    class FavoriteOnlineAdapter extends OnlineMembersAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 100;
        }

        public FavoriteOnlineAdapter() {
            super(OnlineMembersFragment.this);
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            OnlineMembersFragment.this.favoriteHeaderAdapter.setShow(getCount() > 0);
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (list() == null || list().size() <= 0) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (!((AccountService) getService("account")).hasAccount()) {
                return null;
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-group/quick-access");
            builderPath.param("type", "online");
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListAdapter
        protected void userClicked(User user) {
            OnlineMembersFragment.this.showUserDialog(user);
        }
    }

    class OnlineHeaderAdapter extends NVAdapter {
        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return 3;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public OnlineHeaderAdapter() {
            super(OnlineMembersFragment.this);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return i == 1 ? BaseOnlineMembersFragment.SECTION_HEADER : this;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (i == 1) {
                View viewCreateView = createView(R.layout.online_section_header, viewGroup, view);
                ((TextView) viewCreateView.findViewById(R.id.text)).setText(R.string.online_all_members);
                return viewCreateView;
            }
            return createView(R.layout.online_section_header_space, viewGroup, view);
        }
    }

    class OnlineAdapter extends OnlineMembersAdapter {
        AccountService account;

        public OnlineAdapter() {
            super(OnlineMembersFragment.this);
            this.account = (AccountService) getService("account");
        }

        @Override // com.narvii.onlinestatus.OnlineMembersAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            super.refresh(i, callback);
            OnlineMembersFragment.this.favoriteOnlineAdapter.refresh(i, null);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path(LiveLayerService.OPEN ? "/live-layer" : "/user-profile");
            if (LiveLayerService.OPEN) {
                ((ConfigService) getService("config")).getCommunityId();
                builderPath.param("topic", OnlineMembersFragment.this.liveLayerService.getNdtopic("online-members"));
            } else {
                builderPath.param("type", "online");
            }
            if (z) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i) {
            int onlineStatus;
            User userProfile;
            super.onPageResponse(apiRequest, (ApiRequest) userListResponse, i);
            if (!"start0".equals(apiRequest.tag()) || (onlineStatus = this.account.getOnlineStatus()) == 0 || onlineStatus == 2 || (userProfile = this.account.getUserProfile()) == null) {
                return;
            }
            rawList().add(userProfile);
            notifyDataSetChanged();
        }

        @Override // com.narvii.onlinestatus.OnlineMembersAdapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected List<User> filterResponseList(List<User> list, int i) {
            String userId = this.account.getUserId();
            if (userId != null) {
                Utils.removeId(list, userId);
            }
            BaseOnlineMembersFragment.onlineMemberList = list;
            return super.filterResponseList(list, i);
        }

        @Override // com.narvii.user.list.UserListAdapter
        protected void userClicked(User user) {
            OnlineMembersFragment.this.showUserDialog(user);
        }
    }

    @Override // com.narvii.onlinestatus.BaseOnlineMembersFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z, Intent intent) {
        super.onLoginResult(z, intent);
        if ("login".equals(intent.getAction()) && z) {
            this.favoriteOnlineAdapter.resetList();
        }
    }
}
