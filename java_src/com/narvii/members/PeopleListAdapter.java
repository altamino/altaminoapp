package com.narvii.members;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.search.InstantSearchListener;
import com.narvii.user.list.UserListExAdapter;
import com.narvii.util.Tag;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SearchBar;

/* loaded from: classes3.dex */
public class PeopleListAdapter extends MergeAdapter {
    static final Tag SECTION = new Tag("section");
    private int allMembersCount;
    private NVContext ctx;
    private InstantSearchListener instantSearchListener;
    private InviteAdapter inviteAdapter;
    private FeaturedAdapter mFeaturedAdapter;
    private FeaturedTitleAdapter mFeaturedTitleAdapter;
    private FoundersTitleAdapter mFounTitleAdapter;
    private FounderAdapter mFoundAdapter;
    private LeaderAdapter mLeaderAdapter;
    private LeadersTitleAdapter mLeaderTitleAdapter;
    private SearchResultAdapter searchResultAdaper;
    private SeeAllAdapter seeAllAdapter;

    public int allMembersLimit() {
        return 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    protected void onAllMembersCountFetched(int i) {
    }

    public PeopleListAdapter(NVContext nVContext, boolean z) {
        super(nVContext);
        this.instantSearchListener = new InstantSearchListener();
        this.allMembersCount = 0;
        this.ctx = nVContext;
        this.mFoundAdapter = new FounderAdapter();
        this.mLeaderAdapter = new LeaderAdapter();
        this.mFounTitleAdapter = new FoundersTitleAdapter();
        this.mLeaderTitleAdapter = new LeadersTitleAdapter();
        this.mFeaturedTitleAdapter = new FeaturedTitleAdapter();
        this.mFeaturedAdapter = new FeaturedAdapter();
        this.seeAllAdapter = new SeeAllAdapter();
        if (z) {
            this.inviteAdapter = new InviteAdapter();
            addAdapter(this.inviteAdapter);
        }
        addAdapter(this.mFeaturedTitleAdapter);
        addAdapter(this.mFeaturedAdapter);
        addAdapter(this.mFounTitleAdapter);
        addAdapter(this.mFoundAdapter, true);
        addAdapter(this.mLeaderTitleAdapter);
        addAdapter(this.mLeaderAdapter);
        addAdapter(new TitleAdapter());
        addAdapter(new NewMemberAdapter());
        addAdapter(this.seeAllAdapter);
        this.searchResultAdaper = new SearchResultAdapter();
        addAdapter(this.searchResultAdaper);
        this.instantSearchListener.attachAdapter(this.searchResultAdaper);
    }

    @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        SearchResultAdapter searchResultAdapter;
        return (TextUtils.isEmpty(this.instantSearchListener.getKeyword()) || (searchResultAdapter = this.searchResultAdaper) == null || searchResultAdapter.getCount() != 0) ? false : true;
    }

    public void retry() {
        if (TextUtils.isEmpty(this.instantSearchListener.getKeyword())) {
            refresh(2, null);
            return;
        }
        SearchResultAdapter searchResultAdapter = this.searchResultAdaper;
        if (searchResultAdapter != null) {
            searchResultAdapter.refresh(2, null);
        }
    }

    public int getAllMembersCount() {
        return this.allMembersCount;
    }

    protected boolean onSeeAllClick() {
        Intent intent = FragmentWrapperActivity.intent(PeopleListFragment.class);
        intent.putExtra("Source", "Live Layer");
        startActivity(intent);
        return true;
    }

    class FeaturedTitleAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public FeaturedTitleAdapter() {
            super(PeopleListAdapter.this.ctx);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (!TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword()) || PeopleListAdapter.this.mFeaturedAdapter == null || PeopleListAdapter.this.mFeaturedAdapter.getCount() == 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return PeopleListAdapter.SECTION;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.member_title_layout, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(PeopleListAdapter.this.ctx.getContext().getString(R.string.page_featured));
            return viewCreateView;
        }
    }

    class FeaturedAdapter extends HorizontalMemberWrappedAdapter implements NotificationListener {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Featured";
        }

        @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return 3L;
        }

        @Override // com.narvii.members.HorizontalMemberWrappedAdapter
        protected boolean isSinglePage() {
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public FeaturedAdapter() {
            super(PeopleListAdapter.this.ctx);
        }

        @Override // com.narvii.members.HorizontalMemberWrappedAdapter
        protected ApiRequest createRequest(int i, int i2, String str) {
            return ApiRequest.builder().path("/user-profile").param("type", Module.MODULE_FEATURED).build();
        }

        @Override // com.narvii.members.HorizontalMemberWrappedAdapter, com.narvii.user.favorite.NVRecycleViewWrapAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword())) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return super.isListShown();
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Bundle bundle;
            if ((notification.obj instanceof User) && notification.action == "update" && (bundle = notification.bundle) != null && bundle.getBoolean("featureChanged")) {
                refresh(0, null);
            }
        }
    }

    class InviteAdapter extends NVAdapter {
        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "InviteButton";
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 1L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public InviteAdapter() {
            super(PeopleListAdapter.this.ctx);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.invite_members_item, viewGroup, view);
            viewCreateView.findViewById(R.id.action).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            logClickEvent(ActSemantic.invite);
            Intent intent = FragmentWrapperActivity.intent(InviteMembersFragment.class);
            intent.putExtra("Source", "Members");
            startActivity(intent);
            return true;
        }
    }

    private class SearchAdapter extends NVAdapter implements SearchBar.OnSearchListener {
        SearchBar searchBar;
        boolean stated;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 2L;
        }

        public SearchAdapter() {
            super(PeopleListAdapter.this.ctx);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (this.searchBar == null) {
                this.searchBar = (SearchBar) createView(R.layout.search_bar, viewGroup, view);
                this.searchBar.setOnSearchListener(this);
                this.searchBar.setBackgroundColor(-1);
            }
            return this.searchBar;
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onTextChanged(SearchBar searchBar, String str) {
            PeopleListAdapter.this.instantSearchListener.onTextChanged(searchBar, str);
            if (this.stated) {
                return;
            }
            TextUtils.isEmpty(str);
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onSearch(SearchBar searchBar, String str) {
            PeopleListAdapter.this.instantSearchListener.onSearch(searchBar, str);
        }
    }

    class FoundersTitleAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public FoundersTitleAdapter() {
            super(PeopleListAdapter.this.ctx);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword()) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return PeopleListAdapter.SECTION;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.member_title_layout, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(PeopleListAdapter.this.ctx.getContext().getString(R.string.leaders));
            return viewCreateView;
        }
    }

    class FounderAdapter extends UserListExAdapter {
        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Leaders";
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_ex;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 100;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return i == 0;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public FounderAdapter() {
            super(PeopleListAdapter.this.ctx);
            this.source = "Members List";
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", "leaders");
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            ((NicknameView) itemView.findViewById(R.id.nickname)).setRole1(null, 0);
            ((NicknameView) itemView.findViewById(R.id.nickname)).setDarkTheme(isDarkNVTheme());
            return itemView;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword())) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i) {
            View viewCreateView = createView(R.layout.result_simple_empty_view, viewGroup, view);
            viewCreateView.setClickable(true);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return super.isListShown();
        }
    }

    class LeadersTitleAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public LeadersTitleAdapter() {
            super(PeopleListAdapter.this.ctx);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (!TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword()) || PeopleListAdapter.this.mLeaderAdapter.getCount() <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return PeopleListAdapter.SECTION;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.member_title_layout, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(PeopleListAdapter.this.ctx.getContext().getString(R.string.curators));
            return viewCreateView;
        }
    }

    class LeaderAdapter extends UserListExAdapter {
        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Curators";
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_ex;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public LeaderAdapter() {
            super(PeopleListAdapter.this.ctx);
            this.source = "Members List";
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", "curators");
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            ((NicknameView) itemView.findViewById(R.id.nickname)).setRole1(null, 0);
            ((NicknameView) itemView.findViewById(R.id.nickname)).setDarkTheme(isDarkNVTheme());
            return itemView;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword())) {
                return super.getCount();
            }
            return 0;
        }
    }

    private class TitleAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public TitleAdapter() {
            super(PeopleListAdapter.this.ctx);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword()) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return PeopleListAdapter.SECTION;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.member_title_layout, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(PeopleListAdapter.this.ctx.getContext().getString(R.string.recent_joined_member));
            return viewCreateView;
        }
    }

    class NewMemberAdapter extends UserListExAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        protected boolean filterDuplicate() {
            return true;
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "RecentJoined";
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_ex;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public NewMemberAdapter() {
            super(PeopleListAdapter.this.ctx);
            this.source = "Members List";
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", MemberListFragment.KEY_TYPE_RECENT);
            if (PeopleListAdapter.this.allMembersLimit() != 0) {
                builderPath.param(TtmlNode.START, 0).param("size", Integer.valueOf(PeopleListAdapter.this.allMembersLimit()));
            }
            if (z) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) userListResponse, i);
            if ("start0".equals(apiRequest.tag())) {
                PeopleListAdapter.this.allMembersCount = userListResponse.userProfileCount;
                PeopleListAdapter peopleListAdapter = PeopleListAdapter.this;
                peopleListAdapter.onAllMembersCountFetched(peopleListAdapter.allMembersCount);
                if (PeopleListAdapter.this.allMembersLimit() != 0) {
                    this._isEnd = true;
                    notifyDataSetChanged();
                    PeopleListAdapter.this.seeAllAdapter.notifyDataSetChanged();
                }
            }
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            ((NicknameView) itemView.findViewById(R.id.nickname)).setRole1(null, 0);
            ((NicknameView) itemView.findViewById(R.id.nickname)).setDarkTheme(isDarkNVTheme());
            return itemView;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword())) {
                return super.getCount();
            }
            return 0;
        }
    }

    class SearchResultAdapter extends UserListExAdapter {
        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_ex;
        }

        public SearchResultAdapter() {
            super(PeopleListAdapter.this.ctx);
            this.source = "Members List";
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", AppMeasurementSdk.ConditionalUserProperty.NAME);
            builderPath.param("q", PeopleListAdapter.this.instantSearchListener.getKeyword());
            builderPath.timeout(20000);
            builderPath.retry(0);
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            PeopleListAdapter.this.instantSearchListener.setKeyword(bundle.getString("keyword"));
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putString("keyword", PeopleListAdapter.this.instantSearchListener.getKeyword());
            return bundleOnSaveInstanceState;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword())) {
                return 0;
            }
            return super.getCount();
        }
    }

    private class SeeAllAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 4L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public SeeAllAdapter() {
            super(PeopleListAdapter.this.ctx);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return PeopleListAdapter.this.allMembersLimit() != 0 ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.live_layer_all_members_see_all, viewGroup, view);
            Button button = (Button) viewCreateView.findViewById(R.id.see_all);
            button.setText(this.context.getContext().getString(R.string.see_all_with_count_s, com.narvii.util.text.TextUtils.numberFormat.format(PeopleListAdapter.this.allMembersCount)));
            button.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            return PeopleListAdapter.this.onSeeAllClick();
        }
    }
}
