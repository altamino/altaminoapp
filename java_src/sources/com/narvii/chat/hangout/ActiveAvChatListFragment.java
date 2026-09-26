package com.narvii.chat.hangout;

import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.VVChatEntryHelper;
import com.narvii.list.NVListFragment;
import com.narvii.model.ChatThread;
import com.narvii.notification.Notification;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;

/* JADX INFO: loaded from: classes8.dex */
public class ActiveAvChatListFragment extends NVListFragment {
    Adapter adapter;

    private class Adapter extends HangoutListAdapter {
        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
        }

        public Adapter() {
            super(ActiveAvChatListFragment.this);
            this.source = "Active VV Chats";
        }

        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj instanceof ChatThread) {
                ChatThread chatThread = (ChatThread) obj;
                if (SignallingChannel.isLegalChannelType(chatThread.getRTCType())) {
                    new VVChatEntryHelper(this).launchLiveChannelFromLaunchEvent(chatThread, chatThread.getRTCType(), this.source, true);
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("live-layer/public-vv-chats").build();
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
        setTitle(R.string.active_avchats);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Public Chatroom - Active VV Chats Page").userPropInc("Active VV Chats Page");
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }
}
