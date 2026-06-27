package com.narvii.chat.hangout;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.list.NVListFragment;
import com.narvii.notification.Notification;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes2.dex */
public class SearchHangoutListFragment extends NVListFragment {
    Adapter adapter;

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.search_results);
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
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }

    private class Adapter extends HangoutListAdapter {
        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
        }

        public Adapter() {
            super(SearchHangoutListFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().path("/chat/thread?type=public-keyword");
            builderPath.param("q", SearchHangoutListFragment.this.getStringParam("q"));
            return builderPath.build();
        }
    }
}
