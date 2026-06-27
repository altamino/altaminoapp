package com.narvii.master.search;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.HeadlineListResponse;
import com.narvii.headlines.feed.HeadLinesListAdapter;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListFragment;
import com.narvii.util.deviceid.DeviceIDService;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes3.dex */
public abstract class GlobalPostSearchAdapter extends HeadLinesListAdapter {
    String deviceId;
    public String keyword;
    private boolean listViewFirstBecomeVisible;

    protected abstract IVideoListDelegate getVideoListDelegate();

    @Override // com.narvii.headlines.feed.HeadLinesListAdapter
    protected boolean isHeadline() {
        return false;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected boolean showAllLike() {
        return true;
    }

    @Override // com.narvii.headlines.feed.HeadLinesListAdapter
    protected boolean showPromote() {
        return false;
    }

    protected abstract boolean videoAutoPlay();

    public GlobalPostSearchAdapter(NVContext nVContext) {
        super(nVContext);
        this.keyword = null;
        this.listViewFirstBecomeVisible = false;
        this.deviceId = ((DeviceIDService) getService("deviceid")).getDeviceId();
        this.paginationType = 1;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.keyword = bundle.getString("keyword");
    }

    @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.list.NVPagedAdapter
    protected Class<? extends HeadlineListResponse> responseType() {
        return GlobalPostListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putString("keyword", this.keyword);
        return bundleOnSaveInstanceState;
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public int getCount() {
        if (TextUtils.isEmpty(this.keyword)) {
            return 0;
        }
        return super.getCount();
    }

    @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, final Object obj, View view, View view2) {
        if (view2 != null && view2.getId() == R.id.headline_feed_options) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            ((AffiliationsService) getService("affiliations")).contains(((Feed) obj).ndcId);
            actionSheetDialog.addItem(R.string.flag_for_review, 0);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.master.search.-$$Lambda$GlobalPostSearchAdapter$AAMbnkSqHSQv5A22eiGfAQaM5YM
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    this.f$0.lambda$onItemClick$0$GlobalPostSearchAdapter(obj, dialogInterface, i2);
                }
            });
            actionSheetDialog.show();
            return true;
        }
        if (obj instanceof Blog) {
            Blog blog = (Blog) obj;
            if (blog.type == 9 && ((view2 != null && view2.getId() == R.id.image) || (view2 == null && blog.ndcId == 0))) {
                new StoryHelper(this.context).openStoryDetailPageInAnotherActivity(view2, new StoryListFragment.IntentBuilder(blog).showCommentBar(true).source(StoryApi.GLOBAL_SEARCH_PLAYER).searchKeyWord(this.keyword).initFeedCommunity(getCommunityInfo(blog.getPublishNdcId())).forceVideoAutoPlay(true).build());
                logFeedClickEvent(blog);
                return true;
            }
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    public /* synthetic */ void lambda$onItemClick$0$GlobalPostSearchAdapter(Object obj, DialogInterface dialogInterface, int i) {
        Feed feed = (Feed) obj;
        if (shouldShowDownloadMasterDialog(feed.ndcId)) {
            return;
        }
        new FlagReportOptionDialog.Builder(this.context).nvObject(feed).build().show();
    }

    @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    public View getItemView(Object obj, View view, ViewGroup viewGroup) {
        if (obj instanceof Feed) {
            View itemView = super.getItemView(obj, view, viewGroup);
            if (!this.listViewFirstBecomeVisible) {
                if (getVideoListDelegate() != null && videoAutoPlay()) {
                    getVideoListDelegate().listViewFirstBecomeVisible();
                }
                this.listViewFirstBecomeVisible = true;
            }
            return itemView;
        }
        return super.getItemView(obj, view, viewGroup);
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    public Intent getStoryDetailPageIntent(Blog blog) {
        return new StoryListFragment.IntentBuilder(blog).showCommentBar(showCommentBarInStoryDetail()).source(StoryApi.GLOBAL_SEARCH_PLAYER).searchKeyWord(this.keyword).forceVideoAutoPlay(true).build();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, HeadlineListResponse headlineListResponse, int i) {
        super.onPageResponse(apiRequest, headlineListResponse, i);
        if (getVideoListDelegate() == null || !videoAutoPlay()) {
            return;
        }
        getVideoListDelegate().onRefresh();
    }
}
