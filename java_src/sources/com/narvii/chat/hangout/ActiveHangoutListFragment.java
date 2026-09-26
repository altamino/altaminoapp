package com.narvii.chat.hangout;

import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.list.NVListFragment;
import com.narvii.notification.Notification;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;

/* JADX INFO: loaded from: classes7.dex */
public class ActiveHangoutListFragment extends NVListFragment {
    Adapter adapter;

    private class Adapter extends HangoutListAdapter {
        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
        }

        public Adapter() {
            super(ActiveHangoutListFragment.this);
            this.source = "Active Public Chatrooms";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("live-layer/public-chats").build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.active_public_chatrooms);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Public Chatroom - Active Public Chatrooms Page").userPropInc("Active Public Chatrooms Page");
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }
}
