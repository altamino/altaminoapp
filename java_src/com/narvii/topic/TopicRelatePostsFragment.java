package com.narvii.topic;

import android.view.View;
import com.narvii.master.home.discover.DiscoverFragment;
import com.narvii.story.StoryListVisibleChangeListener;
import java.util.HashMap;

/* compiled from: TopicRelatePostsFragment.kt */
/* loaded from: classes3.dex */
public final class TopicRelatePostsFragment extends DiscoverFragment implements StoryListVisibleChangeListener {
    private HashMap _$_findViewCache;

    @Override // com.narvii.master.home.discover.DiscoverFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.master.home.discover.DiscoverFragment, com.narvii.app.theme.NVThemeFragment
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

    @Override // com.narvii.master.home.discover.DiscoverFragment, com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Stories";
    }

    @Override // com.narvii.master.home.discover.DiscoverFragment, com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.master.home.discover.DiscoverFragment
    public boolean showNoStoriesYet() {
        return false;
    }

    @Override // com.narvii.master.home.discover.DiscoverFragment
    public String getPath() {
        return "topic/" + getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID) + "/content-modules";
    }

    @Override // com.narvii.story.StoryListVisibleChangeListener
    public void onStoryListShown() {
        setUserVisibleHint(false);
    }

    @Override // com.narvii.story.StoryListVisibleChangeListener
    public void onStoryListDismissed() {
        setUserVisibleHint(true);
        cleanDataSourceInterceptor();
    }
}
