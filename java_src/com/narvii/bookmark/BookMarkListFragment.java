package com.narvii.bookmark;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.feed.FeedListAdapter;
import com.narvii.feed.FeedListFragment;

/* loaded from: classes2.dex */
public class BookMarkListFragment extends FeedListFragment {
    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.my_saved_post);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.bookmark_empty_view);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.string.refresh).setVisible(false);
    }

    @Override // com.narvii.feed.FeedListFragment
    protected FeedListAdapter createFeedAdapter(Bundle bundle) {
        return new BookmarkAdapter(this);
    }
}
