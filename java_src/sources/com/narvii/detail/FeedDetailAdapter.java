package com.narvii.detail;

import android.content.Intent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.PopupMenu;
import androidx.core.content.ContextCompat;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.feed.FeedHelper;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.influencer.FanClub;
import com.narvii.item.list.ItemGallery;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogUtils;
import com.narvii.media.MediaGalleryOptionActivity;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.FeedResponse;
import com.narvii.notification.Notification;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.optionmenu.OptionMenuFragment;
import com.narvii.share.BaseShareButtonRepost;
import com.narvii.share.ShareDialog;
import com.narvii.share.SharePayload;
import com.narvii.share.ShareViewHelper;
import com.narvii.share.elements.EmailElement;
import com.narvii.share.elements.MessageElement;
import com.narvii.util.DateUtils;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.text.OnTagClickListener;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.ShareMediaBar;
import com.safedk.android.utils.Logger;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FeedDetailAdapter<T extends Feed> extends DetailAdapter<T, FeedResponse<? extends T>> {
    private AccountService accountService;
    public boolean isBookmarked;
    OnTagClickListener tagClickListener;
    public boolean touchFeedContentEnd;
    public static final DetailAdapter.HeaderTag LINKED_HEADER = new DetailAdapter.HeaderTag("detail.linked.header", R.string.detail_linked_items);
    public static final DetailAdapter.CellType LINKED = new DetailAdapter.CellType("detail.linked");
    public static final DetailAdapter.CellType SHARE = new DetailAdapter.CellType("detail.share");

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.detail.DetailAdapter
    protected boolean allowAutoJoin() {
        return true;
    }

    @Override // com.narvii.detail.DetailAdapter
    public View createMediaView(Media media, View view, ViewGroup viewGroup) {
        View viewCreateMediaView = super.createMediaView(media, view, viewGroup);
        NVVideoListDelegate.markVideoCell(viewCreateMediaView, R.id.image, media, (Media) null, (NVObject) getObject(), 0, true);
        return viewCreateMediaView;
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

    @Override // com.narvii.detail.DetailAdapter
    protected boolean blurMedia() {
        FanClub fanClub = this.accountService.getFanClub(getObject() == null ? null : getObject().uid());
        return (getObject() == null || !getObject().needHidden || (fanClub != null && fanClub.isActive())) ? false : true;
    }

    @Override // com.narvii.detail.DetailAdapter
    public View createTextView(String str, int i10, View view, ViewGroup viewGroup, boolean z6, OnTagClickListener onTagClickListener) {
        if (onTagClickListener == null) {
            return super.createTextView(str, i10, view, viewGroup, z6, onTagClickListener);
        }
        if (this.tagClickListener == null) {
            this.tagClickListener = new DefaultTagClickListener() { // from class: com.narvii.detail.FeedDetailAdapter.3
                public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

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
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(FeedDetailAdapter.this, intent);
                }
            };
        }
        return super.createTextView(str, i10, view, viewGroup, z6, this.tagClickListener);
    }

    @Override // com.narvii.detail.DetailAdapter
    protected View getCell(Object obj, View view, ViewGroup viewGroup) {
        if (obj == LINKED) {
            View viewCreateView = createView(R.layout.detail_linked_item, viewGroup, view);
            ItemGallery itemGallery = (ItemGallery) viewCreateView.findViewById(R.id.pager);
            itemGallery.setItems(new FilterHelper(this).filter(taggedObjects()));
            itemGallery.setOnItemClickListener(new ItemGallery.OnItemClickListener() { // from class: com.narvii.detail.FeedDetailAdapter.1
                public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // com.narvii.item.list.ItemGallery.OnItemClickListener
                public void onItemClick(Item item, int i10) {
                    Intent intent = FeedDetailFragment.intent(((NVAdapter) FeedDetailAdapter.this).context, item, FeedDetailAdapter.this.taggedObjects(), null, null, i10);
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Favorite Related Pages");
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(FeedDetailAdapter.this, intent);
                }
            });
            return viewCreateView;
        }
        if (obj != SHARE) {
            return super.getCell(obj, view, viewGroup);
        }
        View viewCreateView2 = createView(R.layout.detail_share_item, viewGroup, view);
        viewCreateView2.findViewById(R.id.share_email).setOnClickListener(this.subviewClickListener);
        viewCreateView2.findViewById(R.id.share_sms).setOnClickListener(this.subviewClickListener);
        viewCreateView2.findViewById(R.id.share_clipboard).setOnClickListener(this.subviewClickListener);
        viewCreateView2.findViewById(R.id.share_others).setOnClickListener(this.subviewClickListener);
        viewCreateView2.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), this.darkTheme ? R.drawable.share_item_border_dark : R.drawable.share_item_border));
        return viewCreateView2;
    }

    @Override // com.narvii.detail.DetailAdapter
    public FeedResponse<T> getResponse() {
        return (FeedResponse) super.getResponse();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    /* JADX WARN: Code duplicated, block: B:20:0x0075  */
    /* JADX WARN: Code duplicated, block: B:44:0x012b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0138  */
    @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        int iIndexOf;
        Intent intent;
        NVContext nVContext;
        if (obj instanceof Media) {
            T object = getObject();
            List<Media> list = object == null ? null : object.mediaList;
            if (list != null && (iIndexOf = list.indexOf(obj)) != -1) {
                if (obj != null) {
                    Media media = (Media) obj;
                    if (!media.isVideo()) {
                        intent = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
                        intent.putExtra("parent", JacksonUtils.writeAsString(object));
                        intent.putExtra("parentClass", Feed.class);
                        intent.putExtra("preview", preview());
                        intent.putExtra("list", JacksonUtils.writeAsString(list));
                        intent.putExtra("position", iIndexOf);
                        nVContext = this.context;
                        if (nVContext instanceof NVFragment) {
                            intent.putExtra("forceUHQ", ((NVFragment) nVContext).getBooleanParam(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT));
                        }
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                    } else if (preview()) {
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, NVFullScreenVideoActivity.intent(media, object));
                    } else {
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, NVFullScreenVideoActivity.intent(media, object, (Class<? extends NVFragment>) OptionMenuFragment.class));
                    }
                } else {
                    intent = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
                    intent.putExtra("parent", JacksonUtils.writeAsString(object));
                    intent.putExtra("parentClass", Feed.class);
                    intent.putExtra("preview", preview());
                    intent.putExtra("list", JacksonUtils.writeAsString(list));
                    intent.putExtra("position", iIndexOf);
                    nVContext = this.context;
                    if (nVContext instanceof NVFragment) {
                        intent.putExtra("forceUHQ", ((NVFragment) nVContext).getBooleanParam(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT));
                    }
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                }
                return true;
            }
        }
        if (obj != SHARE) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
        ShareViewHelper shareViewHelper = new ShareViewHelper(this.context);
        shareViewHelper.source = "Post Detail Share Bar";
        if (view2 != null) {
            if (view2.getId() == R.id.share_email) {
                sendMainLogEvent(ActSemantic.email);
                shareViewHelper.shareFeed(getObject(), new EmailElement(this.context));
            } else if (view2.getId() == R.id.share_sms) {
                sendMainLogEvent(ActSemantic.sendMessage);
                shareViewHelper.shareFeed(getObject(), new MessageElement(this.context));
            } else if (view2.getId() == R.id.share_clipboard) {
                sendMainLogEvent(ActSemantic.copyLink);
                shareViewHelper.copyLink(getObject());
            } else if (view2.getId() == R.id.share_others) {
                if (notJoined()) {
                    final T object2 = getObject();
                    ShareDialog.getShareDialogFromFeed(this.context, object2, notJoined() ? null : new BaseShareButtonRepost(this.context) { // from class: com.narvii.detail.FeedDetailAdapter.5
                        @Override // com.narvii.share.ShareButtonCustomInfo
                        public void onClick(SharePayload sharePayload) {
                            new FeedHelper(((NVAdapter) FeedDetailAdapter.this).context).source("Post Detail Share Bar").repost(object2);
                        }
                    }).setSource("Post Detail Share Bar").show();
                } else {
                    NVContext nVContext2 = this.context;
                    if (nVContext2 instanceof NVFragment) {
                        final NVFragment nVFragment = (NVFragment) nVContext2;
                        PopupMenu popupMenu = new PopupMenu(this.context.getContext(), view2);
                        nVFragment.onCreateOptionsMenu(popupMenu.getMenu(), popupMenu.getMenuInflater());
                        nVFragment.onPrepareOptionsMenu(popupMenu.getMenu());
                        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: com.narvii.detail.FeedDetailAdapter.4
                            @Override // android.widget.PopupMenu.OnMenuItemClickListener
                            public boolean onMenuItemClick(MenuItem menuItem) {
                                LogUtils.optionMenuClickArea = "EngagementArea";
                                return nVFragment.onOptionsItemSelected(menuItem);
                            }
                        });
                        popupMenu.show();
                    } else {
                        final Feed object3 = getObject();
                        ShareDialog.getShareDialogFromFeed(this.context, object3, notJoined() ? null : new BaseShareButtonRepost(this.context) { // from class: com.narvii.detail.FeedDetailAdapter.5
                            @Override // com.narvii.share.ShareButtonCustomInfo
                            public void onClick(SharePayload sharePayload) {
                                new FeedHelper(((NVAdapter) FeedDetailAdapter.this).context).source("Post Detail Share Bar").repost(object3);
                            }
                        }).setSource("Post Detail Share Bar").show();
                    }
                }
            }
        }
        return true;
    }

    @Override // com.narvii.detail.DetailAdapter
    public void setResponse(FeedResponse<? extends T> feedResponse) {
        super.setResponse(feedResponse);
        invalidateOptionsMenu();
    }

    public FeedDetailAdapter(NVContext nVContext) {
        super(nVContext);
        this.accountService = (AccountService) getService("account");
    }

    protected void addDivider(List list) {
        Date date;
        T object = getObject();
        if (object == null) {
            return;
        }
        Date date2 = object.createdTime;
        if (date2 != null && (date = object.modifiedTime) != null && !DateUtils.isSameDay(date2, date)) {
            list.add(new DateDivider(object.modifiedTime, object.id()));
        } else {
            list.add(DetailAdapter.DIVIDER);
        }
    }

    @Override // com.narvii.detail.DetailAdapter
    public View createMediaView(Media media, int i10, View view, ViewGroup viewGroup) {
        View viewCreateMediaView = super.createMediaView(media, i10, view, viewGroup);
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
    protected void getCellTypes(List<DetailAdapter.CellType> list) {
        super.getCellTypes(list);
        list.add(LINKED);
        list.add(SHARE);
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
                    setObject((Feed) ((Feed) obj).m1622clone());
                    notifyDataSetChanged();
                }
            }
        }
        super.onNotification(notification);
    }

    public List<Item> taggedObjects() {
        FeedResponse<T> response = getResponse();
        if (response == null) {
            return null;
        }
        return response.taggedObjects;
    }
}
