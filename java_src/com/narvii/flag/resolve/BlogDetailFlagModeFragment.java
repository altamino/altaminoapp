package com.narvii.flag.resolve;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.blog.detail.BlogDetailFragment;
import com.narvii.flag.resolve.FlagResolveBar;
import com.narvii.model.Blog;
import com.narvii.model.NVObject;
import com.narvii.util.Callback;

/* loaded from: classes2.dex */
public class BlogDetailFlagModeFragment extends BlogDetailFragment implements FlagResolveBar.FlagAttachObject {
    Blog blog;
    FlagResolveBar flagResolveBar;

    @Override // com.narvii.blog.detail.BlogDetailFragment
    protected boolean disableOptinAds() {
        return true;
    }

    @Override // com.narvii.blog.detail.BlogDetailFragment, com.narvii.detail.FeedDetailFragment
    protected boolean showBottomBar() {
        return false;
    }

    @Override // com.narvii.blog.detail.BlogDetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        FlagModeHelper.saveInstanceStats(this, bundle);
    }

    @Override // com.narvii.blog.detail.BlogDetailFragment, com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.blog.detail.BlogDetailFragment, com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (isAdded()) {
            this.flagResolveBar = FlagModeHelper.attachFlagMode(view, this);
            this.onFinishListener = new Callback<Blog>() { // from class: com.narvii.flag.resolve.BlogDetailFlagModeFragment.1
                @Override // com.narvii.util.Callback
                public void call(Blog blog) {
                    FlagResolveBar flagResolveBar;
                    BlogDetailFlagModeFragment.this.blog = blog;
                    if ((blog == null || blog.status == 9) && (flagResolveBar = BlogDetailFlagModeFragment.this.flagResolveBar) != null) {
                        flagResolveBar.showAlreadyResolved();
                    }
                }
            };
        }
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.app.NVFragment
    public Boolean hasOnlineBar() {
        return false;
    }

    @Override // com.narvii.blog.detail.BlogDetailFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i, i2, intent, this.blog, 1);
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.flag.resolve.FlagResolveBar.FlagAttachObject
    public NVObject attachObject() {
        return this.blog;
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected int fansOnlyPostMarginBottom() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.flag_resolve_bar_height);
    }
}
