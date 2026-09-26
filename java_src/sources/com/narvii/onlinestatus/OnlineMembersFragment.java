package com.narvii.onlinestatus;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.browser.customtabs.CustomTabsCallback;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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

/* JADX INFO: loaded from: classes7.dex */
public class OnlineMembersFragment extends BaseOnlineMembersFragment {
    FavoriteHeaderAdapter favoriteHeaderAdapter;
    FavoriteOnlineAdapter favoriteOnlineAdapter;
    LiveLayerService liveLayerService;
    OnlineAdapter onlineAdapter;

    class FavoriteHeaderAdapter extends NVAdapter {
        boolean show;

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.show ? 3 : 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return i10 == 1 ? BaseOnlineMembersFragment.SECTION_HEADER : this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        public FavoriteHeaderAdapter() {
            super(OnlineMembersFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (i10 == 0 || i10 == 2) {
                return createView(R.layout.online_section_header_space, viewGroup, view);
            }
            if (i10 != 1) {
                return createView(R.layout.online_favorite_empty_view, viewGroup, view);
            }
            View viewCreateView = createView(R.layout.online_section_header, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(R.string.online_favorite_members);
            return viewCreateView;
        }

        public void setShow(boolean z6) {
            if (this.show != z6) {
                this.show = z6;
                notifyDataSetChanged();
            }
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

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            if (!((AccountService) getService("account")).hasAccount()) {
                return null;
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-group/quick-access");
            builderPath.param("type", CustomTabsCallback.ONLINE_EXTRAS_KEY);
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListAdapter
        protected void userClicked(User user) {
            OnlineMembersFragment.this.showUserDialog(user);
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (list() != null && list().size() > 0) {
                return super.getCount();
            }
            return 0;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            boolean z6;
            super.notifyDataSetChanged();
            FavoriteHeaderAdapter favoriteHeaderAdapter = OnlineMembersFragment.this.favoriteHeaderAdapter;
            if (getCount() > 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            favoriteHeaderAdapter.setShow(z6);
        }
    }

    class OnlineAdapter extends OnlineMembersAdapter {
        AccountService account;

        public OnlineAdapter() {
            super(OnlineMembersFragment.this);
            this.account = (AccountService) getService("account");
        }

        @Override // com.narvii.onlinestatus.OnlineMembersAdapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected List<User> filterResponseList(List<User> list, int i10) {
            String userId = this.account.getUserId();
            if (userId != null) {
                Utils.removeId(list, userId);
            }
            BaseOnlineMembersFragment.onlineMemberList = list;
            return super.filterResponseList(list, i10);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i10) {
            int onlineStatus;
            User userProfile;
            super.onPageResponse(apiRequest, userListResponse, i10);
            if (!"start0".equals(apiRequest.tag()) || (onlineStatus = this.account.getOnlineStatus()) == 0 || onlineStatus == 2 || (userProfile = this.account.getUserProfile()) == null) {
                return;
            }
            rawList().add(userProfile);
            notifyDataSetChanged();
        }

        @Override // com.narvii.user.list.UserListAdapter
        protected void userClicked(User user) {
            OnlineMembersFragment.this.showUserDialog(user);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            String str;
            ApiRequest.Builder builder = ApiRequest.builder();
            if (LiveLayerService.OPEN) {
                str = "/live-layer";
            } else {
                str = "/user-profile";
            }
            ApiRequest.Builder builderPath = builder.path(str);
            if (LiveLayerService.OPEN) {
                ((ConfigService) getService("config")).getCommunityId();
                builderPath.param("topic", OnlineMembersFragment.this.liveLayerService.getNdtopic("online-members"));
            } else {
                builderPath.param("type", CustomTabsCallback.ONLINE_EXTRAS_KEY);
            }
            if (z6) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }

        @Override // com.narvii.onlinestatus.OnlineMembersAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            super.refresh(i10, callback);
            OnlineMembersFragment.this.favoriteOnlineAdapter.refresh(i10, null);
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
        public Object getItem(int i10) {
            return i10 == 1 ? BaseOnlineMembersFragment.SECTION_HEADER : this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            return i10;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (i10 != 1) {
                return createView(R.layout.online_section_header_space, viewGroup, view);
            }
            View viewCreateView = createView(R.layout.online_section_header, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(R.string.online_all_members);
            return viewCreateView;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        public OnlineHeaderAdapter() {
            super(OnlineMembersFragment.this);
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

    @Override // com.narvii.onlinestatus.BaseOnlineMembersFragment
    protected void updateTitle(int i10) {
        FavoriteHeaderAdapter favoriteHeaderAdapter = this.favoriteHeaderAdapter;
        boolean z6 = favoriteHeaderAdapter != null && favoriteHeaderAdapter.getCount() > 0;
        int i11 = z6 ? 2 : 0;
        FavoriteHeaderAdapter favoriteHeaderAdapter2 = this.favoriteHeaderAdapter;
        int count = favoriteHeaderAdapter2 != null ? ((favoriteHeaderAdapter2.getCount() + 2) / 3) + 2 : 2;
        FavoriteOnlineAdapter favoriteOnlineAdapter = this.favoriteOnlineAdapter;
        if (favoriteOnlineAdapter != null) {
            count += ((favoriteOnlineAdapter.getCount() + 2) / 3) + (z6 ? 2 : 0);
        }
        if (i10 < i11) {
            setTitle(R.string.members_online);
            return;
        }
        if (i10 >= count) {
            setTitle(R.string.online_all_members);
        } else if (z6) {
            setTitle(R.string.online_favorite_members);
        } else {
            setTitle(R.string.members_online);
        }
    }

    @Override // com.narvii.onlinestatus.BaseOnlineMembersFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.members_online);
        this.liveLayerService = (LiveLayerService) getService("liveLayer");
    }

    @Override // com.narvii.onlinestatus.BaseOnlineMembersFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z6, Intent intent) {
        super.onLoginResult(z6, intent);
        if ("login".equals(intent.getAction()) && z6) {
            this.favoriteOnlineAdapter.resetList();
        }
    }
}
