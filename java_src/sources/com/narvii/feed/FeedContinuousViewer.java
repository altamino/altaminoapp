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
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.widget.FeedBottomLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
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
        void onFail(int i10, Object obj);

        void onFinish(int i10, Object obj);

        void onStart(int i10, Object obj);
    }

    private void initBottomBar(FrameLayout frameLayout, Context context, boolean z6) {
        this.bottomBarDisplayMode = 0;
        User userProfile = this.account.getUserProfile();
        if (z6) {
            this.bottomBarDisplayMode = 3;
        } else if (userProfile != null && userProfile.isLeader()) {
            this.bottomBarDisplayMode = 1;
        } else if (userProfile != null && userProfile.isCurator()) {
            this.bottomBarDisplayMode = 2;
        }
        FeedBottomLayout feedBottomLayout = (FeedBottomLayout) LayoutInflater.from(context).inflate(R.layout.feed_detail_bottom_layout, (ViewGroup) null, false);
        this.bottomView = feedBottomLayout;
        feedBottomLayout.setOnClickListener(null);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, context.getResources().getDimensionPixelSize(R.dimen.feed_bottom_height_leader));
        layoutParams.gravity = 80;
        this.bottomView.setLayoutParams(layoutParams);
        frameLayout.addView(this.bottomView);
        if (!this.communityConfigHelper.isFeaturedPostEnabled()) {
            this.bottomView.hideFeatureButton();
        }
        this.bottomView.setBottomLayoutDisplayMode(this.bottomBarDisplayMode);
        FeedBottomLayout feedBottomLayout2 = this.bottomView;
        Feed feed = this.feed;
        int votedValue = feed == null ? 0 : feed.getVotedValue(Utils.isGlobalInteractionScope(this.context));
        Feed feed2 = this.feed;
        int totalCommentsCount = feed2 == null ? 0 : feed2.getTotalCommentsCount();
        Feed feed3 = this.feed;
        feedBottomLayout2.updateBottomView(votedValue, false, totalCommentsCount, feed3 == null ? 0 : feed3.getTotalVotesCount());
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public String buildNewRequestApi(Uri uri, String str) {
        return buildNewRequestApi(uri, str, this.positionInCurPage, this.timeStamp);
    }

    public void setIsVotting(boolean z6) {
        this.isVotting = z6;
    }

    public void updateVoteIcon(Feed feed, boolean z6) {
        FeedBottomLayout feedBottomLayout;
        if (feed == null || (feedBottomLayout = this.bottomView) == null) {
            return;
        }
        feedBottomLayout.updateVoteIcon(feed.getVotedValue(Utils.isGlobalInteractionScope(this.context)), z6, feed.getTotalVotesCount());
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
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                if (FeedContinuousViewer.this.progressDialog.isShowing()) {
                    FeedContinuousViewer.this.progressDialog.dismiss();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                String string;
                String strNodeString;
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
                    if (!feedContinuousViewer.filterFeatureFeed) {
                        arrayList2 = feedContinuousViewer.feeds;
                    } else {
                        for (Feed feed2 : feedContinuousViewer.feeds) {
                            if ((feed2 instanceof Blog) && (feed = ((Blog) feed2).refObject) != null) {
                                feed2 = feed;
                            }
                            if (feed2.featureType() == 0) {
                                arrayList2.add(feed2);
                            }
                        }
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
                    if (jsonNodeJson.findValue("childrenWrapper") != null && jsonNodeJson.findValue("childrenWrapper").findValue("itemList") != null) {
                        string = jsonNodeJson.findValue("childrenWrapper").findValue("itemList").toString();
                    } else {
                        string = "";
                    }
                    ArrayList listUsing = JacksonUtils.readListUsing(string, new Feed.FeedDeserializer());
                    FeedContinuousViewer feedContinuousViewer4 = FeedContinuousViewer.this;
                    feedContinuousViewer4.feeds = new FilterHelper(feedContinuousViewer4.context).filter(listUsing);
                }
                if (FeedContinuousViewer.this.feeds != null && FeedContinuousViewer.this.feeds.size() != 0) {
                    if (FeedContinuousViewer.this.progressDialog.isShowing()) {
                        FeedContinuousViewer.this.progressDialog.dismiss();
                    }
                    FeedContinuousViewer.this.positionInCurPage = 0;
                    JsonNode jsonNodeNodePath = JacksonUtils.nodePath(jsonNodeJson, "paging");
                    if (jsonNodeNodePath != null) {
                        FeedContinuousViewer.this.nextToken = JacksonUtils.nodeString(jsonNodeNodePath, "nextPageToken");
                    }
                    if (FeedContinuousViewer.this.nextToken == null && (str = FeedContinuousViewer.this.apiRequestUrl) != null) {
                        Uri uri = Uri.parse(str);
                        if (uri.getQueryParameterNames().contains("pagingType") && "t".equals(uri.getQueryParameter("pagingType"))) {
                            FeedContinuousViewer.this.apiRequestUrl = null;
                        }
                    }
                    if (FeedContinuousViewer.this.feeds != null && FeedContinuousViewer.this.feeds.size() > 0) {
                        FeedContinuousViewer feedContinuousViewer5 = FeedContinuousViewer.this;
                        feedContinuousViewer5.launchNextFeed((Feed) feedContinuousViewer5.feeds.get(0), true);
                        return;
                    }
                    return;
                }
                if (arrayList.contains("featuredList")) {
                    String strReplace = Uri.parse(FeedContinuousViewer.this.apiRequestUrl).getPath().replace(Module.MODULE_FEATURED, "blog-all");
                    FeedContinuousViewer feedContinuousViewer6 = FeedContinuousViewer.this;
                    feedContinuousViewer6.apiRequestUrl = feedContinuousViewer6.buildNewRequestApi(Uri.parse(feedContinuousViewer6.apiRequestUrl), strReplace, 0, FeedContinuousViewer.this.timeStamp, "t");
                    FeedContinuousViewer feedContinuousViewer7 = FeedContinuousViewer.this;
                    feedContinuousViewer7.filterFeatureFeed = true;
                    feedContinuousViewer7.loadNextPage();
                    return;
                }
                JsonNode jsonNodeNodePath2 = JacksonUtils.nodePath(jsonNodeJson, "paging");
                if (jsonNodeNodePath2 != null) {
                    strNodeString = JacksonUtils.nodeString(jsonNodeNodePath2, "nextPageToken");
                } else {
                    strNodeString = null;
                }
                if (strNodeString != null) {
                    FeedContinuousViewer.this.nextToken = strNodeString;
                    FeedContinuousViewer feedContinuousViewer8 = FeedContinuousViewer.this;
                    feedContinuousViewer8.apiRequestUrl = feedContinuousViewer8.buildNewRequestApi(Uri.parse(feedContinuousViewer8.apiRequestUrl), null);
                    FeedContinuousViewer.this.loadNextPage();
                    return;
                }
                if (FeedContinuousViewer.this.progressDialog.isShowing()) {
                    FeedContinuousViewer.this.progressDialog.dismiss();
                }
                FeedContinuousViewer.this.showNoMoreDateDialog();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNoMoreDateDialog() {
        NVToast.makeText(this.context.getContext(), this.context.getContext().getString(R.string.no_more_post), 1).show();
    }

    public void AttachFeedDetailFragment(NVContext nVContext, String str, String str2, int i10, boolean z6, List<Feed> list, boolean z10, String str3, int i11) {
        this.context = nVContext;
        this.feedHelper = new FeedHelper(nVContext);
        this.nextToken = str3;
        this.listView = ((NVListFragment) nVContext).getListView();
        this.communityConfigHelper = new CommunityConfigHelper(nVContext);
        this.feeds = list;
        this.apiRequestUrl = str;
        this.timeStamp = str2;
        this.positionInCurPage = i10;
        this.filterFeatureFeed = z6;
        this.pageSize = i11;
        if (i11 > 25) {
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
            initBottomBar((FrameLayout) this.listView.getParent(), nVContext.getContext(), z10);
        }
        String str4 = this.apiRequestUrl;
        if (str4 != null) {
            this.apiRequestUrl = buildNewRequestApi(Uri.parse(str4), null);
        }
        this.progressDialog = new ProgressDialog(nVContext.getContext());
        this.bottomBarHeight = ((NVListFragment) nVContext).getResources().getDimensionPixelSize(R.dimen.feed_bottom_height);
    }

    public String buildNewRequestApi(Uri uri, int i10, String str) {
        return buildNewRequestApi(uri, null, i10, str);
    }

    public void configureBottomBarEvent(View.OnClickListener onClickListener) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout != null) {
            feedBottomLayout.configureBottomBarClickListener(onClickListener);
        }
    }

    public void hideBottomBar() {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout == null) {
            return;
        }
        float y6 = feedBottomLayout.getY() - this.bottomView.getTop();
        Animator animator = this.barAnimator;
        if ((animator == null || !animator.isStarted()) && y6 == 0.0f) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.bottomView, "translationY", 0.0f, this.bottomBarHeight);
            this.barAnimator = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(140L);
            this.barAnimator.start();
        }
    }

    public boolean isFeedBottomBarVisible() {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        return feedBottomLayout != null && feedBottomLayout.getVisibility() == 0;
    }

    public void loadNextFeed(boolean z6) {
        int i10 = this.positionInCurPage + 1;
        List<Feed> list = this.feeds;
        if (list == null || list.size() == 0 || i10 >= this.feeds.size()) {
            loadNextPage();
        } else {
            launchNextFeed(this.feeds.get(i10), false);
        }
    }

    public void setBottomAnimationListener(FeedBottomLayout.BottomAnimationListener bottomAnimationListener) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout != null) {
            feedBottomLayout.setBottomAnimationListener(bottomAnimationListener);
        }
    }

    public void setBottomViewVisible(boolean z6) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout == null) {
            return;
        }
        feedBottomLayout.setVisibility(z6 ? 0 : 4);
    }

    public void setDarkTheme(boolean z6) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout == null) {
            return;
        }
        feedBottomLayout.setDarkTheme(z6);
    }

    public void setGoNextButtonEnable(boolean z6) {
        this.isGoNextButtonDisabled = z6;
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout != null) {
            feedBottomLayout.findViewById(R.id.next_icon_leader).setEnabled(z6);
            this.bottomView.findViewById(R.id.bottom_go_next_leader_hint).setEnabled(z6);
            this.bottomView.findViewById(R.id.next_icon_normal).setEnabled(z6);
            this.bottomView.findViewById(R.id.bottom_go_next_normal_hint).setEnabled(z6);
        }
    }

    public void setGoNextButtonVisible(boolean z6) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout != null) {
            feedBottomLayout.findViewById(R.id.bottom_go_next_leader).setVisibility(z6 ? 0 : 8);
            this.bottomView.findViewById(R.id.bottom_go_next_normal).setVisibility(z6 ? 0 : 8);
        }
    }

    public void showBottomBar() {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout == null) {
            return;
        }
        float y6 = feedBottomLayout.getY() - this.bottomView.getTop();
        Animator animator = this.barAnimator;
        if (animator == null || !animator.isStarted()) {
            int i10 = this.bottomBarHeight;
            if (y6 == i10) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.bottomView, "translationY", i10, 0.0f);
                this.barAnimator = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(140L);
                this.barAnimator.start();
            }
        }
    }

    public void showTipping(boolean z6) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout == null) {
            return;
        }
        feedBottomLayout.showTipping(z6);
    }

    public void startLikeAnimation(int i10) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout != null) {
            feedBottomLayout.startLikeAnimation(i10);
        }
    }

    public void updateBottomView(int i10, int i11, int i12) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout == null) {
            return;
        }
        feedBottomLayout.updateBottomView(i10, this.isVotting, i11, i12);
    }

    public void updateVoteIcon(int i10, boolean z6, int i11) {
        FeedBottomLayout feedBottomLayout = this.bottomView;
        if (feedBottomLayout != null) {
            feedBottomLayout.updateVoteIcon(i10, z6, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchNextFeed(Feed feed, boolean z6) {
        List<Feed> list;
        String strWriteAsString;
        int i10;
        Intent intent = FeedDetailFragment.intent(feed);
        if (FeedHelper.isFeedContinuousOpen(this.context) && intent != null && (list = this.feeds) != null) {
            if (list.size() > 0) {
                strWriteAsString = JacksonUtils.writeAsString(this.feeds);
            } else {
                strWriteAsString = null;
            }
            intent.putExtra(KEY_CONTINUOUS_FEED_LIST, strWriteAsString);
            intent.putExtra(KEY_CONTINUOUS_FEED_REQUEST, this.apiRequestUrl);
            intent.putExtra(KEY_CONTINUOUS_FEED_TIMESTAMP, this.timeStamp);
            if (z6) {
                i10 = 0;
            } else {
                i10 = this.positionInCurPage + 1;
            }
            intent.putExtra(KEY_CONTINUOUS_FEED_CURRENT_POSITION, i10);
            intent.putExtra(KEY_CONTINUOUS_FEED_FILTER_FEATURE, this.filterFeatureFeed);
            intent.putExtra(KEY_CONTINUOUS_FEED_NEXT_TOKEN, this.nextToken);
            intent.putExtra(KEY_CONTINUOUS_FEED_PAGE_SIZE, this.pageSize);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, EventConstants.LikePost.SBB);
            intent.putExtra(EventConstants.LikePost.SBB, true);
            try {
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6((NVFragment) this.context, intent);
                ((NVFragment) this.context).getActivity().overridePendingTransition(R.anim.slide_in_right, R.anim.slide_out_left);
                ((NVFragment) this.context).finish();
            } catch (Exception unused) {
            }
        }
    }

    public String buildNewRequestApi(Uri uri, String str, int i10, String str2) {
        return buildNewRequestApi(uri, str, i10, str2, null);
    }

    public String buildNewRequestApi(Uri uri, String str, int i10, String str2, String str3) {
        List<Feed> list = this.feeds;
        if (list != null && i10 + 1 >= list.size()) {
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
                if (!"pageToken".equals(str4) && !"pagingType".equals(str4) && !"start".equals(str4)) {
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
            String queryParameter2 = uri.getQueryParameter("start");
            if (TextUtils.isEmpty(str3)) {
                str3 = queryParameter;
            }
            if ("t".equals(str3)) {
                builderAuthority.appendQueryParameter("pagingType", str3);
                builderAuthority.appendQueryParameter("pageToken", this.nextToken);
            } else {
                if (queryParameter2 == null) {
                    queryParameter2 = "0";
                }
                builderAuthority.appendQueryParameter("start", String.valueOf(Integer.valueOf(queryParameter2).intValue() + this.pageSize));
            }
            return builderAuthority.build().toString();
        }
        return uri.toString();
    }
}
