package com.narvii.topic;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.DragSortPageFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.master.search.widgets.TopicCardView;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.model.story.StoryTopicListResponse;
import com.narvii.notification.Notification;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class BookmarkedTopicOrderListFragment extends DragSortPageFragment {
    private Adapter adapter;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "BookmarkedTopicsManage";
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(getString(R.string.manage));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            final List<?> list = this.adapter.list();
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayNodeCreateArrayNode.add(((StoryTopic) it.next()).topicId);
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.post().path("/persona/bookmarked-topics/reorder");
            builder.param("topicIds", arrayNodeCreateArrayNode);
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback() { // from class: com.narvii.topic.-$$Lambda$BookmarkedTopicOrderListFragment$HGFfH4RaIBVJF95I0MNNRsO1DwU
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f$0.lambda$onOptionsItemSelected$0$BookmarkedTopicOrderListFragment(list, (ApiResponse) obj);
                }
            };
            progressDialog.show();
            ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public /* synthetic */ void lambda$onOptionsItemSelected$0$BookmarkedTopicOrderListFragment(List list, ApiResponse apiResponse) {
        TopicNotificationStub topicNotificationStub = new TopicNotificationStub();
        topicNotificationStub.action = TopicNotificationStub.ACTION_BOOKMARK_STATE_CHANGE;
        sendNotification(new Notification("update", topicNotificationStub));
        Intent intent = new Intent();
        intent.putExtra("topicList", JacksonUtils.writeAsString(list));
        setResult(-1, intent);
        finish();
    }

    @Override // com.narvii.list.DragSortPageFragment
    protected NVPagedAdapter createMainAdapter() {
        Adapter adapter = this.adapter;
        if (adapter != null) {
            return adapter;
        }
        Adapter adapter2 = new Adapter(this);
        this.adapter = adapter2;
        return adapter2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class Adapter extends NVPagedAdapter<StoryTopic, StoryTopicListResponse> {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "TopicList";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext, 1);
            setDarkTheme(true);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<StoryTopic> dataType() {
            return StoryTopic.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends StoryTopicListResponse> responseType() {
            return StoryTopicListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builder = new ApiRequest.Builder();
            builder.global().path("persona/bookmarked-topics");
            return builder.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof StoryTopic)) {
                return null;
            }
            View viewCreateView = createView(R.layout.item_cell_topic_sort, viewGroup, view);
            ((TopicCardView) viewCreateView.findViewById(R.id.topic_layout)).setTopic((StoryTopic) obj, false);
            viewCreateView.findViewById(R.id.delete).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if ((obj instanceof StoryTopic) && view2 != null && view2.getId() == R.id.delete) {
                logClickEvent(obj, ActSemantic.delete);
                sendDeleteRequest((StoryTopic) obj);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        private void sendDeleteRequest(final StoryTopic storyTopic) {
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback() { // from class: com.narvii.topic.-$$Lambda$BookmarkedTopicOrderListFragment$Adapter$RMcX794qF-YetUyAuCskLTpqciQ
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f$0.lambda$sendDeleteRequest$0$BookmarkedTopicOrderListFragment$Adapter(storyTopic, (ApiResponse) obj);
                }
            };
            progressDialog.show();
            ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("persona/bookmarked-topics/" + storyTopic.topicId + "/unbookmark").build(), progressDialog.dismissListener);
        }

        public /* synthetic */ void lambda$sendDeleteRequest$0$BookmarkedTopicOrderListFragment$Adapter(StoryTopic storyTopic, ApiResponse apiResponse) {
            if (BookmarkedTopicOrderListFragment.this.adapter != null) {
                BookmarkedTopicOrderListFragment.this.adapter.list().remove(storyTopic);
                BookmarkedTopicOrderListFragment.this.adapter.notifyDataSetChanged();
            }
            sendNotification(new Notification("delete", storyTopic));
            TopicNotificationStub topicNotificationStub = new TopicNotificationStub();
            topicNotificationStub.action = TopicNotificationStub.ACTION_BOOKMARK_STATE_CHANGE;
            topicNotificationStub.topic = storyTopic;
            sendNotification(new Notification("update", topicNotificationStub));
        }
    }
}
