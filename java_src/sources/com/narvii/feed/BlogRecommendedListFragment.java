package com.narvii.feed;

import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.api.BlogListResponse;
import com.narvii.nvplayer.delegate.NVFeedListVideoDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.util.http.ApiRequest;
import com.narvii.wallet.optinads.OptinAdsUtil;

/* JADX INFO: loaded from: classes4.dex */
public class BlogRecommendedListFragment extends NVListFragment {
    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "recommended_list";
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    private static class Adapter extends FeedListAdapter {
        private CommunityService communityService;
        private ConfigService config;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            this.paginationType = 1;
            this.config = (ConfigService) getService("config");
            this.communityService = (CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/feed/blog");
            builderPath.param("type", SearchPrefsHelper.PREFS_KEY_COMMUNITY);
            builderPath.param("categoryKey", NotificationCompat.CATEGORY_RECOMMENDATION);
            Community community = this.communityService.getCommunity(this.config.getCommunityId());
            if (community != null) {
                builderPath.param("language", community.primaryLanguage);
            }
            return builderPath.build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter(this);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(OptinAdsUtil.setupAdapter(this, adapter, getString(R.string.mopub_unitid_mrec_feed), true), true);
        return mergeAdapter;
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 16);
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVFeedListVideoDelegate(this, getActivity());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isRootFragment()) {
            setTitle(R.string.recommended);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setEmptyView(R.layout.front_feed_empty_view);
    }
}
