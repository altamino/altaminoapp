package com.narvii.master.home.profile;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.theme.NVTheme;
import com.narvii.community.CommunityUserInfo;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.logging.ActSemantic;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.user.profile.post.UserProfilePost;
import com.narvii.user.profile.post.UserProfilePostActivity;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CommunityProfileListFragment.kt */
/* loaded from: classes3.dex */
public final class CommunityProfileListFragment extends NVRecyclerViewFragment implements NotificationListener {
    public static final Companion Companion = new Companion(null);
    private static final int REQ_CODE_USER_PROFILE = 101;
    private HashMap _$_findViewCache;
    private final HashMap<Integer, User> userProfiles = new HashMap<>();

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

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* compiled from: CommunityProfileListFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final HashMap<Integer, User> getUserProfiles() {
        return this.userProfiles;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.community_profiles);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setEmptyMessage(R.string.not_joined_communities);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        return new Adapter(this);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (((notification != null ? notification.obj : null) instanceof User) && "edit".equals(notification.action)) {
            this.adapter.refresh(0, null);
        }
    }

    /* compiled from: CommunityProfileListFragment.kt */
    public final class DataSource extends PageDataSource<Community, MyCommunityListResponse> {
        /* JADX WARN: Illegal instructions before constructor call */
        public DataSource(NVContext nVContext) {
            PagingConfiguration pagingConfiguration = PagingConfiguration.OFFSET_CONFIG;
            Intrinsics.checkExpressionValueIsNotNull(pagingConfiguration, "PagingConfiguration.OFFSET_CONFIG");
            super(nVContext, null, pagingConfiguration);
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("/community/joined");
            return builder.build();
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected Class<MyCommunityListResponse> responseType() {
            return MyCommunityListResponse.class;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void onPageResponse(ApiRequest req, MyCommunityListResponse resp, int i) {
            Intrinsics.checkParameterIsNotNull(req, "req");
            Intrinsics.checkParameterIsNotNull(resp, "resp");
            super.onPageResponse(req, (ApiRequest) resp, i);
            Map<Integer, CommunityUserInfo> map = resp.userInfoInCommunities;
            if (map != null) {
                for (Map.Entry<Integer, CommunityUserInfo> entry : map.entrySet()) {
                    Integer key = entry.getKey();
                    CommunityUserInfo value = entry.getValue();
                    HashMap<Integer, User> userProfiles = CommunityProfileListFragment.this.getUserProfiles();
                    Intrinsics.checkExpressionValueIsNotNull(key, "key");
                    User user = value.userProfile;
                    Intrinsics.checkExpressionValueIsNotNull(user, "value.userProfile");
                    userProfiles.put(key, user);
                }
            }
        }
    }

    /* compiled from: CommunityProfileListFragment.kt */
    private final class Adapter extends PagingRecyclerViewAdapter<Community, MyCommunityListResponse> {
        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i, PageRequestCallback pageRequestCallback) {
            super.refresh(i, pageRequestCallback);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View cell = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_profile, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
            return new CommunityViewHolder(this, cell);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof CommunityViewHolder) {
                Community item = getItem(i);
                ((CommunityViewHolder) holder).bindInfo(item, CommunityProfileListFragment.this.getUserProfiles().get(Integer.valueOf(item.id)));
            }
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.edit) {
                final Community item = getItem(i);
                User user = CommunityProfileListFragment.this.getUserProfiles().get(item != null ? Integer.valueOf(item.id) : null);
                if (user == null) {
                    Log.e("try to edit profile while user is null");
                    return false;
                }
                NVContext context = this.context;
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                final ProgressDialog progressDialog = new ProgressDialog(context.getContext());
                progressDialog.show();
                final Class<UserResponse> cls = UserResponse.class;
                ((ApiService) getService("api")).exec(ApiRequest.builder().communityId(item.id).path("/user-profile/" + user.id()).build(), new ApiResponseListener<UserResponse>(cls) { // from class: com.narvii.master.home.profile.CommunityProfileListFragment$Adapter$onItemClick$1
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest req, UserResponse resp) {
                        Intrinsics.checkParameterIsNotNull(req, "req");
                        Intrinsics.checkParameterIsNotNull(resp, "resp");
                        progressDialog.dismiss();
                        Intent intent = new Intent(this.this$0.getContext(), (Class<?>) UserProfilePostActivity.class);
                        intent.putExtra("uid", resp.user.uid);
                        UserProfilePost userProfilePost = new UserProfilePost(resp.user);
                        intent.putExtra("__communityId", item.id);
                        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(userProfilePost));
                        intent.putExtra("userProfile", JacksonUtils.writeAsString(resp.user));
                        intent.putExtra("community", JacksonUtils.writeAsString(item));
                        CommunityProfileListFragment.this.startActivityForResult(intent, 101);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        progressDialog.dismiss();
                        NVToast.makeText(this.this$0.getContext(), str, 0).show();
                    }
                });
                return true;
            }
            logClickEvent(ActSemantic.checkDetail);
            Community item2 = getItem(i);
            User user2 = CommunityProfileListFragment.this.getUserProfiles().get(item2 != null ? Integer.valueOf(item2.id) : null);
            if (user2 == null) {
                Log.e("try to edit profile while user is null");
                return false;
            }
            Intent intent = UserProfileFragment.intent(this.context, user2);
            if (intent != null) {
                intent.putExtra("__communityId", item2.id);
            }
            if (intent != null) {
                intent.putExtra("__model", false);
            }
            if (intent != null) {
                intent.putExtra(NVActivity.INTERACTION_SCOPE, false);
            }
            if (intent != null) {
                startActivity(intent);
            }
            return true;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<Community, MyCommunityListResponse> createPageDataSource(NVContext nVContext) {
            return CommunityProfileListFragment.this.new DataSource(nVContext);
        }

        /* compiled from: CommunityProfileListFragment.kt */
        public final class CommunityViewHolder extends RecyclerView.ViewHolder {
            private final UserAvatarLayout avatarLayout;
            private final View btnEdit;
            private final CommunityIconView communityView;
            final /* synthetic */ Adapter this$0;
            private final TextView tvCommunityName;
            private final NicknameView tvNickname;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CommunityViewHolder(Adapter adapter, View itemView) {
                super(itemView);
                Intrinsics.checkParameterIsNotNull(itemView, "itemView");
                this.this$0 = adapter;
                this.communityView = (CommunityIconView) itemView.findViewById(R.id.community_icon);
                this.tvNickname = (NicknameView) itemView.findViewById(R.id.nickname);
                this.avatarLayout = (UserAvatarLayout) itemView.findViewById(R.id.user_avatar_layout);
                this.tvCommunityName = (TextView) itemView.findViewById(R.id.community_name);
                this.btnEdit = itemView.findViewById(R.id.edit);
                NVTheme.Companion.bindNVThemeView(CommunityProfileListFragment.this.getNVTheme(), itemView);
                View view = this.btnEdit;
                if (view != null) {
                    view.setOnClickListener(adapter.subviewClickListener);
                }
            }

            public final CommunityIconView getCommunityView() {
                return this.communityView;
            }

            public final NicknameView getTvNickname() {
                return this.tvNickname;
            }

            public final UserAvatarLayout getAvatarLayout() {
                return this.avatarLayout;
            }

            public final TextView getTvCommunityName() {
                return this.tvCommunityName;
            }

            public final View getBtnEdit() {
                return this.btnEdit;
            }

            public final void bindInfo(Community community, User user) {
                NicknameView nicknameView = this.tvNickname;
                if (nicknameView != null) {
                    nicknameView.setUser(user);
                }
                UserAvatarLayout userAvatarLayout = this.avatarLayout;
                if (userAvatarLayout != null) {
                    userAvatarLayout.setUser(user, false);
                }
                UserAvatarLayout userAvatarLayout2 = this.avatarLayout;
                if (userAvatarLayout2 != null) {
                    userAvatarLayout2.markAvatarFrameHide(true);
                }
                UserAvatarLayout userAvatarLayout3 = this.avatarLayout;
                if (userAvatarLayout3 != null) {
                    userAvatarLayout3.setNoBadge(true);
                }
                CommunityIconView communityIconView = this.communityView;
                if (communityIconView != null) {
                    communityIconView.setImageUrl(community != null ? community.icon : null);
                }
                CommunityIconView communityIconView2 = this.communityView;
                if (communityIconView2 != null) {
                    communityIconView2.setShowPressedMask(false);
                }
                TextView textView = this.tvCommunityName;
                if (textView != null) {
                    textView.setText(community != null ? community.name : null);
                }
            }
        }
    }
}
