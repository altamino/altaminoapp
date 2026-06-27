package com.narvii.story.detail;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.feed.FeedHelper;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.influencer.FanClubSubscriptionDialog;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.Blog;
import com.narvii.model.TippingInfo;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.paging.PageView;
import com.narvii.paging.PageViewUtils;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.share.ShareViewHelper;
import com.narvii.story.IStoryBottomSheetListener;
import com.narvii.story.IStoryShareListener;
import com.narvii.story.detail.VoteHelper;
import com.narvii.tipping.TippingHelper;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.StoryUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;

/* loaded from: classes3.dex */
public class StoryRightButtonContainer extends LinearLayout implements View.OnClickListener {
    private AccountService accountService;
    private IStoryBottomSheetListener bottomSheetListener;
    private ConfigService configService;
    private Boolean isBookMarketd;
    private boolean isPreview;
    private NVContext nvContext;
    private Blog story;
    private IStoryShareListener storyShareListener;
    private final TippingHelper tippingHelper;
    VoteHelper.OnVoteListener voteListener;
    private boolean voting;

    public StoryRightButtonContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.voteListener = new VoteHelper.OnVoteListener() { // from class: com.narvii.story.detail.StoryRightButtonContainer.1
            @Override // com.narvii.story.detail.VoteHelper.OnVoteListener
            public void onVoteStart() {
                StoryRightButtonContainer.this.voting = true;
                StoryRightButtonContainer.this.updateView();
            }

            @Override // com.narvii.story.detail.VoteHelper.OnVoteListener
            public void onVoteEnd(boolean z) {
                StoryRightButtonContainer.this.voting = false;
                StoryRightButtonContainer.this.updateView();
            }
        };
        this.nvContext = Utils.getNVContext(getContext());
        init(context);
        this.configService = (ConfigService) this.nvContext.getService("config");
        this.accountService = (AccountService) this.nvContext.getService("account");
        this.tippingHelper = new TippingHelper(this.nvContext);
    }

    private void init(Context context) {
        setGravity(17);
        setOrientation(1);
        setClipChildren(false);
        LinearLayout.inflate(context, R.layout.story_detail_info_layout_right_buttons, this);
        updateView();
        findViewById(R.id.tipping_btn).setOnClickListener(this);
        findViewById(R.id.vote_btn).setOnClickListener(this);
        findViewById(R.id.comment_btn).setOnClickListener(this);
        findViewById(R.id.more_btn).setOnClickListener(this);
        findViewById(R.id.share_btn).setOnClickListener(this);
        ((StoryVoteIcon) findViewById(R.id.vote_icon)).setVotedValue(0);
    }

    public void setStoryInfo(Blog blog, boolean z) {
        this.story = blog;
        this.isPreview = z;
        updateView();
    }

    public void setBottomSheetListener(IStoryBottomSheetListener iStoryBottomSheetListener) {
        this.bottomSheetListener = iStoryBottomSheetListener;
    }

    public void setStoryShareListener(IStoryShareListener iStoryShareListener) {
        this.storyShareListener = iStoryShareListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateView() {
        Blog blog = this.story;
        if (blog == null) {
            return;
        }
        TippingInfo tippingInfo = blog.getTippingInfo();
        View viewFindViewById = findViewById(R.id.tipping_btn);
        if (tippingInfo != null && tippingInfo.tippable) {
            viewFindViewById.setVisibility(0);
            ((TextView) findViewById(R.id.tipping_count)).setText(getCountText(tippingInfo.tippedCoins));
        } else {
            viewFindViewById.setVisibility(8);
        }
        ((TintButton) findViewById(R.id.comment_icon)).setTintColor(-1);
        ((TextView) findViewById(R.id.comment_count)).setText(getCountText(this.story.getTotalCommentsCount()));
        StoryVoteIcon storyVoteIcon = (StoryVoteIcon) findViewById(R.id.vote_icon);
        storyVoteIcon.setVotedValue(this.story.getVotedValue(Utils.isGlobalInteractionScope(this.nvContext)) != 0 ? 4 : 0);
        storyVoteIcon.setNoneColor(-1);
        storyVoteIcon.setVisibility(this.voting ? 8 : 0);
        SpinningView spinningView = (SpinningView) findViewById(R.id.vote_progress);
        if (spinningView != null) {
            spinningView.setVisibility(this.voting ? 0 : 8);
        }
        ((TextView) findViewById(R.id.vote_count)).setText(getCountText(this.story.getTotalVotesCount()));
    }

    private String getCountText(int i) {
        return i <= 0 ? "" : TextUtils.getLiteCountWithCeil2(i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        User userProfile;
        int i2;
        if (this.isPreview) {
            NVToast.makeText(getContext(), R.string.this_is_preview, 0).show();
        }
        switch (view.getId()) {
            case R.id.comment_btn /* 2131296909 */:
                if (!checkFansOnly() && this.story != null) {
                    getLogEventClickBuilder().area("VideoArea").actSemantic(ActSemantic.checkComment).toThirdParty().send();
                    IStoryBottomSheetListener iStoryBottomSheetListener = this.bottomSheetListener;
                    if (iStoryBottomSheetListener != null) {
                        iStoryBottomSheetListener.onBottomSheetShow(1);
                        break;
                    }
                }
                break;
            case R.id.more_btn /* 2131298086 */:
                AccountService accountService = this.accountService;
                String userId = accountService == null ? null : accountService.getUserId();
                Blog blog = this.story;
                boolean zIsEqualsNotNull = Utils.isEqualsNotNull(userId, blog != null ? blog.uid() : null);
                Blog blog2 = this.story;
                boolean z = (blog2 == null || blog2.status == 9) ? false : true;
                Blog blog3 = this.story;
                boolean z2 = blog3 != null && blog3.isGlobalFeed();
                final int[] iArr = new int[16];
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                if (z) {
                    actionSheetDialog.addItem(R.string.copy_link, 0);
                    iArr[0] = R.string.copy_link;
                    actionSheetDialog.addItem(R.string.share, 0);
                    i = 2;
                    iArr[1] = R.string.share;
                } else {
                    i = 0;
                }
                if (!z2 && !Utils.isGlobalInteractionScope(this.nvContext)) {
                    actionSheetDialog.addItem(R.string.bookmark, 0);
                    iArr[i] = R.string.bookmark;
                    i++;
                }
                if (zIsEqualsNotNull) {
                    actionSheetDialog.addItem(R.string.edit, 0);
                    int i3 = i + 1;
                    iArr[i] = R.string.edit;
                    actionSheetDialog.addItem(R.string.delete, 1);
                    i = i3 + 1;
                    iArr[i3] = R.string.delete;
                }
                if (z && !zIsEqualsNotNull) {
                    if (z2 || Utils.isGlobalInteractionScope(this.nvContext)) {
                        i2 = i;
                    } else {
                        actionSheetDialog.addItem(R.string.repost, 0);
                        i2 = i + 1;
                        iArr[i] = R.string.repost;
                    }
                    actionSheetDialog.addItem(R.string.flag_for_review, 0);
                    i = i2 + 1;
                    iArr[i2] = R.string.flag_for_review;
                }
                Blog blog4 = this.story;
                if (blog4 != null && blog4.ndcId != -1 && !Utils.isGlobalInteractionScope(this.nvContext) && (userProfile = this.accountService.getUserProfile()) != null && userProfile.isCurator()) {
                    actionSheetDialog.addItem(R.string.advanced, 0);
                    iArr[i] = R.string.advanced;
                }
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.story.detail.StoryRightButtonContainer.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i4) {
                        switch (iArr[i4]) {
                            case R.string.advanced /* 2131689620 */:
                                new AdvancedOptionDialog.Builder(StoryRightButtonContainer.this.nvContext).nvObject(StoryRightButtonContainer.this.story).build().show();
                                break;
                            case R.string.bookmark /* 2131689840 */:
                                if (StoryRightButtonContainer.this.story != null) {
                                    StoryRightButtonContainer.this.getLogEventClickBuilder().actSemantic(ActSemantic.save).send();
                                }
                                StoryRightButtonContainer.this.bookmark("MoreArea");
                                break;
                            case R.string.copy_link /* 2131690229 */:
                                if (StoryRightButtonContainer.this.story != null) {
                                    StoryRightButtonContainer.this.getLogEventClickBuilder().actSemantic(ActSemantic.copyLink).send();
                                }
                                new ShareViewHelper(StoryRightButtonContainer.this.nvContext).copyLink(StoryRightButtonContainer.this.story);
                                break;
                            case R.string.delete /* 2131690312 */:
                                StoryRightButtonContainer.this.getLogEventClickBuilder().actSemantic(ActSemantic.delete).send();
                                new StoryFeedHelper(StoryRightButtonContainer.this.nvContext).delete(StoryRightButtonContainer.this.story, true);
                                break;
                            case R.string.edit /* 2131690445 */:
                                StoryRightButtonContainer.this.getLogEventClickBuilder().actSemantic(ActSemantic.edit).send();
                                NVContext pageViewParent = PageViewUtils.getPageViewParent(StoryRightButtonContainer.this);
                                if (pageViewParent == null) {
                                    pageViewParent = StoryRightButtonContainer.this.nvContext;
                                }
                                StoryFeedHelper storyFeedHelper = new StoryFeedHelper(pageViewParent);
                                storyFeedHelper.loggingSource = LoggingSource.PostDetailView;
                                storyFeedHelper.refreshAndEdit(StoryRightButtonContainer.this.story);
                                break;
                            case R.string.flag_for_review /* 2131691221 */:
                                StoryRightButtonContainer.this.getLogEventClickBuilder().actSemantic(ActSemantic.flag).send();
                                new FlagReportOptionDialog.Builder(StoryRightButtonContainer.this.nvContext).nvObject(StoryRightButtonContainer.this.story).build().show();
                                break;
                            case R.string.repost /* 2131693280 */:
                                if (StoryRightButtonContainer.this.story != null) {
                                    StoryRightButtonContainer.this.getLogEventClickBuilder().actSemantic(ActSemantic.repost).send();
                                }
                                new StoryFeedHelper(StoryRightButtonContainer.this.nvContext).source("MoreArea").repost(StoryRightButtonContainer.this.story);
                                break;
                            case R.string.share /* 2131693474 */:
                                if (StoryRightButtonContainer.this.story != null) {
                                    StoryRightButtonContainer.this.getLogEventClickBuilder().actSemantic(ActSemantic.share).send();
                                    if (StoryRightButtonContainer.this.storyShareListener != null) {
                                        StoryRightButtonContainer.this.storyShareListener.onShareStory(StoryRightButtonContainer.this.story);
                                        break;
                                    }
                                }
                                break;
                        }
                    }
                });
                actionSheetDialog.show();
                break;
            case R.id.share_btn /* 2131298850 */:
                getLogEventClickBuilder().area("ShareIcon").actSemantic(ActSemantic.share).toThirdParty().send();
                IStoryShareListener iStoryShareListener = this.storyShareListener;
                if (iStoryShareListener != null) {
                    iStoryShareListener.onShareStory(this.story);
                    break;
                }
                break;
            case R.id.tipping_btn /* 2131299204 */:
                getLogEventClickBuilder().area("PropIcon").actSemantic(ActSemantic.prop).send();
                if (!this.accountService.hasAccount()) {
                    startActivity(new Intent(this.nvContext.getContext(), (Class<?>) LoginActivity.class));
                    break;
                } else if (!checkFansOnly()) {
                    if (this.tippingHelper.isTipAuthor(this.story)) {
                        this.tippingHelper.openTippingList(this.story, null);
                        break;
                    } else {
                        this.tippingHelper.openTipDialog(this.story, null);
                        break;
                    }
                }
                break;
            case R.id.vote_btn /* 2131299541 */:
                if (!checkFansOnly() && !openBottomSheetView()) {
                    getLogEventClickBuilder().area("LikesIcon").actSemantic(ActSemantic.like).send();
                    doVote();
                    break;
                }
                break;
        }
    }

    protected void bookmark(String str) {
        if (this.story == null) {
            return;
        }
        new FeedHelper(this.nvContext).source(str).bookmark(this.story, new Callback() { // from class: com.narvii.story.detail.-$$Lambda$StoryRightButtonContainer$GKHABgSfxs3AY-AywST9MWtElfg
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f$0.lambda$bookmark$0$StoryRightButtonContainer((ApiResponse) obj);
            }
        });
    }

    public /* synthetic */ void lambda$bookmark$0$StoryRightButtonContainer(ApiResponse apiResponse) {
        NVToast.makeText(getContext(), R.string.bookmark_successful, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LogEvent.Builder getLogEventClickBuilder() {
        return StoryUtils.getLogEventClickBuilder(this, this.story, this.isPreview).area("MoreArea");
    }

    public void doVote() {
        if (!this.accountService.hasAccount()) {
            startActivity(new Intent(this.nvContext.getContext(), (Class<?>) LoginActivity.class));
            return;
        }
        VoteHelper voteHelper = new VoteHelper(this.nvContext);
        voteHelper.setCommunityId(this.story.ndcId);
        voteHelper.vote(this.story, null, this.voteListener);
    }

    private void startActivity(Intent intent) {
        PageView pageViewParent = PageViewUtils.getPageViewParent(this);
        if (pageViewParent != null) {
            pageViewParent.startActivity(intent);
        } else {
            this.nvContext.startActivity(intent);
        }
    }

    private boolean checkFansOnly() {
        User user;
        Blog blog = this.story;
        if (blog == null || !blog.needHidden) {
            return false;
        }
        String userId = this.accountService.getUserId();
        Blog blog2 = this.story;
        if (!Utils.isEqualsNotNull(userId, blog2 == null ? null : blog2.uid())) {
            Blog blog3 = this.story;
            if (blog3 != null && (user = blog3.author) != null && !user.isInfluencer()) {
                NVToast.makeText(getContext(), R.string.this_fan_club_closed_hint, 1).show();
            } else {
                Blog blog4 = this.story;
                if (blog4 != null && !android.text.TextUtils.isEmpty(blog4.uid())) {
                    FanClubSubscriptionDialog.showSubscriptionDialog(this.nvContext, this.story.uid(), this.story.ndcId, null);
                }
            }
        }
        return true;
    }

    private boolean openBottomSheetView() {
        if (!this.accountService.hasAccount()) {
            return false;
        }
        if (!(this.story.getVotedValue(Utils.isGlobalInteractionScope(this.nvContext)) != 0) || this.bottomSheetListener == null) {
            return false;
        }
        getLogEventClickBuilder().area("LikesIcon").actSemantic(ActSemantic.checkAllLikes).send();
        this.bottomSheetListener.onBottomSheetShow(0);
        return true;
    }
}
