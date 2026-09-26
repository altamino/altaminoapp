package com.narvii.user.list;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListAdapter;
import androidx.annotation.Nullable;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.narvii.widget.ProxyViewHost;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class FollowingListFragment extends NVListFragment {
    Adapter adapter;
    public ProxyViewHost host;
    boolean isMe;

    private class Adapter extends UserListExAdapter {
        @Override // com.narvii.user.list.UserListAdapter, com.narvii.user.list.UserListItemHost
        public boolean showDisableView() {
            return true;
        }

        public Adapter() {
            super(FollowingListFragment.this);
            this.source = "Following";
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.user.list.UserListItemHost
        public boolean allowExtraInfoForItem(User user) {
            return (user == null || user.isDisabled()) ? false : true;
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            String stringParam = FollowingListFragment.this.getStringParam("id");
            if (TextUtils.isEmpty(stringParam)) {
                stringParam = ((AccountService) getService("account")).getUserId();
            }
            return ApiRequest.builder().path("/user-profile/" + stringParam + "/joined").build();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected List<User> filterResponseList(List<User> list, int i10) {
            return new FilterHelper(this).filterDeleted().filter(list);
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            if (FollowingListFragment.this.isDarkTheme()) {
                return FollowingListFragment.this.isMe ? R.layout.user_item_dark : R.layout.user_item_ex_dark;
            }
            return FollowingListFragment.this.isMe ? R.layout.user_item : R.layout.user_item_ex;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof User) || !FollowingListFragment.this.isMe()) {
                return super.onLongClick(listAdapter, i10, obj, view, view2);
            }
            FollowingListFragment.this.delete((User) obj, false);
            return true;
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if ((notification.obj instanceof User) && FollowingListFragment.this.isMe()) {
                User user = (User) notification.obj;
                if ((user.membershipStatus & 1) == 0) {
                    editList(new Notification("delete", user), true);
                    return;
                } else if (!Utils.containsId(rawList(), user.uid)) {
                    editList(new Notification("new", user), true);
                    return;
                }
            }
            if ((notification.obj instanceof User) && !FollowingListFragment.this.isMe()) {
                String str = notification.action;
                if (str == "new") {
                    return;
                }
                if (str == "delete" && notification.parentId != null) {
                    return;
                }
            }
            super.onNotification(notification);
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.user.list.UserListItemHost
        public boolean showAminoId() {
            return FollowingListFragment.this.showAminoId();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "following";
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 2);
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    protected boolean showAminoId() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    public void delete(final User user, boolean z6) {
        if (!z6) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.delete, true);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.list.FollowingListFragment.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    FollowingListFragment.this.delete(user, true);
                }
            });
            actionSheetDialog.show();
            return;
        }
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.logClickEvent(user, ActSemantic.delete);
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.user.list.FollowingListFragment.1
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                User user2 = (User) user.m1622clone();
                user2.removeFollowingStatus(1);
                FollowingListFragment.this.sendNotification(new Notification("update", user2));
                AccountService accountService = (AccountService) FollowingListFragment.this.getService("account");
                User userProfile = accountService.getUserProfile();
                userProfile.joinedCount--;
                accountService.updateProfile(userProfile, apiResponse.timestamp, true);
            }
        };
        progressDialog.show();
        AccountService accountService = (AccountService) getService("account");
        ((ApiService) getService("api")).exec(ApiRequest.builder().delete().path("/user-profile/" + accountService.getUserId() + "/joined/" + user.uid).build(), progressDialog.dismissListener);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment, com.narvii.app.NVContext
    public Context getContext() {
        ProxyViewHost proxyViewHost = this.host;
        return (proxyViewHost == null || proxyViewHost.getAttachView() == null) ? super.getContext() : this.host.getAttachView().getContext();
    }

    public boolean isMe() {
        String stringParam = getStringParam("id");
        if (TextUtils.isEmpty(stringParam)) {
            return true;
        }
        return Utils.isEqualsNotNull(stringParam, ((AccountService) getService("account")).getUserId());
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setTitle(R.string.user_following);
        setEmptyText(R.string.empty_hint_following);
        this.isMe = isMe();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (isMe()) {
            getListView().setOnItemLongClickListener(this.adapter);
        }
    }
}
