package com.narvii.onboarding;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVListView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class RecommendedUsersFragment extends NVFragment {
    Adapter adapter;
    Set<User> followed;
    Set<User> following;
    NVListView listView;
    private OnBoardingRecommendHelper onBoardingRecommendHelper;
    List<User> users;
    private Drawable overlayDrawable = new ColorDrawable(1711276032);
    final ApiResponseListener<ApiResponse> listener = new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.onboarding.RecommendedUsersFragment.1
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            RecommendedUsersFragment.this.following.remove(apiRequest.tag());
            RecommendedUsersFragment.this.adapter.notifyDataSetChanged();
            NVToast.makeText(RecommendedUsersFragment.this.getContext(), str, 0).show();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
            RecommendedUsersFragment.this.following.remove(apiRequest.tag());
            if (apiRequest.method() == 3) {
                RecommendedUsersFragment.this.followed.remove(apiRequest.tag());
            } else {
                RecommendedUsersFragment.this.followed.add((User) apiRequest.tag());
            }
            RecommendedUsersFragment.this.adapter.notifyDataSetChanged();
        }
    };

    private class Adapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        public Adapter() {
            super(RecommendedUsersFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return RecommendedUsersFragment.this.users.size();
        }

        @Override // android.widget.Adapter
        public User getItem(int i10) {
            return RecommendedUsersFragment.this.users.get(i10);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof User)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            User user = (User) obj;
            if (RecommendedUsersFragment.this.following.contains(user)) {
                return true;
            }
            if (RecommendedUsersFragment.this.followed.contains(user)) {
                RecommendedUsersFragment.this.unfollow(user);
            } else {
                RecommendedUsersFragment.this.follow(user);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            int i12;
            int i13;
            boolean z6;
            User item = getItem(i10);
            View viewCreateView = createView(R.layout.recommend_user_item, viewGroup, view);
            ((UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout)).setUser(item);
            ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setUser(item);
            ThumbImageView thumbImageView = (ThumbImageView) viewCreateView.findViewById(R.id.avatar_overlay);
            int i14 = 8;
            if ((RecommendedUsersFragment.this.followed.contains(item) && !RecommendedUsersFragment.this.following.contains(item)) || RecommendedUsersFragment.this.following.contains(item)) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            thumbImageView.setVisibility(i11);
            thumbImageView.setImageDrawable(RecommendedUsersFragment.this.overlayDrawable);
            View viewFindViewById = viewCreateView.findViewById(R.id.recommend_check);
            if (RecommendedUsersFragment.this.followed.contains(item) && !RecommendedUsersFragment.this.following.contains(item)) {
                i12 = 0;
            } else {
                i12 = 8;
            }
            viewFindViewById.setVisibility(i12);
            View viewFindViewById2 = viewCreateView.findViewById(R.id.progress);
            if (RecommendedUsersFragment.this.following.contains(item)) {
                i13 = 0;
            } else {
                i13 = 8;
            }
            viewFindViewById2.setVisibility(i13);
            int i15 = i10 / 3;
            int i16 = 0;
            while (true) {
                if (i16 < 3) {
                    int i17 = (i15 * 3) + i16;
                    if (i17 < getCount() && getItem(i17).isCurator()) {
                        z6 = true;
                        break;
                    }
                    i16++;
                } else {
                    z6 = false;
                    break;
                }
            }
            TextView textView = (TextView) viewCreateView.findViewById(R.id.role);
            if (item.isCurator()) {
                textView.setVisibility(0);
                textView.setText(item.roleName());
            } else {
                if (z6) {
                    i14 = 4;
                }
                textView.setVisibility(i14);
            }
            return viewCreateView;
        }
    }

    public void unfollow(User user) {
        AccountService accountService = (AccountService) getService("account");
        ((ApiService) getService("api")).exec(ApiRequest.builder().delete().tag(user).path("/user-profile/" + accountService.getUserId() + "/joined/" + user.id()).build(), this.listener);
        this.following.add(user);
        this.adapter.notifyDataSetChanged();
    }

    public void follow(User user) {
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.putArray("targetUidList").add(user.uid);
        AccountService accountService = (AccountService) getService("account");
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().tag(user).path("/user-profile/" + accountService.getUserId() + "/joined").body(objectNodeCreateObjectNode).build(), this.listener);
        this.following.add(user);
        this.adapter.notifyDataSetChanged();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        OnBoardingRecommendHelper onBoardingRecommendHelper = new OnBoardingRecommendHelper(getParentContext());
        this.onBoardingRecommendHelper = onBoardingRecommendHelper;
        this.users = onBoardingRecommendHelper.getRecommendedUsers();
        this.followed = new HashSet();
        this.following = new HashSet();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.recommend_user_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((TextView) view.findViewById(R.id.title)).setText(R.string.recommend_follow_title);
        NVListView nVListView = (NVListView) view.findViewById(android.R.id.list);
        this.listView = nVListView;
        nVListView.setDivider(null);
        this.listView.setDividerHeight(0);
        this.adapter = new Adapter();
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this);
        divideColumnAdapter.setAdapter(this.adapter, 3);
        this.listView.setAdapter((ListAdapter) divideColumnAdapter);
        this.listView.setOnItemClickListener(divideColumnAdapter);
    }
}
