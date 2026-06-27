package com.narvii.story.widgets;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.influencer.FanClubSubscriptionDialog;
import com.narvii.influencer.FansOnlyPostMask;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.ActType;
import com.narvii.logging.LogEvent;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.Scene;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.scene.SceneInteractLogView;
import com.narvii.scene.ScenePlayListener;
import com.narvii.scene.ScenePlayRecord;
import com.narvii.scene.ScenePlayView;
import com.narvii.scene.ScenePollQuizHelper;
import com.narvii.scene.quiz.QuizQuestionResult;
import com.narvii.story.IStoryBottomSheetListener;
import com.narvii.story.IStoryLongClickListener;
import com.narvii.story.IStoryShareListener;
import com.narvii.story.StoryInterstitialPageFragment;
import com.narvii.story.detail.StoryInfoCover;
import com.narvii.story.quiz.StoryQuizRankingListFragment;
import com.narvii.story.quiz.StoryQuizResultLayoutNew;
import com.narvii.story.widgets.StoryItemInterceptLayout;
import com.narvii.story.widgets.StoryReplayNextView;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.StoryUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.EasyButton;
import com.narvii.widget.NVImageView;
import com.narvii.widgets.StoryProgressBar;
import java.util.List;

/* loaded from: classes3.dex */
public class StoryItemView extends FrameLayout {
    private AccountService accountService;
    private ApiRequest apiRequest;
    private View bgView;
    IStoryBottomSheetListener bottomSheetListener;
    View btnCommentBar;
    private View disableHint;
    private FansOnlyPostMask fansOnlyPostMask;
    private View fansOnlyPostMaskContainer;
    private boolean hasNext;
    public NVImageView imgStoryThumb;
    int index;
    private StoryItemInterceptLayout interceptLayout;
    private FrameLayout interstitialPageContainer;
    private View interstitialPageContainerChild;
    boolean isImmersionModel;
    private boolean isPreview;
    View.OnClickListener listener;
    private View loadingView;
    private EasyButton nextBtn;
    NVContext nvContext;
    private EasyButton playBtn;
    private ViewGroup pollQuizContainer;
    private int position;
    private EasyButton preBtn;
    public StoryProgressBar progressBar;
    private View quizResultRankingView;
    ScenePollQuizHelper scenePollQuizHelper;
    private Blog story;
    private StoryInfoCover storyInfoCover;
    private StoryInterstitialPageFragment storyInterstitialPageFragment;
    private StoryItemClickListener storyItemClickListener;
    private StoryItemPlayControlListener storyItemPlayControlListener;
    IStoryLongClickListener storyLongClickListener;
    StoryVoteView storyVoteView;
    private NVVideoView videoView;

    public StoryItemView(Context context) {
        this(context, null);
    }

    public StoryItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.index = -1;
        this.listener = new View.OnClickListener() { // from class: com.narvii.story.widgets.StoryItemView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!StoryItemView.this.isFansOnly()) {
                    if (!StoryItemView.this.isPreview) {
                        if (StoryItemView.this.story != null) {
                            StoryItemView.this.getLogEventClickBuilder().area("CommentBar").actSemantic(ActSemantic.checkComment).send();
                            IStoryBottomSheetListener iStoryBottomSheetListener = StoryItemView.this.bottomSheetListener;
                            if (iStoryBottomSheetListener != null) {
                                iStoryBottomSheetListener.onBottomSheetShow(1);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    NVToast.makeText(StoryItemView.this.getContext(), R.string.this_is_preview, 0).show();
                    return;
                }
                StoryItemView.this.performBecomeFansClick();
            }
        };
        this.nvContext = Utils.getNVContext(getContext());
        this.accountService = (AccountService) this.nvContext.getService("account");
    }

    public void setStoryItemClickListener(StoryItemClickListener storyItemClickListener) {
        this.storyItemClickListener = storyItemClickListener;
    }

    public void setStoryItemPlayControlListener(StoryItemPlayControlListener storyItemPlayControlListener) {
        this.storyItemPlayControlListener = storyItemPlayControlListener;
    }

    public void setIsImmersionModel(boolean z) {
        this.isImmersionModel = z;
    }

    @Override // android.view.View
    protected void onFinishInflate() throws Resources.NotFoundException {
        super.onFinishInflate();
        this.imgStoryThumb = (NVImageView) findViewById(R.id.img);
        this.progressBar = (StoryProgressBar) findViewById(R.id.story_progress);
        this.storyInfoCover = (StoryInfoCover) findViewById(R.id.story_info_cover);
        this.storyVoteView = (StoryVoteView) findViewById(R.id.vote_view);
        this.interceptLayout = (StoryItemInterceptLayout) findViewById(R.id.intercept_layout);
        this.interceptLayout.setItemClickListener(new StoryItemInterceptLayout.ClickListener() { // from class: com.narvii.story.widgets.StoryItemView.1
            @Override // com.narvii.story.widgets.StoryItemInterceptLayout.ClickListener
            public void onPrevDirectionClicked() {
                if (StoryItemView.this.storyItemClickListener != null) {
                    StoryItemView.this.storyItemClickListener.onPrevDirectionClicked(StoryItemView.this.position, StoryItemView.this.story);
                }
            }

            @Override // com.narvii.story.widgets.StoryItemInterceptLayout.ClickListener
            public void onNextDirectionClicked() {
                if (StoryItemView.this.storyItemClickListener != null) {
                    StoryItemView.this.storyItemClickListener.onNextDirectionClicked(StoryItemView.this.position, StoryItemView.this.story);
                }
            }

            @Override // com.narvii.story.widgets.StoryItemInterceptLayout.ClickListener
            public void onDoubleClicked(MotionEvent motionEvent) throws Resources.NotFoundException {
                StoryItemView storyItemView = StoryItemView.this;
                if (storyItemView.isImmersionModel || !storyItemView.getDoubleClickEnable()) {
                    return;
                }
                StoryItemView.this.getLogEventClickBuilder().actSemantic(ActSemantic.like).actType(ActType.doubleClick).send();
                StoryItemView.this.storyVoteView.prepareAnimation(motionEvent);
                if (StoryItemView.this.accountService.getUserId() == null || StoryItemView.this.story.getVotedValue(Utils.isGlobalInteractionScope(StoryItemView.this.nvContext)) == 4) {
                    return;
                }
                StoryItemView.this.performVote();
            }

            @Override // com.narvii.story.widgets.StoryItemInterceptLayout.ClickListener
            public void onLongClick() {
                IStoryLongClickListener iStoryLongClickListener = StoryItemView.this.storyLongClickListener;
                if (iStoryLongClickListener != null) {
                    iStoryLongClickListener.onStoryLongClicked();
                }
            }
        });
        this.videoView = (NVVideoView) findViewById(R.id.video_view);
        this.videoView.init(null, 1);
        this.videoView.setScaleType(1);
        this.btnCommentBar = findViewById(R.id.comment_bar);
        View view = this.btnCommentBar;
        if (view != null) {
            view.setOnClickListener(this.listener);
        }
        this.loadingView = this.storyInfoCover.findViewById(R.id.video_loading);
        this.playBtn = (EasyButton) findViewById(R.id.play);
        this.nextBtn = (EasyButton) findViewById(R.id.next);
        this.preBtn = (EasyButton) findViewById(R.id.pre);
        this.bgView = findViewById(R.id.bg_view);
        this.disableHint = findViewById(R.id.disable_hint);
        this.fansOnlyPostMask = (FansOnlyPostMask) findViewById(R.id.fans_only_post_mask);
        this.fansOnlyPostMaskContainer = findViewById(R.id.fans_only_post_mask_container);
        this.fansOnlyPostMask.setBecomeFansClickListener(new FansOnlyPostMask.BecomeFansClickListener() { // from class: com.narvii.story.widgets.StoryItemView.2
            @Override // com.narvii.influencer.FansOnlyPostMask.BecomeFansClickListener
            public void onBecomeFansClicked() {
                if (Utils.isEqualsNotNull(StoryItemView.this.accountService.getUserId(), StoryItemView.this.story == null ? null : StoryItemView.this.story.uid())) {
                    StoryItemView.this.fansOnlyPostMask.setVisibility(8);
                    return;
                }
                if (StoryItemView.this.story == null || StoryItemView.this.story.author == null || StoryItemView.this.story.author.isInfluencer()) {
                    if (StoryItemView.this.story == null || TextUtils.isEmpty(StoryItemView.this.story.uid())) {
                        return;
                    }
                    StoryItemView storyItemView = StoryItemView.this;
                    FanClubSubscriptionDialog.showSubscriptionDialog(storyItemView.nvContext, storyItemView.story.uid(), StoryItemView.this.story.ndcId, null);
                    return;
                }
                NVToast.makeText(StoryItemView.this.getContext(), R.string.this_fan_club_closed_hint, 1).show();
            }
        });
        this.pollQuizContainer = (ViewGroup) findViewById(R.id.poll_quiz_container);
        this.scenePollQuizHelper = new ScenePollQuizHelper(this.pollQuizContainer);
        this.interstitialPageContainer = (FrameLayout) findViewById(R.id.interestial_page_container);
        this.interstitialPageContainerChild = this.interstitialPageContainer.getChildAt(0);
        ViewGroup.LayoutParams layoutParams = findViewById(R.id.story_content).getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = this.storyInfoCover.getLayoutParams();
        ViewGroup.LayoutParams layoutParams3 = this.pollQuizContainer.getLayoutParams();
        ViewGroup.LayoutParams layoutParams4 = this.interstitialPageContainer.getLayoutParams();
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.master_tab_bar_height);
        if (Utils.isScreenRationOverThreshold(getContext())) {
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = dimensionPixelOffset;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = dimensionPixelOffset;
        }
        if (this.btnCommentBar == null) {
            ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin = dimensionPixelOffset;
            ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin = dimensionPixelOffset;
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin = 0;
        }
        this.quizResultRankingView = findViewById(R.id.quiz_result_ranking_view);
        this.quizResultRankingView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.widgets.-$$Lambda$StoryItemView$K97p3UIMRk8dWKvXBFqfUpFLfYA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onFinishInflate$0$StoryItemView(view2);
            }
        });
    }

    public /* synthetic */ void lambda$onFinishInflate$0$StoryItemView(View view) {
        if (this.isPreview) {
            NVToast.makeText(getContext(), R.string.this_is_preview, 0).show();
            return;
        }
        Context activity = null;
        Object obj = this.nvContext;
        if (obj instanceof NVFragment) {
            activity = ((NVFragment) obj).getActivity();
        } else if (obj instanceof NVActivity) {
            activity = (Activity) obj;
        }
        if (this.story == null || !(activity instanceof NVActivity)) {
            return;
        }
        getLogEventClickBuilder().area("TopPlayers").actSemantic(ActSemantic.listViewEnter).send();
        StoryQuizRankingListFragment.show((NVActivity) activity, this.story);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LogEvent.Builder getLogEventClickBuilder() {
        return StoryUtils.getLogEventClickBuilder(this, this.story, this.isPreview).area("VideoArea");
    }

    public void setOrientation(int i) {
        StoryItemInterceptLayout storyItemInterceptLayout = this.interceptLayout;
        if (storyItemInterceptLayout != null) {
            storyItemInterceptLayout.setOrientation(i);
        }
    }

    public void setStory(Blog blog, int i, Community community, boolean z, boolean z2) {
        String strId = blog == null ? null : blog.id();
        Blog blog2 = this.story;
        if (!Utils.isEqualsNotNull(strId, blog2 != null ? blog2.id() : null) && this.apiRequest != null) {
            ((ApiService) this.nvContext.getService("api")).abort(this.apiRequest);
        }
        this.story = blog;
        this.position = i;
        if (z2 && !this.isPreview) {
            ViewGroup.LayoutParams layoutParams = this.pollQuizContainer.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
            this.pollQuizContainer.setLayoutParams(layoutParams);
        }
        this.isPreview = z2;
        this.hasNext = z;
        Media extraCoverMedia = blog.getExtraCoverMedia();
        if (extraCoverMedia == null && blog.getFeedPreviewMediaList() != null && blog.getFeedPreviewMediaList().size() > 0) {
            extraCoverMedia = blog.getFeedPreviewMediaList().get(0);
        }
        this.imgStoryThumb.setImageMedia(extraCoverMedia);
        this.progressBar.setStory(blog.id(), blog.sceneList);
        StoryProgressBar storyProgressBar = this.progressBar;
        List<Scene> list = blog.sceneList;
        storyProgressBar.setSceneSize(list == null ? 0 : list.size());
        StoryProgressBar storyProgressBar2 = this.progressBar;
        List<Scene> list2 = blog.sceneList;
        storyProgressBar2.setVisibility((list2 == null || list2.size() <= 1) ? 4 : 0);
        this.storyInfoCover.setStoryInfo(blog, community, z2);
        this.disableHint.setVisibility(blog.status == 9 ? 0 : 8);
        this.fansOnlyPostMask.setAuthor(blog.author, blog.ndcId);
        this.fansOnlyPostMaskContainer.setVisibility((z2 || !blog.needHidden) ? 8 : 0);
        StoryInterstitialPageFragment storyInterstitialPageFragment = this.storyInterstitialPageFragment;
        if (storyInterstitialPageFragment != null) {
            storyInterstitialPageFragment.updateStory(blog);
        }
        if (this.isImmersionModel) {
            this.storyInfoCover.setVisibility(8);
            this.disableHint.setVisibility(8);
            this.fansOnlyPostMask.setVisibility(8);
            this.interceptLayout.setEnabled(false);
            View view = this.btnCommentBar;
            if (view != null) {
                view.setVisibility(8);
            }
        }
        this.quizResultRankingView.setVisibility(blog.containsSceneQuiz() ? 0 : 8);
    }

    public NVImageView getCoverImg() {
        return this.imgStoryThumb;
    }

    public NVVideoView getVideoView() {
        return this.videoView;
    }

    public void setSceneIndex(int i) {
        Blog blog;
        List<Scene> list;
        int size;
        String str;
        this.index = i;
        NVImageView nVImageView = this.imgStoryThumb;
        if (nVImageView != null && nVImageView.getVisibility() == 0 && (blog = this.story) != null && (list = blog.sceneList) != null && (size = list.size()) > 0 && i < size && (str = this.story.sceneList.get(i).media.coverImage) != null) {
            this.imgStoryThumb.setImageUrl(str);
        }
        this.progressBar.setCurSceneIndex(i);
    }

    public void resetIndex() {
        this.index = -1;
        this.progressBar.resetCurSceneIndex();
        this.storyInfoCover.resetViewState();
        hidePollQuiz();
    }

    public void changeInterstitialPageId(boolean z) {
        this.interstitialPageContainerChild.setId(z ? R.id.interestial_page_current : R.id.interestial_page_others);
    }

    public void resetProgressBar() {
        this.progressBar.resetCurSceneIndex();
    }

    public void setLoadingViewVisibility(int i) {
        if (this.loadingView.getVisibility() != i) {
            this.loadingView.setVisibility(i == 0 ? 0 : 4);
        }
    }

    public void setPlayBtnVisibility(int i) {
        if (this.playBtn.getVisibility() != i) {
            this.playBtn.setVisibility(i == 0 ? 0 : 4);
        }
        if (i == 4) {
            setNexBtnVisibility(4);
            setPreBtnVisibility(4);
            this.bgView.setBackgroundColor(getResources().getColor(R.color.story_list_bg_play_color));
            return;
        }
        this.bgView.setBackgroundColor(getResources().getColor(R.color.story_list_bg_pause_color));
    }

    public void setNexBtnVisibility(int i) {
        if (this.nextBtn.getVisibility() != i) {
            this.nextBtn.setVisibility(i == 0 ? 0 : 4);
        }
    }

    public void setPreBtnVisibility(int i) {
        if (this.preBtn.getVisibility() != i) {
            this.preBtn.setVisibility(i == 0 ? 0 : 4);
        }
    }

    public boolean isPlayBtnVisible() {
        return this.playBtn.getVisibility() == 0;
    }

    public void pauseProgressAnimation() {
        StoryProgressBar storyProgressBar = this.progressBar;
        if (storyProgressBar != null) {
            storyProgressBar.pauseAnimation();
        }
    }

    public void resumeProgressAnimation() {
        StoryProgressBar storyProgressBar = this.progressBar;
        if (storyProgressBar != null) {
            storyProgressBar.resumeAnimation();
        }
    }

    public void setBottomSheetListener(IStoryBottomSheetListener iStoryBottomSheetListener) {
        this.bottomSheetListener = iStoryBottomSheetListener;
        this.storyInfoCover.setBottomSheetListener(iStoryBottomSheetListener);
    }

    public void setStoryShareListener(IStoryShareListener iStoryShareListener) {
        this.storyInfoCover.setStoryShareListener(iStoryShareListener);
    }

    public void performVote() {
        this.storyInfoCover.performVote();
    }

    public boolean isFansOnly() {
        return this.fansOnlyPostMaskContainer.getVisibility() == 0;
    }

    public void performBecomeFansClick() {
        if (this.fansOnlyPostMask.getBecomeFansClickListener() != null) {
            this.fansOnlyPostMask.getBecomeFansClickListener().onBecomeFansClicked();
        }
    }

    public boolean getDoubleClickEnable() {
        return (this.playBtn.getVisibility() == 0 || this.isPreview) ? false : true;
    }

    public void onActiveChanged(boolean z) {
        if (this.pollQuizContainer != null) {
            for (int i = 0; i < this.pollQuizContainer.getChildCount(); i++) {
                KeyEvent.Callback childAt = this.pollQuizContainer.getChildAt(i);
                if (childAt instanceof ScenePlayView) {
                    ((ScenePlayView) childAt).onActiveChanged(z);
                }
            }
        }
    }

    public void showQuizResult(List<QuizQuestionResult> list, boolean z) {
        if (this.pollQuizContainer.getVisibility() == 0) {
            return;
        }
        this.pollQuizContainer.setVisibility(0);
        this.pollQuizContainer.removeAllViews();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        StoryQuizResultLayoutNew storyQuizResultLayoutNew = new StoryQuizResultLayoutNew(getContext());
        storyQuizResultLayoutNew.setData(this.story, list, this.hasNext, z);
        storyQuizResultLayoutNew.setQuizResultListener(new StoryQuizResultLayoutNew.QuizResultListener() { // from class: com.narvii.story.widgets.StoryItemView.4
            @Override // com.narvii.story.quiz.StoryQuizResultLayoutNew.QuizResultListener
            public void playNextStory(boolean z2) {
                if (StoryItemView.this.storyItemPlayControlListener != null) {
                    StoryItemView.this.storyItemPlayControlListener.onPlayNextStory(StoryItemView.this.position, StoryItemView.this.story, StoryQuizResultLayoutNew.AREA_SCORE, z2);
                }
            }

            @Override // com.narvii.story.quiz.StoryQuizResultLayoutNew.QuizResultListener
            public void replayStory() {
                StoryItemView.this.hidePollQuiz();
                if (StoryItemView.this.storyItemPlayControlListener != null) {
                    StoryItemView.this.storyItemPlayControlListener.onReplayStory(StoryItemView.this.position, StoryItemView.this.story);
                }
            }
        });
        this.pollQuizContainer.addView(storyQuizResultLayoutNew, layoutParams);
        storyQuizResultLayoutNew.logStart();
        this.pollQuizContainer.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
    }

    public void showPollQuiz(Scene scene, ScenePlayRecord scenePlayRecord, ScenePlayListener scenePlayListener) {
        this.scenePollQuizHelper.showPollQuiz(scene, scenePlayRecord, scenePlayListener, this.isPreview, this.story);
    }

    public void hidePollQuiz() {
        if (this.pollQuizContainer != null) {
            for (int i = 0; i < this.pollQuizContainer.getChildCount(); i++) {
                KeyEvent.Callback childAt = this.pollQuizContainer.getChildAt(i);
                if (childAt instanceof SceneInteractLogView) {
                    ((SceneInteractLogView) childAt).logEnd();
                }
            }
        }
        this.scenePollQuizHelper.hidePollQuiz();
    }

    public void setStoryLongClickListener(IStoryLongClickListener iStoryLongClickListener) {
        this.storyLongClickListener = iStoryLongClickListener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void initInterstitialPage(Fragment fragment, Blog blog, Community community, boolean z, boolean z2) {
        if (this.storyInterstitialPageFragment != null) {
            return;
        }
        this.storyInterstitialPageFragment = StoryInterstitialPageFragment.Companion.newInstance(blog, community, z, z2);
        this.storyInterstitialPageFragment.setReplayNextClickListener(new StoryReplayNextView.IStoryReplayNextClickListener() { // from class: com.narvii.story.widgets.StoryItemView.5
            @Override // com.narvii.story.widgets.StoryReplayNextView.IStoryReplayNextClickListener
            public void onReplay() {
                StoryItemView.this.getLogEventClickBuilder().actSemantic(ActSemantic.replay).area(StoryInterstitialPageFragment.LOG_AREA).send();
                if (StoryItemView.this.storyItemPlayControlListener != null) {
                    StoryItemView.this.storyItemPlayControlListener.onReplayStory(StoryItemView.this.position, StoryItemView.this.story);
                }
            }

            @Override // com.narvii.story.widgets.StoryReplayNextView.IStoryReplayNextClickListener
            public void onNext(boolean z3) {
                if (StoryItemView.this.storyItemPlayControlListener != null) {
                    StoryItemView.this.storyItemPlayControlListener.onPlayNextStory(StoryItemView.this.position, StoryItemView.this.story, StoryInterstitialPageFragment.LOG_AREA, z3);
                }
            }
        });
        if (fragment instanceof IStoryBottomSheetListener) {
            this.storyInterstitialPageFragment.setBottomSheetListener((IStoryBottomSheetListener) fragment);
        }
        if (fragment.getHost() != null) {
            this.storyInterstitialPageFragment.setUserVisibleHint(false);
            try {
                fragment.getChildFragmentManager().beginTransaction().replace(R.id.interestial_page_current, this.storyInterstitialPageFragment).commitNowAllowingStateLoss();
            } catch (Exception e) {
                Log.e("InterstitialPage", e);
            }
        }
    }

    public void showInterstitialPage(Fragment fragment, Blog blog, Community community, boolean z, boolean z2) {
        StoryInterstitialPageFragment storyInterstitialPageFragment = this.storyInterstitialPageFragment;
        if (storyInterstitialPageFragment == null) {
            initInterstitialPage(fragment, blog, community, z, z2);
        } else {
            storyInterstitialPageFragment.setVisibleParam(z, z2);
        }
        if (fragment.getHost() != null) {
            try {
                fragment.getChildFragmentManager().beginTransaction().replace(R.id.interestial_page_current, this.storyInterstitialPageFragment).commitNowAllowingStateLoss();
            } catch (Exception e) {
                Log.e("InterstitialPage", e);
            }
        }
        this.interstitialPageContainer.setVisibility(0);
        this.storyInterstitialPageFragment.setUserVisibleHint(true);
    }

    public void hideInterstitialPage(Fragment fragment) {
        if (this.storyInterstitialPageFragment == null) {
            return;
        }
        this.interstitialPageContainer.setVisibility(4);
        this.storyInterstitialPageFragment.setReplayNextClickListener(null);
        this.storyInterstitialPageFragment.setBottomSheetListener(null);
        if (fragment.getHost() != null) {
            fragment.getChildFragmentManager().beginTransaction().remove(this.storyInterstitialPageFragment).commitAllowingStateLoss();
        }
        this.storyInterstitialPageFragment = null;
    }

    public void setStoryPlayEnable(boolean z) {
        StoryItemInterceptLayout storyItemInterceptLayout = this.interceptLayout;
        if (storyItemInterceptLayout != null) {
            storyItemInterceptLayout.setStoryPlayEnable(z);
        }
    }

    public void hideInterstitialView() {
        if (this.storyInterstitialPageFragment == null) {
            return;
        }
        this.interstitialPageContainer.setVisibility(4);
        this.storyInterstitialPageFragment.setUserVisibleHint(false);
    }
}
