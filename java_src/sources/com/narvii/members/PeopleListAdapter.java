package com.narvii.members;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SearchBar;
import com.safedk.android.utils.Logger;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
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

    class FeaturedAdapter extends HorizontalMemberWrappedAdapter implements NotificationListener {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Featured";
        }

        @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter, android.widget.Adapter
        public long getItemId(int i10) {
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

        @Override // com.narvii.members.HorizontalMemberWrappedAdapter, com.narvii.user.favorite.NVRecycleViewWrapAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword())) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Bundle bundle;
            if ((notification.obj instanceof User) && notification.action == "update" && (bundle = notification.bundle) != null && bundle.getBoolean("featureChanged")) {
                refresh(0, null);
            }
        }

        @Override // com.narvii.members.HorizontalMemberWrappedAdapter
        protected ApiRequest createRequest(int i10, int i11, String str) {
            return ApiRequest.builder().path("/user-profile").param("type", Module.MODULE_FEATURED).build();
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return super.isListShown();
        }
    }

    class FeaturedTitleAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
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
        public Object getItem(int i10) {
            return PeopleListAdapter.SECTION;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.member_title_layout, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(PeopleListAdapter.this.ctx.getContext().getString(R.string.page_featured));
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
        public boolean showListEnd(int i10) {
            return i10 == 0;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        public FounderAdapter() {
            super(PeopleListAdapter.this.ctx);
            this.source = "Members List";
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword())) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i10) {
            View viewCreateView = createView(R.layout.result_simple_empty_view, viewGroup, view);
            viewCreateView.setClickable(true);
            return viewCreateView;
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
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

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return super.isListShown();
        }
    }

    class FoundersTitleAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
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
        public Object getItem(int i10) {
            return PeopleListAdapter.SECTION;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.member_title_layout, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(PeopleListAdapter.this.ctx.getContext().getString(R.string.leaders));
            return viewCreateView;
        }
    }

    class InviteAdapter extends NVAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

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
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 1L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        public InviteAdapter() {
            super(PeopleListAdapter.this.ctx);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            logClickEvent(ActSemantic.invite);
            Intent intent = FragmentWrapperActivity.intent(InviteMembersFragment.class);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Members");
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.invite_members_item, viewGroup, view);
            viewCreateView.findViewById(R.id.action).setOnClickListener(this.subviewClickListener);
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

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword())) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
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
    }

    class LeadersTitleAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
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
        public Object getItem(int i10) {
            return PeopleListAdapter.SECTION;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.member_title_layout, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(PeopleListAdapter.this.ctx.getContext().getString(R.string.curators));
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

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword())) {
                return super.getCount();
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i10) {
            super.onPageResponse(apiRequest, userListResponse, i10);
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

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", MemberListFragment.KEY_TYPE_RECENT);
            if (PeopleListAdapter.this.allMembersLimit() != 0) {
                builderPath.param("start", 0).param("size", Integer.valueOf(PeopleListAdapter.this.allMembersLimit()));
            }
            if (z6) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            ((NicknameView) itemView.findViewById(R.id.nickname)).setRole1(null, 0);
            ((NicknameView) itemView.findViewById(R.id.nickname)).setDarkTheme(isDarkNVTheme());
            return itemView;
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
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 2L;
        }

        public SearchAdapter() {
            super(PeopleListAdapter.this.ctx);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (this.searchBar == null) {
                SearchBar searchBar = (SearchBar) createView(R.layout.search_bar, viewGroup, view);
                this.searchBar = searchBar;
                searchBar.setOnSearchListener(this);
                this.searchBar.setBackgroundColor(-1);
            }
            return this.searchBar;
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onSearch(SearchBar searchBar, String str) {
            PeopleListAdapter.this.instantSearchListener.onSearch(searchBar, str);
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onTextChanged(SearchBar searchBar, String str) {
            PeopleListAdapter.this.instantSearchListener.onTextChanged(searchBar, str);
            if (this.stated || TextUtils.isEmpty(str)) {
                return;
            }
            ((StatisticsService) getService("statistics")).event("Search Member").source("Member List").userPropInc("Search Member Total");
            this.stated = true;
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

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(PeopleListAdapter.this.instantSearchListener.getKeyword())) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", "name");
            builderPath.param("q", PeopleListAdapter.this.instantSearchListener.getKeyword());
            builderPath.timeout(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
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
    }

    private class SeeAllAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 4L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
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

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, @Nullable View view2) {
            return PeopleListAdapter.this.onSeeAllClick();
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.live_layer_all_members_see_all, viewGroup, view);
            Button button = (Button) viewCreateView.findViewById(R.id.see_all);
            button.setText(this.context.getContext().getString(R.string.see_all_with_count_s, com.narvii.util.text.TextUtils.numberFormat.format(PeopleListAdapter.this.allMembersCount)));
            button.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    private class TitleAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
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
        public Object getItem(int i10) {
            return PeopleListAdapter.SECTION;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.member_title_layout, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(PeopleListAdapter.this.ctx.getContext().getString(R.string.recent_joined_member));
            return viewCreateView;
        }
    }

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public int allMembersLimit() {
        return 0;
    }

    public int getAllMembersCount() {
        return this.allMembersCount;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    protected void onAllMembersCountFetched(int i10) {
    }

    @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        SearchResultAdapter searchResultAdapter;
        return (TextUtils.isEmpty(this.instantSearchListener.getKeyword()) || (searchResultAdapter = this.searchResultAdaper) == null || searchResultAdapter.getCount() != 0) ? false : true;
    }

    protected boolean onSeeAllClick() {
        Intent intent = FragmentWrapperActivity.intent(PeopleListFragment.class);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Live Layer");
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        return true;
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

    public PeopleListAdapter(NVContext nVContext, boolean z6) {
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
        if (z6) {
            InviteAdapter inviteAdapter = new InviteAdapter();
            this.inviteAdapter = inviteAdapter;
            addAdapter(inviteAdapter);
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
        SearchResultAdapter searchResultAdapter = new SearchResultAdapter();
        this.searchResultAdaper = searchResultAdapter;
        addAdapter(searchResultAdapter);
        this.instantSearchListener.attachAdapter(this.searchResultAdaper);
    }
}
