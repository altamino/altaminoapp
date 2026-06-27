package com.narvii.feed;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListView;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.list.NVListFragment;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.FeedBottomLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class FeedContinuousViewer {
    public static final String KEY_BLACK_FEED_IDS = "key_continuous_black_feed_ids";
    public static final String KEY_CONTINUOUS_FEED_CURRENT_POSITION = "key_continuous_feed_current_position";
    public static final String KEY_CONTINUOUS_FEED_FILTER_FEATURE = "key_continuous_feed_filter_feature";
    public static final String KEY_CONTINUOUS_FEED_LIST = "key_continuous_feed_list";
    public static final String KEY_CONTINUOUS_FEED_NEXT_TOKEN = "key_continuous_feed_next_token";
    public static final String KEY_CONTINUOUS_FEED_PAGE_SIZE = "key_continuous_feed_page_size";
    public static final String KEY_CONTINUOUS_FEED_POSITION_IN_CURRENT_PAGE = "key_continuous_feed_position_current_page";
    public static final String KEY_CONTINUOUS_FEED_REQUEST = "key_continuous_feed_api_request";
    public static final String KEY_CONTINUOUS_FEED_TIMESTAMP = "key_continuous_feed_list_timestamp";
    AccountService account;
    String apiRequestUrl;
    Animator barAnimator;
    private int bottomBarDisplayMode;
    int bottomBarHeight;
    public FeedBottomLayout bottomView;
    CommunityConfigHelper communityConfigHelper;
    private NVContext context;
    Feed feed;
    FeedHelper feedHelper;
    private List<Feed> feeds;
    boolean filterFeatureFeed;
    private boolean isGoNextButtonDisabled;
    private boolean isVotting;
    private ListView listView;
    private String nextToken;
    private int pageSize;
    int positionInCurPage;
    ProgressDialog progressDialog;
    String timeStamp;

    public interface ContinuousLoaderListener {
        void onFail(int i, Object obj);

        void onFinish(int i, Object obj);

        void onStart(int i, Object obj);
    }

    public void AttachFeedDetailFragment(NVContext nVContext, String str, String str2, int i, boolean z, List<Feed> list, boolean z2, String str3, int i2) {
        this.context = nVContext;
        this.feedHelper = new FeedHelper(nVContext);
        this.nextToken = str3;
        NVListFragment nVListFragment = (NVListFragment) nVContext;
        this.listView = nVListFragment.getListView();
        this.communityConfigHelper = new CommunityConfigHelper(nVContext);
        this.feeds = list;
        this.apiRequestUrl = str;
        this.timeStamp = str2;
        this.positionInCurPage = i;
        this.filterFeatureFeed = z;
        this.pageSize = i2;
        if (this.pageSize > 25) {
            this.pageSize = 25;
        }
        this.account = (AccountService) nVContext.getService("account");
        if (nVContext instanceof FeedDetailFragment) {
            this.feed = ((FeedDetailFragment) nVContext).getFeed();
        }
        ListView listView = this.listView;
        if (listView == null) {
            throw new IllegalStateException("the list of current fragment is null");
        }
        if (listView.getParent() instanceof FrameLayout) {
            initBottomBar((FrameLayout) this.listView.getParent(), nVContext.getContext(), z2);
        }
        String str4 = this.apiRequestUrl;
        if (str4 != null) {
            this.apiRequestUrl = buildNewRequestApi(Uri.parse(str4), null);
        }
        this.progressDialog = new ProgressDialog(nVContext.getContext());
        this.bottomBarHeight = nVListFragment.getResources().getDimensionPixelSize(R.dimen.feed_bottom_height);
    }

    public void setGoNextButtonEnable(boolean z) {
        this.isGoNextButtonDisabled = z;
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout != null) {
            feedBottomLayout.findViewById(R.id.next_icon_leader).setEnabled(z);
            this.bottomView.findViewById(R.id.bottom_go_next_leader_hint).setEnabled(z);
            this.bottomView.findViewById(R.id.next_icon_normal).setEnabled(z);
            this.bottomView.findViewById(R.id.bottom_go_next_normal_hint).setEnabled(z);
        }
    }

    public void setGoNextButtonVisible(boolean z) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout != null) {
            feedBottomLayout.findViewById(R.id.bottom_go_next_leader).setVisibility(z ? 0 : 8);
            this.bottomView.findViewById(R.id.bottom_go_next_normal).setVisibility(z ? 0 : 8);
        }
    }

    private void initBottomBar(FrameLayout frameLayout, Context context, boolean z) {
        this.bottomBarDisplayMode = 0;
        User userProfile = this.account.getUserProfile();
        if (z) {
            this.bottomBarDisplayMode = 3;
        } else if (userProfile != null && userProfile.isLeader()) {
            this.bottomBarDisplayMode = 1;
        } else if (userProfile != null && userProfile.isCurator()) {
            this.bottomBarDisplayMode = 2;
        }
        this.bottomView = (FeedBottomLayout) LayoutInflater.from(context).inflate(R.layout.feed_detail_bottom_layout, (ViewGroup) null, false);
        this.bottomView.setOnClickListener(null);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, context.getResources().getDimensionPixelSize(R.dimen.feed_bottom_height_leader));
        layoutParams.gravity = 80;
        this.bottomView.setLayoutParams(layoutParams);
        frameLayout.addView(this.bottomView);
        if (!this.communityConfigHelper.isFeaturedPostEnabled()) {
            this.bottomView.hideFeatureButton();
        }
        this.bottomView.setBottomLayoutDisplayMode(this.bottomBarDisplayMode);
        FeedBottomLayout feedBottomLayout = this.bottomView;
        Feed feed = this.feed;
        int votedValue = feed == null ? 0 : feed.getVotedValue(Utils.isGlobalInteractionScope(this.context));
        Feed feed2 = this.feed;
        int totalCommentsCount = feed2 == null ? 0 : feed2.getTotalCommentsCount();
        Feed feed3 = this.feed;
        feedBottomLayout.updateBottomView(votedValue, false, totalCommentsCount, feed3 == null ? 0 : feed3.getTotalVotesCount());
    }

    public void setIsVotting(boolean z) {
        this.isVotting = z;
    }

    public void configureBottomBarEvent(View.OnClickListener onClickListener) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout != null) {
            feedBottomLayout.configureBottomBarClickListener(onClickListener);
        }
    }

    public void loadNextFeed(boolean z) {
        int i = this.positionInCurPage + 1;
        List<Feed> list = this.feeds;
        if (list == null || list.size() == 0 || i >= this.feeds.size()) {
            loadNextPage();
        } else {
            launchNextFeed(this.feeds.get(i), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadNextPage() {
        if (TextUtils.isEmpty(this.apiRequestUrl)) {
            showNoMoreDateDialog();
            return;
        }
        if (!this.progressDialog.isShowing()) {
            this.progressDialog.show();
        }
        ((ApiService) this.context.getService("api")).exec(new ApiRequest.Builder()._url(this.apiRequestUrl).build(), new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.feed.FeedContinuousViewer.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                String str;
                Feed feed;
                JsonNode jsonNodeJson = json();
                Iterator<String> itFieldNames = jsonNodeJson.fieldNames();
                ArrayList arrayList = new ArrayList();
                while (itFieldNames.hasNext()) {
                    arrayList.add(itFieldNames.next());
                }
                FeedContinuousViewer.this.timeStamp = apiResponse.timestamp;
                if (arrayList.contains("blogList")) {
                    FeedContinuousViewer.this.feeds = JacksonUtils.readListUsing(jsonNodeJson.findValue("blogList").toString(), new Feed.FeedDeserializer());
                    List arrayList2 = new ArrayList();
                    FeedContinuousViewer feedContinuousViewer = FeedContinuousViewer.this;
                    if (feedContinuousViewer.filterFeatureFeed) {
                        for (Feed feed2 : feedContinuousViewer.feeds) {
                            if ((feed2 instanceof Blog) && (feed = ((Blog) feed2).refObject) != null) {
                                feed2 = feed;
                            }
                            if (feed2.featureType() == 0) {
                                arrayList2.add(feed2);
                            }
                        }
                    } else {
                        arrayList2 = feedContinuousViewer.feeds;
                    }
                    FeedContinuousViewer feedContinuousViewer2 = FeedContinuousViewer.this;
                    feedContinuousViewer2.feeds = new FilterHelper(feedContinuousViewer2.context).filter(arrayList2);
                } else if (arrayList.contains("featuredList")) {
                    ArrayList listAs = JacksonUtils.readListAs(jsonNodeJson.findValue("featuredList").toString(), FeaturedFeed.class);
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it = listAs.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(((FeaturedFeed) it.next()).refObject);
                    }
                    FeedContinuousViewer feedContinuousViewer3 = FeedContinuousViewer.this;
                    feedContinuousViewer3.feeds = new FilterHelper(feedContinuousViewer3.context).filter(arrayList3);
                } else if (arrayList.contains("childrenWrapper")) {
                    ArrayList listUsing = JacksonUtils.readListUsing((jsonNodeJson.findValue("childrenWrapper") == null || jsonNodeJson.findValue("childrenWrapper").findValue("itemList") == null) ? "" : jsonNodeJson.findValue("childrenWrapper").findValue("itemList").toString(), new Feed.FeedDeserializer());
                    FeedContinuousViewer feedContinuousViewer4 = FeedContinuousViewer.this;
                    feedContinuousViewer4.feeds = new FilterHelper(feedContinuousViewer4.context).filter(listUsing);
                }
                if (FeedContinuousViewer.this.feeds == null || FeedContinuousViewer.this.feeds.size() == 0) {
                    if (arrayList.contains("featuredList")) {
                        String strReplace = Uri.parse(FeedContinuousViewer.this.apiRequestUrl).getPath().replace(Module.MODULE_FEATURED, "blog-all");
                        FeedContinuousViewer feedContinuousViewer5 = FeedContinuousViewer.this;
                        feedContinuousViewer5.apiRequestUrl = feedContinuousViewer5.buildNewRequestApi(Uri.parse(feedContinuousViewer5.apiRequestUrl), strReplace, 0, FeedContinuousViewer.this.timeStamp, "t");
                        FeedContinuousViewer feedContinuousViewer6 = FeedContinuousViewer.this;
                        feedContinuousViewer6.filterFeatureFeed = true;
                        feedContinuousViewer6.loadNextPage();
                        return;
                    }
                    JsonNode jsonNodeNodePath = JacksonUtils.nodePath(jsonNodeJson, "paging");
                    String strNodeString = jsonNodeNodePath != null ? JacksonUtils.nodeString(jsonNodeNodePath, "nextPageToken") : null;
                    if (strNodeString != null) {
                        FeedContinuousViewer.this.nextToken = strNodeString;
                        FeedContinuousViewer feedContinuousViewer7 = FeedContinuousViewer.this;
                        feedContinuousViewer7.apiRequestUrl = feedContinuousViewer7.buildNewRequestApi(Uri.parse(feedContinuousViewer7.apiRequestUrl), null);
                        FeedContinuousViewer.this.loadNextPage();
                        return;
                    }
                    if (FeedContinuousViewer.this.progressDialog.isShowing()) {
                        FeedContinuousViewer.this.progressDialog.dismiss();
                    }
                    FeedContinuousViewer.this.showNoMoreDateDialog();
                    return;
                }
                if (FeedContinuousViewer.this.progressDialog.isShowing()) {
                    FeedContinuousViewer.this.progressDialog.dismiss();
                }
                FeedContinuousViewer.this.positionInCurPage = 0;
                JsonNode jsonNodeNodePath2 = JacksonUtils.nodePath(jsonNodeJson, "paging");
                if (jsonNodeNodePath2 != null) {
                    FeedContinuousViewer.this.nextToken = JacksonUtils.nodeString(jsonNodeNodePath2, "nextPageToken");
                }
                if (FeedContinuousViewer.this.nextToken == null && (str = FeedContinuousViewer.this.apiRequestUrl) != null) {
                    Uri uri = Uri.parse(str);
                    if (uri.getQueryParameterNames().contains("pagingType") && "t".equals(uri.getQueryParameter("pagingType"))) {
                        FeedContinuousViewer.this.apiRequestUrl = null;
                    }
                }
                if (FeedContinuousViewer.this.feeds == null || FeedContinuousViewer.this.feeds.size() <= 0) {
                    return;
                }
                FeedContinuousViewer feedContinuousViewer8 = FeedContinuousViewer.this;
                feedContinuousViewer8.launchNextFeed((Feed) feedContinuousViewer8.feeds.get(0), true);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                if (FeedContinuousViewer.this.progressDialog.isShowing()) {
                    FeedContinuousViewer.this.progressDialog.dismiss();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNoMoreDateDialog() {
        NVToast.makeText(this.context.getContext(), this.context.getContext().getString(R.string.no_more_post), 1).show();
    }

    public String buildNewRequestApi(Uri uri, String str) {
        return buildNewRequestApi(uri, str, this.positionInCurPage, this.timeStamp);
    }

    public String buildNewRequestApi(Uri uri, int i, String str) {
        return buildNewRequestApi(uri, null, i, str);
    }

    public String buildNewRequestApi(Uri uri, String str, int i, String str2) {
        return buildNewRequestApi(uri, str, i, str2, null);
    }

    public String buildNewRequestApi(Uri uri, String str, int i, String str2, String str3) {
        List<Feed> list = this.feeds;
        if (list == null || i + 1 < list.size()) {
            return uri.toString();
        }
        Uri.Builder builderAuthority = new Uri.Builder().scheme(uri.getScheme()).path(str == null ? uri.getPath() : str).authority(uri.getAuthority());
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        if (!TextUtils.isEmpty(str)) {
            if (!queryParameterNames.contains("stoptime") && !TextUtils.isEmpty(str2)) {
                builderAuthority.appendQueryParameter("stoptime", str2);
            }
            return builderAuthority.build().toString();
        }
        for (String str4 : queryParameterNames) {
            if ("size".equals(str4)) {
                builderAuthority.appendQueryParameter("size", String.valueOf(this.pageSize));
            }
            if (!"pageToken".equals(str4) && !"pagingType".equals(str4) && !TtmlNode.START.equals(str4)) {
                builderAuthority.appendQueryParameter(str4, uri.getQueryParameter(str4));
            }
        }
        if (!queryParameterNames.contains("size")) {
            builderAuthority.appendQueryParameter("size", String.valueOf(this.pageSize));
        }
        if (!queryParameterNames.contains("stoptime") && !TextUtils.isEmpty(str2)) {
            builderAuthority.appendQueryParameter("stoptime", str2);
        }
        String queryParameter = uri.getQueryParameter("pagingType");
        String queryParameter2 = uri.getQueryParameter(TtmlNode.START);
        if (!TextUtils.isEmpty(str3)) {
            queryParameter = str3;
        }
        if ("t".equals(queryParameter)) {
            builderAuthority.appendQueryParameter("pagingType", queryParameter);
            builderAuthority.appendQueryParameter("pageToken", this.nextToken);
        } else {
            if (queryParameter2 == null) {
                queryParameter2 = "0";
            }
            builderAuthority.appendQueryParameter(TtmlNode.START, String.valueOf(Integer.valueOf(queryParameter2).intValue() + this.pageSize));
        }
        return builderAuthority.build().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchNextFeed(Feed feed, boolean z) {
        List<Feed> list;
        Intent intent = FeedDetailFragment.intent(feed);
        if (!FeedHelper.isFeedContinuousOpen(this.context) || intent == null || (list = this.feeds) == null) {
            return;
        }
        intent.putExtra(KEY_CONTINUOUS_FEED_LIST, list.size() > 0 ? JacksonUtils.writeAsString(this.feeds) : null);
        intent.putExtra(KEY_CONTINUOUS_FEED_REQUEST, this.apiRequestUrl);
        intent.putExtra(KEY_CONTINUOUS_FEED_TIMESTAMP, this.timeStamp);
        intent.putExtra(KEY_CONTINUOUS_FEED_CURRENT_POSITION, z ? 0 : this.positionInCurPage + 1);
        intent.putExtra(KEY_CONTINUOUS_FEED_FILTER_FEATURE, this.filterFeatureFeed);
        intent.putExtra(KEY_CONTINUOUS_FEED_NEXT_TOKEN, this.nextToken);
        intent.putExtra(KEY_CONTINUOUS_FEED_PAGE_SIZE, this.pageSize);
        intent.putExtra("Source", "SBB");
        intent.putExtra("SBB", true);
        try {
            ((NVFragment) this.context).startActivity(intent);
            ((NVFragment) this.context).getActivity().overridePendingTransition(R.anim.slide_in_right, R.anim.slide_out_left);
            ((NVFragment) this.context).finish();
        } catch (Exception unused) {
        }
    }

    public void startLikeAnimation(int i) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout != null) {
            feedBottomLayout.startLikeAnimation(i);
        }
    }

    public void setBottomAnimationListener(FeedBottomLayout.BottomAnimationListener bottomAnimationListener) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout != null) {
            feedBottomLayout.setBottomAnimationListener(bottomAnimationListener);
        }
    }

    public void updateVoteIcon(Feed feed, boolean z) {
        FeedBottomLayout feedBottomLayout;
        if (feed == null || (feedBottomLayout = this.bottomView) == null) {
            return;
        }
        feedBottomLayout.updateVoteIcon(feed.getVotedValue(Utils.isGlobalInteractionScope(this.context)), z, feed.getTotalVotesCount());
    }

    public void updateVoteIcon(int i, boolean z, int i2) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout != null) {
            feedBottomLayout.updateVoteIcon(i, z, i2);
        }
    }

    public void hideBottomBar() {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout == null) {
            return;
        }
        float y = feedBottomLayout.getY() - this.bottomView.getTop();
        Animator animator = this.barAnimator;
        if ((animator == null || !animator.isStarted()) && y == 0.0f) {
            this.barAnimator = ObjectAnimator.ofFloat(this.bottomView, "translationY", 0.0f, this.bottomBarHeight);
            this.barAnimator.setDuration(140L);
            this.barAnimator.start();
        }
    }

    public void showBottomBar() {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout == null) {
            return;
        }
        float y = feedBottomLayout.getY() - this.bottomView.getTop();
        Animator animator = this.barAnimator;
        if (animator == null || !animator.isStarted()) {
            int i = this.bottomBarHeight;
            if (y == i) {
                this.barAnimator = ObjectAnimator.ofFloat(this.bottomView, "translationY", i, 0.0f);
                this.barAnimator.setDuration(140L);
                this.barAnimator.start();
            }
        }
    }

    public void showTipping(boolean z) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout == null) {
            return;
        }
        feedBottomLayout.showTipping(z);
    }

    public void updateBottomView(int i, int i2, int i3) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout == null) {
            return;
        }
        feedBottomLayout.updateBottomView(i, this.isVotting, i2, i3);
    }

    public void setDarkTheme(boolean z) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout == null) {
            return;
        }
        feedBottomLayout.setDarkTheme(z);
    }

    public void setBottomViewVisible(boolean z) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout == null) {
            return;
        }
        feedBottomLayout.setVisibility(z ? 0 : 4);
    }

    public boolean isFeedBottomBarVisible() {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        return feedBottomLayout != null && feedBottomLayout.getVisibility() == 0;
    }
}
