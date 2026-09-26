package com.narvii.topic;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
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
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes8.dex */
public class BookmarkedTopicListFragment extends TopicListFragment implements FragmentOnBackListener {
    public static final int REQUEST_REORDER = 101;
    private View btnEdit;
    private String topicList;

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
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builder = new ApiRequest.Builder();
            builder.global().path("persona/bookmarked-topics");
            return builder.build();
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            String str;
            Object obj = notification.obj;
            if ((obj instanceof TopicBookmarkStub) && ((str = notification.action) == "new" || str == "delete")) {
                ((TopicListFragment) BookmarkedTopicListFragment.this).adapter.editList(new Notification(notification.action, ((TopicBookmarkStub) notification.obj).topic), false);
            } else if ((obj instanceof TopicNotificationStub) && notification.action == "update" && ((TopicNotificationStub) obj).topic != null) {
                ((TopicListFragment) BookmarkedTopicListFragment.this).adapter.editList(new Notification(notification.action, ((TopicNotificationStub) notification.obj).topic), false);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, StoryTopicListResponse storyTopicListResponse, int i10) {
            super.onPageResponse(apiRequest, storyTopicListResponse, i10);
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            int i10;
            super.notifyDataSetChanged();
            if (BookmarkedTopicListFragment.this.btnEdit != null) {
                View view = BookmarkedTopicListFragment.this.btnEdit;
                if (!isEmpty()) {
                    i10 = 0;
                } else {
                    i10 = 4;
                }
                view.setVisibility(i10);
            }
        }
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.topic.TopicListFragment, com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "bookmarked_topics";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("ManageIcon").send();
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, FragmentWrapperActivity.intent(BookmarkedTopicOrderListFragment.class), 101);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$1(View view) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("ExploreTopics").send();
        Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
        intent.putExtra("section_type", 3);
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        TopicListFragment.TopicItemAdapter topicItemAdapter;
        if (i10 == 101 && i11 == -1 && (topicItemAdapter = ((TopicListFragment) this).adapter) != null) {
            topicItemAdapter.resetList();
            this.topicList = intent.getStringExtra("topicList");
        }
        super.onActivityResult(i10, i11, intent);
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

    @Override // com.narvii.list.NVListFragment
    @NonNull
    protected Drawable getFrameDarkBackgroundDrawable() {
        if (isRootFragment()) {
            return super.getFrameDarkBackgroundDrawable();
        }
        return new ColorDrawable(0);
    }

    @Override // com.narvii.topic.TopicListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_bookmarked_topic, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.edit);
        this.btnEdit = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2757a.lambda$onViewCreated$0(view2);
            }
        });
        setEmptyView(R.layout.story_topic_list_empty_view).findViewById(R.id.explore_topics_button).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2777a.lambda$onViewCreated$1(view2);
            }
        });
    }
}
