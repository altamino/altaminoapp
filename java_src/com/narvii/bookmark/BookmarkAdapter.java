package com.narvii.bookmark;

import android.content.DialogInterface;
import android.view.View;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.feed.FeedHelper;
import com.narvii.feed.FeedListAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.model.Feed;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import java.util.List;

/* loaded from: classes2.dex */
public class BookmarkAdapter extends FeedListAdapter {
    FilterHelper filterHelper;

    public BookmarkAdapter(NVContext nVContext) {
        super(nVContext);
        this.source = "Bookmarks";
        this.filterHelper = new FilterHelper(nVContext).filterDeleted().filterClosed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<BookMarkListResponse> responseType() {
        return BookMarkListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        return ApiRequest.builder().path("/bookmark").build();
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    protected void onPageResponse(ApiRequest apiRequest, ListResponse<? extends Feed> listResponse, int i) {
        super.onPageResponse(apiRequest, listResponse, i);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<Feed> filterResponseList(List<Feed> list, int i) {
        return this.filterHelper.filter(list);
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof Feed) {
            Feed feed = (Feed) obj;
            if ((feed.status() == 10 || feed.status() == 9) && view2 != null && view2.getId() == R.id.feed_external_toolbar_more) {
                showMore(feed);
                return true;
            }
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.list.NVAdapter
    protected boolean onSubviewClick(View view, boolean z) {
        return super.onSubviewClick(view, z);
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    public void showMore(final Feed feed) {
        if (feed.status() == 10 || feed.status() == 9) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.un_save, 0);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.bookmark.BookmarkAdapter.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        new FeedHelper(((NVAdapter) BookmarkAdapter.this).context).unBookmark(feed, new Callback<ApiResponse>() { // from class: com.narvii.bookmark.BookmarkAdapter.1.1
                            @Override // com.narvii.util.Callback
                            public void call(ApiResponse apiResponse) {
                                NotificationCenter notificationCenter = (NotificationCenter) BookmarkAdapter.this.getService("notification");
                                Feed feed2 = (Feed) feed.m46clone();
                                feed2.status = 304;
                                notificationCenter.sendNotification(new Notification("update", feed2));
                                NVToast.makeText(((NVAdapter) BookmarkAdapter.this).context.getContext(), R.string.done, 1).show();
                            }
                        });
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        super.showMore(feed, true);
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification.action.equals("update")) {
            Object obj = notification.obj;
            if ((obj instanceof Feed) && ((Feed) obj).status == 304) {
                notification.action = "delete";
            }
        }
        super.onNotification(notification);
    }
}
