package com.narvii.announcement;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.FeedListAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Feed;
import com.narvii.model.api.BlogListResponse;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LanguageHelper;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListView;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public class AnnouncementListFragment extends NVListFragment {
    AnnouncementAdapter announcementAdapter;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "TeamAmino";
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.announcementAdapter = new AnnouncementAdapter(this);
        this.announcementAdapter.setDarkTheme(true, R.color.color_default_primary);
        return this.announcementAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        Feed feed;
        super.onCreate(bundle);
        setTitle(R.string.announcements);
        if (getStringParam(CommentListFragment.COMMENT_KEY_FEED) != null && bundle == null && (feed = (Feed) JacksonUtils.readUsing(getStringParam(CommentListFragment.COMMENT_KEY_FEED), new Feed.FeedDeserializer())) != null) {
            startActivity(FeedDetailFragment.intent(feed));
        }
        setDarkTheme(true);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        ((TextView) setEmptyView(R.layout.front_feed_empty_view).findViewById(R.id.empty_content)).setText(R.string.announcements_empty_text);
    }

    @Override // com.narvii.list.NVListFragment
    protected Drawable getFrameDarkBackgroundDrawable() {
        if (getBooleanParam("fromAggregation")) {
            return new ColorDrawable(0);
        }
        return super.getFrameDarkBackgroundDrawable();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        int color = getBooleanParam("fromAggregation") ? 0 : getResources().getColor(R.color.color_default_primary);
        ((NVListView) getListView()).setOverscrollStretchHeader(color);
        ((NVListView) getListView()).setOverscrollStretchFooter(color);
        ((NVListView) getListView()).setListContentBackgroundColor(color);
    }

    public class AnnouncementAdapter extends FeedListAdapter {
        @Override // com.narvii.feed.BaseFeedListAdapter
        protected int getFeedBlogLayout() {
            return R.layout.feed_blog_item;
        }

        public AnnouncementAdapter(NVContext nVContext) {
            super(nVContext);
            String stringParam = AnnouncementListFragment.this.getStringParam("Source");
            this.source = stringParam == null ? "Announcement Feed" : stringParam;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            ViewUtils.show(itemView, R.id.feed_toolbar_share, false);
            ViewUtils.show(itemView, R.id.feed_external_toolbar_more, false);
            return itemView;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter
        protected Intent openFeedDetailIntent(Feed feed, int i) {
            Intent intentOpenFeedDetailIntent = super.openFeedDetailIntent(feed, i);
            String stringParam = AnnouncementListFragment.this.getStringParam("Source");
            if (stringParam == null) {
                stringParam = "Announcement Feed";
            }
            intentOpenFeedDetailIntent.putExtra("Source", stringParam);
            intentOpenFeedDetailIntent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, true);
            intentOpenFeedDetailIntent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(feed));
            return intentOpenFeedDetailIntent;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/announcement");
            builderPath.global();
            builderPath.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, LanguageHelper.getUserSelectedLanguageCode(this));
            return builderPath.build();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        List<? extends T> listRawList = this.announcementAdapter.rawList();
        Feed feed = (listRawList == 0 || listRawList.size() == 0) ? null : (Feed) listRawList.get(0);
        new PreferencesHelper(this).saveAnnouncementLastReadTime(feed == null ? 1L : feed.createdTime.getTime());
        super.onPause();
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }
}
