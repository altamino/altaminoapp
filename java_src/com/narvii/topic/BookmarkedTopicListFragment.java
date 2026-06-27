package com.narvii.topic;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.search.GlobalSearchBaseFragment;
import com.narvii.model.story.StoryTopicListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.topic.TopicListFragment;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;

/* loaded from: classes3.dex */
public class BookmarkedTopicListFragment extends TopicListFragment implements FragmentOnBackListener {
    public static final int REQUEST_REORDER = 101;
    private View btnEdit;
    private String topicList;

    @Override // com.narvii.topic.TopicListFragment, com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return ContentModule.TYPE_BOOKMARKED_TOPICS;
    }

    @Override // com.narvii.topic.TopicListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_bookmarked_topic, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.btnEdit = view.findViewById(R.id.edit);
        this.btnEdit.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.-$$Lambda$BookmarkedTopicListFragment$j9RTjioIevsTOv17p1eyqAH_Tes
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$0$BookmarkedTopicListFragment(view2);
            }
        });
        setEmptyView(R.layout.story_topic_list_empty_view).findViewById(R.id.explore_topics_button).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.-$$Lambda$BookmarkedTopicListFragment$vJHaoVK-OznDsX55mX7G9ZDhuyk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$1$BookmarkedTopicListFragment(view2);
            }
        });
    }

    public /* synthetic */ void lambda$onViewCreated$0$BookmarkedTopicListFragment(View view) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("ManageIcon").send();
        startActivityForResult(FragmentWrapperActivity.intent(BookmarkedTopicOrderListFragment.class), 101);
    }

    public /* synthetic */ void lambda$onViewCreated$1$BookmarkedTopicListFragment(View view) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("ExploreTopics").send();
        Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
        intent.putExtra("section_type", 4);
        startActivity(intent);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        TopicListFragment.TopicItemAdapter topicItemAdapter;
        if (i == 101 && i2 == -1 && (topicItemAdapter = ((TopicListFragment) this).adapter) != null) {
            topicItemAdapter.resetList();
            this.topicList = intent.getStringExtra("topicList");
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (TextUtils.isEmpty(this.topicList)) {
            return false;
        }
        Intent intent = new Intent();
        intent.putExtra("topicList", this.topicList);
        setResult(-1, intent);
        finish();
        return true;
    }

    @Override // com.narvii.topic.TopicListFragment, com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 10.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPxInt, iDpToPxInt);
        BookmarkedTopicItemAdapter bookmarkedTopicItemAdapter = new BookmarkedTopicItemAdapter(this);
        ((TopicListFragment) this).adapter = bookmarkedTopicItemAdapter;
        divideColumnAdapter.setAdapter(bookmarkedTopicItemAdapter, 2);
        return divideColumnAdapter;
    }

    protected class BookmarkedTopicItemAdapter extends TopicListFragment.TopicItemAdapter implements NotificationListener {
        @Override // com.narvii.topic.TopicListFragment.TopicItemAdapter
        protected boolean showOnlineInfo() {
            return true;
        }

        @Override // com.narvii.topic.TopicListFragment.TopicItemAdapter
        protected boolean showSubscribeTag() {
            return true;
        }

        public BookmarkedTopicItemAdapter(NVContext nVContext) {
            super(nVContext);
            setDarkTheme(true);
        }

        @Override // com.narvii.topic.TopicListFragment.TopicItemAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builder = new ApiRequest.Builder();
            builder.global().path("persona/bookmarked-topics");
            return builder.build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, StoryTopicListResponse storyTopicListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) storyTopicListResponse, i);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            String str;
            String str2;
            if ((notification.obj instanceof TopicBookmarkStub) && ((str2 = notification.action) == "new" || str2 == "delete")) {
                ((TopicListFragment) BookmarkedTopicListFragment.this).adapter.editList(new Notification(notification.action, ((TopicBookmarkStub) notification.obj).topic), false);
                return;
            }
            Object obj = notification.obj;
            if ((obj instanceof TopicNotificationStub) && (str = notification.action) == "update" && ((TopicNotificationStub) obj).topic != null) {
                ((TopicListFragment) BookmarkedTopicListFragment.this).adapter.editList(new Notification(str, ((TopicNotificationStub) obj).topic), false);
            }
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            if (BookmarkedTopicListFragment.this.btnEdit != null) {
                BookmarkedTopicListFragment.this.btnEdit.setVisibility(!isEmpty() ? 0 : 4);
            }
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected Drawable getFrameDarkBackgroundDrawable() {
        return isRootFragment() ? super.getFrameDarkBackgroundDrawable() : new ColorDrawable(0);
    }
}
