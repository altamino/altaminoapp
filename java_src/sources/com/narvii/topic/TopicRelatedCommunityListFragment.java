package com.narvii.topic;

import android.os.Bundle;
import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.community.CommunityListFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.topic.adapter.TopicTopOffsetAdapter;
import com.narvii.util.http.ApiRequest;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class TopicRelatedCommunityListFragment extends CommunityListFragment {
    @Override // com.narvii.community.CommunityListFragment, com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "topic_related_community_list";
    }

    @Override // com.narvii.community.CommunityListFragment, com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = new RecyclerViewMergeAdapter(this);
        recyclerViewMergeAdapter.addAdapter(new TopicTopOffsetAdapter(this));
        recyclerViewMergeAdapter.addAdapter(new CommunityListFragment.Adapter(this), true);
        return recyclerViewMergeAdapter;
    }

    @Override // com.narvii.community.CommunityListFragment
    @Nullable
    public ApiRequest createRequest() {
        ApiRequest.Builder builderGlobal = ApiRequest.builder().global();
        builderGlobal.path("topic/" + getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID) + "/feed/community");
        builderGlobal.param("language", getLanguageService().getRequestPrefLanguageWithLocalAsDefault());
        return builderGlobal.build();
    }

    @Override // com.narvii.community.CommunityListFragment, com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        setGlobalEmptyView(R.layout.layout_topic_empty);
        CoordinateFragmentHelperKt.setPaddingForChildFragmentInTopic(this, this.pageStatusView);
    }
}
