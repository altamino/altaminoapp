package com.narvii.visitor;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.theme.NVTheme;
import com.narvii.logging.ActSemantic;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ListResponse;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NewVisitorsFragment.kt */
/* loaded from: classes3.dex */
public final class NewVisitorsFragment extends NVRecyclerViewFragment {
    private HashMap _$_findViewCache;
    private DataSource innerDataSource;
    private String stopTime = "";
    private int visitorSum;

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "NewVisitors";
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected boolean isRefreshEnable() {
        return false;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ DataSource access$getInnerDataSource$p(NewVisitorsFragment newVisitorsFragment) {
        DataSource dataSource = newVisitorsFragment.innerDataSource;
        if (dataSource != null) {
            return dataSource;
        }
        Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
        throw null;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.stopTime = getStringParam("stoptime");
        updateTitle();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        return new Adapter(this, this);
    }

    /* compiled from: NewVisitorsFragment.kt */
    public final class Adapter extends PagingRecyclerViewAdapter<CommunityWrapper, CommunityWrapperListResponse> {
        private final NVContext ctx;
        final /* synthetic */ NewVisitorsFragment this$0;

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "CommunityList";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(NewVisitorsFragment newVisitorsFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = newVisitorsFragment;
            this.ctx = ctx;
        }

        public final NVContext getCtx() {
            return this.ctx;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            NewVisitorsFragment newVisitorsFragment = this.this$0;
            View viewInflate = LayoutInflater.from(this.ctx.getContext()).inflate(R.layout.item_community_visitor, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(ctx.…y_visitor, parent, false)");
            return new InnerViewHolder(newVisitorsFragment, viewInflate);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof InnerViewHolder) {
                CommunityWrapper item = getItem(i);
                Intrinsics.checkExpressionValueIsNotNull(item, "getItem(position)");
                ((InnerViewHolder) holder).bindCommunityWrapper(item);
            }
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<CommunityWrapper, CommunityWrapperListResponse> createPageDataSource(NVContext nVContext) {
            NewVisitorsFragment newVisitorsFragment = this.this$0;
            newVisitorsFragment.innerDataSource = new DataSource(newVisitorsFragment, nVContext, new PagingConfiguration(25, 3, 1));
            return NewVisitorsFragment.access$getInnerDataSource$p(this.this$0);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean isDarkTheme() {
            return this.this$0.isDarkNVTheme();
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof CommunityWrapper) {
                CommunityWrapper communityWrapper = (CommunityWrapper) obj;
                if (communityWrapper.getUserProfile() == null || (communityWrapper.getCommunity() == null && !communityWrapper.isGlobal())) {
                    return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
                }
                logClickEvent(ActSemantic.pageEnter);
                Intent intent = FragmentWrapperActivity.intent(RecentVisitorListFragment.class);
                AccountService accountService = (AccountService) getService("account");
                Intrinsics.checkExpressionValueIsNotNull(accountService, "accountService");
                intent.putExtra("privacyMode", accountService.getVisitorPrivacyMode());
                User userProfile = communityWrapper.getUserProfile();
                if (userProfile == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                intent.putExtra("uid", userProfile.id());
                intent.putExtra("__communityId", communityWrapper.ndcId());
                startActivity(intent);
            }
            return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
        }
    }

    /* compiled from: NewVisitorsFragment.kt */
    public final class InnerViewHolder extends BaseViewHolder {
        private final TextView communityName;
        private final CommunityIconView communityView;
        private final TextView newVisitorHint;
        final /* synthetic */ NewVisitorsFragment this$0;
        private final UserAvatarLayout userAvatar;
        private final TextView userName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InnerViewHolder(NewVisitorsFragment newVisitorsFragment, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = newVisitorsFragment;
            this.communityView = (CommunityIconView) itemView.findViewById(R.id.community_icon);
            this.communityName = (TextView) itemView.findViewById(R.id.community_name);
            this.userAvatar = (UserAvatarLayout) itemView.findViewById(R.id.user_avatar_layout);
            this.userName = (TextView) itemView.findViewById(R.id.user_name);
            this.newVisitorHint = (TextView) itemView.findViewById(R.id.new_visitor_hint);
            NVTheme.Companion.bindNVThemeView(newVisitorsFragment.getNVTheme(), itemView);
        }

        public final CommunityIconView getCommunityView() {
            return this.communityView;
        }

        public final TextView getCommunityName() {
            return this.communityName;
        }

        public final UserAvatarLayout getUserAvatar() {
            return this.userAvatar;
        }

        public final TextView getUserName() {
            return this.userName;
        }

        public final TextView getNewVisitorHint() {
            return this.newVisitorHint;
        }

        public final void bindCommunityWrapper(CommunityWrapper communityWrapper) {
            String str;
            String str2;
            Intrinsics.checkParameterIsNotNull(communityWrapper, "communityWrapper");
            Community community = communityWrapper.getCommunity();
            User userProfile = communityWrapper.getUserProfile();
            int count = communityWrapper.getCount();
            CommunityIconView communityIconView = this.communityView;
            if (communityIconView != null) {
                communityIconView.setShowPressedMask(false);
            }
            if (communityWrapper.isGlobal()) {
                CommunityIconView communityIconView2 = this.communityView;
                if (communityIconView2 != null) {
                    communityIconView2.setImageResource(R.drawable.ic_global_icon);
                }
                this.communityName.setText(R.string.global);
            } else {
                CommunityIconView communityIconView3 = this.communityView;
                if (communityIconView3 != null) {
                    Community community2 = communityWrapper.getCommunity();
                    communityIconView3.setImageUrl(community2 != null ? community2.icon : null);
                }
                TextView communityName = this.communityName;
                Intrinsics.checkExpressionValueIsNotNull(communityName, "communityName");
                if (community == null || (str = community.name) == null) {
                    str = "";
                }
                communityName.setText(str);
            }
            this.userAvatar.setUser(userProfile, false);
            this.userAvatar.markAvatarFrameHide(true);
            TextView userName = this.userName;
            Intrinsics.checkExpressionValueIsNotNull(userName, "userName");
            if (userProfile == null || (str2 = userProfile.nickname) == null) {
                str2 = "";
            }
            userName.setText(str2);
            TextView newVisitorHint = this.newVisitorHint;
            Intrinsics.checkExpressionValueIsNotNull(newVisitorHint, "newVisitorHint");
            newVisitorHint.setText(this.this$0.getVisitorsCountText(count));
            TextView newVisitorHint2 = this.newVisitorHint;
            Intrinsics.checkExpressionValueIsNotNull(newVisitorHint2, "newVisitorHint");
            newVisitorHint2.setVisibility(count == 0 ? 8 : 0);
        }
    }

    /* compiled from: NewVisitorsFragment.kt */
    public final class DataSource extends PageDataSource<CommunityWrapper, CommunityWrapperListResponse> {
        final /* synthetic */ NewVisitorsFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DataSource(NewVisitorsFragment newVisitorsFragment, NVContext nVContext, PagingConfiguration config) {
            super(nVContext, null, config);
            Intrinsics.checkParameterIsNotNull(config, "config");
            this.this$0 = newVisitorsFragment;
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            ApiRequest.Builder builderPath = new ApiRequest.Builder().path("/account/recent-visitors");
            if (!TextUtils.isEmpty(this.this$0.stopTime)) {
                builderPath.param("stoptime", this.this$0.stopTime);
            }
            return builderPath.build();
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected Class<CommunityWrapperListResponse> responseType() {
            return CommunityWrapperListResponse.class;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void onPageResponse(ApiRequest req, CommunityWrapperListResponse resp, int i) {
            Intrinsics.checkParameterIsNotNull(req, "req");
            Intrinsics.checkParameterIsNotNull(resp, "resp");
            super.onPageResponse(req, (ApiRequest) resp, i);
            this.this$0.visitorSum = resp.getSum();
            this.this$0.updateTitle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateTitle() {
        String string;
        int i = this.visitorSum;
        if (i > 0) {
            string = getVisitorsCountText(i);
        } else {
            string = getString(R.string.new_visitor);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.new_visitor)");
        }
        setTitle(string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getVisitorsCountText(int i) {
        String string;
        String str;
        if (i > 1) {
            string = getString(R.string.have_new_visitors_hint, Integer.valueOf(i));
            str = "getString(R.string.have_new_visitors_hint, count)";
        } else {
            string = getString(R.string.have_new_visitor_hint);
            str = "getString(R.string.have_new_visitor_hint)";
        }
        Intrinsics.checkExpressionValueIsNotNull(string, str);
        return string;
    }

    /* compiled from: NewVisitorsFragment.kt */
    public static final class CommunityWrapperListResponse extends ListResponse<CommunityWrapper> {
        private List<CommunityWrapper> communities;
        private int sum;

        public final List<CommunityWrapper> getCommunities() {
            return this.communities;
        }

        public final void setCommunities(List<CommunityWrapper> list) {
            this.communities = list;
        }

        public final int getSum() {
            return this.sum;
        }

        public final void setSum(int i) {
            this.sum = i;
        }

        @Override // com.narvii.model.api.ListResponse
        public List<CommunityWrapper> list() {
            List<CommunityWrapper> list = this.communities;
            return list != null ? list : new ArrayList();
        }
    }

    /* compiled from: NewVisitorsFragment.kt */
    public static final class CommunityWrapper extends NVObject {
        private Community community;
        private int count;
        private User userProfile;

        @Override // com.narvii.model.NVObject
        public int objectType() {
            return 0;
        }

        @Override // com.narvii.model.NVObject
        public String parentId() {
            return "";
        }

        @Override // com.narvii.model.NVObject
        public int status() {
            return 0;
        }

        public final Community getCommunity() {
            return this.community;
        }

        public final void setCommunity(Community community) {
            this.community = community;
        }

        public final User getUserProfile() {
            return this.userProfile;
        }

        public final void setUserProfile(User user) {
            this.userProfile = user;
        }

        public final int getCount() {
            return this.count;
        }

        public final void setCount(int i) {
            this.count = i;
        }

        @Override // com.narvii.model.NVObject
        public String id() {
            String strId;
            Community community = this.community;
            return (community == null || (strId = community.id()) == null) ? "" : strId;
        }

        @Override // com.narvii.model.NVObject
        public String uid() {
            String strId;
            User user = this.userProfile;
            return (user == null || (strId = user.id()) == null) ? "" : strId;
        }

        public final int ndcId() {
            Community community = this.community;
            if (community != null) {
                return community.id;
            }
            User user = this.userProfile;
            if (user != null) {
                return user.ndcId;
            }
            return -1;
        }

        public final boolean isGlobal() {
            if (ndcId() != 0) {
                User user = this.userProfile;
                if (!(user != null ? user.isGlobal : false)) {
                    return false;
                }
            }
            return true;
        }
    }
}
