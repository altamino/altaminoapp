package com.narvii.announcement;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.FeedListAdapter;
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class AnnouncementListFragment extends NVListFragment {
    AnnouncementAdapter announcementAdapter;

    public class AnnouncementAdapter extends FeedListAdapter {
        @Override // com.narvii.feed.BaseFeedListAdapter
        protected int getFeedBlogLayout() {
            return R.layout.feed_blog_item;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        public AnnouncementAdapter(NVContext nVContext) {
            super(nVContext);
            String stringParam = AnnouncementListFragment.this.getStringParam(ExternalPostPreviewFragment.SOURCE);
            this.source = stringParam == null ? "Announcement Feed" : stringParam;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/announcement");
            builderPath.global();
            builderPath.param("language", LanguageHelper.getUserSelectedLanguageCode(this));
            return builderPath.build();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            ViewUtils.show(itemView, R.id.feed_toolbar_share, false);
            ViewUtils.show(itemView, R.id.feed_external_toolbar_more, false);
            return itemView;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter
        protected Intent openFeedDetailIntent(Feed feed, int i10) {
            Intent intentOpenFeedDetailIntent = super.openFeedDetailIntent(feed, i10);
            String stringParam = AnnouncementListFragment.this.getStringParam(ExternalPostPreviewFragment.SOURCE);
            if (stringParam == null) {
                stringParam = "Announcement Feed";
            }
            intentOpenFeedDetailIntent.putExtra(ExternalPostPreviewFragment.SOURCE, stringParam);
            intentOpenFeedDetailIntent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, true);
            intentOpenFeedDetailIntent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(feed));
            return intentOpenFeedDetailIntent;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "announcements_list";
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
        AnnouncementAdapter announcementAdapter = new AnnouncementAdapter(this);
        this.announcementAdapter = announcementAdapter;
        announcementAdapter.setDarkTheme(true, R.color.color_default_primary);
        return this.announcementAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    @NonNull
    protected Drawable getFrameDarkBackgroundDrawable() {
        return getBooleanParam("fromAggregation") ? new ColorDrawable(0) : super.getFrameDarkBackgroundDrawable();
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        List<? extends T> listRawList = this.announcementAdapter.rawList();
        Feed feed = (listRawList == 0 || listRawList.size() == 0) ? null : (Feed) listRawList.get(0);
        new PreferencesHelper(this).saveAnnouncementLastReadTime(feed == null ? 1L : feed.createdTime.getTime());
        super.onPause();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        Feed feed;
        super.onCreate(bundle);
        setTitle(R.string.announcements);
        if (getStringParam("feed") != null && bundle == null && (feed = (Feed) JacksonUtils.readUsing(getStringParam("feed"), new Feed.FeedDeserializer())) != null) {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, FeedDetailFragment.intent(feed));
        }
        setDarkTheme(true);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        int color;
        super.onListViewCreated(listView, bundle);
        if (getBooleanParam("fromAggregation")) {
            color = 0;
        } else {
            color = getResources().getColor(R.color.color_default_primary);
        }
        ((NVListView) getListView()).setOverscrollStretchHeader(color);
        ((NVListView) getListView()).setOverscrollStretchFooter(color);
        ((NVListView) getListView()).setListContentBackgroundColor(color);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((TextView) setEmptyView(R.layout.front_feed_empty_view).findViewById(R.id.empty_content)).setText(R.string.announcements_empty_text);
    }
}
