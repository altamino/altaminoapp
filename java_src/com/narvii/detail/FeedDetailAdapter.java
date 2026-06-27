package com.narvii.detail;

import android.content.Intent;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.detail.DetailAdapter;
import com.narvii.influencer.FanClub;
import com.narvii.item.list.ItemGallery;
import com.narvii.list.NVAdapter;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.FeedResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.share.BaseShareButtonRepost;
import com.narvii.share.ShareDialog;
import com.narvii.util.DateUtils;
import com.narvii.util.FilterHelper;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.text.OnTagClickListener;
import com.narvii.widget.ShareMediaBar;
import java.util.Date;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class FeedDetailAdapter<T extends Feed> extends DetailAdapter<T, FeedResponse<? extends T>> implements NotificationListener {
    private AccountService accountService;
    public boolean isBookmarked;
    OnTagClickListener tagClickListener;
    public boolean touchFeedContentEnd;
    public static final DetailAdapter.HeaderTag LINKED_HEADER = new DetailAdapter.HeaderTag("detail.linked.header", R.string.detail_linked_items);
    public static final DetailAdapter.CellType LINKED = new DetailAdapter.CellType("detail.linked");
    public static final DetailAdapter.CellType SHARE = new DetailAdapter.CellType("detail.share");

    @Override // com.narvii.detail.DetailAdapter
    protected boolean allowAutoJoin() {
        return true;
    }

    protected boolean notJoined() {
        return false;
    }

    protected boolean preview() {
        return false;
    }

    @Override // com.narvii.detail.DetailAdapter
    protected abstract Class<? extends FeedResponse<T>> responseType();

    protected boolean shouldBlockShareMedia() {
        return false;
    }

    public FeedDetailAdapter(NVContext nVContext) {
        super(nVContext);
        this.accountService = (AccountService) getService("account");
    }

    @Override // com.narvii.detail.DetailAdapter
    public FeedResponse<T> getResponse() {
        return (FeedResponse) super.getResponse();
    }

    @Override // com.narvii.detail.DetailAdapter
    public void setResponse(FeedResponse<? extends T> feedResponse) {
        super.setResponse((FeedDetailAdapter<T>) feedResponse);
        invalidateOptionsMenu();
    }

    public List<Item> taggedObjects() {
        FeedResponse<T> response = getResponse();
        if (response == null) {
            return null;
        }
        return response.taggedObjects;
    }

    @Override // com.narvii.detail.DetailAdapter
    protected void getCellTypes(List<DetailAdapter.CellType> list) {
        super.getCellTypes(list);
        list.add(LINKED);
        list.add(SHARE);
    }

    @Override // com.narvii.detail.DetailAdapter
    protected View getCell(Object obj, View view, ViewGroup viewGroup) {
        if (obj == LINKED) {
            View viewCreateView = createView(R.layout.detail_linked_item, viewGroup, view);
            ItemGallery itemGallery = (ItemGallery) viewCreateView.findViewById(R.id.pager);
            itemGallery.setItems(new FilterHelper(this).filter(taggedObjects()));
            itemGallery.setOnItemClickListener(new ItemGallery.OnItemClickListener() { // from class: com.narvii.detail.FeedDetailAdapter.1
                @Override // com.narvii.item.list.ItemGallery.OnItemClickListener
                public void onItemClick(Item item, int i) {
                    Intent intent = FeedDetailFragment.intent(((NVAdapter) FeedDetailAdapter.this).context, item, FeedDetailAdapter.this.taggedObjects(), null, null, i);
                    intent.putExtra("Source", "Favorite Related Pages");
                    FeedDetailAdapter.this.startActivity(intent);
                }
            });
            return viewCreateView;
        }
        if (obj == SHARE) {
            View viewCreateView2 = createView(R.layout.detail_share_item, viewGroup, view);
            viewCreateView2.findViewById(R.id.share_email).setOnClickListener(this.subviewClickListener);
            viewCreateView2.findViewById(R.id.share_sms).setOnClickListener(this.subviewClickListener);
            viewCreateView2.findViewById(R.id.share_clipboard).setOnClickListener(this.subviewClickListener);
            viewCreateView2.findViewById(R.id.share_others).setOnClickListener(this.subviewClickListener);
            viewCreateView2.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), this.darkTheme ? R.drawable.share_item_border_dark : R.drawable.share_item_border));
            return viewCreateView2;
        }
        return super.getCell(obj, view, viewGroup);
    }

    @Override // com.narvii.detail.DetailAdapter
    public View createMediaView(Media media, View view, ViewGroup viewGroup) {
        View viewCreateMediaView = super.createMediaView(media, view, viewGroup);
        NVVideoListDelegate.markVideoCell(viewCreateMediaView, R.id.image, media, (Media) null, (NVObject) getObject(), 0, true);
        return viewCreateMediaView;
    }

    @Override // com.narvii.detail.DetailAdapter
    public View createMediaView(Media media, int i, View view, ViewGroup viewGroup) {
        View viewCreateMediaView = super.createMediaView(media, i, view, viewGroup);
        View viewFindViewById = viewCreateMediaView.findViewById(R.id.share_media_bar);
        if (viewFindViewById instanceof ShareMediaBar) {
            ((ShareMediaBar) viewFindViewById).setShareMediaClickListener(new ShareMediaBar.ShareMediaClickListener() { // from class: com.narvii.detail.FeedDetailAdapter.2
                @Override // com.narvii.widget.ShareMediaBar.ShareMediaClickListener
                public void onShareMediaClicked(NVContext nVContext, Media media2, NVObject nVObject, List<Media> list, BaseShareButtonRepost baseShareButtonRepost) {
                    if (FeedDetailAdapter.this.shouldBlockShareMedia()) {
                        return;
                    }
                    ShareDialog.getShareDialogFromMedia(nVContext, media2, nVObject, list, baseShareButtonRepost).setSource(FeedDetailAdapter.this.source).show();
                }
            });
        }
        return viewCreateMediaView;
    }

    @Override // com.narvii.detail.DetailAdapter
    protected boolean blurMedia() {
        FanClub fanClub = this.accountService.getFanClub(getObject() == null ? null : getObject().uid());
        return (getObject() != null && getObject().needHidden) && !(fanClub != null && fanClub.isActive());
    }

    @Override // com.narvii.detail.DetailAdapter
    public View createTextView(String str, int i, View view, ViewGroup viewGroup, boolean z, OnTagClickListener onTagClickListener) {
        if (onTagClickListener == null) {
            return super.createTextView(str, i, view, viewGroup, z, onTagClickListener);
        }
        if (this.tagClickListener == null) {
            this.tagClickListener = new DefaultTagClickListener() { // from class: com.narvii.detail.FeedDetailAdapter.3
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.narvii.util.text.DefaultTagClickListener
                protected void startActivity(View view2, Intent intent) {
                    Feed feed = (Feed) FeedDetailAdapter.this.getObject();
                    if (feed != null) {
                        intent.putExtra("loggingObjectType", feed.objectType());
                        intent.putExtra("loggingObjectId", feed.id());
                        if (feed instanceof Blog) {
                            intent.putExtra("loggingBlogType", ((Blog) feed).type);
                        }
                    }
                    FeedDetailAdapter.this.startActivity(intent);
                }
            };
        }
        return super.createTextView(str, i, view, viewGroup, z, this.tagClickListener);
    }

    protected void addDivider(List list) {
        Date date;
        T object = getObject();
        if (object == null) {
            return;
        }
        Date date2 = object.createdTime;
        if (date2 == null || (date = object.modifiedTime) == null || DateUtils.isSameDay(date2, date)) {
            list.add(DetailAdapter.DIVIDER);
        } else {
            list.add(new DateDivider(object.modifiedTime, object.id()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x012a  */
    @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onItemClick(android.widget.ListAdapter r7, int r8, java.lang.Object r9, android.view.View r10, android.view.View r11) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.detail.FeedDetailAdapter.onItemClick(android.widget.ListAdapter, int, java.lang.Object, android.view.View, android.view.View):boolean");
    }

    @Override // com.narvii.detail.DetailAdapter, com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        String str;
        T object = getObject();
        if (object != null && (str = notification.id) != null && (notification.obj instanceof Feed) && str.equals(object.id()) && notification.action != "delete") {
            ApiResponse apiResponse = notification.response;
            if (apiResponse instanceof FeedResponse) {
                setResponse((FeedResponse) apiResponse);
            } else {
                Object obj = notification.obj;
                if (obj != null) {
                    setObject((Feed) ((Feed) obj).m46clone());
                    notifyDataSetChanged();
                }
            }
        }
        super.onNotification(notification);
    }
}
