package com.narvii.feed.quizzes;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.facebook.rebound.d;
import com.facebook.rebound.e;
import com.facebook.rebound.i;
import com.facebook.rebound.k;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.FeedContinuousViewer;
import com.narvii.feed.FeedHelper;
import com.narvii.feed.quizzes.mode.QuizzesResultResponse;
import com.narvii.feed.quizzes.share.QuizShareFragment;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.StaticViewAdapter;
import com.narvii.model.Blog;
import com.narvii.model.CurrentQuizzesResult;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.QuizQuestion;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogListResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.ShareDarkRoomHelper;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.ColorTextView;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.VersatileLoaderView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class QuizzesResultRankingListFragment extends NVListFragment {
    private static final int DEFAULT_BG_COLOR = -13882324;
    public static final String KEY_CURRENT_QUESTION = "current_question";
    public static final String KEY_CURRENT_QUIZ = "quizzes";
    private static final String KEY_CURRENT_QUIZ_RESULT = "current_quizzes_result";
    public static final String KEY_GUEST_MODE = "isGuestMode";
    private static final String KEY_NEXT_QUIZ = "next_quizzes";
    public static final String KEY_QUIZ_IN_BEST = "quizInBest";
    public static final String KEY_SHOW_NEXT_QUIZ_LAYOUT = "showNextQuizLayout";
    private static final int THRESHOLD = 50;
    private static final int TOP_COUNT_BEFORE_HOVER = 3;
    private LinearLayout beatResultView;
    private String blogId;
    String cFeedListStr;
    List<Blog> cFiltered;
    int cPosition;
    String cRequestUrl;
    String cTimeStamp;
    private CurrentQuizzesResult currentQuizzesResult;
    HellModeAdapter hellModeAdapter;
    private int hoverTopCount;
    private boolean isGuestMode;
    private ListView listView;
    MergeAdapter mergeAdapter;
    private Blog nextQuiz;
    private FrameLayout nextQuizzesContainer;
    private int oldFirstVisibleItem;
    private int oldTop;
    private boolean quizInBestQuizzes;
    QuizQuestion quizQuestion;
    private Blog quizzes;
    BlogQuizzesRankingListAdapter rankingListAdapter;
    private boolean readyToShowRightShare;
    QuizzesResultAdapter resultAdapter;
    private View rootView;
    ScoreHintAdapter scoreHintAdapter;
    ShareAndReplayAdapter shareAndReplayAdapter;
    private boolean showNextQuizLayout;
    QuizzesRankingListAdapter.RankingListTitleAdapter titleAdapter;
    private View titleHoverView;
    FeedHelper.StartQuizListener startQuizListener = new FeedHelper.StartQuizListener() { // from class: com.narvii.feed.quizzes.QuizzesResultRankingListFragment.1
        @Override // com.narvii.feed.FeedHelper.StartQuizListener
        public void onQuizStartFailed() {
        }

        @Override // com.narvii.feed.FeedHelper.StartQuizListener
        public void onQuizStarted() {
            QuizzesResultRankingListFragment.this.finish();
        }
    };
    private AbsListView.OnScrollListener scrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.feed.quizzes.QuizzesResultRankingListFragment.2
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            boolean z6;
            int top;
            if (absListView.getChildCount() == 0) {
                return;
            }
            if (QuizzesResultRankingListFragment.this.listView.getFirstVisiblePosition() <= QuizzesResultRankingListFragment.this.hoverTopCount - 1) {
                z6 = QuizzesResultRankingListFragment.this.readyToShowRightShare;
                QuizzesResultRankingListFragment.this.readyToShowRightShare = false;
            } else {
                z6 = !QuizzesResultRankingListFragment.this.readyToShowRightShare;
                QuizzesResultRankingListFragment.this.readyToShowRightShare = true;
            }
            if (z6) {
                QuizzesResultRankingListFragment.this.invalidateOptionsMenu();
            }
            if (QuizzesResultRankingListFragment.this.currentQuizzesResult != null) {
                View childAt = absListView.getChildAt(0);
                if (childAt == null) {
                    top = 0;
                } else {
                    top = childAt.getTop();
                }
                if (i10 == QuizzesResultRankingListFragment.this.oldFirstVisibleItem) {
                    if (top > QuizzesResultRankingListFragment.this.oldTop) {
                        if (top - QuizzesResultRankingListFragment.this.oldTop > 50) {
                            QuizzesResultRankingListFragment.this.onUpScrolling(i10, top);
                        }
                    } else if (top < QuizzesResultRankingListFragment.this.oldTop && QuizzesResultRankingListFragment.this.oldTop - top > 50) {
                        QuizzesResultRankingListFragment.this.onDownScrolling(i10, top);
                    }
                } else if (i10 < QuizzesResultRankingListFragment.this.oldFirstVisibleItem) {
                    QuizzesResultRankingListFragment.this.onUpScrolling(i10, top);
                } else {
                    QuizzesResultRankingListFragment.this.onDownScrolling(i10, top);
                }
                QuizzesResultRankingListFragment.this.oldTop = top;
                QuizzesResultRankingListFragment.this.oldFirstVisibleItem = i10;
            }
            if (QuizzesResultRankingListFragment.this.currentQuizzesResult != null) {
                QuizzesResultRankingListFragment quizzesResultRankingListFragment = QuizzesResultRankingListFragment.this;
                if (quizzesResultRankingListFragment.resultAdapter != null && i10 == 1) {
                    View childAt2 = quizzesResultRankingListFragment.listView.getChildAt(0);
                    childAt2.setAlpha((childAt2.getHeight() + childAt2.getTop()) / (childAt2.getHeight() * 1.0f));
                }
            }
        }
    };

    private class BlogQuizzesRankingListAdapter extends QuizzesRankingListAdapter {
        @Override // com.narvii.feed.quizzes.QuizzesRankingListAdapter
        protected int getBackgroundColor(boolean z6) {
            return z6 ? -16142626 : 553648127;
        }

        private BlogQuizzesRankingListAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.feed.quizzes.QuizzesRankingListAdapter
        protected Blog getBlog() {
            return QuizzesResultRankingListFragment.this.quizzes;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, QuizzesResultResponse quizzesResultResponse, int i10) {
            super.onPageResponse(apiRequest, quizzesResultResponse, i10);
            if ("start0".equals(apiRequest.tag())) {
                QuizzesResultRankingListFragment.this.currentQuizzesResult = quizzesResultResponse.quizResultOfCurrentUser;
                QuizzesResultRankingListFragment.this.quizInBestQuizzes = quizzesResultResponse.quizInBestQuizzes;
                QuizzesResultRankingListFragment.this.updateAdriftViews();
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            String str;
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/blog/" + QuizzesResultRankingListFragment.this.blogId + "/quiz/result");
            if (z6) {
                str = "start0";
            } else {
                str = null;
            }
            builderPath.tag(str);
            return builderPath.build();
        }

        @Override // com.narvii.feed.quizzes.QuizzesRankingListAdapter
        protected int getRadius() {
            return Utils.dpToPxInt(getContext(), 2.0f);
        }
    }

    class HellModeAdapter extends AdriftAdapter {
        public HellModeAdapter() {
            super(QuizzesResultRankingListFragment.this);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (QuizzesResultRankingListFragment.this.currentQuizzesResult != null && QuizzesResultRankingListFragment.this.currentQuizzesResult.isFinished && QuizzesResultRankingListFragment.this.quizInBestQuizzes) ? 1 : 0;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null || view2.getId() != R.id.hell_mode_entry) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Intent intent = new Intent();
            FeedHelper feedHelper = new FeedHelper(this);
            feedHelper.loggingSource = LoggingSource.Replay;
            feedHelper.startQuiz(QuizzesResultRankingListFragment.this.quizzes, intent, true);
            QuizzesResultRankingListFragment.this.finish();
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.quiz_hell_mode_entry, viewGroup, view);
            viewCreateView.findViewById(R.id.hell_mode_entry).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    class QuizzesResultAdapter extends AdriftAdapter {
        private boolean currentResultShown;

        @Override // com.narvii.list.AdriftAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        public QuizzesResultAdapter() {
            super(QuizzesResultRankingListFragment.this);
            this.currentResultShown = false;
        }

        private boolean isFromFeedDetail() {
            return !QuizzesResultRankingListFragment.this.showNextQuizLayout;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showBeatResultView(boolean z6) {
            if (QuizzesResultRankingListFragment.this.currentQuizzesResult == null || QuizzesResultRankingListFragment.this.beatResultView == null) {
                return;
            }
            if (!z6) {
                QuizzesResultRankingListFragment.this.beatResultView.setVisibility(0);
                return;
            }
            e eVarC = i.g().c();
            eVarC.a(new d() { // from class: com.narvii.feed.quizzes.QuizzesResultRankingListFragment.QuizzesResultAdapter.2
                @Override // com.facebook.rebound.d, com.facebook.rebound.g
                public void onSpringUpdate(e eVar) {
                    float fA = (float) k.a(eVar.c(), com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE, 1.0d, 0.1d, 1.3d);
                    if (fA > 0.2d) {
                        QuizzesResultRankingListFragment.this.beatResultView.setVisibility(0);
                    }
                    QuizzesResultRankingListFragment.this.beatResultView.setScaleX(fA);
                    QuizzesResultRankingListFragment.this.beatResultView.setScaleY(fA);
                }
            });
            eVarC.o(1.0d);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return QuizzesResultRankingListFragment.this.currentQuizzesResult == null ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            String strValueOf;
            boolean z6;
            boolean z10;
            String string;
            View viewCreateView = createView(R.layout.quizzes_result_header_layout, viewGroup, view);
            if (QuizzesResultRankingListFragment.this.currentQuizzesResult == null) {
                ((TextView) viewCreateView.findViewById(R.id.your_score_summary_hint)).setText(QuizzesResultRankingListFragment.this.getString(R.string.personal_best_score, 0));
                ((VersatileLoaderView) viewCreateView.findViewById(R.id.beatView)).setNewFinalPercentage(10.0f);
                return viewCreateView;
            }
            boolean zIsFromFeedDetail = isFromFeedDetail();
            TextView textView = (TextView) viewCreateView.findViewById(R.id.score_title);
            if (textView != null) {
                if (zIsFromFeedDetail) {
                    string = QuizzesResultRankingListFragment.this.getString(R.string.best_score);
                } else {
                    string = QuizzesResultRankingListFragment.this.getString(R.string.your_score);
                }
                textView.setText(string);
            }
            ColorTextView colorTextView = (ColorTextView) viewCreateView.findViewById(R.id.your_score);
            if (colorTextView != null) {
                if (zIsFromFeedDetail) {
                    strValueOf = String.valueOf(QuizzesResultRankingListFragment.this.currentQuizzesResult.highestScore);
                } else {
                    strValueOf = String.valueOf(QuizzesResultRankingListFragment.this.currentQuizzesResult.latestScore);
                }
                colorTextView.setText(strValueOf);
                if (!zIsFromFeedDetail ? QuizzesResultRankingListFragment.this.currentQuizzesResult.latestMode == 1 : QuizzesResultRankingListFragment.this.currentQuizzesResult.highestMode == 1) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                QuizzesResultRankingListFragment quizzesResultRankingListFragment = QuizzesResultRankingListFragment.this;
                if (quizzesResultRankingListFragment.currentQuizzesResult.isFinished && z6) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                quizzesResultRankingListFragment.updateColorScoreView(colorTextView, z10);
            }
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.your_score_summary_hint);
            QuizzesResultRankingListFragment quizzesResultRankingListFragment2 = QuizzesResultRankingListFragment.this;
            String string2 = quizzesResultRankingListFragment2.getString(R.string.personal_best_score, Integer.valueOf(quizzesResultRankingListFragment2.currentQuizzesResult.highestScore));
            if (zIsFromFeedDetail) {
                string2 = getContext().getString(R.string.last_score_n, Integer.valueOf(QuizzesResultRankingListFragment.this.currentQuizzesResult.latestScore));
            }
            int i12 = QuizzesResultRankingListFragment.this.currentQuizzesResult.totalTimes;
            StringBuilder sb = new StringBuilder();
            sb.append(string2);
            sb.append(" (");
            Context context = getContext();
            if (i12 == 1) {
                i11 = R.string.quiz_played_time;
            } else {
                i11 = R.string.quiz_played_times;
            }
            sb.append(context.getString(i11, Integer.valueOf(i12)));
            sb.append(")");
            String string3 = sb.toString();
            if (textView2 != null) {
                textView2.setText(string3);
            }
            QuizzesResultRankingListFragment.this.beatResultView = (LinearLayout) viewCreateView.findViewById(R.id.rate_result_view);
            TextView textView3 = (TextView) QuizzesResultRankingListFragment.this.beatResultView.findViewById(R.id.beat_title);
            if (textView3 != null) {
                QuizzesResultRankingListFragment quizzesResultRankingListFragment3 = QuizzesResultRankingListFragment.this;
                textView3.setText(quizzesResultRankingListFragment3.getString(R.string.quizzes_result_defeat_you, Integer.valueOf(quizzesResultRankingListFragment3.currentQuizzesResult.getCurBeatRate())));
            }
            TextView textView4 = (TextView) QuizzesResultRankingListFragment.this.beatResultView.findViewById(R.id.beat_number);
            if (textView4 != null) {
                textView4.setText(String.valueOf(QuizzesResultRankingListFragment.this.currentQuizzesResult.getCurBeatRate()) + "%");
            }
            VersatileLoaderView versatileLoaderView = (VersatileLoaderView) viewCreateView.findViewById(R.id.beatView);
            int curBeatRate = QuizzesResultRankingListFragment.this.currentQuizzesResult.getCurBeatRate();
            if (!this.currentResultShown) {
                versatileLoaderView.setNewFinalPercentage(curBeatRate);
                versatileLoaderView.setStateChangeListener(new VersatileLoaderView.OnStateChangeListener() { // from class: com.narvii.feed.quizzes.QuizzesResultRankingListFragment.QuizzesResultAdapter.1
                    @Override // com.narvii.widget.VersatileLoaderView.OnStateChangeListener
                    public void onStateChange(int i13) {
                        if (i13 == 2) {
                            QuizzesResultRankingListFragment.this.beatResultView.setVisibility(0);
                            QuizzesResultAdapter.this.showBeatResultView(true);
                            QuizzesResultAdapter.this.currentResultShown = true;
                        }
                    }
                });
            } else {
                versatileLoaderView.setToFinalFrame(curBeatRate);
                QuizzesResultRankingListFragment.this.beatResultView.setVisibility(0);
                showBeatResultView(false);
            }
            return viewCreateView;
        }
    }

    class ScoreHintAdapter extends AdriftAdapter {
        @Override // com.narvii.list.AdriftAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        public ScoreHintAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return createView(R.layout.quizzes_result_hint, viewGroup, view);
        }
    }

    class ShareAndReplayAdapter extends AdriftAdapter {
        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // com.narvii.list.AdriftAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        public ShareAndReplayAdapter() {
            super(QuizzesResultRankingListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(QuizzesResultRankingListFragment.this.currentQuizzesResult == null ? R.layout.quiz_result_no_score : R.layout.quizzes_result_share_layout, viewGroup, view, Boolean.valueOf(QuizzesResultRankingListFragment.this.currentQuizzesResult == null));
            if (QuizzesResultRankingListFragment.this.currentQuizzesResult == null) {
                View viewFindViewById = viewCreateView.findViewById(R.id.quiz_play_layout);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(this.subviewClickListener);
                }
                TextView textView = (TextView) viewCreateView.findViewById(R.id.share);
                if (textView != null) {
                    SpannableString spannableString = new SpannableString(QuizzesResultRankingListFragment.this.getString(R.string.tell_friend));
                    spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 17);
                    textView.setText(spannableString);
                }
                View viewFindViewById2 = viewCreateView.findViewById(R.id.share_container);
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setOnClickListener(this.subviewClickListener);
                }
            } else {
                viewCreateView.findViewById(R.id.quizzes_share).setOnClickListener(this.subviewClickListener);
                View viewFindViewById3 = viewCreateView.findViewById(R.id.quizzes_replay);
                viewFindViewById3.setOnClickListener(this.subviewClickListener);
                if (QuizzesResultRankingListFragment.this.currentQuizzesResult == null || QuizzesResultRankingListFragment.this.currentQuizzesResult.isFinished) {
                    viewFindViewById3.clearAnimation();
                } else {
                    viewFindViewById3.startAnimation(QuizzesResultRankingListFragment.this.getRebounceAnimation());
                    viewFindViewById3.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.narvii.feed.quizzes.QuizzesResultRankingListFragment.ShareAndReplayAdapter.1
                        @Override // android.view.View.OnAttachStateChangeListener
                        public void onViewAttachedToWindow(View view2) {
                            view2.startAnimation(QuizzesResultRankingListFragment.this.getRebounceAnimation());
                        }

                        @Override // android.view.View.OnAttachStateChangeListener
                        public void onViewDetachedFromWindow(View view2) {
                            view2.clearAnimation();
                        }
                    });
                }
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 != null) {
                if (view2.getId() == R.id.quizzes_share) {
                    QuizzesResultRankingListFragment.this.shareQuizzesScore();
                    return true;
                }
                if (view2.getId() == R.id.quizzes_replay) {
                    QuizzesResultRankingListFragment.this.replayCurrentQuizzes();
                    return true;
                }
                if (view2.getId() == R.id.share_container) {
                    new ShareDarkRoomHelper(QuizzesResultRankingListFragment.this).saveDynamicThemeBg(QuizzesResultRankingListFragment.this.getActivity());
                    QuizShareFragment.startQuizShareIntent(this.context, QuizzesResultRankingListFragment.this.quizzes, new Callback<Intent>() { // from class: com.narvii.feed.quizzes.QuizzesResultRankingListFragment.ShareAndReplayAdapter.2
                        public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
                            if (p1 == null) {
                                return;
                            }
                            p0.startActivity(p1);
                        }

                        @Override // com.narvii.util.Callback
                        public void call(Intent intent) {
                            try {
                                intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, "Quiz Ranking");
                                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(((NVAdapter) ShareAndReplayAdapter.this).context, intent);
                            } catch (Exception unused) {
                            }
                        }
                    });
                } else if (view2.getId() == R.id.quiz_play_layout) {
                    QuizzesResultRankingListFragment quizzesResultRankingListFragment = QuizzesResultRankingListFragment.this;
                    quizzesResultRankingListFragment.playQuiz(quizzesResultRankingListFragment.quizzes, true);
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
    }

    class TopAdapter extends AdriftAdapter {
        public TopAdapter() {
            super(QuizzesResultRankingListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.quizzes_result_top_offset, viewGroup, view);
            int actionBarOverlaySize = QuizzesResultRankingListFragment.this.getActionBarOverlaySize();
            ViewGroup.LayoutParams layoutParams = viewCreateView.getLayoutParams();
            layoutParams.height = actionBarOverlaySize;
            viewCreateView.setLayoutParams(layoutParams);
            return viewCreateView;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDownScrolling(int i10, int i11) {
        updateListView(i10, i11, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpScrolling(int i10, int i11) {
        updateListView(i10, i11, true);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    private void changeListPadding(int i10) {
        ListView listView = this.listView;
        if (listView == null) {
            return;
        }
        listView.setPadding(listView.getPaddingLeft(), i10, this.listView.getPaddingRight(), this.listView.getPaddingBottom());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void filterNextQuizFromList(List<? extends Feed> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.cFiltered = new ArrayList();
        for (Feed feed : list) {
            if (!Utils.isEqualsNotNull(feed.id(), this.quizzes.id()) && (feed instanceof Blog)) {
                Blog blog = (Blog) feed;
                if (blog.type == 6) {
                    this.cFiltered.add(blog);
                }
            }
        }
        if (this.cFiltered.size() > 0) {
            this.nextQuiz = this.cFiltered.remove(0);
        }
        this.cFeedListStr = JacksonUtils.writeAsString(this.cFiltered);
    }

    private void handleContinousFeeds() {
        filterNextQuizFromList(JacksonUtils.readListUsing(this.cFeedListStr, new Feed.FeedDeserializer()));
        Blog blog = this.nextQuiz;
        if (blog != null) {
            updateNextQuizzesContainer(blog);
        } else {
            if (this.cRequestUrl == null) {
                sendNextQuizzesRequest();
                return;
            }
            ((ApiService) getService("api")).exec(new ApiRequest.Builder()._url(new FeedContinuousViewer().buildNewRequestApi(Uri.parse(this.cRequestUrl), this.cPosition, this.cTimeStamp)).build(), new ApiResponseListener<BlogListResponse>(BlogListResponse.class) { // from class: com.narvii.feed.quizzes.QuizzesResultRankingListFragment.3
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, BlogListResponse blogListResponse) throws Exception {
                    super.onFinish(apiRequest, blogListResponse);
                    List<Blog> list = blogListResponse.list();
                    if (list == null || list.size() == 0 || !QuizzesResultRankingListFragment.this.isAdded()) {
                        return;
                    }
                    QuizzesResultRankingListFragment.this.saveContinousState(list, apiRequest.url(), blogListResponse.timestamp, QuizzesResultRankingListFragment.this.cPosition);
                    QuizzesResultRankingListFragment.this.filterNextQuizFromList(list);
                    if (QuizzesResultRankingListFragment.this.nextQuiz == null) {
                        QuizzesResultRankingListFragment.this.sendNextQuizzesRequest();
                    } else {
                        QuizzesResultRankingListFragment quizzesResultRankingListFragment = QuizzesResultRankingListFragment.this;
                        quizzesResultRankingListFragment.updateNextQuizzesContainer(quizzesResultRankingListFragment.nextQuiz);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    QuizzesResultRankingListFragment.this.sendNextQuizzesRequest();
                }
            });
        }
    }

    private void handleNextQuizzes() {
        if (!this.showNextQuizLayout) {
            FrameLayout frameLayout = this.nextQuizzesContainer;
            if (frameLayout != null) {
                frameLayout.setVisibility(4);
                return;
            }
            return;
        }
        if (this.isGuestMode) {
            updateNextQuizzesContainer(this.quizzes);
            return;
        }
        Blog blog = this.nextQuiz;
        if (blog != null) {
            updateNextQuizzesContainer(blog);
        } else {
            handleContinousFeeds();
        }
    }

    private void initFragmentView(View view) {
        View view2;
        ImageView imageView;
        if (view == null) {
            return;
        }
        View customView = getActivity().getActionBar().getCustomView();
        if (customView != null && (imageView = (ImageView) customView.findViewById(R.id.actionbar_back)) != null) {
            imageView.setImageResource(R.drawable.ic_back_cross);
        }
        if (isAdded() && getActivity() != null) {
            getActivity().getWindow().setBackgroundDrawable(new ColorDrawable(-15461356));
        }
        ((FullscreenBackgroundView) view.findViewById(R.id.quizzes_background)).setBackgroundSource(this.quizzes);
        setTitle((CharSequence) null);
        ImageView imageView2 = (ImageView) view.findViewById(R.id.top_background);
        if (imageView2 != null) {
            try {
                imageView2.setImageResource(R.drawable.ic_quizzes_top_bg);
            } catch (OutOfMemoryError e) {
                OomHelper.test(e);
            }
        }
        View viewFindViewById = view.findViewById(R.id.empty_text);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setText(getString(R.string.quiz_result_empty));
        }
        ListView listView = getListView();
        this.listView = listView;
        if (listView != null) {
            listView.setDividerHeight(0);
            this.listView.setDivider(null);
        }
        int actionBarOverlaySize = getActionBarOverlaySize() + getStatusBarOverlaySize();
        ListView listView2 = this.listView;
        if (listView2 instanceof NVListView) {
            ((NVListView) listView2).addOnScrollListener(this.scrollListener);
        }
        View viewFindViewById2 = view.findViewById(R.id.title_hover);
        this.titleHoverView = viewFindViewById2;
        viewFindViewById2.setVisibility(4);
        int iDpToPx = (int) Utils.dpToPx(getContext(), 6.0f);
        if (isAdded() && (view2 = this.titleHoverView) != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.topMargin = actionBarOverlaySize;
                marginLayoutParams.leftMargin = iDpToPx;
                marginLayoutParams.rightMargin = iDpToPx;
            }
        }
        this.nextQuizzesContainer = (FrameLayout) view.findViewById(R.id.next_quizzes_container);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playQuiz(Blog blog, boolean z6) {
        FeedHelper feedHelper = new FeedHelper(this);
        Intent intent = getActivity().getIntent();
        if (intent != null) {
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_REQUEST, this.cRequestUrl);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_LIST, this.cFeedListStr);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_TIMESTAMP, this.cTimeStamp);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_CURRENT_POSITION, this.cPosition + 1);
            intent.putExtra("fromQuizFeedList", true);
        }
        feedHelper.startQuizListener = this.startQuizListener;
        if (z6) {
            feedHelper.loggingSource = LoggingSource.Replay;
        } else {
            feedHelper.loggingSource = LoggingSource.Next;
        }
        feedHelper.startQuiz(blog, intent);
        StatisticsService statisticsService = (StatisticsService) getService("statistics");
        if (z6) {
            statisticsService.event("Start Quiz").source("Ranking Page").userPropInc("Start Quiz Total");
        } else {
            statisticsService.event("Next Quiz").userPropInc("Next Quiz Total");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replayCurrentQuizzes() {
        FeedHelper feedHelper = new FeedHelper(this);
        feedHelper.loggingSource = LoggingSource.Replay;
        feedHelper.startQuizListener = this.startQuizListener;
        feedHelper.startQuiz(this.quizzes, getActivity().getIntent());
        ((StatisticsService) getService("statistics")).event("Replay Quiz").source("Results View").userPropInc("Replay Quiz Total");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveContinousState(List<Blog> list, String str, String str2, int i10) {
        this.cTimeStamp = str2;
        this.cFeedListStr = JacksonUtils.writeAsString(list);
        this.cRequestUrl = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNextQuizzesRequest() {
        if (this.quizzes == null) {
            return;
        }
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/blog/" + this.quizzes.id() + "/quiz/next").build(), new ApiResponseListener<BlogResponse>(BlogResponse.class) { // from class: com.narvii.feed.quizzes.QuizzesResultRankingListFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, BlogResponse blogResponse) throws Exception {
                super.onFinish(apiRequest, blogResponse);
                Blog blog = blogResponse.blog;
                if (blog == null || blog.type != 6) {
                    return;
                }
                QuizzesResultRankingListFragment.this.nextQuiz = blog;
                QuizzesResultRankingListFragment quizzesResultRankingListFragment = QuizzesResultRankingListFragment.this;
                quizzesResultRankingListFragment.updateNextQuizzesContainer(quizzesResultRankingListFragment.nextQuiz);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shareQuizzesScore() {
        new ShareDarkRoomHelper(this).saveDynamicThemeBg(getActivity());
        QuizShareFragment.startQuizShareIntent(this, this.quizzes, new Callback<Intent>() { // from class: com.narvii.feed.quizzes.QuizzesResultRankingListFragment.9
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
                    intent.putExtra(QuizShareFragment.KEY_CURRENT_QUIZZES_RESULT, JacksonUtils.writeAsString(QuizzesResultRankingListFragment.this.currentQuizzesResult));
                    intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, QuizzesResultRankingListFragment.this.getBooleanParam(QuizzesResultRankingListFragment.KEY_GUEST_MODE) ? "Quiz Results" : "Quiz Ranking");
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(QuizzesResultRankingListFragment.this, intent);
                } catch (Exception unused) {
                }
            }
        });
    }

    private void showNextQuizzesLayout() {
        FrameLayout frameLayout = this.nextQuizzesContainer;
        if (frameLayout == null) {
            return;
        }
        frameLayout.setVisibility(0);
        e eVarC = i.g().c();
        eVarC.a(new d() { // from class: com.narvii.feed.quizzes.QuizzesResultRankingListFragment.8
            @Override // com.facebook.rebound.d, com.facebook.rebound.g
            public void onSpringUpdate(e eVar) {
                if (QuizzesResultRankingListFragment.this.isAdded()) {
                    QuizzesResultRankingListFragment.this.nextQuizzesContainer.setTranslationY((1.0f - ((float) eVar.c())) * Utils.dpToPx(QuizzesResultRankingListFragment.this.getContext(), 90.0f));
                }
            }
        });
        eVarC.o(1.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColorScoreView(ColorTextView colorTextView, boolean z6) {
        if (colorTextView == null) {
            return;
        }
        colorTextView.setTextColors(z6 ? new int[]{-1, -886996} : new int[]{-1, -1});
        colorTextView.invalidate();
    }

    private void updateListView(int i10, int i11, boolean z6) {
        int i12 = this.hoverTopCount;
        if (z6) {
            i12++;
        }
        int actionBarOverlaySize = getActionBarOverlaySize() + getStatusBarOverlaySize();
        if (!z6 && this.hoverTopCount == i10) {
            Utils.dpToPx(getContext(), 31.0f);
        }
        if (i10 > i12) {
            changeListPadding(actionBarOverlaySize + this.titleHoverView.getHeight());
            View view = this.titleHoverView;
            if (view != null) {
                view.setVisibility(0);
                return;
            }
            return;
        }
        changeListPadding(0);
        View view2 = this.titleHoverView;
        if (view2 != null) {
            view2.setVisibility(4);
        }
    }

    private void updateNextQuiz() {
        View viewFindViewById;
        if (this.nextQuizzesContainer == null || isFinishing() || !isAdded() || (viewFindViewById = this.nextQuizzesContainer.findViewById(R.id.quizzes_next_play_container)) == null) {
            return;
        }
        CurrentQuizzesResult currentQuizzesResult = this.currentQuizzesResult;
        if (currentQuizzesResult == null || currentQuizzesResult.isFinished) {
            viewFindViewById.startAnimation(getRebounceAnimation());
            viewFindViewById.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.narvii.feed.quizzes.QuizzesResultRankingListFragment.7
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    view.startAnimation(QuizzesResultRankingListFragment.this.getRebounceAnimation());
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    view.clearAnimation();
                }
            });
        } else {
            viewFindViewById.clearAnimation();
        }
        TextView textView = (TextView) this.nextQuizzesContainer.findViewById(R.id.play_hint);
        if (textView != null) {
            if (this.currentQuizzesResult == null) {
                textView.setText(getString(R.string.start_quiz));
            } else {
                textView.setText(getString(R.string.next_quizzes));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNextQuizzesContainer(final Blog blog) {
        View viewInflate;
        if (this.nextQuizzesContainer == null || isFinishing() || !isAdded()) {
            return;
        }
        if (blog == null) {
            this.nextQuizzesContainer.setVisibility(4);
            return;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        if (this.nextQuizzesContainer.getChildCount() != 0) {
            viewInflate = this.nextQuizzesContainer.getChildAt(0);
        } else {
            viewInflate = layoutInflaterFrom.inflate(R.layout.quizzes_next_one_layout, (ViewGroup) this.nextQuizzesContainer, false);
            this.nextQuizzesContainer.addView(viewInflate);
        }
        NVImageView nVImageView = (NVImageView) viewInflate.findViewById(R.id.quizzes_background);
        if (nVImageView != null) {
            Media mediaFirstMedia = blog.firstMedia();
            if (mediaFirstMedia != null) {
                nVImageView.setImageMedia(mediaFirstMedia);
            } else if (blog.getBackgroundColor() != 0) {
                nVImageView.setBackgroundColor(blog.getBackgroundColor());
            } else {
                nVImageView.setBackgroundColor(DEFAULT_BG_COLOR);
            }
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.next_quizzes);
        if (textView != null && this.currentQuizzesResult == null && this.isGuestMode) {
            textView.setText(getString(R.string.post_entry_new_quiz));
        }
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.play_hint);
        if (textView2 != null) {
            if (this.currentQuizzesResult == null && this.isGuestMode) {
                textView2.setText(getString(R.string.start_quiz));
            } else {
                textView2.setText(getString(R.string.next_quizzes));
            }
        }
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.quiz_played_times);
        if (textView3 != null) {
            textView3.setText(new FeedHelper(this).getQuizHintInfo(blog));
        }
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.quizzes_title);
        if (textView4 != null) {
            textView4.setText(blog.title);
        }
        View viewFindViewById = viewInflate.findViewById(R.id.quizzes_next_play_container);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.feed.quizzes.QuizzesResultRankingListFragment.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    QuizzesResultRankingListFragment.this.playQuiz(blog, false);
                }
            });
        }
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.feed.quizzes.QuizzesResultRankingListFragment.6
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(QuizzesResultRankingListFragment.this, FeedDetailFragment.intent(blog));
                QuizzesResultRankingListFragment.this.finish();
            }
        });
        showNextQuizzesLayout();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this);
        this.resultAdapter = new QuizzesResultAdapter();
        this.scoreHintAdapter = new ScoreHintAdapter(this);
        this.rankingListAdapter = new BlogQuizzesRankingListAdapter(this);
        BlogQuizzesRankingListAdapter blogQuizzesRankingListAdapter = this.rankingListAdapter;
        Objects.requireNonNull(blogQuizzesRankingListAdapter);
        this.titleAdapter = new QuizzesRankingListAdapter.RankingListTitleAdapter(this);
        this.shareAndReplayAdapter = new ShareAndReplayAdapter();
        TopAdapter topAdapter = new TopAdapter();
        this.hellModeAdapter = new HellModeAdapter();
        this.mergeAdapter.addAdapter(topAdapter);
        this.mergeAdapter.addAdapter(this.resultAdapter);
        this.mergeAdapter.addAdapter(this.shareAndReplayAdapter);
        this.mergeAdapter.addAdapter(this.hellModeAdapter);
        this.mergeAdapter.addAdapter(this.scoreHintAdapter);
        this.mergeAdapter.addAdapter(this.titleAdapter);
        this.mergeAdapter.addAdapter(this.rankingListAdapter, true);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addLayouts(R.layout.quizze_bottom_offset_layout);
        this.mergeAdapter.addAdapter(staticViewAdapter);
        return this.mergeAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animation getRebounceAnimation() {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.quiz_action_bounce);
        animationLoadAnimation.setFillAfter(true);
        animationLoadAnimation.setRepeatCount(-1);
        animationLoadAnimation.setRepeatMode(2);
        return animationLoadAnimation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAdriftViews() {
        View view;
        int i10;
        if (isAdded() && (view = this.titleHoverView) != null) {
            view.setVisibility(4);
            QuizzesResultAdapter quizzesResultAdapter = this.resultAdapter;
            if (quizzesResultAdapter != null) {
                quizzesResultAdapter.notifyDataSetChanged();
            }
            ScoreHintAdapter scoreHintAdapter = this.scoreHintAdapter;
            if (scoreHintAdapter != null) {
                scoreHintAdapter.notifyDataSetChanged();
            }
            QuizzesRankingListAdapter.RankingListTitleAdapter rankingListTitleAdapter = this.titleAdapter;
            if (rankingListTitleAdapter != null) {
                rankingListTitleAdapter.notifyDataSetChanged();
            }
            ShareAndReplayAdapter shareAndReplayAdapter = this.shareAndReplayAdapter;
            if (shareAndReplayAdapter != null) {
                shareAndReplayAdapter.notifyDataSetChanged();
            }
            HellModeAdapter hellModeAdapter = this.hellModeAdapter;
            if (hellModeAdapter != null) {
                hellModeAdapter.notifyDataSetChanged();
            }
            updateNextQuiz();
            if (this.currentQuizzesResult == null) {
                i10 = 0;
            } else {
                i10 = 3;
            }
            this.hoverTopCount = i10;
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        String stringParam;
        String stringParam2;
        String stringParam3;
        int i10;
        super.onCreate(bundle);
        if (bundle != null) {
            stringParam = bundle.getString(KEY_NEXT_QUIZ);
            stringParam2 = bundle.getString(KEY_CURRENT_QUIZ_RESULT);
            stringParam3 = bundle.getString(KEY_CURRENT_QUIZ);
            this.isGuestMode = bundle.getBoolean(KEY_GUEST_MODE);
            this.blogId = bundle.getString("blogId");
            this.cFeedListStr = bundle.getString(FeedContinuousViewer.KEY_CONTINUOUS_FEED_LIST);
            this.cRequestUrl = bundle.getString(FeedContinuousViewer.KEY_CONTINUOUS_FEED_REQUEST);
            this.cTimeStamp = bundle.getString(FeedContinuousViewer.KEY_CONTINUOUS_FEED_TIMESTAMP);
            this.cPosition = bundle.getInt(FeedContinuousViewer.KEY_CONTINUOUS_FEED_CURRENT_POSITION);
            this.showNextQuizLayout = bundle.getBoolean(KEY_SHOW_NEXT_QUIZ_LAYOUT);
            this.quizInBestQuizzes = bundle.getBoolean(KEY_QUIZ_IN_BEST);
        } else {
            stringParam = getStringParam(KEY_NEXT_QUIZ);
            stringParam2 = getStringParam(KEY_CURRENT_QUIZ_RESULT);
            stringParam3 = getStringParam(KEY_CURRENT_QUIZ);
            this.isGuestMode = getBooleanParam(KEY_GUEST_MODE);
            this.cFeedListStr = getStringParam(FeedContinuousViewer.KEY_CONTINUOUS_FEED_LIST);
            this.cRequestUrl = getStringParam(FeedContinuousViewer.KEY_CONTINUOUS_FEED_REQUEST);
            this.cTimeStamp = getStringParam(FeedContinuousViewer.KEY_CONTINUOUS_FEED_TIMESTAMP);
            this.cPosition = getIntParam(FeedContinuousViewer.KEY_CONTINUOUS_FEED_CURRENT_POSITION);
            this.showNextQuizLayout = getBooleanParam(KEY_SHOW_NEXT_QUIZ_LAYOUT, true);
        }
        if (!TextUtils.isEmpty(stringParam)) {
            this.nextQuiz = (Blog) JacksonUtils.readAs(stringParam, Blog.class);
        }
        if (!TextUtils.isEmpty(stringParam2)) {
            this.currentQuizzesResult = (CurrentQuizzesResult) JacksonUtils.readAs(stringParam2, CurrentQuizzesResult.class);
        }
        if (!TextUtils.isEmpty(stringParam3)) {
            this.quizzes = (Blog) JacksonUtils.readAs(stringParam3, Blog.class);
        }
        Blog blog = this.quizzes;
        if (blog != null) {
            this.blogId = blog.id();
        }
        if (this.isGuestMode) {
            i10 = 0;
        } else {
            i10 = 3;
        }
        this.hoverTopCount = i10;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.share, 1, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsAction(2);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_quizzes_result_layout, viewGroup, false);
        this.rootView = viewInflate;
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.share) {
            shareQuizzesScore();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        MenuItem menuItemFindItem = menu.findItem(R.string.share);
        if (this.currentQuizzesResult == null) {
            z6 = false;
        } else {
            z6 = this.readyToShowRightShare;
        }
        menuItemFindItem.setVisible(z6);
        super.onPrepareOptionsMenu(menu);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(KEY_NEXT_QUIZ, JacksonUtils.writeAsString(this.nextQuiz));
        bundle.putString(KEY_CURRENT_QUIZ_RESULT, JacksonUtils.writeAsString(this.currentQuizzesResult));
        bundle.putString("blogId", this.blogId);
        bundle.putString(KEY_CURRENT_QUIZ, JacksonUtils.writeAsString(this.quizzes));
        bundle.putBoolean(KEY_GUEST_MODE, this.isGuestMode);
        bundle.putBoolean(KEY_SHOW_NEXT_QUIZ_LAYOUT, this.showNextQuizLayout);
        bundle.putBoolean(KEY_QUIZ_IN_BEST, this.quizInBestQuizzes);
        bundle.putString(FeedContinuousViewer.KEY_CONTINUOUS_FEED_LIST, this.cFeedListStr);
        bundle.putString(FeedContinuousViewer.KEY_CONTINUOUS_FEED_REQUEST, this.cRequestUrl);
        bundle.putString(FeedContinuousViewer.KEY_CONTINUOUS_FEED_TIMESTAMP, this.cTimeStamp);
        bundle.putInt(FeedContinuousViewer.KEY_CONTINUOUS_FEED_CURRENT_POSITION, this.cPosition);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        List<QuizQuestion> list;
        super.onViewCreated(view, bundle);
        setHasOptionsMenu(true);
        Blog blog = this.quizzes;
        if (blog != null && (list = blog.quizQuestionList) != null) {
            this.quizQuestion = list.get(list.size() - 1);
        }
        initFragmentView(view);
        handleNextQuizzes();
        updateAdriftViews();
        this.titleHoverView.setVisibility(4);
    }

    @Override // com.narvii.list.NVListFragment
    protected void updateViews() {
        super.updateViews();
        if (this.currentQuizzesResult != null && this.rootView != null) {
            getListView().setVisibility(0);
            this.rootView.findViewById(android.R.id.empty).setVisibility(4);
            this.rootView.findViewById(android.R.id.progress).setVisibility(4);
            View view = this.errorView;
            if (view != null) {
                view.setVisibility(4);
                return;
            }
            return;
        }
        if (this.rankingListAdapter != null && getListView() != null) {
            if (this.rankingListAdapter.list() != null && this.rankingListAdapter.list().size() != 0) {
                getListView().setVisibility(0);
            } else {
                getListView().setVisibility(4);
            }
        }
    }
}
