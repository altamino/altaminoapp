package com.narvii.headlines.feed;

import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.collection.ArrayMap;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.ForwardActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityHelper;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.CommunityLaunchHelperWithIcon;
import com.narvii.community.JoinCommunityDialog;
import com.narvii.community.widget.CommunitySummaryInfoLayout;
import com.narvii.feed.BaseFeedListAdapter;
import com.narvii.feed.FeedListItem;
import com.narvii.feed.FeedToolbarLayout;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.headlines.Headline;
import com.narvii.headlines.HeadlineFeatureLabel;
import com.narvii.headlines.HeadlineLaunchHelper;
import com.narvii.headlines.HeadlineListResponse;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.MasterHelper;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.CommunityMemberSummary;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.model.Feed;
import com.narvii.model.HeadlineStyle;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.Pagination;
import com.narvii.monetization.store.SuggestUpdateDialog;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.poll.PollOptionListLayout;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingService;
import com.narvii.widget.NVImageView;
import com.narvii.youtube.YoutubeLoggingStub;
import com.narvii.youtube.YoutubeService;
import com.safedk.android.utils.Logger;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class HeadLinesListAdapter extends BaseFeedListAdapter<Feed, HeadlineListResponse> {
    private static final int IMAGE_THRESHOLD = 2;
    private static final int PRE_LOAD_MIDDLE_THRESHOLD = 10;
    public static final int TYPE_DEFAULT = 0;
    public static final int TYPE_LARGE_IAMGE = 2;
    public static final int TYPE_LARGE_IMAGE_VIDEO = 8;
    public static final int TYPE_LAST_READ_POINT = 7;
    public static final int TYPE_MULTI_IAMGES = 3;
    public static final int TYPE_NO_IAMGE = 4;
    public static final int TYPE_POLL = 6;
    public static final int TYPE_QUIZ = 5;
    public static final int TYPE_SMALL_IMAGE_VIDEO = 9;
    public static final int TYPE_SMLALL_IAMGE = 1;
    public static final int TYPE_UNKNOWN_TYPE = 10;
    protected final Tag REQ_TAG_QUERY_START_TIME;
    private AccountService accountService;
    private AffiliationsService affiliationsService;
    HashMap<Integer, String> communityTimestamps;
    ConnectivityManager connectivityManager;
    private int curLastPointFeedPosition;
    private User curUser;
    public String currentHsid;
    HashMap<Integer, Community> feedRelatedCommunityList;
    public HashMap<String, Integer> fixedFeatureMode;
    private boolean isMiddlePageRequesting;
    List<Feed> l;
    private final Blog lastPointFeed;
    private String lastReadFeedId;
    private HeadlineLaunchHelper launchHelper;
    LoggingService logging;
    private String middlePageToken;
    HashMap<Integer, User> userProgfileMapping;
    YoutubeService youtubeService;

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    protected String channelId() {
        return null;
    }

    protected void completeLogBuilder(@NotNull LogEvent.Builder builder, ObjectInfo objectInfo) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<Feed> dataType() {
        return Feed.class;
    }

    protected boolean enterCommunityDirectly() {
        return false;
    }

    public int getLayout(int i10) {
        if (i10 == 5) {
            return R.layout.item_feed_headline_quiz;
        }
        if (i10 == 6) {
            return R.layout.item_feed_headline_poll;
        }
        if (i10 != 4) {
            if (i10 == 1) {
                return R.layout.item_feed_headline_less_image;
            }
            if (i10 == 2) {
                return R.layout.item_feed_headline_promoted;
            }
            if (i10 == 9) {
                return R.layout.item_feed_headline_normal_video;
            }
            if (i10 == 8) {
                return R.layout.item_feed_headline_promoted_video;
            }
            if (i10 == 7) {
                return R.layout.item_feed_headline_last_read_point;
            }
            if (i10 == 3) {
                return R.layout.item_feed_headline_normal;
            }
            if (i10 == 10) {
                return R.layout.item_feed_headline_unknown;
            }
        }
        return R.layout.item_feed_headline_normal_no_image;
    }

    protected String getStoredLastTimeFeedId() {
        return null;
    }

    protected boolean hideCaption() {
        return true;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected boolean ignoreExtension() {
        return true;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.app.NVInteractionScope
    public boolean isGlobalInteractionScope() {
        return true;
    }

    protected boolean isHeadline() {
        return true;
    }

    protected String lastTimeReadFeedId() {
        return this.lastReadFeedId;
    }

    @Override // com.narvii.list.NVPagedAdapter
    public List<?> list() {
        return this.l;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i10) {
        if (i10 == 3) {
            this.isMiddlePageRequesting = false;
        }
        super.onFailResponse(apiRequest, str, apiResponse, i10);
    }

    protected void onLastReadPointClicked() {
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    protected int pageSize() {
        return 20;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends HeadlineListResponse> responseType() {
        return HeadlineListResponse.class;
    }

    public void setFeedRelatedCommunityList(@Nullable HashMap<Integer, Community> map) {
        this.feedRelatedCommunityList = map;
    }

    public void setUserProgfileMapping(@Nullable HashMap<Integer, User> map) {
        this.userProgfileMapping = map;
    }

    protected boolean showLastReadTimePoint() {
        return false;
    }

    protected boolean showPromote() {
        return true;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected boolean showRepostOnShare() {
        return false;
    }

    protected boolean showSortedImage() {
        return true;
    }

    protected boolean showUserHeader() {
        return false;
    }

    protected void storeLastTimeReadFeedId() {
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected boolean useDefaultImpressionCollector() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoCommunityDetail(Community community, String str) {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", community.id);
        intent.putExtra("icon", community.icon);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        intent.putExtra("eventOrigin", LoggingOrigin.Headlines.toString());
        intent.putExtra("loggingObjectId", str);
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
    }

    private void handleOtherCommunityFeed(Feed feed, Community community) {
        PackageUtils packageUtils = new PackageUtils(getContext());
        if (!packageUtils.isMasterInstalled()) {
            new MasterHelper(this).showDownloadMaterDialog(community == null ? null : community.link);
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(feed.getDeepLink(packageUtils.getMasterScheme())));
            intent.setPackage(packageUtils.getMasterPackageName());
            intent.putExtra(ForwardActivity.CLEAR_TASK, true);
            intent.putExtra("customFinishAnimIn", 0);
            intent.putExtra("customFinishAnimOut", 0);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
    }

    private boolean isJoinedThisCommunity(int i10) {
        if (!this.accountService.hasAccount()) {
            return false;
        }
        if (!TextUtils.isEmpty(this.affiliationsService.getTimeStamp())) {
            return this.affiliationsService.contains(i10);
        }
        HashMap<Integer, User> map = this.userProgfileMapping;
        if (map != null) {
            return map.containsKey(Integer.valueOf(i10));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public JsonDeserializer<Feed> dataDeserializer() {
        return new Feed.FeedDeserializer();
    }

    protected Community getCommunityInfo(int i10) {
        HashMap<Integer, Community> map = this.feedRelatedCommunityList;
        if (map == null) {
            return null;
        }
        return map.get(Integer.valueOf(i10));
    }

    protected String getCommunityTimestamp(int i10) {
        HashMap<Integer, String> map = this.communityTimestamps;
        if (map == null) {
            return null;
        }
        return map.get(Integer.valueOf(i10));
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0042  */
    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    public int getItemType(Object obj) {
        boolean z6;
        Feed feed = (Feed) obj;
        if (feed.isiModeDisableForUser(this.curUser)) {
            return -1;
        }
        if (feed == this.lastPointFeed) {
            return 7;
        }
        HeadlineStyle headlineStyle = feed.getHeadlineStyle();
        List<Media> sortedMediaList = feed.getSortedMediaList();
        List<Media> previewVideoList = feed.getPreviewVideoList(true);
        int size = sortedMediaList == null ? 0 : sortedMediaList.size();
        int size2 = previewVideoList == null ? 0 : previewVideoList.size();
        boolean z10 = feed instanceof Blog;
        if (z10) {
            Blog blog = (Blog) feed;
            if (blog.type != 4 || blog.polloptList == null) {
                z6 = false;
            } else {
                z6 = true;
            }
        } else {
            z6 = false;
        }
        boolean z11 = z10 && ((Blog) feed).type == 6;
        boolean zIsEmpty = TextUtils.isEmpty(feed.title());
        if (z6) {
            return 6;
        }
        if (z11) {
            return 5;
        }
        if (headlineStyle != null && headlineStyle.layout == 1 && size > 0) {
            return 1;
        }
        if (headlineStyle != null && headlineStyle.layout == 2 && size > 0) {
            if (size2 > 0) {
                if (previewVideoList.get(0).type == 103) {
                    return 9;
                }
                if (previewVideoList.get(0).isVideo()) {
                    return 8;
                }
            }
            return 2;
        }
        if (headlineStyle != null && headlineStyle.layout == 3 && size > 0) {
            return 3;
        }
        if (headlineStyle != null && headlineStyle.layout == 4) {
            return 4;
        }
        if (feed.isPromoted()) {
            return 2;
        }
        if (z10 && !((Blog) feed).isknownType()) {
            return 10;
        }
        if (feed.coverMedia() != null) {
            return 2;
        }
        if (size == 0) {
            return 4;
        }
        if (size > 2 || zIsEmpty) {
            return size > 2 ? 3 : 0;
        }
        return 1;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    public View getItemView(Object obj, View view, ViewGroup viewGroup) {
        float f;
        int iDpToPx;
        int i10;
        Media media;
        View viewFindViewById;
        CommunityMemberSummary communityMemberSummary;
        final Feed feed = (Feed) obj;
        int itemType = getItemType(feed);
        boolean z6 = false;
        View viewInflate = view != null ? view : this.inflater.inflate(getLayout(itemType), viewGroup, false);
        FeedListItem feedListItem = (FeedListItem) viewInflate.findViewById(R.id.headline_feed_item);
        tagCellForLog(feedListItem, feed);
        feedListItem.setStatSource(this.source, this.loggingSource, this.loggingOrigin);
        ViewGroup.LayoutParams layoutParams = feedListItem.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.leftMargin = Utils.dpToPxInt(getContext(), 6.0f);
            marginLayoutParams.rightMargin = Utils.dpToPxInt(getContext(), 6.0f);
        }
        if (Utils.indexOfId(list(), feed.id()) == this.curLastPointFeedPosition - 10 && !this.isMiddlePageRequesting) {
            loadMiddlePage(lastTimeReadFeedId(), this.middlePageToken, null);
        }
        if (itemType == 7) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(-13051748);
            gradientDrawable.setCornerRadius(Utils.dpToPx(getContext(), 4.0f));
            feedListItem.findViewById(R.id.last_pos_container).setBackgroundDrawable(gradientDrawable);
            return viewInflate;
        }
        Community communityInfo = getCommunityInfo(feed.ndcId);
        boolean z10 = (communityInfo == null || communityInfo.getCommunityStyle() == null || communityInfo.getCommunityStyle().memberCountStyle != 1) ? false : true;
        int i11 = (communityInfo == null || (communityMemberSummary = communityInfo.communityMembersSummary) == null) ? 0 : communityMemberSummary.membersCount;
        if (!z10) {
            i11 = communityInfo == null ? 0 : communityInfo.membersCount;
        }
        TextView textView = (TextView) feedListItem.findViewById(R.id.membersInfo);
        String str = NumberFormat.getNumberInstance(Locale.US).format(i11);
        SpannableString spannableString = new SpannableString(getContext().getString(z10 ? R.string.members_online_n : R.string.rtc_members, str));
        spannableString.setSpan(new StyleSpan(1), 0, str.length(), 33);
        textView.setText(spannableString);
        textView.setTextColor(z10 ? -13051748 : -5394757);
        ImageView imageView = (ImageView) feedListItem.findViewById(R.id.online_indicator);
        ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
        if (z10) {
            f = 6.0f;
            iDpToPx = (int) Utils.dpToPx(getContext(), 6.0f);
        } else {
            f = 6.0f;
            iDpToPx = -2;
        }
        layoutParams2.width = iDpToPx;
        layoutParams2.height = z10 ? (int) Utils.dpToPx(getContext(), f) : -2;
        imageView.setImageDrawable(ContextCompat.getDrawable(getContext(), z10 ? R.drawable.online_indicator : R.drawable.ic_hedline_member_count_indicator));
        View viewFindViewById2 = feedListItem.findViewById(R.id.community_icon_name);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(this.subviewClickListener);
        }
        View viewFindViewById3 = feedListItem.findViewById(R.id.feed_toolbar);
        if (viewFindViewById3 instanceof FeedToolbarLayout) {
            ((FeedToolbarLayout) viewFindViewById3).setDarkTheme(true);
        }
        View viewFindViewById4 = feedListItem.findViewById(R.id.feed_toolbar_vote);
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(this.subviewClickListener);
            viewFindViewById4.setOnLongClickListener(this.subviewLongClickListener);
        }
        View viewFindViewById5 = feedListItem.findViewById(R.id.feed_toolbar_comment);
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(this.subviewClickListener);
        }
        View viewFindViewById6 = feedListItem.findViewById(R.id.start_quiz);
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(this.subviewClickListener);
        }
        View viewFindViewById7 = feedListItem.findViewById(R.id.feed_toolbar_share);
        if (viewFindViewById7 != null) {
            viewFindViewById7.setVisibility(8);
        }
        View viewFindViewById8 = feedListItem.findViewById(R.id.feed_external_toolbar_more);
        if (viewFindViewById8 != null) {
            viewFindViewById8.setVisibility(8);
        }
        View viewFindViewById9 = feedListItem.findViewById(R.id.headline_feed_options);
        if (viewFindViewById9 != null) {
            viewFindViewById9.setOnClickListener(this.subviewClickListener);
        }
        View viewFindViewById10 = feedListItem.findViewById(R.id.user_head);
        if (viewFindViewById10 != null) {
            viewFindViewById10.setVisibility(showUserHeader() ? 0 : 8);
        }
        View viewFindViewById11 = feedListItem.findViewById(R.id.user_click);
        if (viewFindViewById11 != null) {
            viewFindViewById11.setOnClickListener(this.subviewClickListener);
        }
        if (itemType == 8 && (feed instanceof Blog) && (viewFindViewById = feedListItem.findViewById(R.id.image)) != null) {
            viewFindViewById.setOnClickListener(this.subviewClickListener);
        }
        HeadlineFeatureLabel headlineFeatureLabel = (HeadlineFeatureLabel) feedListItem.findViewById(R.id.feature_tag);
        HeadlineStyle headlineStyle = feed.getHeadlineStyle();
        if (headlineFeatureLabel != null && headlineStyle != null) {
            headlineFeatureLabel.setVisibility(headlineStyle.featuredTag != null ? 0 : 8);
            headlineFeatureLabel.setFeatureTag(headlineStyle.featuredTag, this.fixedFeatureMode.containsKey(feed.id()) ? this.fixedFeatureMode.get(feed.id()).intValue() : 0);
            headlineFeatureLabel.setOnClickListener(this.subviewClickListener);
        }
        CommunitySummaryInfoLayout communitySummaryInfoLayout = (CommunitySummaryInfoLayout) feedListItem.findViewById(R.id.community_info);
        if (communitySummaryInfoLayout != null) {
            communitySummaryInfoLayout.setCommunity(communityInfo, feed, null);
            communitySummaryInfoLayout.setVisibility(showUserHeader() ? 8 : 0);
        }
        int i12 = itemType == 4 ? 3 : -1;
        feedListItem.setFeed(feed, showPromote(), showSortedImage(), hideCaption(), i12, i12, i12);
        feedListItem.setDarkTheme(true, -1);
        TextView textView2 = (TextView) feedListItem.findViewById(R.id.title);
        if (textView2 != null) {
            textView2.setTextColor(-1);
        }
        View viewFindViewById12 = feedListItem.findViewById(R.id.datetime);
        if (viewFindViewById12 instanceof TextView) {
            ((TextView) viewFindViewById12).setText(DateTimeFormatter.getInstance(getContext()).formatHeadlineFeedTime(feed.createdTime));
        }
        if (feed.getSortedMediaList() == null || feed.getSortedMediaList().size() <= 0) {
            i10 = 8;
            media = null;
        } else {
            media = feed.getSortedMediaList().get(0);
            i10 = 8;
        }
        if (itemType == i10 || itemType == 9) {
            NVVideoListDelegate.markVideoCell(viewInflate, R.id.image, feed.isContentAccessible() ? feed.getPreviewVideoList(true) : new ArrayList<>(), media, (NVObject) feed, 0, true);
        }
        if ((feed instanceof Blog) && ((Blog) feed).type == 4) {
            View viewFindViewById13 = feedListItem.findViewById(R.id.poll_option_list);
            if (viewFindViewById13 instanceof PollOptionListLayout) {
                boolean zIsJoinedThisCommunity = isJoinedThisCommunity(feed.ndcId);
                PollOptionListLayout pollOptionListLayout = (PollOptionListLayout) viewFindViewById13;
                pollOptionListLayout.preview = !zIsJoinedThisCommunity;
                pollOptionListLayout.setPreviewBlockListener(zIsJoinedThisCommunity ? null : new PollOptionListLayout.PollPreviewBlockListener() { // from class: com.narvii.headlines.feed.HeadLinesListAdapter.3
                    @Override // com.narvii.poll.PollOptionListLayout.PollPreviewBlockListener
                    public void onPreviewBlocked() {
                        HeadLinesListAdapter headLinesListAdapter = HeadLinesListAdapter.this;
                        Feed feed2 = feed;
                        headLinesListAdapter.showJoinCommunityDialog(feed2.ndcId, feed2.id());
                    }
                });
            }
        }
        HashSet<String> hashSet = this.progressList;
        if (hashSet != null && hashSet.contains(feed.id())) {
            z6 = true;
        }
        feedListItem.setProgress(z6);
        return viewInflate;
    }

    protected HeadlineLaunchHelper launchHelper() {
        if (this.launchHelper == null) {
            this.launchHelper = new HeadlineLaunchHelper(this, this.source);
        }
        return this.launchHelper;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected void longClickToVote(Feed feed, View view) {
        if (isJoinedThisCommunity(feed.ndcId)) {
            super.longClickToVote(feed, view);
        } else {
            showJoinCommunityDialog(feed.ndcId, feed.id());
        }
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        FragmentActivity activity;
        if (obj == this.lastPointFeed) {
            onLastReadPointClicked();
            return true;
        }
        if (obj instanceof Feed) {
            new PackageUtils(getContext()).getCommunityIdFromPackageName();
            Feed feed = (Feed) obj;
            Community communityInfo = getCommunityInfo(feed.ndcId);
            if (view2 == null && getItemType(obj) == 10) {
                new SuggestUpdateDialog(this.context, R.string.app_upgrade_check_detail).show();
                return true;
            }
            if (view2 != null && view2.getId() == R.id.community_icon_name) {
                if (communityInfo == null) {
                    Log.e("headline : empty community info " + JacksonUtils.writeAsString(obj));
                    return true;
                }
                if (isJoinedThisCommunity(communityInfo.id)) {
                    getClickEventBuilder(obj, ActSemantic.aminoEnter).object(communityInfo).send();
                    NVContext nVContext = this.context;
                    if (nVContext instanceof NVFragment) {
                        activity = ((NVFragment) nVContext).getActivity();
                    } else {
                        activity = nVContext instanceof NVActivity ? (NVActivity) nVContext : null;
                    }
                    if (activity != null) {
                        new CommunityLaunchHelperWithIcon(this.context, this.source, activity).launchCommunity(communityInfo, (NVImageView) view2.findViewById(R.id.community_icon), null);
                    } else {
                        CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(this, this.source);
                        int i11 = feed.ndcId;
                        communityLaunchHelper.launch(i11, communityInfo, getCommunityTimestamp(i11), null, null, null, null, false);
                    }
                } else {
                    getClickEventBuilder(obj, ActSemantic.checkDetail).object(communityInfo).send();
                    gotoCommunityDetail(communityInfo, feed.id());
                }
                return true;
            }
            if (view2 != null && view2.getId() == R.id.user_click) {
                CommunityHelper communityHelper = new CommunityHelper(this.context);
                int i12 = feed.ndcId;
                if (i12 == 0 || communityHelper.checkCommunityJoined(i12, null)) {
                    Intent intent = UserProfileFragment.intent(this.context, feed.author);
                    intent.putExtra("__communityId", feed.ndcId);
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                }
                return true;
            }
            if (view2 != null && view2.getId() == R.id.feature_tag) {
                if (view2 instanceof HeadlineFeatureLabel) {
                    if (!this.fixedFeatureMode.containsKey(feed.id()) || this.fixedFeatureMode.get(feed.id()).intValue() == 0) {
                        ((HeadlineFeatureLabel) view2).expand();
                        this.fixedFeatureMode.put(feed.id(), 1);
                    } else {
                        ((HeadlineFeatureLabel) view2).collapse();
                        this.fixedFeatureMode.put(feed.id(), 0);
                    }
                }
                return true;
            }
        }
        return super.onItemClick(listAdapter, i10, obj, view, view2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, HeadlineListResponse headlineListResponse, int i10) {
        Media media;
        if (i10 == -1 || ("start0".equals(apiRequest.tag()) && i10 == 1)) {
            List<Headline> list = headlineListResponse.headlinePostList;
            if (list == null || list.size() <= 0) {
                this.lastReadFeedId = null;
            } else if (list() != null && list().size() > 0) {
                this.lastReadFeedId = ((Feed) list().get(0)).id();
                Pagination pagination = headlineListResponse.paging;
                this.middlePageToken = pagination != null ? pagination.nextPageToken : null;
                this.isMiddlePageRequesting = false;
            }
        } else if (i10 == 3) {
            this.isMiddlePageRequesting = false;
            Pagination pagination2 = headlineListResponse.paging;
            this.middlePageToken = pagination2 != null ? pagination2.nextPageToken : null;
        }
        super.onPageResponse(apiRequest, headlineListResponse, i10);
        this.currentHsid = headlineListResponse.hsid;
        Map<Integer, Community> map = headlineListResponse.communityInfoMapping;
        if (map != null) {
            for (Map.Entry<Integer, Community> entry : map.entrySet()) {
                this.feedRelatedCommunityList.put(entry.getKey(), entry.getValue());
                this.communityTimestamps.put(entry.getKey(), headlineListResponse.timestamp);
            }
        }
        Map<Integer, User> map2 = headlineListResponse.userProfileMapping;
        if (map2 != null) {
            for (Map.Entry<Integer, User> entry2 : map2.entrySet()) {
                this.userProgfileMapping.put(entry2.getKey(), entry2.getValue());
            }
        }
        try {
            NetworkInfo activeNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting() && activeNetworkInfo.getType() == 1) {
                List<Feed> list2 = headlineListResponse.list();
                ArrayList arrayList = new ArrayList();
                ArrayMap<String, YoutubeLoggingStub> arrayMap = new ArrayMap<>();
                if (list2 != null) {
                    for (Feed feed : list2) {
                        List<Media> sortedMediaList = feed.getSortedMediaList();
                        if (sortedMediaList != null && sortedMediaList.size() > 0 && (media = sortedMediaList.get(0)) != null && media.type == 103) {
                            String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(media.url);
                            arrayList.add(youtubeVideoIdFromUrl);
                            arrayMap.put(youtubeVideoIdFromUrl, new YoutubeLoggingStub(feed.ndcId, feed.id(), feed.objectType(), youtubeVideoIdFromUrl, LoggingOrigin.Headlines.name()));
                        }
                    }
                    this.youtubeService.preload(arrayList, arrayMap);
                }
            }
        } catch (Exception unused) {
        }
        launchHelper().onPageResponse(headlineListResponse);
    }

    protected boolean shouldShowDownloadMasterDialog(int i10) {
        if (new PackageUtils(getContext()).isMasterInstalled()) {
            return false;
        }
        MasterHelper masterHelper = new MasterHelper(getParentContext());
        Community communityInfo = getCommunityInfo(i10);
        masterHelper.showDownloadMaterDialog(communityInfo == null ? null : communityInfo.link);
        return true;
    }

    public HeadLinesListAdapter(NVContext nVContext) {
        super(nVContext);
        this.REQ_TAG_QUERY_START_TIME = new Tag("reqTime");
        this.feedRelatedCommunityList = new HashMap<>();
        this.communityTimestamps = new HashMap<>();
        this.userProgfileMapping = new HashMap<>();
        this.lastPointFeed = new Blog();
        this.fixedFeatureMode = new HashMap<>();
        this.source = "Headlines";
        this.loggingOrigin = LoggingOrigin.Headlines;
        this.accountService = (AccountService) getService("account");
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        this.lastReadFeedId = getStoredLastTimeFeedId();
        this.logging = (LoggingService) getService("logging");
        this.curUser = this.accountService.getUserProfile();
        this.youtubeService = (YoutubeService) nVContext.getService(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE);
        setDarkTheme(true);
        this.connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        addImpressionCollector(new LinearImpressionCollector(Feed.class, R.id.headline_feed_item) { // from class: com.narvii.headlines.feed.HeadLinesListAdapter.1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(@NotNull LogEvent.Builder builder, ObjectInfo objectInfo) {
                super.completeImpressionLogBuilder(builder, objectInfo);
                HeadLinesListAdapter.this.completeLogBuilder(builder, objectInfo);
            }
        });
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    public void comment(Feed feed) {
        launchHelper().prepareEnterCommunity(feed.ndcId);
        Community community = this.feedRelatedCommunityList.get(Integer.valueOf(feed.ndcId));
        if (isJoinedThisCommunity(feed.ndcId)) {
            super.comment(feed, feed.ndcId);
        } else if (community != null && community.joinType != 0) {
            showJoinCommunityDialog(feed.ndcId, feed.id());
        } else {
            super.comment(feed, feed.ndcId, true);
        }
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<Feed> filterResponseList(List<Feed> list, int i10) {
        Collection collectionRawList = rawList();
        if (i10 != 2 && collectionRawList != null) {
            ArrayList arrayList = new ArrayList(list);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (Utils.containsId(collectionRawList, ((Feed) it.next()).id())) {
                    it.remove();
                }
            }
            return super.filterResponseList(arrayList, i10);
        }
        return super.filterResponseList(list, i10);
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        if (showLastReadTimePoint()) {
            return 12;
        }
        return 11;
    }

    @Override // com.narvii.list.NVPagedAdapter
    public void loadMiddlePage(String str, String str2, Callback<Integer> callback) {
        super.loadMiddlePage(str, str2, callback);
        this.isMiddlePageRequesting = true;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        List<? extends T> listRawList = rawList();
        if (listRawList == 0) {
            this.l = null;
        } else if (listRawList.isEmpty()) {
            this.l = new ArrayList();
        } else {
            this.l = new ArrayList();
            if (showLastReadTimePoint()) {
                Iterator it = listRawList.iterator();
                while (it.hasNext()) {
                    Feed feed = (Feed) it.next();
                    if (Utils.isEqualsNotNull(feed.id(), lastTimeReadFeedId()) && listRawList.indexOf(feed) != 0) {
                        this.curLastPointFeedPosition = listRawList.indexOf(feed);
                        this.l.add(this.lastPointFeed);
                    }
                    this.l.add(feed);
                }
            } else {
                this.l.addAll(listRawList);
            }
        }
        super.notifyDataSetChanged();
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected void onFeedQuizStarted(Blog blog) {
        launchHelper().prepareEnterCommunity(blog.ndcId);
        super.onFeedQuizStarted(blog);
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected void onVoteSuccess(Feed feed, int i10) {
        super.onVoteSuccess(feed, i10);
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected void openFeedDetail(Feed feed, int i10) {
        launchHelper().launchFeed(feed.ndcId, feed, channelId(), i10, this.currentHsid, enterCommunityDirectly());
    }

    protected void showJoinCommunityDialog(int i10, final String str) {
        final Community communityInfo = getCommunityInfo(i10);
        JoinCommunityDialog.join(getContext(), communityInfo, new Callback<Boolean>() { // from class: com.narvii.headlines.feed.HeadLinesListAdapter.2
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (bool.booleanValue()) {
                    HeadLinesListAdapter.this.gotoCommunityDetail(communityInfo, str);
                }
            }
        });
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    public void vote(Feed feed, Integer num) {
        launchHelper().prepareEnterCommunity(feed.ndcId);
        super.vote(feed, num);
    }
}
