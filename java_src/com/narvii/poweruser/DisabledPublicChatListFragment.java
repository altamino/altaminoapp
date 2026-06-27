package com.narvii.poweruser;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.hangout.HangoutListAdapter;
import com.narvii.config.ConfigService;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.ChatThread;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListView;
import java.util.List;

/* loaded from: classes3.dex */
public class DisabledPublicChatListFragment extends NVListFragment {
    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.disabled_public_chat);
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
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, Utils.dpToPxInt(getContext(), 15.0f), 0, Utils.dpToPxInt(getContext(), 5.0f), 0);
        divideColumnAdapter.setAdapter(new DisableChatLisAdapter(), 2);
        return divideColumnAdapter;
    }

    class DisableChatLisAdapter extends HangoutListAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        protected List<ChatThread> filterResponseList(List<ChatThread> list, int i) {
            return list;
        }

        public DisableChatLisAdapter() {
            super(DisabledPublicChatListFragment.this);
            setDarkTheme(true);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().chatServer().path("/chat/thread").param("type", "public-disabled").build();
        }
    }
}
