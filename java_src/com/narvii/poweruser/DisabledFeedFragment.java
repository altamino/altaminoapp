package com.narvii.poweruser;

import android.os.Bundle;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.feed.FeedListAdapter;
import com.narvii.feed.FeedListFragment;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.model.api.BlogListResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.notification.Notification;
import com.narvii.util.http.ApiRequest;
import java.util.List;

/* loaded from: classes3.dex */
public class DisabledFeedFragment extends FeedListFragment {
    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isRootFragment()) {
            setTitle(R.string.disabled_post);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setEmptyView(R.layout.disabled_post_empty_view);
    }

    @Override // com.narvii.feed.FeedListFragment
    protected FeedListAdapter createFeedAdapter(Bundle bundle) {
        return new Adapter();
    }

    class Adapter extends FeedListAdapter {
        @Override // com.narvii.feed.BaseFeedListAdapter
        protected boolean allowShowDisable() {
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<Feed> filterResponseList(List<Feed> list, int i) {
            return list;
        }

        public Adapter() {
            super(DisabledFeedFragment.this);
            this.source = "Disabled Posts";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ListResponse<? extends Feed>> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().path("/feed/blog-disabled").build();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if (notification.action.equals("update")) {
                Object obj = notification.obj;
                if ((obj instanceof NVObject) && ((NVObject) obj).status() == 0) {
                    notification.action = "delete";
                }
            }
            super.onNotification(notification);
        }
    }
}
