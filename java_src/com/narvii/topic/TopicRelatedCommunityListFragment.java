package com.narvii.topic;

import android.os.Bundle;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.community.CommunityListFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.topic.adapter.TopicTopOffsetAdapter;
import com.narvii.util.http.ApiRequest;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: TopicRelatedCommunityListFragment.kt */
/* loaded from: classes3.dex */
public final class TopicRelatedCommunityListFragment extends CommunityListFragment {
    private HashMap _$_findViewCache;

    @Override // com.narvii.community.CommunityListFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.community.CommunityListFragment, com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.community.CommunityListFragment, com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Communities";
    }

    @Override // com.narvii.community.CommunityListFragment, com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.community.CommunityListFragment, com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = new RecyclerViewMergeAdapter(this);
        recyclerViewMergeAdapter.addAdapter(new TopicTopOffsetAdapter(this));
        recyclerViewMergeAdapter.addAdapter(new CommunityListFragment.Adapter(this), true);
        return recyclerViewMergeAdapter;
    }

    @Override // com.narvii.community.CommunityListFragment, com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setGlobalEmptyView(R.layout.layout_topic_empty);
        CoordinateFragmentHelperKt.setPaddingForChildFragmentInTopic(this, this.pageStatusView);
    }

    @Override // com.narvii.community.CommunityListFragment
    public ApiRequest createRequest() {
        ApiRequest.Builder builderGlobal = ApiRequest.builder().global();
        builderGlobal.path("topic/" + getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID) + "/feed/community");
        builderGlobal.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, getLanguageService().getRequestPrefLanguageWithLocalAsDefault());
        return builderGlobal.build();
    }
}
