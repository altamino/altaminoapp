package com.narvii.user.list;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.User;
import com.narvii.user.follow.IUserFollow;
import com.narvii.user.follow.UserFollowDelegate;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes3.dex */
public abstract class UserListExAdapter extends UserListAdapter implements IUserFollow {
    private UserFollowDelegate userFollowDelegate;

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        return null;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ void followFail() {
        IUserFollow.CC.$default$followFail(this);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ void followSuccess() {
        IUserFollow.CC.$default$followSuccess(this);
    }

    protected boolean followingEnabled() {
        return true;
    }

    @Override // com.narvii.user.list.UserListAdapter
    protected int layoutId() {
        return R.layout.user_item_ex;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public /* synthetic */ boolean needUpdateUserAfterFollow() {
        return IUserFollow.CC.$default$needUpdateUserAfterFollow(this);
    }

    protected boolean showFollowView() {
        return true;
    }

    public UserListExAdapter(NVContext nVContext) {
        super(nVContext);
        this.userFollowDelegate = new UserFollowDelegate(this, nVContext);
    }

    @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        User user = (User) obj;
        View itemView = super.getItemView(obj, view, viewGroup);
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), user.uid);
        int i = user.followingStatus;
        boolean z = i == 1 || i == 3;
        boolean zIsSendingFollow = isSendingFollow(user);
        View viewFindViewById = itemView.findViewById(R.id.user_relation_following);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility((zIsEqualsNotNull || !z || !showFollowView() || user.isDisabled()) ? 8 : 0);
        }
        View viewFindViewById2 = itemView.findViewById(R.id.user_follow);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility((zIsEqualsNotNull || z || !followingEnabled() || !showFollowView() || user.isDisabled()) ? 8 : 0);
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

    @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if ((obj instanceof User) && view2 != null && view2.getId() == R.id.user_follow) {
            logClickEvent(obj, ActSemantic.follow);
            Intent intent = new Intent("follow");
            intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(obj));
            ensureLogin(intent);
            return true;
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.list.NVAdapter
    protected void onLoginResult(boolean z, Intent intent) {
        if (z && "follow".equals(intent.getAction())) {
            User user = (User) JacksonUtils.readAs(intent.getStringExtra(GlobalProfileFragment.KEY_USER), User.class);
            if (user != null) {
                follow(user);
                return;
            }
            return;
        }
        super.onLoginResult(z, intent);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void follow(User user) {
        this.userFollowDelegate.follow(user);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public boolean isSendingFollow(User user) {
        return this.userFollowDelegate.isSendingFollow(user);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void onFollowStatusUpdated() {
        notifyDataSetChanged();
    }
}
