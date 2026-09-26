package com.narvii.master.search;

import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.HeadlineListResponse;
import com.narvii.headlines.feed.HeadLinesListAdapter;
import com.narvii.model.Feed;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes6.dex */
public abstract class GlobalPostSearchAdapter extends HeadLinesListAdapter {
    String dID;
    public String keyword;
    private boolean listViewFirstBecomeVisible;

    protected abstract IVideoListDelegate getVideoListDelegate();

    @Override // com.narvii.headlines.feed.HeadLinesListAdapter
    protected boolean isHeadline() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.list.NVPagedAdapter
    public Class<? extends HeadlineListResponse> responseType() {
        return GlobalPostListResponse.class;
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemClick$0(Object obj, DialogInterface dialogInterface, int i10) {
        Feed feed = (Feed) obj;
        if (shouldShowDownloadMasterDialog(feed.ndcId)) {
            return;
        }
        new FlagReportOptionDialog.Builder(this.context).nvObject(feed).build().show();
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public int getCount() {
        if (TextUtils.isEmpty(this.keyword)) {
            return 0;
        }
        return super.getCount();
    }

    @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    public View getItemView(Object obj, View view, ViewGroup viewGroup) {
        if (!(obj instanceof Feed)) {
            return super.getItemView(obj, view, viewGroup);
        }
        View itemView = super.getItemView(obj, view, viewGroup);
        if (!this.listViewFirstBecomeVisible) {
            if (getVideoListDelegate() != null && videoAutoPlay()) {
                getVideoListDelegate().listViewFirstBecomeVisible();
            }
            this.listViewFirstBecomeVisible = true;
        }
        return itemView;
    }

    @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, final Object obj, View view, View view2) {
        if (view2 == null || view2.getId() != R.id.headline_feed_options) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        ((AffiliationsService) getService("affiliations")).contains(((Feed) obj).ndcId);
        actionSheetDialog.addItem(R.string.flag_for_review, 0);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.master.search.c
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                this.f2404a.lambda$onItemClick$0(obj, dialogInterface, i11);
            }
        });
        actionSheetDialog.show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, HeadlineListResponse headlineListResponse, int i10) {
        super.onPageResponse(apiRequest, headlineListResponse, i10);
        if (getVideoListDelegate() == null || !videoAutoPlay()) {
            return;
        }
        getVideoListDelegate().onRefresh();
    }

    public GlobalPostSearchAdapter(NVContext nVContext) {
        super(nVContext);
        this.keyword = null;
        this.listViewFirstBecomeVisible = false;
        this.dID = a0.b.k();
        this.paginationType = 1;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.keyword = bundle.getString("keyword");
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putString("keyword", this.keyword);
        return bundleOnSaveInstanceState;
    }
}
