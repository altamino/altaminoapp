package com.narvii.flag.resolve;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.blog.detail.BlogDetailFragment;
import com.narvii.model.Blog;
import com.narvii.model.NVObject;
import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes.dex */
public class BlogDetailFlagModeFragment extends BlogDetailFragment implements FlagResolveBar.FlagAttachObject {
    Blog blog;
    FlagResolveBar flagResolveBar;

    @Override // com.narvii.flag.resolve.FlagResolveBar.FlagAttachObject
    public NVObject attachObject() {
        return this.blog;
    }

    @Override // com.narvii.blog.detail.BlogDetailFragment
    protected boolean disableOptinAds() {
        return true;
    }

    @Override // com.narvii.detail.FeedDetailFragment, com.narvii.app.NVFragment
    public Boolean hasOnlineBar() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.blog.detail.BlogDetailFragment, com.narvii.detail.FeedDetailFragment
    protected boolean showBottomBar() {
        return false;
    }

    @Override // com.narvii.blog.detail.BlogDetailFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i10, i11, intent, this.blog, 1);
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.detail.FeedDetailFragment
    protected int fansOnlyPostMarginBottom() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.flag_resolve_bar_height);
    }

    @Override // com.narvii.blog.detail.BlogDetailFragment, com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.blog.detail.BlogDetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        FlagModeHelper.saveInstanceStats(this, bundle);
    }

    @Override // com.narvii.blog.detail.BlogDetailFragment, com.narvii.detail.FeedDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (isAdded()) {
            this.flagResolveBar = FlagModeHelper.attachFlagMode(view, this);
            this.onFinishListener = new Callback<Blog>() { // from class: com.narvii.flag.resolve.BlogDetailFlagModeFragment.1
                @Override // com.narvii.util.Callback
                public void call(Blog blog) {
                    FlagResolveBar flagResolveBar;
                    BlogDetailFlagModeFragment blogDetailFlagModeFragment = BlogDetailFlagModeFragment.this;
                    blogDetailFlagModeFragment.blog = blog;
                    if ((blog == null || blog.status == 9) && (flagResolveBar = blogDetailFlagModeFragment.flagResolveBar) != null) {
                        flagResolveBar.showAlreadyResolved();
                    }
                }
            };
        }
    }
}
