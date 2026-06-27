package com.narvii.quiz;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.model.Blog;
import com.narvii.model.Media;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.EqualGridLayout;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PushButton;
import com.narvii.widget.SpinningView;
import java.util.List;

/* loaded from: classes3.dex */
public class QuizReviewListFragment extends NVFragment {
    private QuizQuestionListAdapter adapter;
    private int allItemCount;
    private int curPosition;
    LinearLayoutManager linearLayoutManager;
    protected Blog quiz;
    private List<QuizQuestion> quizQuestions;
    RecyclerView recyclerView;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755026;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        List<QuizQuestion> list;
        super.onCreate(bundle);
        if (bundle != null) {
            this.quiz = (Blog) JacksonUtils.readAs(bundle.getString(EntryManager.ENTRY_QUIZZES), Blog.class);
            this.curPosition = bundle.getInt("curPos");
            this.allItemCount = bundle.getInt("allCount");
        } else {
            this.quiz = (Blog) JacksonUtils.readAs(getStringParam(EntryManager.ENTRY_QUIZZES), Blog.class);
        }
        Blog blog = this.quiz;
        if (blog != null && (list = blog.quizQuestionList) != null) {
            this.quizQuestions = list;
        } else if (isAdded()) {
            getActivity().finish();
        }
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.quiz_review_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.adapter = new QuizQuestionListAdapter();
        this.allItemCount = this.quizQuestions.size();
        setHasOptionsMenu(true);
        this.recyclerView = (RecyclerView) view.findViewById(R.id.recycle_layout);
        initRecycleView();
        setCurTitle();
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.menu_quiz_review, menu);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        List<QuizQuestion> list = this.quizQuestions;
        menu.findItem(R.id.explanation).setVisible((list == null || list.get(this.curPosition) == null || TextUtils.isEmpty(this.quizQuestions.get(this.curPosition).quizAnswerExplanation())) ? false : true);
        menu.findItem(R.id.next).setVisible(this.curPosition < this.allItemCount - 1);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.next) {
            goNext();
        } else if (menuItem.getItemId() == R.id.explanation) {
            showExplanation();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void goNext() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            int i = this.curPosition;
            if (i + 1 >= this.allItemCount) {
                return;
            }
            recyclerView.smoothScrollToPosition(i + 1);
        }
    }

    private void showExplanation() {
        if (this.quizQuestions == null || this.curPosition >= this.allItemCount) {
            return;
        }
        AlertDialog alertDialog = new AlertDialog(getContext());
        QuizQuestion quizQuestion = this.quizQuestions.get(this.curPosition);
        alertDialog.setMessage(quizQuestion == null ? null : quizQuestion.quizAnswerExplanation());
        alertDialog.addButton(android.R.string.ok, 4, (View.OnClickListener) null);
        alertDialog.show();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(EntryManager.ENTRY_QUIZZES, JacksonUtils.writeAsString(this.quiz));
        bundle.putInt("curPos", this.curPosition);
        bundle.putInt("allCount", this.allItemCount);
    }

    private void initRecycleView() {
        if (this.recyclerView == null) {
            return;
        }
        this.linearLayoutManager = new LinearLayoutManager(getContext(), 1, false);
        this.recyclerView.setLayoutManager(this.linearLayoutManager);
        this.recyclerView.setAdapter(this.adapter);
        this.recyclerView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.quiz.QuizReviewListFragment.1
            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
                QuizReviewListFragment.this.updateActionBarView();
            }

            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                QuizReviewListFragment.this.updateActionBarView();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarView() {
        LinearLayoutManager linearLayoutManager = this.linearLayoutManager;
        if (linearLayoutManager == null || linearLayoutManager.findFirstVisibleItemPosition() == this.curPosition) {
            return;
        }
        this.curPosition = this.linearLayoutManager.findFirstVisibleItemPosition();
        setCurTitle();
        invalidateOptionsMenu();
    }

    private void setCurTitle() {
        setTitle((this.curPosition + 1) + " / " + this.allItemCount);
    }

    class QuizQuestionListAdapter extends RecyclerView.Adapter {
        private static final int TYPE_MEDIA_LIST = 0;
        private static final int TYPE_TEXT_LIST = 1;

        QuizQuestionListAdapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            List<Media> list;
            QuizQuestion quizQuestion = (QuizQuestion) QuizReviewListFragment.this.quizQuestions.get(i);
            return (quizQuestion == null || (list = quizQuestion.mediaList) == null || list.get(0) == null) ? 1 : 0;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            int i2 = R.layout.fragment_quiz_question_media;
            if (i != 0 && i == 1) {
                i2 = R.layout.fragment_quiz_question;
            }
            return QuizReviewListFragment.this.new QuizQuestionViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder instanceof QuizQuestionViewHolder) {
                QuizQuestion quizQuestion = (QuizQuestion) QuizReviewListFragment.this.quizQuestions.get(i);
                QuizReviewListFragment.this.configQuizQuestionView(quizQuestion, (QuizQuestionViewHolder) viewHolder);
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (QuizReviewListFragment.this.quizQuestions != null) {
                return QuizReviewListFragment.this.quizQuestions.size();
            }
            return 0;
        }
    }

    class QuizQuestionViewHolder extends RecyclerView.ViewHolder {
        FullscreenBackgroundView backgroundView;
        EqualGridLayout gridLayout;
        View mediaErrorView;
        SpinningView mediaLoadingView;
        NVImageView mediaView;
        TextView questionView;

        public QuizQuestionViewHolder(View view) {
            super(view);
            this.backgroundView = (FullscreenBackgroundView) view.findViewById(R.id.background);
            this.questionView = (TextView) view.findViewById(R.id.question);
            this.mediaView = (NVImageView) view.findViewById(R.id.media);
            this.mediaLoadingView = (SpinningView) view.findViewById(R.id.media_loading);
            this.mediaErrorView = view.findViewById(R.id.media_error);
            this.gridLayout = (EqualGridLayout) view.findViewById(R.id.answer_layout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void configQuizQuestionView(QuizQuestion quizQuestion, final QuizQuestionViewHolder quizQuestionViewHolder) {
        if (quizQuestion == null || quizQuestionViewHolder == null) {
            return;
        }
        FullscreenBackgroundView fullscreenBackgroundView = quizQuestionViewHolder.backgroundView;
        if (fullscreenBackgroundView != null) {
            fullscreenBackgroundView.setBackgroundDrawable(new ColorDrawable(-15461356));
            quizQuestionViewHolder.backgroundView.setBackgroundSource(quizQuestion, this.quiz);
        }
        TextView textView = quizQuestionViewHolder.questionView;
        if (textView != null) {
            textView.setText(quizQuestion.title);
        }
        View viewFindViewById = quizQuestionViewHolder.itemView.findViewById(R.id.alarm);
        View viewFindViewById2 = quizQuestionViewHolder.itemView.findViewById(R.id.alarm_bg);
        View viewFindViewById3 = quizQuestionViewHolder.itemView.findViewById(R.id.progress_bar);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(4);
        }
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(4);
        }
        if (viewFindViewById3 != null) {
            viewFindViewById3.setVisibility(4);
        }
        if (quizQuestionViewHolder.mediaView != null) {
            ((TextView) quizQuestionViewHolder.mediaErrorView.findViewById(R.id.text)).setText(getString(R.string.normal_error_offline1) + "\n" + getString(R.string.normal_error_offline2));
            quizQuestionViewHolder.mediaErrorView.setVisibility(8);
            quizQuestionViewHolder.mediaLoadingView.setVisibility(8);
            quizQuestionViewHolder.mediaView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.quiz.QuizReviewListFragment.2
                @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                public void onImageChanged(NVImageView nVImageView, int i, Media media) {
                    if (i == 4) {
                        quizQuestionViewHolder.mediaLoadingView.setVisibility(8);
                        quizQuestionViewHolder.mediaView.setVisibility(0);
                    } else if (i == 2) {
                        quizQuestionViewHolder.mediaLoadingView.setVisibility(8);
                        quizQuestionViewHolder.mediaErrorView.setVisibility(0);
                    }
                    quizQuestionViewHolder.mediaLoadingView.setVisibility(8);
                }
            });
            List<Media> list = quizQuestion.mediaList;
            quizQuestionViewHolder.mediaView.setImageMedia(list != null ? list.get(0) : null);
        }
        if (quizQuestionViewHolder.gridLayout != null) {
            List<Media> list2 = quizQuestion.mediaList;
            showAnswers(quizQuestion, (list2 == null || list2.get(0) == null) ? false : true, quizQuestionViewHolder);
        }
    }

    private void showAnswers(QuizQuestion quizQuestion, boolean z, QuizQuestionViewHolder quizQuestionViewHolder) {
        QuizOption quizOption;
        if (getActivity() == null) {
            return;
        }
        int size = CollectionUtils.getSize(quizQuestion.quizOptions());
        EqualGridLayout equalGridLayout = quizQuestionViewHolder.gridLayout;
        if (equalGridLayout == null || equalGridLayout.getChildCount() != 4) {
            for (int i = 0; i < 4; i++) {
                quizQuestionViewHolder.gridLayout.addView(LayoutInflater.from(getContext()).inflate(z ? R.layout.quiz_question_media_answer_item : R.layout.quiz_question_answer_item, (ViewGroup) quizQuestionViewHolder.gridLayout, false));
            }
        }
        for (int i2 = 0; i2 < quizQuestionViewHolder.gridLayout.getChildCount(); i2++) {
            View childAt = quizQuestionViewHolder.gridLayout.getChildAt(i2);
            if (i2 < size && (quizOption = quizQuestion.quizOptions().get(i2)) != null && childAt != null) {
                TextView textView = (TextView) childAt.findViewById(R.id.title);
                PushButton pushButton = (PushButton) childAt.findViewById(R.id.push_btn);
                if (textView != null && pushButton != null) {
                    textView.setText(quizOption.title);
                    textView.setClickable(false);
                    textView.setTag(quizOption);
                    if (isViewRightAnswer(textView, quizQuestion)) {
                        pushButton.setColor(ContextCompat.getColor(getContext(), R.color.quiz_answer_color_right_normal), ContextCompat.getColor(getContext(), R.color.quiz_answer_color_right_pressed));
                        textView.setTextColor(-1);
                    } else {
                        pushButton.setColor(-1);
                        textView.setTextColor(-14211289);
                    }
                }
            }
        }
    }

    private boolean isViewRightAnswer(View view, QuizQuestion quizQuestion) {
        Object tag = view.getTag();
        if (tag instanceof QuizOption) {
            return ((QuizOption) tag).isCorrect(quizQuestion.id());
        }
        return false;
    }
}
