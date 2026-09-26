package com.narvii.user.list;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.User;
import com.narvii.user.follow.IUserFollow;
import com.narvii.user.follow.UserFollowDelegate;
import com.narvii.user.follow.a;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;

/* JADX INFO: loaded from: classes11.dex */
public abstract class UserListExAdapter extends UserListAdapter implements IUserFollow {
    private UserFollowDelegate userFollowDelegate;

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z6) {
        return null;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ void followFail() {
        a.a(this);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ void followSuccess() {
        a.b(this);
    }

    protected boolean followingEnabled() {
        return true;
    }

    @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        User user = (User) obj;
        View itemView = super.getItemView(obj, view, viewGroup);
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), user.uid);
        int i10 = user.followingStatus;
        boolean z6 = i10 == 1 || i10 == 3;
        boolean zIsSendingFollow = isSendingFollow(user);
        View viewFindViewById = itemView.findViewById(R.id.user_relation_following);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility((zIsEqualsNotNull || !z6 || !showFollowView() || user.isDisabled()) ? 8 : 0);
        }
        View viewFindViewById2 = itemView.findViewById(R.id.user_follow);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility((zIsEqualsNotNull || z6 || !followingEnabled() || !showFollowView() || user.isDisabled()) ? 8 : 0);
            viewFindViewById2.setOnClickListener(this.subviewClickListener);
            viewFindViewById2.findViewById(R.id.user_follow_icon).setVisibility(zIsSendingFollow ? 8 : 0);
            viewFindViewById2.findViewById(R.id.user_follow_text).setVisibility(zIsSendingFollow ? 8 : 0);
            viewFindViewById2.findViewById(R.id.user_follow_progress).setVisibility(zIsSendingFollow ? 0 : 8);
        }
        View viewFindViewById3 = itemView.findViewById(R.id.address);
        if (viewFindViewById3 != null) {
            if (!TextUtils.isEmpty(user.address)) {
                ((TextView) viewFindViewById3).setText(user.address);
            }
            viewFindViewById3.setVisibility(8);
        }
        View viewFindViewById4 = itemView.findViewById(R.id.online_status_oval);
        if (viewFindViewById4 != null) {
            viewFindViewById4.setVisibility(user.onlineStatus != 1 ? 4 : 0);
        }
        return itemView;
    }

    @Override // com.narvii.user.list.UserListAdapter
    protected int layoutId() {
        return R.layout.user_item_ex;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ boolean needUpdateUserAfterFollow() {
        return a.c(this);
    }

    protected boolean showFollowView() {
        return true;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void follow(User user) {
        this.userFollowDelegate.follow(user);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public boolean isSendingFollow(User user) {
        return this.userFollowDelegate.isSendingFollow(user);
    }

    @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (!(obj instanceof User) || view2 == null || view2.getId() != R.id.user_follow) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
        logClickEvent(obj, ActSemantic.follow);
        Intent intent = new Intent("follow");
        intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(obj));
        ensureLogin(intent);
        return true;
    }

    @Override // com.narvii.list.NVAdapter
    protected void onLoginResult(boolean z6, Intent intent) {
        if (!z6 || !"follow".equals(intent.getAction())) {
            super.onLoginResult(z6, intent);
            return;
        }
        User user = (User) JacksonUtils.readAs(intent.getStringExtra(GlobalProfileFragment.KEY_USER), User.class);
        if (user != null) {
            follow(user);
        }
        ((StatisticsService) getService("statistics")).event("Follow User").userPropInc("Number of Friends").source(this.source);
    }

    public UserListExAdapter(NVContext nVContext) {
        super(nVContext);
        this.userFollowDelegate = new UserFollowDelegate(this, nVContext);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void onFollowStatusUpdated() {
        notifyDataSetChanged();
    }
}
