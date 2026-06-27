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
import com.narvii.amino.mastes.R;
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

/* loaded from: classes3.dex */
public class RecommendedUsersFragment extends NVFragment {
    Adapter adapter;
    Set<User> followed;
    Set<User> following;
    NVListView listView;
    List<User> users;
    private Drawable overlayDrawable = new ColorDrawable(1711276032);
    final ApiResponseListener<ApiResponse> listener = new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.onboarding.RecommendedUsersFragment.1
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

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            RecommendedUsersFragment.this.following.remove(apiRequest.tag());
            RecommendedUsersFragment.this.adapter.notifyDataSetChanged();
            NVToast.makeText(RecommendedUsersFragment.this.getContext(), str, 0).show();
        }
    };

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.users = JacksonUtils.readListAs(getStringParam("users"), User.class);
        this.followed = new HashSet();
        this.following = new HashSet();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.recommend_user_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((TextView) view.findViewById(R.id.title)).setText(R.string.recommend_follow_title);
        this.listView = (NVListView) view.findViewById(android.R.id.list);
        this.listView.setDivider(null);
        this.listView.setDividerHeight(0);
        this.adapter = new Adapter();
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this);
        divideColumnAdapter.setAdapter(this.adapter, 3);
        this.listView.setAdapter((ListAdapter) divideColumnAdapter);
        this.listView.setOnItemClickListener(divideColumnAdapter);
    }

    private class Adapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public Adapter() {
            super(RecommendedUsersFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return RecommendedUsersFragment.this.users.size();
        }

        @Override // android.widget.Adapter
        public User getItem(int i) {
            return RecommendedUsersFragment.this.users.get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            boolean z;
            User item = getItem(i);
            View viewCreateView = createView(R.layout.recommend_user_item, viewGroup, view);
            ((UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout)).setUser(item);
            ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setUser(item);
            ThumbImageView thumbImageView = (ThumbImageView) viewCreateView.findViewById(R.id.avatar_overlay);
            thumbImageView.setVisibility(((!RecommendedUsersFragment.this.followed.contains(item) || RecommendedUsersFragment.this.following.contains(item)) && !RecommendedUsersFragment.this.following.contains(item)) ? 8 : 0);
            thumbImageView.setImageDrawable(RecommendedUsersFragment.this.overlayDrawable);
            viewCreateView.findViewById(R.id.recommend_check).setVisibility((!RecommendedUsersFragment.this.followed.contains(item) || RecommendedUsersFragment.this.following.contains(item)) ? 8 : 0);
            viewCreateView.findViewById(R.id.progress).setVisibility(RecommendedUsersFragment.this.following.contains(item) ? 0 : 8);
            int i2 = i / 3;
            int i3 = 0;
            while (true) {
                if (i3 < 3) {
                    int i4 = (i2 * 3) + i3;
                    if (i4 < getCount() && getItem(i4).isCurator()) {
                        z = true;
                        break;
                    }
                    i3++;
                } else {
                    z = false;
                    break;
                }
            }
            TextView textView = (TextView) viewCreateView.findViewById(R.id.role);
            if (item.isCurator()) {
                textView.setVisibility(0);
                textView.setText(item.roleName());
            } else {
                textView.setVisibility(z ? 4 : 8);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof User) {
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
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    public void follow(User user) {
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.putArray("targetUidList").add(user.uid);
        AccountService accountService = (AccountService) getService("account");
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().tag(user).path("/user-profile/" + accountService.getUserId() + "/joined").body(objectNodeCreateObjectNode).build(), this.listener);
        this.following.add(user);
        this.adapter.notifyDataSetChanged();
    }

    public void unfollow(User user) {
        AccountService accountService = (AccountService) getService("account");
        ((ApiService) getService("api")).exec(ApiRequest.builder().delete().tag(user).path("/user-profile/" + accountService.getUserId() + "/joined/" + user.id()).build(), this.listener);
        this.following.add(user);
        this.adapter.notifyDataSetChanged();
    }
}
