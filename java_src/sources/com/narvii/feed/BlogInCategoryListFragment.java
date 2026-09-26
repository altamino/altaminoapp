package com.narvii.feed;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.master.R;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.model.BlogCategory;
import com.narvii.model.Feed;
import com.narvii.model.api.BlogListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.post.entry.PostEntryDialog;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class BlogInCategoryListFragment extends FeedListFragment {
    CommunityConfigHelper communityConfigHelper;

    private class Adapter extends FeedListAdapter {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        public Adapter() {
            super(BlogInCategoryListFragment.this);
            this.source = "Topic Categories";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            String stringParam = BlogInCategoryListFragment.this.getStringParam("id");
            return ApiRequest.builder().path("/blog-category/" + stringParam + "/blog-list").build();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter
        protected void openFeedDetail(Feed feed, int i10) {
            super.openFeedDetail(feed, i10);
            if (BlogInCategoryListFragment.this.getBooleanParam("isFeaturedCategory")) {
                ((StatisticsService) getService("statistics")).event(null).userPropInc("More Featured Posts Read Total");
            }
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.feed.FeedListFragment
    protected FeedListAdapter createFeedAdapter(Bundle bundle) {
        return new Adapter();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return getBooleanParam("isFeaturedCategory") ? "all_featured" : super.getPageName();
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 16);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        BlogCategory blogCategory = (BlogCategory) JacksonUtils.readAs(getStringParam("blogCategory"), BlogCategory.class);
        if (blogCategory != null) {
            setTitle(blogCategory.label);
        } else {
            setTitle(getStringParam("title"));
        }
        if (bundle == null) {
            StatisticsEventBuilder statisticsEventBuilderUserPropInc = ((StatisticsService) getService("statistics")).event("Topic Category Page Opened").userPropInc("Topic Category Page Opened Total");
            if (blogCategory == null) {
                str = null;
            } else {
                str = blogCategory.label;
            }
            statisticsEventBuilderUserPropInc.param("Category Name", str).source(getStringParam(ExternalPostPreviewFragment.SOURCE));
        }
        this.communityConfigHelper = new CommunityConfigHelper(this);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.add, 0, R.string.add).setIcon(R.drawable.chat_plus).setShowAsAction(2);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setEmptyView(R.layout.category_list_empty_view);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.add) {
            AccountService accountService = (AccountService) getService("account");
            if (accountService != null && accountService.hasAccount()) {
                PostEntryDialog postEntryDialog = (PostEntryDialog) getService("postEntry");
                ArrayList arrayList = new ArrayList();
                arrayList.add((BlogCategory) JacksonUtils.readAs(getStringParam("blogCategory"), BlogCategory.class));
                postEntryDialog.show(2, "Topic Category", LoggingSource.FeedList);
                postEntryDialog.setBlogCategory(arrayList);
                return true;
            }
            Intent intent = new Intent(getContext(), (Class<?>) LoginActivity.class);
            intent.putExtra("promptType", LoginActivity.PromptType.Required.name());
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003e  */
    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        super.onPrepareOptionsMenu(menu);
        AccountService accountService = (AccountService) getService("account");
        BlogCategory blogCategory = (BlogCategory) JacksonUtils.readAs(getStringParam("blogCategory"), BlogCategory.class);
        boolean z10 = false;
        if (blogCategory != null) {
            int i10 = blogCategory.status;
            z6 = true;
            if ((i10 == 3 || i10 == 9) && (accountService == null || accountService.getUserProfile() == null || !accountService.getUserProfile().isCurator())) {
                z6 = false;
            }
            if (blogCategory.type == 3) {
                z6 = false;
            }
        } else {
            z6 = false;
        }
        if (this.communityConfigHelper.isPostEnabled()) {
            z10 = z6;
        }
        menu.findItem(R.string.add).setVisible(z10);
    }
}
