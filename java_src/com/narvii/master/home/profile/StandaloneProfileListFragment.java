package com.narvii.master.home.profile;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.community.CommunityService;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.user.profile.post.UserProfilePost;
import com.narvii.user.profile.post.UserProfilePostActivity;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import java.util.List;

/* loaded from: classes3.dex */
public class StandaloneProfileListFragment extends NVListFragment implements NotificationListener {
    private AccountService accountService;
    private Adapter adapter;

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.accountService = (AccountService) getService("account");
        setTitle(R.string.my_profile);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        Adapter adapter;
        if ("update".equals(notification.action) && (notification.obj instanceof User) && Utils.isEqualsNotNull(this.accountService.getUserId(), ((User) notification.obj).uid) && (adapter = this.adapter) != null) {
            adapter.notifyDataSetChanged();
        }
    }

    class Adapter extends AdriftAdapter {
        public Adapter() {
            super(StandaloneProfileListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_profile, viewGroup, view);
            Community community = ((CommunityService) getService("community")).getCommunity(new PackageUtils(getContext()).getCommunityIdFromPackageName());
            if (community != null) {
                ((CommunityIconView) viewCreateView.findViewById(R.id.community_icon)).setImageUrl(community.icon);
                ((TextView) viewCreateView.findViewById(R.id.community_name)).setText(community.name);
            }
            if (StandaloneProfileListFragment.this.accountService.hasAccount()) {
                User userProfile = StandaloneProfileListFragment.this.accountService.getUserProfile();
                ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setUser(userProfile);
                UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout);
                userAvatarLayout.markAvatarFrameHide(true);
                userAvatarLayout.setUser(userProfile);
            }
            viewCreateView.findViewById(R.id.edit).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.edit) {
                User userProfile = StandaloneProfileListFragment.this.accountService.getUserProfile();
                if (userProfile == null) {
                    return true;
                }
                final ProgressDialog progressDialog = new ProgressDialog(getContext());
                progressDialog.show();
                ((ApiService) getService("api")).exec(ApiRequest.builder().path("/user-profile/" + userProfile.uid()).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.master.home.profile.StandaloneProfileListFragment.Adapter.1
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                        super.onFinish(apiRequest, (ApiRequest) userResponse);
                        progressDialog.dismiss();
                        Intent intent = new Intent(Adapter.this.getContext(), (Class<?>) UserProfilePostActivity.class);
                        intent.putExtra("uid", userResponse.user.uid);
                        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserProfilePost(userResponse.user)));
                        intent.putExtra("userProfile", JacksonUtils.writeAsString(userResponse.user));
                        Adapter.this.startActivity(intent);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i2, list, str, apiResponse, th);
                        progressDialog.dismiss();
                        NVToast.makeText(Adapter.this.getContext(), str, 1).show();
                    }
                });
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
