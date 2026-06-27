package com.narvii.user.list;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListAdapter;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ProxyViewHost;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class FollowersListFragment extends NVListFragment {
    Adapter adapter;
    public ProxyViewHost host;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Followers";
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    protected boolean showAminoId() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment, com.narvii.app.NVContext
    public Context getContext() {
        ProxyViewHost proxyViewHost = this.host;
        if (proxyViewHost != null && proxyViewHost.getAttachView() != null) {
            return this.host.getAttachView().getContext();
        }
        return super.getContext();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        setTitle(R.string.user_followers);
        setEmptyText(R.string.empty_hint_follower);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        if (isMe()) {
            getListView().setOnItemLongClickListener(this.adapter);
        }
    }

    public boolean isMe() {
        String stringParam = getStringParam("id");
        if (TextUtils.isEmpty(stringParam)) {
            return true;
        }
        return Utils.isEqualsNotNull(stringParam, ((AccountService) getService("account")).getUserId());
    }

    private class Adapter extends UserListExAdapter {
        @Override // com.narvii.user.list.UserListAdapter, com.narvii.user.list.UserListItemHost
        public boolean showDisableView() {
            return true;
        }

        public Adapter() {
            super(FollowersListFragment.this);
            this.source = FollowersListFragment.this.isMe() ? "My Followers" : "Followers";
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return FollowersListFragment.this.isDarkTheme() ? R.layout.user_item_ex_dark : R.layout.user_item_ex;
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.user.list.UserListItemHost
        public boolean showAminoId() {
            return FollowersListFragment.this.showAminoId();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.user.list.UserListItemHost
        public boolean allowExtraInfoForItem(User user) {
            return (user == null || user.isDisabled()) ? false : true;
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            String stringParam = FollowersListFragment.this.getStringParam("id");
            if (TextUtils.isEmpty(stringParam)) {
                stringParam = ((AccountService) getService("account")).getUserId();
            }
            return ApiRequest.builder().path("/user-profile/" + stringParam + "/member").build();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected List<User> filterResponseList(List<User> list, int i) {
            return new FilterHelper(this).filterDeleted().filter(list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i) {
            List<User> list;
            if (userListResponse != null && (list = userListResponse.userList) != null) {
                Iterator<User> it = list.iterator();
                while (it.hasNext()) {
                    it.next().addFollowingStatus(2);
                }
            }
            super.onPageResponse(apiRequest, (ApiRequest) userListResponse, i);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if ((obj instanceof User) && FollowersListFragment.this.isMe()) {
                FollowersListFragment.this.delete((User) obj, false);
                return true;
            }
            return super.onLongClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if ((notification.obj instanceof User) && FollowersListFragment.this.isMe()) {
                User user = (User) notification.obj;
                if ((user.membershipStatus & 2) != 0) {
                    if (!Utils.containsId(rawList(), user.uid)) {
                        editList(new Notification("new", user), true);
                        return;
                    }
                } else {
                    editList(new Notification("delete", user), true);
                    return;
                }
            }
            super.onNotification(notification);
        }
    }

    public void delete(final User user, boolean z) {
        if (z) {
            Adapter adapter = this.adapter;
            if (adapter != null) {
                adapter.logClickEvent(user, ActSemantic.delete);
            }
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.user.list.FollowersListFragment.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    User user2 = (User) user.m46clone();
                    user2.removeFollowingStatus(2);
                    FollowersListFragment.this.sendNotification(new Notification("update", user2));
                    AccountService accountService = (AccountService) FollowersListFragment.this.getService("account");
                    User userProfile = accountService.getUserProfile();
                    userProfile.membersCount--;
                    accountService.updateProfile(userProfile, apiResponse.timestamp, true);
                }
            };
            progressDialog.show();
            AccountService accountService = (AccountService) getService("account");
            ((ApiService) getService("api")).exec(ApiRequest.builder().delete().path("/user-profile/" + accountService.getUserId() + "/member/" + user.uid).build(), progressDialog.dismissListener);
            return;
        }
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(R.string.delete, true);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.list.FollowersListFragment.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                FollowersListFragment.this.delete(user, true);
            }
        });
        actionSheetDialog.show();
    }
}
