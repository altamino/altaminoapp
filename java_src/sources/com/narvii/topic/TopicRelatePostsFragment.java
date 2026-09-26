package com.narvii.topic;

import com.narvii.master.home.discover.DiscoverFragment;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class TopicRelatePostsFragment extends DiscoverFragment {
    @Override // com.narvii.master.home.discover.DiscoverFragment, com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "stories";
    }

    @Override // com.narvii.master.home.discover.DiscoverFragment
    public boolean showNoStoriesYet() {
        return false;
    }

    @Override // com.narvii.master.home.discover.DiscoverFragment
    @NotNull
    public String getPath() {
        return "topic/" + getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID) + "/content-modules";
    }
}
