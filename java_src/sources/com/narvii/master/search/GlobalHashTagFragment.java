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
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes6.dex */
public class GlobalHashTagFragment extends NVListFragment {

    class FeedAdapter extends GlobalPostSearchAdapter {
        public FeedAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            if (TextUtils.isEmpty(this.keyword)) {
                resetEmptyList();
                return null;
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("post/search");
            builder.param("v", "2.0.0");
            builder.param("q", this.keyword);
            builder.param("my", Boolean.FALSE);
            builder.param("orderBy", GlobalPostSearchPrefsHelper.MOST_RECENT);
            builder.param("type", "hashTags");
            builder.param("language", ((ContentLanguageService) getService("content_language")).getRequestPrefLanguageWithLocalAsDefault());
            return builder.build();
        }

        @Override // com.narvii.master.search.GlobalPostSearchAdapter
        protected IVideoListDelegate getVideoListDelegate() {
            return ((NVListFragment) GlobalHashTagFragment.this).mVideoListDelegate;
        }

        @Override // com.narvii.master.search.GlobalPostSearchAdapter
        protected boolean videoAutoPlay() {
            return ((NVListFragment) GlobalHashTagFragment.this).videoAutoPlay;
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        FeedAdapter feedAdapter = new FeedAdapter(this);
        feedAdapter.keyword = getStringParam("hashTag");
        HeadlineDividerAdapter headlineDividerAdapter = new HeadlineDividerAdapter(this);
        headlineDividerAdapter.setAdapter(feedAdapter);
        return headlineDividerAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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
}
