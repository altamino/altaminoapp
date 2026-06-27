package com.narvii.feed;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.mastes.R;
import com.narvii.model.BlogCategory;
import com.narvii.model.Feed;
import com.narvii.model.api.BlogListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.post.entry.PostEntryDialog;
import com.narvii.util.JacksonUtils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.logging.LoggingSource;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class BlogInCategoryListFragment extends FeedListFragment {
    CommunityConfigHelper communityConfigHelper;

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BlogCategory blogCategory = (BlogCategory) JacksonUtils.readAs(getStringParam("blogCategory"), BlogCategory.class);
        if (blogCategory != null) {
            setTitle(blogCategory.label);
        } else {
            setTitle(getStringParam("title"));
        }
        this.communityConfigHelper = new CommunityConfigHelper(this);
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return ViewUtils.getBannerLift(this, 16);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setEmptyView(R.layout.category_list_empty_view);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return getBooleanParam("isFeaturedCategory") ? "AllFeatured" : super.getPageName();
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.add, 0, R.string.add).setIcon(R.drawable.chat_plus).setShowAsAction(2);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003e  */
    @Override // android.support.v4.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPrepareOptionsMenu(android.view.Menu r8) {
        /*
            r7 = this;
            super.onPrepareOptionsMenu(r8)
            java.lang.String r0 = "account"
            java.lang.Object r0 = r7.getService(r0)
            com.narvii.account.AccountService r0 = (com.narvii.account.AccountService) r0
            java.lang.String r1 = "blogCategory"
            java.lang.String r1 = r7.getStringParam(r1)
            java.lang.Class<com.narvii.model.BlogCategory> r2 = com.narvii.model.BlogCategory.class
            java.lang.Object r1 = com.narvii.util.JacksonUtils.readAs(r1, r2)
            com.narvii.model.BlogCategory r1 = (com.narvii.model.BlogCategory) r1
            r2 = 0
            if (r1 == 0) goto L3e
            int r3 = r1.status
            r4 = 1
            r5 = 3
            if (r3 == r5) goto L26
            r6 = 9
            if (r3 != r6) goto L3a
        L26:
            if (r0 == 0) goto L39
            com.narvii.model.User r3 = r0.getUserProfile()
            if (r3 == 0) goto L39
            com.narvii.model.User r0 = r0.getUserProfile()
            boolean r0 = r0.isCurator()
            if (r0 == 0) goto L39
            goto L3a
        L39:
            r4 = 0
        L3a:
            int r0 = r1.type
            if (r0 != r5) goto L3f
        L3e:
            r4 = 0
        L3f:
            com.narvii.modulization.CommunityConfigHelper r0 = r7.communityConfigHelper
            boolean r0 = r0.isPostEnabled()
            if (r0 != 0) goto L48
            goto L49
        L48:
            r2 = r4
        L49:
            r0 = 2131689576(0x7f0f0068, float:1.9008171E38)
            android.view.MenuItem r8 = r8.findItem(r0)
            r8.setVisible(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.feed.BlogInCategoryListFragment.onPrepareOptionsMenu(android.view.Menu):void");
    }

    @Override // android.support.v4.app.Fragment
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
            startActivity(intent);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.feed.FeedListFragment
    protected FeedListAdapter createFeedAdapter(Bundle bundle) {
        return new Adapter();
    }

    private class Adapter extends FeedListAdapter {
        public Adapter() {
            super(BlogInCategoryListFragment.this);
            this.source = "Topic Categories";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            String stringParam = BlogInCategoryListFragment.this.getStringParam("id");
            return ApiRequest.builder().path("/blog-category/" + stringParam + "/blog-list").build();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter
        protected void openFeedDetail(Feed feed, int i) {
            super.openFeedDetail(feed, i);
        }
    }
}
