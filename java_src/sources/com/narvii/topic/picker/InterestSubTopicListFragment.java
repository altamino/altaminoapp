package com.narvii.topic.picker;

import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.app.NVContext;
import com.narvii.list.NVListFragment;
import com.narvii.topic.adapter.TopicListAdapter;
import com.narvii.util.http.ApiRequest;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class InterestSubTopicListFragment extends NVListFragment {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String KEY_INTEREST_ID = "key_interest_id";

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class TopicAdapter extends TopicListAdapter {
        final /* synthetic */ InterestSubTopicListFragment this$0;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "TopicList";
        }

        @Override // com.narvii.topic.adapter.TopicListAdapter
        public boolean showRightChevron() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicAdapter(@NotNull InterestSubTopicListFragment interestSubTopicListFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = interestSubTopicListFragment;
        }

        @Override // com.narvii.topic.adapter.TopicListAdapter, com.narvii.list.NVPagedAdapter
        @NotNull
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest apiRequestBuild = new ApiRequest.Builder().global().path("/interest/" + this.this$0.getStringParam(InterestSubTopicListFragment.KEY_INTEREST_ID) + "/topics").build();
            t.i(apiRequestBuild, "build(...)");
            return apiRequestBuild;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "topic_category";
    }

    @Override // com.narvii.app.theme.NVThemeFragment, com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        return new TopicAdapter(this, this);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@Nullable ListView listView, @Nullable Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        ListView listView2 = getListView();
        if (listView2 != null) {
            listView2.setDivider(null);
        }
        ListView listView3 = getListView();
        if (listView3 != null) {
            listView3.setDividerHeight(0);
        }
    }
}
