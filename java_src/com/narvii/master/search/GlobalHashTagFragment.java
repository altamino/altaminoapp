package com.narvii.master.search;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.NVListFragment;
import com.narvii.master.HeadlineDividerAdapter;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.story.StoryApi;
import com.narvii.util.http.ApiRequest;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class GlobalHashTagFragment extends NVListFragment {
    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getStringParam("title"));
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        FeedAdapter feedAdapter = new FeedAdapter(this);
        feedAdapter.keyword = getStringParam("hashTag");
        HeadlineDividerAdapter headlineDividerAdapter = new HeadlineDividerAdapter(this);
        headlineDividerAdapter.setAdapter(feedAdapter);
        return headlineDividerAdapter;
    }

    class FeedAdapter extends GlobalPostSearchAdapter {
        public FeedAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.master.search.GlobalPostSearchAdapter
        protected IVideoListDelegate getVideoListDelegate() {
            return ((NVListFragment) GlobalHashTagFragment.this).mVideoListDelegate;
        }

        @Override // com.narvii.master.search.GlobalPostSearchAdapter
        protected boolean videoAutoPlay() {
            return ((NVListFragment) GlobalHashTagFragment.this).videoAutoPlay;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (TextUtils.isEmpty(this.keyword)) {
                resetEmptyList();
                return null;
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("post/search");
            builder.param("v", StoryApi.STORY_VERSION);
            builder.param("q", this.keyword);
            builder.param("my", false);
            builder.param("orderBy", GlobalPostSearchPrefsHelper.MOST_RECENT);
            builder.param("type", "hashTags");
            builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, ((ContentLanguageService) getService("content_language")).getRequestPrefLanguageWithLocalAsDefault());
            builder.param("excludedPostTypes", 9);
            return builder.build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }
}
