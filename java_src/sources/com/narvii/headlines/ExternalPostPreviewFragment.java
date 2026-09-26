package com.narvii.headlines;

import a0.a;
import a0.b;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.narvii.amino.CommunityNavBarFragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.AffiliationsService;
import com.narvii.feed.FeedHelper;
import com.narvii.feed.quizzes.share.QuizShareFragment;
import com.narvii.language.ContentLanguageService;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.semicontext.SemiActivity;
import com.narvii.share.BaseShareButtonRepost;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.ShareDarkRoomHelper;
import com.narvii.share.ShareDialog;
import com.narvii.share.SharePayload;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.statistics.constants.UserPropConstants;
import com.narvii.webview.WebViewFragment;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.BottomVoteIcon;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ExternalPostPreviewFragment extends WebViewFragment implements NotificationListener {
    public static final String SOURCE = "Source";
    private Blog blog;
    private BottomVoteIcon btnVote;
    HeadlineLoggingHelper headlineLoggingHelper;
    ContentLanguageService languageService;
    private long lastDuration;
    private long lastEnterTime;
    private int readCompleteness;
    private boolean touchFeedEnd;
    private TextView tvCommentCount;
    private TextView tvVoteCount;
    private View voteProgress;
    public LoggingSource loggingSource = LoggingSource.PostDetailView;
    public LoggingOrigin loggingOrigin = null;

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment
    public boolean isModel() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBookMark() {
        AffiliationsService affiliationsService = (AffiliationsService) getService("affiliations");
        final int intParam = getIntParam("__communityId");
        if (affiliationsService.contains(intParam)) {
            new FeedHelper(this).source(null).bookmark(this.blog, new Callback<ApiResponse>() { // from class: com.narvii.headlines.ExternalPostPreviewFragment.2
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    NVToast.makeText(ExternalPostPreviewFragment.this.getContext(), R.string.bookmark_successful, 0).show();
                }
            });
            return;
        }
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(R.string.headline_join_amino_first);
        aCMAlertDialog.addButton(R.string.cancel, null);
        aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.headlines.ExternalPostPreviewFragment.3
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ExternalPostPreviewFragment.this.getActivity() instanceof SemiActivity) {
                    ((SemiActivity) ExternalPostPreviewFragment.this.getActivity()).showCommunityDetailPage(false);
                    return;
                }
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", intParam);
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ExternalPostPreviewFragment.this, intent);
            }
        });
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNotInterest() {
        sendNoInterestRequest(this.blog);
    }

    private String id() {
        return getStringParam("id");
    }

    private void moreOptions() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(R.string.share, 0);
        actionSheetDialog.addItem(R.string.bookmark, 0);
        actionSheetDialog.addItem(R.string.flag_for_review, 0);
        final int[] iArr = {R.string.share, R.string.bookmark, R.string.flag_for_review, R.string.open_in_browser, 0, 0, 0};
        actionSheetDialog.addItem(R.string.open_in_browser, 0);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.headlines.ExternalPostPreviewFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                switch (iArr[i10]) {
                    case R.string.bookmark /* 2131886523 */:
                        ExternalPostPreviewFragment.this.handleBookMark();
                        break;
                    case R.string.flag_for_review /* 2131888001 */:
                        new FeedHelper(ExternalPostPreviewFragment.this).flagForReview(ExternalPostPreviewFragment.this.blog);
                        break;
                    case R.string.not_interested /* 2131889538 */:
                        ExternalPostPreviewFragment.this.handleNotInterest();
                        break;
                    case R.string.open_in_browser /* 2131889700 */:
                        ExternalPostPreviewFragment.this.handleOpenBrower();
                        break;
                    case R.string.share /* 2131890349 */:
                        ExternalPostPreviewFragment.this.shareFeed(null);
                        break;
                }
            }
        });
        actionSheetDialog.show();
    }

    private void queryFeedDetail() {
        if (this.blog == null) {
            return;
        }
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().communityId(this.blog.ndcId).path("/blog/" + id()).build(), new ApiResponseListener<BlogResponse>(BlogResponse.class) { // from class: com.narvii.headlines.ExternalPostPreviewFragment.7
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, BlogResponse blogResponse) throws Exception {
                super.onFinish(apiRequest, blogResponse);
                ExternalPostPreviewFragment.this.blog = blogResponse.blog;
                ExternalPostPreviewFragment.this.updateBottomViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
            }
        });
    }

    private void sendNoInterestRequest(final Feed feed) {
        if (feed == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.headlines.ExternalPostPreviewFragment.4
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Notification notification = new Notification("delete", feed);
                NotificationCenter notificationCenter = (NotificationCenter) NVApplication.instance().getService("notification");
                if (notificationCenter != null) {
                    notificationCenter.sendNotification(notification);
                }
                ExternalPostPreviewFragment.this.getActivity().finish();
            }
        };
        String strK = b.k();
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.global().path("headline/feedback/report").post();
        builder.param("type", 1);
        builder.param("language", this.languageService.getRequestPrefLanguageWithLocalAsDefault());
        builder.param(a.o, strK);
        builder.param(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, Integer.valueOf(getIntParam("__communityId")));
        builder.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(feed instanceof Item ? 2 : 1));
        builder.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, feed.id());
        builder.param("channel", getStringParam("channelId"));
        ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
        progressDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shareFeed(final String str) {
        final Blog blog = this.blog;
        if ((blog instanceof Blog) && blog.type == 6) {
            new ShareDarkRoomHelper(this).saveDynamicThemeBg(getActivity());
            QuizShareFragment.startQuizShareIntent(this, blog, new Callback<Intent>() { // from class: com.narvii.headlines.ExternalPostPreviewFragment.5
                public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // com.narvii.util.Callback
                public void call(Intent intent) {
                    try {
                        intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, str);
                        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ExternalPostPreviewFragment.this, intent);
                    } catch (Exception unused) {
                    }
                }
            });
        } else if (blog != null) {
            ShareDialog.getShareDialogFromFeed(this, blog, new BaseShareButtonRepost(this) { // from class: com.narvii.headlines.ExternalPostPreviewFragment.6
                @Override // com.narvii.share.ShareButtonCustomInfo
                public void onClick(SharePayload sharePayload) {
                    new FeedHelper(ExternalPostPreviewFragment.this).source(str).repost(blog);
                }
            }).setSource(str).show();
        }
    }

    private void voteFeed() {
        new FeedHelper(this).vote(this.blog, 0, new Callback() { // from class: com.narvii.headlines.ExternalPostPreviewFragment.8
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                ExternalPostPreviewFragment.this.btnVote.setVisibility(4);
                ExternalPostPreviewFragment.this.voteProgress.setVisibility(0);
            }
        }, new Callback<Boolean>() { // from class: com.narvii.headlines.ExternalPostPreviewFragment.9
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                ExternalPostPreviewFragment.this.voteProgress.setVisibility(4);
                ExternalPostPreviewFragment.this.btnVote.setVisibility(0);
            }
        }, getBooleanParam("fromHeadline") ? LoggingSource.FeedList : null, getBooleanParam("fromHeadline") ? "Headlines" : null);
        FirebaseLogManager.logEvent(this, ((StatisticsService) getService("statistics")).event(EventConstants.LikePost.LIKE_POST).userPropInc(UserPropConstants.PostEvents.LIKES_TOTAL).param(EventConstants.PostType.POST_TYPE, StatisticHelper.getStatisticSource(this, this.blog, 1)).source(getStringParam(SOURCE)));
    }

    public void commentNew() {
        if (this.blog == null) {
            return;
        }
        Intent intent = new Intent(getContext(), (Class<?>) CommentPostActivity.class);
        intent.putExtra("parentType", this.blog.objectType());
        intent.putExtra("parentId", this.blog.id());
        intent.putExtra("parentSubType", this.blog.type);
        intent.putExtra("feed", JacksonUtils.writeAsString(this.blog));
        intent.putExtra(EventConstants.CommentPost.STAT_PARENT_TYPE, StatisticHelper.getStatisticSource(this, this.blog, 1));
        LoggingSource loggingSource = this.loggingSource;
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, loggingSource == null ? null : loggingSource.name());
        LoggingOrigin loggingOrigin = this.loggingOrigin;
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, loggingOrigin != null ? loggingOrigin.name() : null);
        intent.putExtra("autoJoin", true);
        int intParam = this.blog.ndcId;
        if (intParam <= 0) {
            intParam = getIntParam("__communityId");
        }
        intent.putExtra(CommentListFragment.COMMENT_KEY_SHOW_EMOJI_ONLY, !((AffiliationsService) getService("affiliations")).contains(intParam));
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        Object obj = notification.obj;
        if (obj instanceof Blog) {
            Blog blog = (Blog) obj;
            String strId = blog.id();
            Blog blog2 = this.blog;
            if (Utils.isEqualsNotNull(strId, blog2 != null ? blog2.id() : null)) {
                this.blog = (Blog) blog.m1622clone();
                updateBottomViews();
                return;
            }
            return;
        }
        if (obj instanceof Comment) {
            String str = notification.action;
            if (str == "new" || str == "delete") {
                Blog blog3 = this.blog;
                if (Utils.isEqualsNotNull(blog3 != null ? blog3.id() : null, ((Comment) notification.obj).parentId)) {
                    CommentHelper.updateFeedWithComment(this.blog, (Comment) notification.obj, notification.action);
                    updateBottomViews();
                }
            }
        }
    }

    public void updateBottomViews() {
        Blog blog = this.blog;
        if (blog == null) {
            return;
        }
        BottomVoteIcon bottomVoteIcon = this.btnVote;
        if (bottomVoteIcon != null) {
            bottomVoteIcon.setVotedValue(blog.getVotedValue(isGlobalInteractionScope()));
        }
        TextView textView = this.tvVoteCount;
        if (textView != null) {
            textView.setText(String.valueOf(this.blog.getTotalVotesCount()));
            this.tvVoteCount.setVisibility(this.blog.getTotalVotesCount() > 0 ? 0 : 8);
        }
        TextView textView2 = this.tvCommentCount;
        if (textView2 != null) {
            textView2.setText(String.valueOf(this.blog.getTotalCommentsCount()));
            this.tvCommentCount.setVisibility(this.blog.getTotalCommentsCount() > 0 ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOpenBrower() {
        openInExternalWebBrowser();
    }

    @Override // com.narvii.app.NVFragment
    public int getOnlineBarLift() {
        return (int) (getResources().getDimensionPixelSize(R.dimen.external_post_bottom_height) - Utils.dpToPx(getContext(), 20.0f));
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasOnlineBar() {
        boolean z6;
        if (super.hasOnlineBar().booleanValue() && !isGlobalInteractionScope()) {
            z6 = true;
        } else {
            z6 = false;
        }
        return Boolean.valueOf(z6);
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        float f;
        super.onActiveChanged(z6);
        if (getBooleanParam("fromHeadline")) {
            if (z6) {
                this.lastEnterTime = System.currentTimeMillis();
                return;
            }
            this.lastDuration += System.currentTimeMillis() - this.lastEnterTime;
            WebView webView = this.webview;
            if (webView != null) {
                int contentHeight = webView.getContentHeight();
                int scrollY = this.webview.getScrollY();
                int top = this.webview.getTop();
                if (contentHeight == 0) {
                    f = 0.0f;
                } else {
                    f = ((scrollY - top) * 1.0f) / contentHeight;
                }
                this.readCompleteness = (int) (f * 100.0f);
            }
        }
    }

    @Override // com.narvii.webview.WebViewFragment, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        switch (view.getId()) {
            case R.id.comment_container /* 2131362646 */:
                if (this.blog.getTotalCommentsCount() == 0) {
                    commentNew();
                } else {
                    int intParam = this.blog.ndcId;
                    if (intParam <= 0) {
                        intParam = getIntParam("__communityId");
                    }
                    Intent intentBuild = new CommentListFragment.IntentBuilder().feed(JacksonUtils.writeAsString(this.blog)).type(this.blog.objectType()).id(this.blog.id()).showEmojiOnly(!((AffiliationsService) getService("affiliations")).contains(intParam)).build();
                    intentBuild.putExtra(NVActivity.INTERACTION_SCOPE, isGlobalInteractionScope());
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intentBuild);
                }
                break;
            case R.id.more_container /* 2131364241 */:
                moreOptions();
                break;
            case R.id.share_container /* 2131365104 */:
                shareFeed(null);
                break;
            case R.id.vote_container /* 2131365884 */:
                voteFeed();
                break;
        }
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.blog = (Blog) JacksonUtils.readAs(getStringParam(CommunityDetailFragment.KEY_COMMUNITY), Blog.class);
        } else {
            this.blog = (Blog) JacksonUtils.readAs(bundle.getString("blog"), Blog.class);
        }
        this.languageService = (ContentLanguageService) getService("content_language");
        hideToolbar(true);
        setShowProgress(true);
        queryFeedDetail();
        this.headlineLoggingHelper = new HeadlineLoggingHelper(this);
        if (getBooleanParam("fromHeadline") && isRootFragment() && getFragmentManager().m0("communityNavBar") == null) {
            CommunityNavBarFragment communityNavBarFragment = new CommunityNavBarFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("showBackButton", true);
            communityNavBarFragment.setArguments(bundle2);
            getFragmentManager().q().c(android.R.id.content, communityNavBarFragment, "communityNavBar").j();
        }
        if (bundle == null) {
            StatisticsService statisticsService = (StatisticsService) getService("statistics");
            String statisticSource = StatisticHelper.getStatisticSource(this, this.blog, 1);
            statisticsService.event("Detailed Page Opened").param("type", statisticSource).source(getStringParam(SOURCE)).userPropInc("Detailed Page Opened Total").userPropInc("Detailed " + statisticSource + " Page Opened");
        }
    }

    @Override // com.narvii.webview.WebViewFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_external_post_preview, viewGroup, false);
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        HeadlineLoggingHelper headlineLoggingHelper = this.headlineLoggingHelper;
        Blog blog = this.blog;
        long j6 = this.lastDuration;
        if (j6 <= 0) {
            j6 = 0;
        }
        headlineLoggingHelper.logPostDetailViewQuit(blog, j6, this.readCompleteness, getStringParam("channelId"));
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("blog", JacksonUtils.writeAsString(this.blog));
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.btnVote = (BottomVoteIcon) view.findViewById(R.id.vote_icon);
        view.findViewById(R.id.vote_container).setOnClickListener(this);
        view.findViewById(R.id.comment_container).setOnClickListener(this);
        view.findViewById(R.id.share_container).setOnClickListener(this);
        view.findViewById(R.id.more_container).setOnClickListener(this);
        this.tvVoteCount = (TextView) view.findViewById(R.id.vote_count);
        this.tvCommentCount = (TextView) view.findViewById(R.id.comment_count);
        this.voteProgress = view.findViewById(R.id.vote_progress);
        view.findViewById(R.id.bottom_container).setOnClickListener(null);
        updateBottomViews();
    }
}
