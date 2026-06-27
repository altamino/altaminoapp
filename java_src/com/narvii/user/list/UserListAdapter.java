package com.narvii.user.list;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class UserListAdapter extends NVPagedAdapter<User, UserListResponse> implements NotificationListener, UserListItemHost {
    public String source;
    UserListHelper userListHelper;

    public boolean allowExtraInfoForItem(User user) {
        return true;
    }

    protected boolean filterYourself() {
        return false;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "UserList";
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    protected int layoutId() {
        return R.layout.user_item;
    }

    public boolean showAminoId() {
        return false;
    }

    public boolean showDisableView() {
        return false;
    }

    public UserListAdapter(NVContext nVContext) {
        super(nVContext);
        this.userListHelper = new UserListHelper(this, this);
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new LinearImpressionCollector(User.class));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<User> dataType() {
        return User.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends UserListResponse> responseType() {
        return UserListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(layoutId(), viewGroup, view);
        this.userListHelper.updateCell((User) obj, viewCreateView);
        return viewCreateView;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if ((obj instanceof User) && view2 == null) {
            logClickEvent(obj, ActSemantic.checkDetail);
            userClicked((User) obj);
            return true;
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    protected void userClicked(User user) {
        Intent intent = UserProfileFragment.intent(this, user);
        if (intent == null) {
            return;
        }
        intent.putExtra("Source", this.source);
        startActivity(intent);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<User> filterResponseList(List<User> list, int i) {
        List<User> listFilterResponseList = super.filterResponseList(list, i);
        if (!filterYourself() || listFilterResponseList == null) {
            return listFilterResponseList;
        }
        ArrayList arrayList = new ArrayList();
        String userId = ((AccountService) getService("account")).getUserId();
        if (TextUtils.isEmpty(userId)) {
            return listFilterResponseList;
        }
        for (User user : listFilterResponseList) {
            if (!Utils.isStringEquals(user.id(), userId)) {
                arrayList.add(user);
            }
        }
        return arrayList;
    }

    public void onNotification(Notification notification) {
        ApiRequest apiRequestCreateRequest;
        if (notification.obj instanceof User) {
            String str = notification.action;
            if ((str == "new" || (str == "delete" && notification.parentId != null)) && (apiRequestCreateRequest = createRequest(true)) != null && apiRequestCreateRequest.url().contains(notification.parentId)) {
                editList(notification, false);
            }
            String str2 = notification.action;
            if (str2 == "update" || str2 == "edit") {
                editList(notification, false);
            }
        }
    }
}
