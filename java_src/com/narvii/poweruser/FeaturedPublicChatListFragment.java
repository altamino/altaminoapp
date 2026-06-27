package com.narvii.poweruser;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.hangout.HangoutListAdapter;
import com.narvii.config.ConfigService;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.ChatThread;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListView;
import java.util.List;

/* loaded from: classes3.dex */
public class FeaturedPublicChatListFragment extends NVListFragment implements NotificationListener {
    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.featured_public_chat);
        setDarkTheme(true);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView instanceof NVListView) {
            ((NVListView) listView).setListContentBackground(new ColorDrawable(((ConfigService) getService("config")).getTheme().colorPrimary()));
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 5.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPxInt, 0, iDpToPxInt, 0);
        divideColumnAdapter.setAdapter(new FeaturedChatLisAdapter(), 2);
        return divideColumnAdapter;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if ((notification.obj instanceof ChatThread) && "update".equals(notification.action)) {
            ((NVAdapter) getListAdapter()).refresh(0, null);
        }
    }

    class FeaturedChatLisAdapter extends HangoutListAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        protected List<ChatThread> filterResponseList(List<ChatThread> list, int i) {
            return list;
        }

        public FeaturedChatLisAdapter() {
            super(FeaturedPublicChatListFragment.this);
            setDarkTheme(true);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().chatServer().path("/chat/thread").param("type", Module.MODULE_FEATURED).build();
        }
    }
}
