package com.narvii.feed;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.list.NVListFragment;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes2.dex */
public class FeaturedFeedAdapter extends FeedListAdapter implements NotificationListener {
    public static final int DISPLAY_MODE_0 = 1;
    public static final int DISPLAY_MODE_1 = 2;
    public static final int DISPLAY_MODE_2 = 3;
    public static final int DISPLAY_MODE_3 = 4;
    public static final int DISPLAY_MODE_4 = 5;
    public static final int DISPLAY_MODE_5 = 6;
    private static int FEATURE_TYPE_FULLSCREEN_IMAGE = 8;
    private static int FEATURE_TYPE_FULLSCREEN_TEXT = 9;
    private static int FEATURE_TYPE_MIDDLE_IMAGE = 5;
    private static int FEATURE_TYPE_MIDDLE_TEXT = 6;
    private static int FEATURE_TYPE_NORMAL_IMAGE = 2;
    private static int FEATURE_TYPE_NORMAL_TEXT = 3;
    private static int FEATURE_TYPE_PIN = 4;
    private static int FEATURE_TYPE_TOP_IMAGE = 0;
    private static int FEATURE_TYPE_TOP_SEPARATE_IMAGE = 10;
    private static int FEATURE_TYPE_TOP_TEXT = 1;
    private static int MIDDLE_FEED_COUNT = 2;
    private static float RATIO_DEFAULT = 0.97f;
    private static float RATIO_MODE_2 = 1.26f;
    private static float RATIO_MODE_3 = 0.51f;
    private static float RATIO_NORMAL = 0.65f;
    private static int VIEW_TYPE_COUNT_MODE_3 = 11;
    private static int VIEW_TYPE_COUNT_NORMAL = 11;
    AccountService accountService;
    ConfigService configService;
    public boolean containPinFeed;
    protected int displayMode;
    public boolean featureLoadFinished;
    public int featureStartIndex;
    FeedHelper feedHelper;
    protected boolean firstRequest;
    private int oldLayout;

    private boolean changeLine(int i) {
        return true;
    }

    private boolean combineContentAndTitle(int i) {
        return true;
    }

    private boolean showBlogTypeIcon(int i) {
        return false;
    }

    private boolean showReadMore(int i) {
        return false;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "FeaturedList";
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected boolean ignoreExtension() {
        return true;
    }

    public FeaturedFeedAdapter(NVContext nVContext, int i) {
        super(nVContext);
        this.oldLayout = 1;
        this.feedHelper = new FeedHelper(nVContext);
        this.configService = (ConfigService) getService("config");
        this.accountService = (AccountService) getService("account");
        if (i == 0) {
            this.displayMode = this.oldLayout;
        } else {
            this.displayMode = i;
            this.oldLayout = i;
        }
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected Intent openFeedDetailIntent(Feed feed, int i) {
        Intent intentOpenFeedDetailIntent = super.openFeedDetailIntent(feed, i);
        intentOpenFeedDetailIntent.putExtra("pinned", getItemType(feed) == FEATURE_TYPE_PIN);
        return intentOpenFeedDetailIntent;
    }

    public void setDisplayMode(int i) {
        if (i == 0) {
            this.displayMode = this.oldLayout;
        } else {
            this.displayMode = i;
            this.oldLayout = i;
        }
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        return super.onSaveInstanceState();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends ListResponse<? extends Feed>> responseType() {
        return FeaturedResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/feed/featured");
        builderPath.tag(Boolean.valueOf(z));
        return builderPath.build();
    }

    @Override // com.narvii.list.NVPagedAdapter
    public void resetList() {
        this.featureLoadFinished = false;
        super.resetList();
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onErrorRetry() {
        resetList();
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public String errorMessage() {
        if (isEmpty()) {
            return super.errorMessage();
        }
        return null;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification.action.equals("update") || (notification.objectType == 3 && notification.action.equals("new"))) {
            super.onNotification(notification);
        }
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        Feed feed;
        Feed feed2 = (Feed) obj;
        if (feed2.featureType() == 2) {
            return FEATURE_TYPE_PIN;
        }
        if ((feed2 instanceof Blog) && (feed = ((Blog) feed2).refObject) != null) {
            feed2 = feed;
        }
        boolean z = feed2.firstMedia() != null;
        if (feed2 != getItem(this.featureStartIndex)) {
            return (isMiddleCell(feed2) && this.displayMode == 4) ? z ? FEATURE_TYPE_MIDDLE_IMAGE : FEATURE_TYPE_MIDDLE_TEXT : z ? FEATURE_TYPE_NORMAL_IMAGE : FEATURE_TYPE_NORMAL_TEXT;
        }
        int i = this.displayMode;
        return i == 3 ? z ? FEATURE_TYPE_TOP_SEPARATE_IMAGE : FEATURE_TYPE_TOP_TEXT : i == 4 ? z ? FEATURE_TYPE_MIDDLE_IMAGE : FEATURE_TYPE_MIDDLE_TEXT : (i == 5 || i == 6) ? z ? FEATURE_TYPE_FULLSCREEN_IMAGE : FEATURE_TYPE_FULLSCREEN_TEXT : z ? FEATURE_TYPE_TOP_IMAGE : FEATURE_TYPE_TOP_TEXT;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
        int itemType;
        int layoutId;
        Feed feed;
        if (!(obj instanceof Feed) || (layoutId = getLayoutId((itemType = getItemType(obj)))) == 0) {
            return null;
        }
        View viewCreateView = createView(layoutId, viewGroup, view, Integer.valueOf(itemType));
        Feed feed2 = (Feed) obj;
        if ((feed2 instanceof Blog) && (feed = ((Blog) feed2).refObject) != null) {
            feed2 = feed;
        }
        if (itemType == FEATURE_TYPE_PIN) {
            viewCreateView.setTag(R.id._feed_pin, true);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
            View viewFindViewById = viewCreateView.findViewById(R.id.divider);
            if (textView != null) {
                if (TextUtils.isEmpty(feed2.title())) {
                    if ((feed2 instanceof Blog) && ((Blog) feed2).type == 7) {
                        textView.setText(getContext().getString(R.string.post_type_image_post));
                    } else {
                        textView.setText(getContext().getString(R.string.untitle_post));
                    }
                } else {
                    textView.setText(feed2 instanceof Blog ? ((Blog) feed2).getShowTitle() : feed2.title());
                }
            }
            if (viewFindViewById != null) {
                viewFindViewById.setBackgroundColor(this.configService.getTheme().colorPrimary());
                viewFindViewById.setAlpha(0.75f);
            }
            if (Build.VERSION.SDK_INT >= 16) {
                viewCreateView.setBackground(this.feedHelper.getTextOnlyBackground());
            } else {
                viewCreateView.setBackgroundDrawable(this.feedHelper.getTextOnlyBackground());
            }
        } else {
            PopularFeedListItem popularFeedListItem = (PopularFeedListItem) viewCreateView.findViewById(R.id.feed_item_base);
            if (popularFeedListItem != null) {
                NVVideoListDelegate.markVideoCell((View) popularFeedListItem, R.id.image, !feed2.isContentAccessible() ? new ArrayList<>() : feed2.getPreviewVideoList(false), (Media) null, (NVObject) feed2, 1, false);
                configFeatureLayout(popularFeedListItem, itemType, feed2);
            }
        }
        return viewCreateView;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        if (this.displayMode == 4) {
            return VIEW_TYPE_COUNT_MODE_3;
        }
        return VIEW_TYPE_COUNT_NORMAL;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    protected void onPageResponse(ApiRequest apiRequest, ListResponse<? extends Feed> listResponse, int i) {
        this.firstRequest = apiRequest.tag().equals(true);
        super.onPageResponse(apiRequest, listResponse, i);
        this._isEnd = listResponse.list().size() < pageSize();
        this.featureLoadFinished |= isEnd();
        notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
        super.onFailResponse(apiRequest, str, apiResponse, i);
        this.firstRequest = apiRequest.tag().equals(true);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<Feed> filterResponseList(List<Feed> list, int i) {
        List<Feed> listFilterResponseList = super.filterResponseList(list, i);
        if (this.firstRequest) {
            int i2 = 0;
            while (true) {
                if (i2 >= listFilterResponseList.size()) {
                    break;
                }
                if (listFilterResponseList.get(i2).featureType() != 2) {
                    this.featureStartIndex = i2;
                    this.containPinFeed = this.featureStartIndex != 0 || listFilterResponseList.get(0).featureType() == 2;
                } else {
                    i2++;
                }
            }
        }
        return listFilterResponseList;
    }

    private boolean isMiddleCell(Feed feed) {
        for (int i = 0; i < MIDDLE_FEED_COUNT; i++) {
            int i2 = this.featureStartIndex + i + 1;
            if (i2 < getCount() && getItem(i2) == feed) {
                return true;
            }
        }
        return false;
    }

    private boolean isLastMiddleCell(Feed feed) {
        int count = getCount();
        int i = this.featureStartIndex;
        int i2 = MIDDLE_FEED_COUNT;
        return count > i + i2 ? getItem(i + i2) == feed : feed == getItem(getCount() - 1);
    }

    private int getLayoutId(int i) {
        if (i == FEATURE_TYPE_TOP_IMAGE || i == FEATURE_TYPE_MIDDLE_IMAGE || i == FEATURE_TYPE_FULLSCREEN_IMAGE) {
            return R.layout.feed_top_item_base;
        }
        if (i == FEATURE_TYPE_TOP_TEXT || i == FEATURE_TYPE_MIDDLE_TEXT || i == FEATURE_TYPE_FULLSCREEN_TEXT) {
            return R.layout.feed_top_item_text_base;
        }
        if (i == FEATURE_TYPE_NORMAL_IMAGE) {
            return R.layout.feed_item_base;
        }
        if (i == FEATURE_TYPE_TOP_SEPARATE_IMAGE) {
            return R.layout.feed_item_separate_base;
        }
        if (i == FEATURE_TYPE_NORMAL_TEXT) {
            return R.layout.feed_item_text_base;
        }
        if (i == FEATURE_TYPE_PIN) {
            return R.layout.feed_pin_item;
        }
        return 0;
    }

    private void configFeatureLayout(PopularFeedListItem popularFeedListItem, int i, Feed feed) throws Resources.NotFoundException {
        if (popularFeedListItem == null) {
            return;
        }
        float screenWidth = getScreenWidth();
        float f = RATIO_NORMAL * screenWidth;
        if (isTopFeed(i)) {
            float ratio = getRatio() * screenWidth;
            if (screenWidth < 0.0f || ratio < 0.0f) {
                screenWidth = getScreenWidth();
                ratio = RATIO_NORMAL * screenWidth;
            }
            popularFeedListItem.setLayoutParams(new AbsListView.LayoutParams((int) screenWidth, (int) ratio));
        } else {
            popularFeedListItem.setLayoutParams(new AbsListView.LayoutParams(-1, (int) f));
        }
        if (getPinCount() == 0 && list().get(0) == feed) {
            popularFeedListItem.setTag(NVListView.OVERSCROLL_STRETCH_TAG, true);
        } else {
            popularFeedListItem.setTag(NVListView.OVERSCROLL_STRETCH_TAG, null);
        }
        if (!isImageFeed(i)) {
            if (Build.VERSION.SDK_INT >= 16) {
                popularFeedListItem.setBackground(this.feedHelper.getTextOnlyBackground());
            } else {
                popularFeedListItem.setBackgroundDrawable(this.feedHelper.getTextOnlyBackground());
            }
        } else {
            NVContext nVContext = this.context;
            if (nVContext instanceof NVListFragment) {
                if (Build.VERSION.SDK_INT >= 16) {
                    popularFeedListItem.setBackground(((NVListFragment) nVContext).getListSelector());
                } else {
                    popularFeedListItem.setBackgroundDrawable(((NVListFragment) nVContext).getListSelector());
                }
            } else if (Build.VERSION.SDK_INT >= 16) {
                popularFeedListItem.setBackground(getContext().getResources().getDrawable(R.drawable.button_rect_transparent));
            } else {
                popularFeedListItem.setBackgroundDrawable(getContext().getResources().getDrawable(R.drawable.button_rect_transparent));
            }
        }
        popularFeedListItem.setFeed(this.context, feed, showTitle(i), showContent(i), combineContentAndTitle(i), showReadMore(i), showBlogTypeIcon(i), getRelativeSize(i), changeLine(i), showDivider(i, feed), getFontSize(i), getMaxLines(i));
        popularFeedListItem.setDarkTheme(isDarkTheme(i, feed));
        HashSet<String> hashSet = this.progressList;
        popularFeedListItem.setProgress(hashSet != null && hashSet.contains(feed.id()));
        View viewFindViewById = popularFeedListItem.findViewById(R.id.feed_toolbar_vote);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this.subviewClickListener);
            viewFindViewById.setOnLongClickListener(this.subviewLongClickListener);
        }
        View viewFindViewById2 = popularFeedListItem.findViewById(R.id.feed_toolbar_comment);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(this.subviewClickListener);
        }
        View viewFindViewById3 = popularFeedListItem.findViewById(R.id.feed_toolbar_share);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(this.subviewClickListener);
            viewFindViewById3.setVisibility(isTopFeed(i) ? 0 : 8);
        }
        View viewFindViewById4 = popularFeedListItem.findViewById(R.id.feed_toolbar_comment_icon);
        if (viewFindViewById4 instanceof ImageView) {
            if (isDarkTheme(i, feed)) {
                ((ImageView) viewFindViewById4).setImageDrawable(getContext().getResources().getDrawable(R.drawable.ic_comment_white));
            } else {
                ((ImageView) viewFindViewById4).setImageDrawable(getContext().getResources().getDrawable(R.drawable.ic_comment));
            }
        }
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) popularFeedListItem.findViewById(R.id.user_avatar_layout);
        if (userAvatarLayout != null) {
            userAvatarLayout.setUsedForWiki(feed instanceof Item);
            userAvatarLayout.setUser(feed.author);
        }
    }

    private float getRatio() {
        int i = this.displayMode;
        if (i == 4) {
            return RATIO_MODE_3;
        }
        if (i != 5 && i != 6) {
            if (i == 3) {
                return RATIO_MODE_2;
            }
            return RATIO_DEFAULT;
        }
        int actionBarHeight = this.context instanceof NVFragment ? Utils.getActionBarHeight(getContext()) + Utils.getStatusBarHeight(getContext()) : 0;
        float screenWidth = getScreenWidth();
        int i2 = 0;
        for (int i3 = 0; i3 < list().size() && ((Feed) list().get(i3)).featureType() == 2; i3++) {
            i2++;
        }
        return (((getScreenHeight() - actionBarHeight) - (i2 * TypedValue.applyDimension(1, 26.5f, getContext().getResources().getDisplayMetrics()))) - getFullScreenOffset(i2)) / screenWidth;
    }

    private boolean isDarkTheme(int i, Feed feed) {
        return feed.firstMedia() == null || i == FEATURE_TYPE_FULLSCREEN_IMAGE || i == FEATURE_TYPE_MIDDLE_IMAGE || i == FEATURE_TYPE_TOP_IMAGE;
    }

    private boolean isImageFeed(int i) {
        return (i == FEATURE_TYPE_FULLSCREEN_TEXT || i == FEATURE_TYPE_MIDDLE_TEXT || i == FEATURE_TYPE_NORMAL_TEXT || i == FEATURE_TYPE_TOP_TEXT) ? false : true;
    }

    private boolean isTopFeed(int i) {
        return (i == FEATURE_TYPE_NORMAL_TEXT || i == FEATURE_TYPE_NORMAL_IMAGE) ? false : true;
    }

    private boolean showAllContent(int i) {
        int i2 = this.displayMode;
        return ((i2 == 2 || i2 == 6) && isImageFeed(i) && isTopFeed(i)) ? false : true;
    }

    private boolean showTitle(int i) {
        int i2 = this.displayMode;
        return ((i2 == 2 || i2 == 6) && isImageFeed(i) && isTopFeed(i)) ? false : true;
    }

    private boolean showContent(int i) {
        return (isImageFeed(i) && isTopFeed(i)) ? false : true;
    }

    private float getRelativeSize(int i) {
        if (isImageFeed(i) && isTopFeed(i)) {
            return 0.7f;
        }
        return !isImageFeed(i) ? 0.76f : 1.0f;
    }

    private float getScreenWidth() {
        NVContext nVContext = this.context;
        if (nVContext instanceof NVFragment) {
            ((NVFragment) nVContext).getActivity().getWindowManager().getDefaultDisplay().getSize(new Point());
            return r1.x;
        }
        return TypedValue.applyDimension(1, 800.0f, getContext().getResources().getDisplayMetrics());
    }

    private float getScreenHeight() {
        NVContext nVContext = this.context;
        if (nVContext instanceof NVFragment) {
            ((NVFragment) nVContext).getActivity().getWindowManager().getDefaultDisplay().getSize(new Point());
            return r1.y;
        }
        return TypedValue.applyDimension(1, 1024.0f, getContext().getResources().getDisplayMetrics());
    }

    public int getTopCellCount() {
        if (list() == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < list().size() && ((Feed) list().get(i2)).featureType() == 2; i2++) {
            i++;
        }
        if (this.displayMode != 4) {
            return list().size() - i > 0 ? 1 : 0;
        }
        if (list().size() - i > 3) {
            return 3;
        }
        return list().size() - i;
    }

    public int getPinCount() {
        if (list() == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < list().size() && ((Feed) list().get(i2)).featureType() == 2; i2++) {
            i++;
        }
        return i;
    }

    public int getFullScreenOffset(int i) {
        int i2 = this.displayMode;
        if ((i2 == 5 || i2 == 6) && i != 0) {
            return getContext().getResources().getDimensionPixelSize(R.dimen.new_feed_fit_top_height);
        }
        return 0;
    }

    private boolean showDivider(int i, Feed feed) {
        return this.displayMode == 4 && !isLastMiddleCell(feed);
    }

    public int getFontSize(int i) {
        if (i == FEATURE_TYPE_MIDDLE_TEXT || i == FEATURE_TYPE_NORMAL_TEXT) {
            return getContext().getResources().getDimensionPixelSize(R.dimen.feature_middle_feed_title_size);
        }
        if (i == FEATURE_TYPE_MIDDLE_IMAGE) {
            return getContext().getResources().getDimensionPixelSize(R.dimen.feature_top_feed_title_size_large);
        }
        if (isTopFeed(i)) {
            return getContext().getResources().getDimensionPixelSize(R.dimen.feature_top_feed_title_size);
        }
        return getContext().getResources().getDimensionPixelSize(R.dimen.feature_normal_feed_title_size);
    }

    public int getMaxLines(int i) {
        if (i != FEATURE_TYPE_TOP_IMAGE && i != FEATURE_TYPE_MIDDLE_IMAGE && i != FEATURE_TYPE_FULLSCREEN_IMAGE) {
            if (i == FEATURE_TYPE_TOP_TEXT || i == FEATURE_TYPE_MIDDLE_TEXT) {
                return 6;
            }
            if (i != FEATURE_TYPE_NORMAL_IMAGE) {
                if (i == FEATURE_TYPE_TOP_SEPARATE_IMAGE || i == FEATURE_TYPE_NORMAL_TEXT) {
                    return 6;
                }
                if (i == FEATURE_TYPE_PIN) {
                    return 1;
                }
                if (i == FEATURE_TYPE_FULLSCREEN_TEXT) {
                    return 11;
                }
            }
        }
        return 3;
    }
}
