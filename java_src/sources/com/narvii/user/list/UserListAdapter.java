package com.narvii.user.list;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
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
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public abstract class UserListAdapter extends NVPagedAdapter<User, UserListResponse> implements NotificationListener, UserListItemHost {
    public String source;
    UserListHelper userListHelper;

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public boolean allowExtraInfoForItem(User user) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<User> dataType() {
        return User.class;
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends UserListResponse> responseType() {
        return UserListResponse.class;
    }

    public boolean showAminoId() {
        return false;
    }

    public boolean showDisableView() {
        return false;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(layoutId(), viewGroup, view);
        this.userListHelper.updateCell((User) obj, viewCreateView);
        return viewCreateView;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (!(obj instanceof User) || view2 != null) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
        logClickEvent(obj, ActSemantic.checkDetail);
        userClicked((User) obj);
        return true;
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

    public UserListAdapter(NVContext nVContext) {
        super(nVContext);
        this.userListHelper = new UserListHelper(this, this);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<User> filterResponseList(List<User> list, int i10) {
        List<User> listFilterResponseList = super.filterResponseList(list, i10);
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

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new LinearImpressionCollector(User.class));
    }

    protected void userClicked(User user) {
        Intent intent = UserProfileFragment.intent(this, user);
        if (intent == null) {
            return;
        }
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
    }
}
