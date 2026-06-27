package com.narvii.story.quiz;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.feed.quizzes.QuizzesRankingListAdapter;
import com.narvii.feed.quizzes.mode.QuizzesResultResponse;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.ObjectItemClickListener;
import com.narvii.model.Blog;
import com.narvii.model.CurrentQuizzesResult;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.Color3DTextView;
import com.narvii.widget.RadiusLayout;

/* loaded from: classes3.dex */
public class StoryQuizResultAdapter extends MergeAdapter {
    protected AccountService accountService;
    private int quizPlayedTimes;
    private CurrentQuizzesResult quizzesResult;
    private final StoryQuizzesRankingListAdapter rankingListAdapter;
    private Blog story;

    protected boolean needImpression() {
        return true;
    }

    protected void onClickLogin() {
    }

    public StoryQuizResultAdapter(NVContext nVContext) {
        super(nVContext);
        this.quizPlayedTimes = -1;
        this.accountService = (AccountService) getService("account");
        addAdapter(new LoginAdapter(this));
        addAdapter(new ScoreAdapter(this));
        this.rankingListAdapter = new StoryQuizzesRankingListAdapter(this);
        this.rankingListAdapter.setNeedImpression(needImpression());
        StoryQuizzesRankingListAdapter storyQuizzesRankingListAdapter = this.rankingListAdapter;
        storyQuizzesRankingListAdapter.getClass();
        addAdapter(new QuizzesRankingListAdapter.RankingListTitleAdapter(this));
        addAdapter(this.rankingListAdapter, true);
        addAdapter(new BottomStatisticsAdapter(this));
    }

    public void setItemClickListener(ObjectItemClickListener objectItemClickListener) {
        this.rankingListAdapter.setItemClickListener(objectItemClickListener);
    }

    public void setData(Blog blog) {
        this.story = blog;
        this.quizPlayedTimes = blog != null ? blog.getQuizPlayedTimes() : 0;
        this.quizzesResult = null;
        updateViews();
    }

    public CurrentQuizzesResult getQuizzesResult() {
        return this.quizzesResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViews() {
        notifyDataSetChanged();
    }

    public void fitHoverTitleView(View view) {
        this.rankingListAdapter.fitHoverTitleView(view);
    }

    private class LoginAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public LoginAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return !StoryQuizResultAdapter.this.accountService.hasAccount() ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.quiz_result_layout_unsingin, viewGroup, view);
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean onSubviewClick(View view, boolean z) {
            StoryQuizResultAdapter.this.onClickLogin();
            startActivity(new Intent(getContext(), (Class<?>) LoginActivity.class));
            return true;
        }
    }

    private class ScoreAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public ScoreAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return StoryQuizResultAdapter.this.accountService.hasAccount() ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.quiz_result_layout_score, viewGroup, view);
            if (StoryQuizResultAdapter.this.quizzesResult != null) {
                ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.quiz_score_background);
                ImageView imageView2 = (ImageView) viewCreateView.findViewById(R.id.quiz_score_detail_background);
                Color3DTextView color3DTextView = (Color3DTextView) viewCreateView.findViewById(R.id.your_score);
                TextView textView = (TextView) viewCreateView.findViewById(R.id.your_score_summary_hint);
                TextView textView2 = (TextView) viewCreateView.findViewById(R.id.beat_title);
                int i2 = StoryQuizResultAdapter.this.quizzesResult.latestScore;
                int lastBeatRate = StoryQuizResultAdapter.this.quizzesResult.getLastBeatRate();
                color3DTextView.setText(String.valueOf(i2));
                color3DTextView.setTextColors(new int[]{-1, -1});
                color3DTextView.setShadowColor(-8558593);
                if (i2 == 0) {
                    textView2.setText(R.string.quizzes_result_failure);
                    imageView2.setImageDrawable(null);
                    imageView.setImageResource(R.drawable.ic_quiz_result_score_background_0);
                } else {
                    textView2.setText(getContext().getString(R.string.quizzes_result_defeat_2, Integer.valueOf(lastBeatRate)));
                    if (lastBeatRate < 60) {
                        imageView.setImageResource(R.drawable.ic_quiz_result_score_background_1);
                        imageView2.setImageResource(R.drawable.ic_quiz_result_score_detail_background_1);
                    } else {
                        imageView.setImageResource(R.drawable.ic_quiz_result_score_background_2);
                        imageView2.setImageResource(R.drawable.ic_quiz_result_score_detail_background_2);
                        color3DTextView.setTextColors(new int[]{-10657, -2171});
                        color3DTextView.setShadowColor(-28898);
                    }
                }
                String string = getContext().getString(R.string.personal_best_score, Integer.valueOf(StoryQuizResultAdapter.this.quizzesResult.highestScore));
                int i3 = StoryQuizResultAdapter.this.quizzesResult.totalTimes;
                StringBuilder sb = new StringBuilder();
                sb.append(string);
                sb.append(" (");
                sb.append(getContext().getString(i3 == 1 ? R.string.quiz_played_time : R.string.quiz_played_times, Integer.valueOf(i3)));
                sb.append(")");
                textView.setText(sb.toString());
            }
            return viewCreateView;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class StoryQuizzesRankingListAdapter extends QuizzesRankingListAdapter {
        @Override // com.narvii.feed.quizzes.QuizzesRankingListAdapter
        protected int getBackgroundColor(boolean z) {
            return z ? 973078527 : 553648127;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return i == 0;
        }

        public StoryQuizzesRankingListAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.feed.quizzes.QuizzesRankingListAdapter
        protected Blog getBlog() {
            return StoryQuizResultAdapter.this.story;
        }

        @Override // com.narvii.feed.quizzes.QuizzesRankingListAdapter
        protected int getRadius() {
            return Utils.dpToPxInt(getContext(), 6.0f);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().communityId(StoryQuizResultAdapter.this.story.ndcId).path("/blog/" + StoryQuizResultAdapter.this.story.id() + "/quiz/result");
            builderPath.tag(z ? "start0" : null);
            return builderPath.build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, QuizzesResultResponse quizzesResultResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) quizzesResultResponse, i);
            if ("start0".equals(apiRequest.tag())) {
                StoryQuizResultAdapter.this.quizzesResult = quizzesResultResponse.quizResultOfCurrentUser;
                StoryQuizResultAdapter.this.quizPlayedTimes = quizzesResultResponse.quizPlayedTimes;
                StoryQuizResultAdapter.this.updateViews();
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i) {
            View viewCreateView = createView(R.layout.story_quiz_ranking_end_layout_new, viewGroup, view);
            viewCreateView.findViewById(R.id.refresh_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.quiz.-$$Lambda$StoryQuizResultAdapter$StoryQuizzesRankingListAdapter$tMEcfNUHrIOnGNV7A_AcYuq2-tM
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createListEndItem$0$StoryQuizResultAdapter$StoryQuizzesRankingListAdapter(view2);
                }
            });
            viewCreateView.setBackgroundColor(getBackgroundColor(false));
            if (viewCreateView instanceof RadiusLayout) {
                ((RadiusLayout) viewCreateView).setRadius(0, 0, getRadius(), getRadius());
            }
            return viewCreateView;
        }

        public /* synthetic */ void lambda$createListEndItem$0$StoryQuizResultAdapter$StoryQuizzesRankingListAdapter(View view) {
            refresh(0, null);
        }
    }

    private class BottomStatisticsAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public BottomStatisticsAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.quiz_result_layout_statistics, viewGroup, view);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.total_played_counter);
            if (textView != null) {
                textView.setText(getContext().getString(StoryQuizResultAdapter.this.quizPlayedTimes == 1 ? R.string.quiz_played_time_total : R.string.quiz_played_times_total, Integer.valueOf(StoryQuizResultAdapter.this.quizPlayedTimes)));
            }
            return viewCreateView;
        }
    }
}
