package com.narvii.master.home.profile;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.theme.NVTheme;
import com.narvii.community.CommunityUserInfo;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.logging.ActSemantic;
import com.narvii.master.search.SearchPrefsHelper;
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
import com.safedk.android.utils.Logger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class CommunityProfileListFragment extends NVRecyclerViewFragment implements NotificationListener {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int REQ_CODE_USER_PROFILE = 101;

    @NotNull
    private final HashMap<Integer, User> userProfiles = new HashMap<>();

    private final class Adapter extends PagingRecyclerViewAdapter<Community, MyCommunityListResponse> {

        public final class CommunityViewHolder extends RecyclerView.ViewHolder {
            private final UserAvatarLayout avatarLayout;
            private final View btnEdit;
            private final CommunityIconView communityView;
            final /* synthetic */ Adapter this$0;
            private final TextView tvCommunityName;
            private final NicknameView tvNickname;

            public final UserAvatarLayout getAvatarLayout() {
                return this.avatarLayout;
            }

            public final View getBtnEdit() {
                return this.btnEdit;
            }

            public final CommunityIconView getCommunityView() {
                return this.communityView;
            }

            public final TextView getTvCommunityName() {
                return this.tvCommunityName;
            }

            public final NicknameView getTvNickname() {
                return this.tvNickname;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CommunityViewHolder(@NotNull Adapter adapter, View itemView) {
                super(itemView);
                kotlin.jvm.internal.t.j(itemView, "itemView");
                this.this$0 = adapter;
                this.communityView = (CommunityIconView) itemView.findViewById(R.id.community_icon);
                this.tvNickname = (NicknameView) itemView.findViewById(R.id.nickname);
                this.avatarLayout = (UserAvatarLayout) itemView.findViewById(R.id.user_avatar_layout);
                this.tvCommunityName = (TextView) itemView.findViewById(R.id.community_name);
                View viewFindViewById = itemView.findViewById(R.id.edit);
                this.btnEdit = viewFindViewById;
                NVTheme.Companion.bindNVThemeView(CommunityProfileListFragment.this.getNVTheme(), itemView);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(adapter.subviewClickListener);
                }
            }

            public final void bindInfo(@Nullable Community community, @Nullable User user) {
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
                if (textView == null) {
                    return;
                }
                textView.setText(community != null ? community.name : null);
            }
        }

        public static void safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(NVRecyclerViewBaseAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (view2 == null || view2.getId() != R.id.edit) {
                logClickEvent(ActSemantic.checkDetail);
                Community item = getItem(i10);
                User user = CommunityProfileListFragment.this.getUserProfiles().get(item != null ? Integer.valueOf(item.id) : null);
                if (user == null) {
                    Log.e("try to edit profile while user is null");
                    return false;
                }
                Intent intent = UserProfileFragment.intent(this.context, user);
                if (intent != null) {
                    intent.putExtra("__communityId", item.id);
                }
                if (intent != null) {
                    intent.putExtra("__model", false);
                }
                if (intent != null) {
                    intent.putExtra(NVActivity.INTERACTION_SCOPE, false);
                }
                if (intent != null) {
                    safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(this, intent);
                }
                return true;
            }
            final Community item2 = getItem(i10);
            User user2 = CommunityProfileListFragment.this.getUserProfiles().get(item2 != null ? Integer.valueOf(item2.id) : null);
            if (user2 == null) {
                Log.e("try to edit profile while user is null");
                return false;
            }
            final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
            progressDialog.show();
            ApiService apiService = (ApiService) getService("api");
            ApiRequest apiRequestBuild = ApiRequest.builder().communityId(item2.id).path("/user-profile/" + user2.id()).build();
            final Class<UserResponse> cls = UserResponse.class;
            final CommunityProfileListFragment communityProfileListFragment = CommunityProfileListFragment.this;
            apiService.exec(apiRequestBuild, new ApiResponseListener<UserResponse>(cls) { // from class: com.narvii.master.home.profile.CommunityProfileListFragment$Adapter$onItemClick$1
                public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivityForResult(p1, p5);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(@Nullable ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                    progressDialog.dismiss();
                    NVToast.makeText(this.getContext(), str, 0).show();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@NotNull ApiRequest req, @NotNull UserResponse resp) {
                    kotlin.jvm.internal.t.j(req, "req");
                    kotlin.jvm.internal.t.j(resp, "resp");
                    progressDialog.dismiss();
                    Intent intent2 = new Intent(this.getContext(), (Class<?>) UserProfilePostActivity.class);
                    intent2.putExtra("uid", resp.user.uid);
                    UserProfilePost userProfilePost = new UserProfilePost(resp.user);
                    intent2.putExtra("__communityId", item2.id);
                    intent2.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(userProfilePost));
                    intent2.putExtra("userProfile", JacksonUtils.writeAsString(resp.user));
                    intent2.putExtra(SearchPrefsHelper.PREFS_KEY_COMMUNITY, JacksonUtils.writeAsString(item2));
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(communityProfileListFragment, intent2, 101);
                }
            });
            return true;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        public PageDataSource<Community, MyCommunityListResponse> createPageDataSource(@Nullable NVContext nVContext) {
            return CommunityProfileListFragment.this.new DataSource(nVContext);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            kotlin.jvm.internal.t.j(holder, "holder");
            if (holder instanceof CommunityViewHolder) {
                Community item = getItem(i10);
                ((CommunityViewHolder) holder).bindInfo(item, CommunityProfileListFragment.this.getUserProfiles().get(Integer.valueOf(item.id)));
            }
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        protected RecyclerView.ViewHolder onCreateItemViewHolder(@NotNull ViewGroup parent, int i10) {
            kotlin.jvm.internal.t.j(parent, "parent");
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_profile, parent, false);
            kotlin.jvm.internal.t.g(viewInflate);
            return new CommunityViewHolder(this, viewInflate);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
            super.refresh(i10, pageRequestCallback);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class DataSource extends PageDataSource<Community, MyCommunityListResponse> {
        @Override // com.narvii.paging.source.PageDataSource
        @NotNull
        protected Class<MyCommunityListResponse> responseType() {
            return MyCommunityListResponse.class;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public DataSource(NVContext nVContext) {
            PagingConfiguration OFFSET_CONFIG = PagingConfiguration.OFFSET_CONFIG;
            kotlin.jvm.internal.t.i(OFFSET_CONFIG, "OFFSET_CONFIG");
            super(nVContext, null, OFFSET_CONFIG);
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void onPageResponse(@NotNull ApiRequest req, @NotNull MyCommunityListResponse resp, int i10) {
            kotlin.jvm.internal.t.j(req, "req");
            kotlin.jvm.internal.t.j(resp, "resp");
            super.onPageResponse(req, resp, i10);
            Map<Integer, CommunityUserInfo> map = resp.userInfoInCommunities;
            if (map != null) {
                CommunityProfileListFragment communityProfileListFragment = CommunityProfileListFragment.this;
                for (Map.Entry<Integer, CommunityUserInfo> entry : map.entrySet()) {
                    Integer key = entry.getKey();
                    CommunityUserInfo value = entry.getValue();
                    HashMap<Integer, User> userProfiles = communityProfileListFragment.getUserProfiles();
                    kotlin.jvm.internal.t.g(key);
                    User userProfile = value.userProfile;
                    kotlin.jvm.internal.t.i(userProfile, "userProfile");
                    userProfiles.put(key, userProfile);
                }
            }
        }

        @Override // com.narvii.paging.source.PageDataSource
        @Nullable
        protected ApiRequest createRequest() {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("/community/joined");
            return builder.build();
        }
    }

    @NotNull
    public final HashMap<Integer, User> getUserProfiles() {
        return this.userProfiles;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
        if (((notification != null ? notification.obj : null) instanceof User) && "edit".equals(notification.action)) {
            this.adapter.refresh(0, null);
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected NVRecyclerViewBaseAdapter createAdapter() {
        return new Adapter(this);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        setEmptyMessage(R.string.not_joined_communities);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.community_profiles);
    }
}
