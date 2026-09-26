package com.narvii.feed;

import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class FeaturedFeedAdapter extends FeedListAdapter {
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

    private boolean changeLine(int i10) {
        return true;
    }

    private boolean combineContentAndTitle(int i10) {
        return true;
    }

    private int getLayoutId(int i10) {
        if (i10 == FEATURE_TYPE_TOP_IMAGE || i10 == FEATURE_TYPE_MIDDLE_IMAGE || i10 == FEATURE_TYPE_FULLSCREEN_IMAGE) {
            return R.layout.feed_top_item_base;
        }
        if (i10 == FEATURE_TYPE_TOP_TEXT || i10 == FEATURE_TYPE_MIDDLE_TEXT || i10 == FEATURE_TYPE_FULLSCREEN_TEXT) {
            return R.layout.feed_top_item_text_base;
        }
        if (i10 == FEATURE_TYPE_NORMAL_IMAGE) {
            return R.layout.feed_item_base;
        }
        if (i10 == FEATURE_TYPE_TOP_SEPARATE_IMAGE) {
            return R.layout.feed_item_separate_base;
        }
        if (i10 == FEATURE_TYPE_NORMAL_TEXT) {
            return R.layout.feed_item_text_base;
        }
        if (i10 == FEATURE_TYPE_PIN) {
            return R.layout.feed_pin_item;
        }
        return 0;
    }

    private boolean isImageFeed(int i10) {
        return (i10 == FEATURE_TYPE_FULLSCREEN_TEXT || i10 == FEATURE_TYPE_MIDDLE_TEXT || i10 == FEATURE_TYPE_NORMAL_TEXT || i10 == FEATURE_TYPE_TOP_TEXT) ? false : true;
    }

    private boolean isMiddleCell(Feed feed) {
        for (int i10 = 0; i10 < MIDDLE_FEED_COUNT; i10++) {
            int i11 = this.featureStartIndex + i10 + 1;
            if (i11 < getCount() && getItem(i11) == feed) {
                return true;
            }
        }
        return false;
    }

    private boolean isTopFeed(int i10) {
        return (i10 == FEATURE_TYPE_NORMAL_TEXT || i10 == FEATURE_TYPE_NORMAL_IMAGE) ? false : true;
    }

    private boolean showBlogTypeIcon(int i10) {
        return false;
    }

    private boolean showReadMore(int i10) {
        return false;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "FeaturedList";
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return this.displayMode == 4 ? VIEW_TYPE_COUNT_MODE_3 : VIEW_TYPE_COUNT_NORMAL;
    }

    public int getMaxLines(int i10) {
        if (i10 == FEATURE_TYPE_TOP_IMAGE || i10 == FEATURE_TYPE_MIDDLE_IMAGE || i10 == FEATURE_TYPE_FULLSCREEN_IMAGE) {
            return 3;
        }
        if (i10 != FEATURE_TYPE_TOP_TEXT && i10 != FEATURE_TYPE_MIDDLE_TEXT) {
            if (i10 == FEATURE_TYPE_NORMAL_IMAGE) {
                return 3;
            }
            if (i10 != FEATURE_TYPE_TOP_SEPARATE_IMAGE && i10 != FEATURE_TYPE_NORMAL_TEXT) {
                if (i10 == FEATURE_TYPE_PIN) {
                    return 1;
                }
                return i10 == FEATURE_TYPE_FULLSCREEN_TEXT ? 11 : 3;
            }
        }
        return 6;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected boolean ignoreExtension() {
        return true;
    }

    @Override // com.narvii.list.NVPagedAdapter
    public void resetList() {
        this.featureLoadFinished = false;
        super.resetList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends ListResponse<? extends Feed>> responseType() {
        return FeaturedResponse.class;
    }

    public void setDisplayMode(int i10) {
        if (i10 == 0) {
            this.displayMode = this.oldLayout;
        } else {
            this.displayMode = i10;
            this.oldLayout = i10;
        }
    }

    private void configFeatureLayout(PopularFeedListItem popularFeedListItem, int i10, Feed feed) {
        if (popularFeedListItem == null) {
            return;
        }
        float screenWidth = getScreenWidth();
        float f = RATIO_NORMAL * screenWidth;
        if (isTopFeed(i10)) {
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
            popularFeedListItem.setTag(NVListView.OVERSCROLL_STRETCH_TAG, Boolean.TRUE);
        } else {
            popularFeedListItem.setTag(NVListView.OVERSCROLL_STRETCH_TAG, null);
        }
        if (isImageFeed(i10)) {
            NVContext nVContext = this.context;
            if (nVContext instanceof NVListFragment) {
                popularFeedListItem.setBackground(((NVListFragment) nVContext).getListSelector());
            } else {
                popularFeedListItem.setBackground(getContext().getResources().getDrawable(R.drawable.button_rect_transparent));
            }
        } else {
            popularFeedListItem.setBackground(this.feedHelper.getTextOnlyBackground());
        }
        popularFeedListItem.setFeed(this.context, feed, showTitle(i10), showContent(i10), combineContentAndTitle(i10), showReadMore(i10), showBlogTypeIcon(i10), getRelativeSize(i10), changeLine(i10), showDivider(i10, feed), getFontSize(i10), getMaxLines(i10));
        popularFeedListItem.setDarkTheme(isDarkTheme(i10, feed));
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
            viewFindViewById3.setVisibility(isTopFeed(i10) ? 0 : 8);
        }
        View viewFindViewById4 = popularFeedListItem.findViewById(R.id.feed_toolbar_comment_icon);
        if (viewFindViewById4 instanceof ImageView) {
            if (isDarkTheme(i10, feed)) {
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
        int i10 = this.displayMode;
        if (i10 == 4) {
            return RATIO_MODE_3;
        }
        if (i10 != 5 && i10 != 6) {
            return i10 == 3 ? RATIO_MODE_2 : RATIO_DEFAULT;
        }
        int actionBarHeight = this.context instanceof NVFragment ? Utils.getActionBarHeight(getContext()) + Utils.getStatusBarHeight(getContext()) : 0;
        float screenWidth = getScreenWidth();
        int i11 = 0;
        for (int i12 = 0; i12 < list().size() && ((Feed) list().get(i12)).featureType() == 2; i12++) {
            i11++;
        }
        return (((getScreenHeight() - actionBarHeight) - (i11 * TypedValue.applyDimension(1, 26.5f, getContext().getResources().getDisplayMetrics()))) - getFullScreenOffset(i11)) / screenWidth;
    }

    private float getScreenHeight() {
        NVContext nVContext = this.context;
        if (!(nVContext instanceof NVFragment)) {
            return TypedValue.applyDimension(1, 1024.0f, getContext().getResources().getDisplayMetrics());
        }
        Display defaultDisplay = ((NVFragment) nVContext).requireActivity().getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.y;
    }

    private float getScreenWidth() {
        NVContext nVContext = this.context;
        if (!(nVContext instanceof NVFragment)) {
            return TypedValue.applyDimension(1, 800.0f, getContext().getResources().getDisplayMetrics());
        }
        Display defaultDisplay = ((NVFragment) nVContext).requireActivity().getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.x;
    }

    private boolean showAllContent(int i10) {
        int i11 = this.displayMode;
        return ((i11 == 2 || i11 == 6) && isImageFeed(i10) && isTopFeed(i10)) ? false : true;
    }

    private boolean showDivider(int i10, Feed feed) {
        return this.displayMode == 4 && !isLastMiddleCell(feed);
    }

    private boolean showTitle(int i10) {
        int i11 = this.displayMode;
        return ((i11 == 2 || i11 == 6) && isImageFeed(i10) && isTopFeed(i10)) ? false : true;
    }

    public int getFontSize(int i10) {
        if (i10 == FEATURE_TYPE_MIDDLE_TEXT || i10 == FEATURE_TYPE_NORMAL_TEXT) {
            return getContext().getResources().getDimensionPixelSize(R.dimen.feature_middle_feed_title_size);
        }
        if (i10 == FEATURE_TYPE_MIDDLE_IMAGE) {
            return getContext().getResources().getDimensionPixelSize(R.dimen.feature_top_feed_title_size_large);
        }
        return isTopFeed(i10) ? getContext().getResources().getDimensionPixelSize(R.dimen.feature_top_feed_title_size) : getContext().getResources().getDimensionPixelSize(R.dimen.feature_normal_feed_title_size);
    }

    public int getFullScreenOffset(int i10) {
        int i11 = this.displayMode;
        if ((i11 == 5 || i11 == 6) && i10 != 0) {
            return getContext().getResources().getDimensionPixelSize(R.dimen.new_feed_fit_top_height);
        }
        return 0;
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
        boolean z6 = feed2.firstMedia() != null;
        if (feed2 != getItem(this.featureStartIndex)) {
            if (isMiddleCell(feed2) && this.displayMode == 4) {
                return z6 ? FEATURE_TYPE_MIDDLE_IMAGE : FEATURE_TYPE_MIDDLE_TEXT;
            }
            return z6 ? FEATURE_TYPE_NORMAL_IMAGE : FEATURE_TYPE_NORMAL_TEXT;
        }
        int i10 = this.displayMode;
        if (i10 == 3) {
            return z6 ? FEATURE_TYPE_TOP_SEPARATE_IMAGE : FEATURE_TYPE_TOP_TEXT;
        }
        if (i10 == 4) {
            return z6 ? FEATURE_TYPE_MIDDLE_IMAGE : FEATURE_TYPE_MIDDLE_TEXT;
        }
        if (i10 == 5 || i10 == 6) {
            return z6 ? FEATURE_TYPE_FULLSCREEN_IMAGE : FEATURE_TYPE_FULLSCREEN_TEXT;
        }
        return z6 ? FEATURE_TYPE_TOP_IMAGE : FEATURE_TYPE_TOP_TEXT;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
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
            viewCreateView.setTag(R.id._feed_pin, Boolean.TRUE);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
            View viewFindViewById = viewCreateView.findViewById(R.id.divider);
            if (textView != null) {
                if (!TextUtils.isEmpty(feed2.title())) {
                    textView.setText(feed2 instanceof Blog ? ((Blog) feed2).getShowTitle() : feed2.title());
                } else if ((feed2 instanceof Blog) && ((Blog) feed2).type == 7) {
                    textView.setText(getContext().getString(R.string.post_type_image_post));
                } else {
                    textView.setText(getContext().getString(R.string.untitle_post));
                }
            }
            if (viewFindViewById != null) {
                viewFindViewById.setBackgroundColor(this.configService.getTheme().colorPrimary());
                viewFindViewById.setAlpha(0.75f);
            }
            viewCreateView.setBackground(this.feedHelper.getTextOnlyBackground());
        } else {
            PopularFeedListItem popularFeedListItem = (PopularFeedListItem) viewCreateView.findViewById(R.id.feed_item_base);
            if (popularFeedListItem != null) {
                NVVideoListDelegate.markVideoCell((View) popularFeedListItem, R.id.image, !feed2.isContentAccessible() ? new ArrayList<>() : feed2.getPreviewVideoList(false), (Media) null, (NVObject) feed2, 1, false);
                configFeatureLayout(popularFeedListItem, itemType, feed2);
            }
        }
        return viewCreateView;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification.action.equals("update") || (notification.objectType == 3 && notification.action.equals("new"))) {
            super.onNotification(notification);
        }
    }

    public FeaturedFeedAdapter(NVContext nVContext, int i10) {
        super(nVContext);
        this.oldLayout = 1;
        this.feedHelper = new FeedHelper(nVContext);
        this.configService = (ConfigService) getService("config");
        this.accountService = (AccountService) getService("account");
        if (i10 == 0) {
            this.displayMode = this.oldLayout;
        } else {
            this.displayMode = i10;
            this.oldLayout = i10;
        }
    }

    private float getRelativeSize(int i10) {
        if (isImageFeed(i10) && isTopFeed(i10)) {
            return 0.7f;
        }
        if (!isImageFeed(i10)) {
            return 0.76f;
        }
        return 1.0f;
    }

    private boolean isDarkTheme(int i10, Feed feed) {
        if (feed.firstMedia() == null || i10 == FEATURE_TYPE_FULLSCREEN_IMAGE || i10 == FEATURE_TYPE_MIDDLE_IMAGE || i10 == FEATURE_TYPE_TOP_IMAGE) {
            return true;
        }
        return false;
    }

    private boolean isLastMiddleCell(Feed feed) {
        int count = getCount();
        int i10 = this.featureStartIndex;
        int i11 = MIDDLE_FEED_COUNT;
        if (count > i10 + i11) {
            if (getItem(i10 + i11) == feed) {
                return true;
            }
            return false;
        }
        if (feed == getItem(getCount() - 1)) {
            return true;
        }
        return false;
    }

    private boolean showContent(int i10) {
        if (isImageFeed(i10) && isTopFeed(i10)) {
            return false;
        }
        return true;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z6) {
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/feed/featured");
        builderPath.tag(Boolean.valueOf(z6));
        return builderPath.build();
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public String errorMessage() {
        if (isEmpty()) {
            return super.errorMessage();
        }
        return null;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<Feed> filterResponseList(List<Feed> list, int i10) {
        List<Feed> listFilterResponseList = super.filterResponseList(list, i10);
        if (this.firstRequest) {
            boolean z6 = false;
            for (int i11 = 0; i11 < listFilterResponseList.size(); i11++) {
                if (listFilterResponseList.get(i11).featureType() != 2) {
                    this.featureStartIndex = i11;
                    if (i11 != 0 || listFilterResponseList.get(0).featureType() == 2) {
                        z6 = true;
                    }
                    this.containPinFeed = z6;
                    break;
                }
            }
        }
        return listFilterResponseList;
    }

    public int getPinCount() {
        if (list() == null) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < list().size() && ((Feed) list().get(i11)).featureType() == 2; i11++) {
            i10++;
        }
        return i10;
    }

    public int getTopCellCount() {
        if (list() == null) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < list().size() && ((Feed) list().get(i11)).featureType() == 2; i11++) {
            i10++;
        }
        if (this.displayMode == 4) {
            if (list().size() - i10 > 3) {
                return 3;
            }
            return list().size() - i10;
        }
        if (list().size() - i10 <= 0) {
            return 0;
        }
        return 1;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onErrorRetry() {
        resetList();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i10) {
        super.onFailResponse(apiRequest, str, apiResponse, i10);
        this.firstRequest = apiRequest.tag().equals(Boolean.TRUE);
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    protected void onPageResponse(ApiRequest apiRequest, ListResponse<? extends Feed> listResponse, int i10) {
        boolean z6;
        this.firstRequest = apiRequest.tag().equals(Boolean.TRUE);
        super.onPageResponse(apiRequest, listResponse, i10);
        if (listResponse.list().size() < pageSize()) {
            z6 = true;
        } else {
            z6 = false;
        }
        this._isEnd = z6;
        this.featureLoadFinished |= isEnd();
        notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        return super.onSaveInstanceState();
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected Intent openFeedDetailIntent(Feed feed, int i10) {
        boolean z6;
        Intent intentOpenFeedDetailIntent = super.openFeedDetailIntent(feed, i10);
        if (getItemType(feed) == FEATURE_TYPE_PIN) {
            z6 = true;
        } else {
            z6 = false;
        }
        intentOpenFeedDetailIntent.putExtra("pinned", z6);
        return intentOpenFeedDetailIntent;
    }
}
