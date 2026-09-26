package com.narvii.bookmark;

import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedListAdapter;
import com.narvii.feed.FeedListFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.util.statistics.StatisticsService;

/* JADX INFO: loaded from: classes11.dex */
public class BookMarkListFragment extends FeedListFragment {
    @Override // com.narvii.feed.FeedListFragment
    protected FeedListAdapter createFeedAdapter(Bundle bundle) {
        return new BookmarkAdapter(this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.my_saved_post);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Bookmarks Page Opened").userPropInc("Bookmarks Page Opened Total").source(getStringParam(ExternalPostPreviewFragment.SOURCE));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.string.refresh).setVisible(false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.bookmark_empty_view);
    }
}
