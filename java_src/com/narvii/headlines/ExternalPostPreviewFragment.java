package com.narvii.headlines;

import android.R;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.TextView;
import com.narvii.amino.CommunityNavBarFragment;
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
import com.narvii.util.deviceid.DeviceIDService;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.webview.WebViewFragment;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.BottomVoteIcon;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public class ExternalPostPreviewFragment extends WebViewFragment implements View.OnClickListener, NotificationListener {
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

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment
    public boolean isModel() {
        return false;
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
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
        if (getBooleanParam("fromHeadline") && isRootFragment() && getFragmentManager().findFragmentByTag("communityNavBar") == null) {
            CommunityNavBarFragment communityNavBarFragment = new CommunityNavBarFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("showBackButton", true);
            communityNavBarFragment.setArguments(bundle2);
            getFragmentManager().beginTransaction().add(R.id.content, communityNavBarFragment, "communityNavBar").commit();
        }
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (getBooleanParam("fromHeadline")) {
            if (z) {
                this.lastEnterTime = System.currentTimeMillis();
                return;
            }
            this.lastDuration += System.currentTimeMillis() - this.lastEnterTime;
            WebView webView = this.webview;
            if (webView != null) {
                int contentHeight = webView.getContentHeight();
                this.readCompleteness = (int) ((contentHeight == 0 ? 0.0f : ((this.webview.getScrollY() - this.webview.getTop()) * 1.0f) / contentHeight) * 100.0f);
            }
        }
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        HeadlineLoggingHelper headlineLoggingHelper = this.headlineLoggingHelper;
        Blog blog = this.blog;
        long j = this.lastDuration;
        if (j <= 0) {
            j = 0;
        }
        headlineLoggingHelper.logPostDetailViewQuit(blog, j, this.readCompleteness, getStringParam("channelId"));
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("blog", JacksonUtils.writeAsString(this.blog));
    }

    @Override // com.narvii.app.NVFragment
    public int getOnlineBarLift() {
        return (int) (getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.external_post_bottom_height) - Utils.dpToPx(getContext(), 20.0f));
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasOnlineBar() {
        return Boolean.valueOf(super.hasOnlineBar().booleanValue() && !isGlobalInteractionScope());
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.webview.WebViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(com.narvii.amino.mastes.R.layout.fragment_external_post_preview, viewGroup, false);
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.btnVote = (BottomVoteIcon) view.findViewById(com.narvii.amino.mastes.R.id.vote_icon);
        view.findViewById(com.narvii.amino.mastes.R.id.vote_container).setOnClickListener(this);
        view.findViewById(com.narvii.amino.mastes.R.id.comment_container).setOnClickListener(this);
        view.findViewById(com.narvii.amino.mastes.R.id.share_container).setOnClickListener(this);
        view.findViewById(com.narvii.amino.mastes.R.id.more_container).setOnClickListener(this);
        this.tvVoteCount = (TextView) view.findViewById(com.narvii.amino.mastes.R.id.vote_count);
        this.tvCommentCount = (TextView) view.findViewById(com.narvii.amino.mastes.R.id.comment_count);
        this.voteProgress = view.findViewById(com.narvii.amino.mastes.R.id.vote_progress);
        view.findViewById(com.narvii.amino.mastes.R.id.bottom_container).setOnClickListener(null);
        updateBottomViews();
    }

    @Override // com.narvii.webview.WebViewFragment, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        switch (view.getId()) {
            case com.narvii.amino.mastes.R.id.comment_container /* 2131296910 */:
                if (this.blog.getTotalCommentsCount() == 0) {
                    commentNew();
                    break;
                } else {
                    int intParam = this.blog.ndcId;
                    if (intParam <= 0) {
                        intParam = getIntParam("__communityId");
                    }
                    Intent intentBuild = new CommentListFragment.IntentBuilder().feed(JacksonUtils.writeAsString(this.blog)).type(this.blog.objectType()).id(this.blog.id()).showEmojiOnly(!((AffiliationsService) getService("affiliations")).contains(intParam)).build();
                    intentBuild.putExtra(NVActivity.INTERACTION_SCOPE, isGlobalInteractionScope());
                    startActivity(intentBuild);
                    break;
                }
            case com.narvii.amino.mastes.R.id.more_container /* 2131298088 */:
                moreOptions();
                break;
            case com.narvii.amino.mastes.R.id.share_container /* 2131298856 */:
                shareFeed(null);
                break;
            case com.narvii.amino.mastes.R.id.vote_container /* 2131299542 */:
                voteFeed();
                break;
        }
    }

    private void moreOptions() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(com.narvii.amino.mastes.R.string.share, 0);
        actionSheetDialog.addItem(com.narvii.amino.mastes.R.string.bookmark, 0);
        actionSheetDialog.addItem(com.narvii.amino.mastes.R.string.flag_for_review, 0);
        final int[] iArr = {com.narvii.amino.mastes.R.string.share, com.narvii.amino.mastes.R.string.bookmark, com.narvii.amino.mastes.R.string.flag_for_review, com.narvii.amino.mastes.R.string.open_in_browser, 0, 0, 0};
        actionSheetDialog.addItem(com.narvii.amino.mastes.R.string.open_in_browser, 0);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.headlines.ExternalPostPreviewFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                switch (iArr[i]) {
                    case com.narvii.amino.mastes.R.string.bookmark /* 2131689840 */:
                        ExternalPostPreviewFragment.this.handleBookMark();
                        break;
                    case com.narvii.amino.mastes.R.string.flag_for_review /* 2131691221 */:
                        new FeedHelper(ExternalPostPreviewFragment.this).flagForReview(ExternalPostPreviewFragment.this.blog);
                        break;
                    case com.narvii.amino.mastes.R.string.not_interested /* 2131692629 */:
                        ExternalPostPreviewFragment.this.handleNotInterest();
                        break;
                    case com.narvii.amino.mastes.R.string.open_in_browser /* 2131692796 */:
                        ExternalPostPreviewFragment.this.handleOpenBrower();
                        break;
                    case com.narvii.amino.mastes.R.string.share /* 2131693474 */:
                        ExternalPostPreviewFragment.this.shareFeed(null);
                        break;
                }
            }
        });
        actionSheetDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBookMark() {
        AffiliationsService affiliationsService = (AffiliationsService) getService("affiliations");
        final int intParam = getIntParam("__communityId");
        if (affiliationsService.contains(intParam)) {
            new FeedHelper(this).source(null).bookmark(this.blog, new Callback<ApiResponse>() { // from class: com.narvii.headlines.ExternalPostPreviewFragment.2
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    NVToast.makeText(ExternalPostPreviewFragment.this.getContext(), com.narvii.amino.mastes.R.string.bookmark_successful, 0).show();
                }
            });
            return;
        }
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(com.narvii.amino.mastes.R.string.headline_join_amino_first);
        aCMAlertDialog.addButton(com.narvii.amino.mastes.R.string.cancel, null);
        aCMAlertDialog.addButton(com.narvii.amino.mastes.R.string.join, new View.OnClickListener() { // from class: com.narvii.headlines.ExternalPostPreviewFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ExternalPostPreviewFragment.this.getActivity() instanceof SemiActivity) {
                    ((SemiActivity) ExternalPostPreviewFragment.this.getActivity()).showCommunityDetailPage(false);
                    return;
                }
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", intParam);
                ExternalPostPreviewFragment.this.startActivity(intent);
            }
        });
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNotInterest() {
        sendNoInterestRequest(this.blog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOpenBrower() {
        openInExternalWebBrowser();
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
        String deviceId = ((DeviceIDService) getService("deviceid")).getDeviceId();
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.global().path("headline/feedback/report").post();
        builder.param("type", 1);
        builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, this.languageService.getRequestPrefLanguageWithLocalAsDefault());
        builder.param("deviceID", deviceId);
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
                @Override // com.narvii.util.Callback
                public void call(Intent intent) {
                    try {
                        intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, str);
                        ExternalPostPreviewFragment.this.startActivity(intent);
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

    private String id() {
        return getStringParam("id");
    }

    private void queryFeedDetail() {
        if (this.blog == null) {
            return;
        }
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().communityId(this.blog.ndcId).path("/blog/" + id()).build(), new ApiResponseListener<BlogResponse>(BlogResponse.class) { // from class: com.narvii.headlines.ExternalPostPreviewFragment.7
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, BlogResponse blogResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) blogResponse);
                ExternalPostPreviewFragment.this.blog = blogResponse.blog;
                ExternalPostPreviewFragment.this.updateBottomViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
            }
        });
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
            this.tvCommentCount.setVisibility(this.blog.getTotalCommentsCount() <= 0 ? 8 : 0);
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
    }

    public void commentNew() {
        if (this.blog == null) {
            return;
        }
        Intent intent = new Intent(getContext(), (Class<?>) CommentPostActivity.class);
        intent.putExtra("parentType", this.blog.objectType());
        intent.putExtra("parentId", this.blog.id());
        intent.putExtra("parentSubType", this.blog.type);
        intent.putExtra(CommentListFragment.COMMENT_KEY_FEED, JacksonUtils.writeAsString(this.blog));
        intent.putExtra("stat_parent_type", StatisticHelper.getStatisticSource(this, this.blog, 1));
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
        startActivity(intent);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        Object obj = notification.obj;
        if (obj instanceof Blog) {
            Blog blog = (Blog) obj;
            String strId = blog.id();
            Blog blog2 = this.blog;
            if (Utils.isEqualsNotNull(strId, blog2 != null ? blog2.id() : null)) {
                this.blog = (Blog) blog.m46clone();
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
}
