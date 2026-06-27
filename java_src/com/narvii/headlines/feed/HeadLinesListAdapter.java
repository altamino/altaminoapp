package com.narvii.headlines.feed;

import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.ForwardActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
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
import com.narvii.headlines.HeadlineFeatureLabel;
import com.narvii.headlines.HeadlineLaunchHelper;
import com.narvii.headlines.HeadlineListResponse;
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
import com.narvii.monetization.store.SuggestUpdateDialog;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.poll.PollOptionListLayout;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListFragment;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingService;
import com.narvii.widget.NVImageView;
import com.narvii.youtube.YoutubeService;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
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

    protected String channelId() {
        return null;
    }

    protected void completeLogBuilder(LogEvent.Builder builder, ObjectInfo objectInfo) {
    }

    protected boolean enterCommunityDirectly() {
        return false;
    }

    public int getLayout(int i) {
        return i == 5 ? R.layout.item_feed_headline_quiz : i == 6 ? R.layout.item_feed_headline_poll : i == 4 ? R.layout.item_feed_headline_normal_no_image : i == 1 ? R.layout.item_feed_headline_less_image : i == 2 ? R.layout.item_feed_headline_promoted : i == 9 ? R.layout.item_feed_headline_normal_video : i == 8 ? R.layout.item_feed_headline_promoted_video : i == 7 ? R.layout.item_feed_headline_last_read_point : i == 3 ? R.layout.item_feed_headline_normal : i == 10 ? R.layout.item_feed_headline_unknown : R.layout.item_feed_headline_normal_no_image;
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

    protected void onLastReadPointClicked() {
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    protected int pageSize() {
        return 20;
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
            public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo objectInfo) {
                super.completeImpressionLogBuilder(builder, objectInfo);
                HeadLinesListAdapter.this.completeLogBuilder(builder, objectInfo);
            }
        });
    }

    public void setFeedRelatedCommunityList(HashMap<Integer, Community> map) {
        this.feedRelatedCommunityList = map;
    }

    public void setUserProgfileMapping(HashMap<Integer, User> map) {
        this.userProgfileMapping = map;
    }

    protected HeadlineLaunchHelper launchHelper() {
        if (this.launchHelper == null) {
            this.launchHelper = new HeadlineLaunchHelper(this, this.source);
        }
        return this.launchHelper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<Feed> dataType() {
        return Feed.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public JsonDeserializer<Feed> dataDeserializer() {
        return new Feed.FeedDeserializer();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends HeadlineListResponse> responseType() {
        return HeadlineListResponse.class;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return showLastReadTimePoint() ? 12 : 11;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0042  */
    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getItemType(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.headlines.feed.HeadLinesListAdapter.getItemType(java.lang.Object):int");
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<Feed> filterResponseList(List<Feed> list, int i) {
        Collection collectionRawList = rawList();
        if (i != 2 && collectionRawList != null) {
            ArrayList arrayList = new ArrayList(list);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (Utils.containsId(collectionRawList, ((Feed) it.next()).id())) {
                    it.remove();
                }
            }
            return super.filterResponseList(arrayList, i);
        }
        return super.filterResponseList(list, i);
    }

    protected String lastTimeReadFeedId() {
        return this.lastReadFeedId;
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

    @Override // com.narvii.list.NVPagedAdapter
    public List<?> list() {
        return this.l;
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected void openFeedDetail(Feed feed, int i) {
        launchHelper().launchFeed(feed.ndcId, feed, channelId(), i, this.currentHsid, enterCommunityDirectly());
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected void onFeedQuizStarted(Blog blog) {
        launchHelper().prepareEnterCommunity(blog.ndcId);
        super.onFeedQuizStarted(blog);
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    public void vote(Feed feed, Integer num) {
        launchHelper().prepareEnterCommunity(feed.ndcId);
        super.vote(feed, num);
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

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected void longClickToVote(Feed feed, View view) {
        if (isJoinedThisCommunity(feed.ndcId)) {
            super.longClickToVote(feed, view);
        } else {
            showJoinCommunityDialog(feed.ndcId, feed.id());
        }
    }

    @Override // com.narvii.feed.BaseFeedListAdapter
    protected void onVoteSuccess(Feed feed, int i) {
        super.onVoteSuccess(feed, i);
    }

    protected void showJoinCommunityDialog(int i, final String str) {
        final Community communityInfo = getCommunityInfo(i);
        JoinCommunityDialog.join(getContext(), communityInfo, new Callback<Boolean>() { // from class: com.narvii.headlines.feed.HeadLinesListAdapter.2
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (bool.booleanValue()) {
                    HeadLinesListAdapter.this.gotoCommunityDetail(communityInfo, str);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoCommunityDetail(Community community, String str) {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", community.id);
        intent.putExtra("icon", community.icon);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        intent.putExtra("Source", this.source);
        intent.putExtra("eventOrigin", LoggingOrigin.Headlines.toString());
        intent.putExtra("loggingObjectId", str);
        startActivity(intent);
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        FragmentActivity activity;
        if (obj == this.lastPointFeed) {
            onLastReadPointClicked();
            return true;
        }
        if (obj instanceof Feed) {
            int communityIdFromPackageName = new PackageUtils(getContext()).getCommunityIdFromPackageName();
            Feed feed = (Feed) obj;
            Community communityInfo = getCommunityInfo(feed.ndcId);
            if (NVApplication.CLIENT_TYPE == 101 && communityIdFromPackageName != feed.ndcId && (view2 == null || (view2.getId() != R.id.feed_toolbar_vote && view2.getId() != R.id.feature_tag))) {
                handleOtherCommunityFeed(feed, communityInfo);
                return true;
            }
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
                        int i2 = feed.ndcId;
                        communityLaunchHelper.launch(i2, communityInfo, getCommunityTimestamp(i2), null, null, null, null, false);
                    }
                } else {
                    getClickEventBuilder(obj, ActSemantic.checkDetail).object(communityInfo).send();
                    gotoCommunityDetail(communityInfo, feed.id());
                }
                return true;
            }
            if (view2 != null && view2.getId() == R.id.user_click) {
                CommunityHelper communityHelper = new CommunityHelper(this.context);
                int i3 = feed.ndcId;
                if (i3 == 0 || communityHelper.checkCommunityJoined(i3, null)) {
                    Intent intent = UserProfileFragment.intent(this.context, feed.author);
                    intent.putExtra("__communityId", feed.ndcId);
                    startActivity(intent);
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
            if (view2 != null && (obj instanceof Blog)) {
                Blog blog = (Blog) obj;
                if (blog.type == 9 && view2.getId() == R.id.image) {
                    new StoryHelper(this.context).openStoryDetailPageInAnotherActivity(view2, new StoryListFragment.IntentBuilder(blog).showCommentBar(true).source(StoryApi.GLOBAL_SEARCH_PLAYER).initFeedCommunity(getCommunityInfo(blog.getPublishNdcId())).forceVideoAutoPlay(true).build());
                    logFeedClickEvent(blog);
                    return true;
                }
            }
            if (view2 == null && (obj instanceof Blog)) {
                Blog blog2 = (Blog) obj;
                if (blog2.type == 9 && feed.ndcId == 0) {
                    startActivity(new StoryListFragment.IntentBuilder(blog2).autoLoadNextPage(false).forceVideoAutoPlay(true).build());
                    logFeedClickEvent(blog2);
                    return true;
                }
            }
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    private void handleOtherCommunityFeed(Feed feed, Community community) {
        PackageUtils packageUtils = new PackageUtils(getContext());
        if (packageUtils.isMasterInstalled()) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(feed.getDeepLink(packageUtils.getMasterScheme())));
                intent.setPackage(packageUtils.getMasterPackageName());
                intent.putExtra(ForwardActivity.CLEAR_TASK, true);
                intent.putExtra("customFinishAnimIn", 0);
                intent.putExtra("customFinishAnimOut", 0);
                startActivity(intent);
                return;
            } catch (Exception e) {
                Log.e(e.getMessage());
                return;
            }
        }
        new MasterHelper(this).showDownloadMaterDialog(community == null ? null : community.link);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean shouldShowDownloadMasterDialog(int i) {
        if (new PackageUtils(getContext()).isMasterInstalled()) {
            return false;
        }
        MasterHelper masterHelper = new MasterHelper(getParentContext());
        Community communityInfo = getCommunityInfo(i);
        masterHelper.showDownloadMaterDialog(communityInfo == null ? null : communityInfo.link);
        return true;
    }

    protected Community getCommunityInfo(int i) {
        HashMap<Integer, Community> map = this.feedRelatedCommunityList;
        if (map == null) {
            return null;
        }
        return map.get(Integer.valueOf(i));
    }

    protected String getCommunityTimestamp(int i) {
        HashMap<Integer, String> map = this.communityTimestamps;
        if (map == null) {
            return null;
        }
        return map.get(Integer.valueOf(i));
    }

    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    public View getItemView(Object obj, View view, ViewGroup viewGroup) {
        float f;
        int iDpToPx;
        int i;
        Media media;
        View viewFindViewById;
        CommunityMemberSummary communityMemberSummary;
        final Feed feed = (Feed) obj;
        int itemType = getItemType(feed);
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
        boolean z = (communityInfo == null || communityInfo.getCommunityStyle() == null || communityInfo.getCommunityStyle().memberCountStyle != 1) ? false : true;
        int i2 = (communityInfo == null || (communityMemberSummary = communityInfo.communityMembersSummary) == null) ? 0 : communityMemberSummary.membersCount;
        if (!z) {
            i2 = communityInfo == null ? 0 : communityInfo.membersCount;
        }
        TextView textView = (TextView) feedListItem.findViewById(R.id.membersInfo);
        String str = NumberFormat.getNumberInstance(Locale.US).format(i2);
        SpannableString spannableString = new SpannableString(getContext().getString(z ? R.string.members_online_n : R.string.rtc_members, str));
        spannableString.setSpan(new StyleSpan(1), 0, str.length(), 33);
        textView.setText(spannableString);
        textView.setTextColor(z ? -13051748 : -5394757);
        ImageView imageView = (ImageView) feedListItem.findViewById(R.id.online_indicator);
        ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
        if (z) {
            f = 6.0f;
            iDpToPx = (int) Utils.dpToPx(getContext(), 6.0f);
        } else {
            f = 6.0f;
            iDpToPx = -2;
        }
        layoutParams2.width = iDpToPx;
        layoutParams2.height = z ? (int) Utils.dpToPx(getContext(), f) : -2;
        imageView.setImageDrawable(ContextCompat.getDrawable(getContext(), z ? R.drawable.online_indicator : R.drawable.ic_hedline_member_count_indicator));
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
        if (itemType == 8 && (feed instanceof Blog) && ((Blog) feed).type == 9 && (viewFindViewById = feedListItem.findViewById(R.id.image)) != null) {
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
        int i3 = itemType == 4 ? 3 : -1;
        feedListItem.setFeed(feed, showPromote(), showSortedImage(), hideCaption(), i3, i3, i3);
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
            i = 8;
            media = null;
        } else {
            media = feed.getSortedMediaList().get(0);
            i = 8;
        }
        if (itemType == i || itemType == 9) {
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
        feedListItem.setProgress(hashSet != null && hashSet.contains(feed.id()));
        return viewInflate;
    }

    @Override // com.narvii.list.NVPagedAdapter
    public void loadMiddlePage(String str, String str2, Callback<Integer> callback) {
        super.loadMiddlePage(str, str2, callback);
        this.isMiddlePageRequesting = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cf  */
    @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPageResponse(com.narvii.util.http.ApiRequest r12, com.narvii.headlines.HeadlineListResponse r13, int r14) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.headlines.feed.HeadLinesListAdapter.onPageResponse(com.narvii.util.http.ApiRequest, com.narvii.headlines.HeadlineListResponse, int):void");
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
        if (i == 3) {
            this.isMiddlePageRequesting = false;
        }
        super.onFailResponse(apiRequest, str, apiResponse, i);
    }

    private boolean isJoinedThisCommunity(int i) {
        if (!this.accountService.hasAccount()) {
            return false;
        }
        if (!TextUtils.isEmpty(this.affiliationsService.getTimeStamp())) {
            return this.affiliationsService.contains(i);
        }
        HashMap<Integer, User> map = this.userProgfileMapping;
        if (map != null) {
            return map.containsKey(Integer.valueOf(i));
        }
        return false;
    }
}
