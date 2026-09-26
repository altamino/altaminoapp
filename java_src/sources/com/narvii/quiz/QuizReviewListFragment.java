package com.narvii.quiz;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.model.Blog;
import com.narvii.model.Media;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.EqualGridLayout;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PushButton;
import com.narvii.widget.SpinningView;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class QuizReviewListFragment extends NVFragment {
    private QuizQuestionListAdapter adapter;
    private int allItemCount;
    private int curPosition;
    LinearLayoutManager linearLayoutManager;
    protected Blog quiz;
    private List<QuizQuestion> quizQuestions;
    RecyclerView recyclerView;

    class QuizQuestionListAdapter extends RecyclerView.Adapter {
        private static final int TYPE_MEDIA_LIST = 0;
        private static final int TYPE_TEXT_LIST = 1;

        QuizQuestionListAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (QuizReviewListFragment.this.quizQuestions != null) {
                return QuizReviewListFragment.this.quizQuestions.size();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            List<Media> list;
            QuizQuestion quizQuestion = (QuizQuestion) QuizReviewListFragment.this.quizQuestions.get(i10);
            return (quizQuestion == null || (list = quizQuestion.mediaList) == null || list.get(0) == null) ? 1 : 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
            if (viewHolder instanceof QuizQuestionViewHolder) {
                QuizQuestion quizQuestion = (QuizQuestion) QuizReviewListFragment.this.quizQuestions.get(i10);
                QuizReviewListFragment.this.configQuizQuestionView(quizQuestion, (QuizQuestionViewHolder) viewHolder);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            int i11 = R.layout.fragment_quiz_question_media;
            if (i10 != 0 && i10 == 1) {
                i11 = R.layout.fragment_quiz_question;
            }
            return QuizReviewListFragment.this.new QuizQuestionViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(i11, viewGroup, false));
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

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951635;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
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
                public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
                    if (i10 == 4) {
                        quizQuestionViewHolder.mediaLoadingView.setVisibility(8);
                        quizQuestionViewHolder.mediaView.setVisibility(0);
                    } else if (i10 == 2) {
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

    private void goNext() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            int i10 = this.curPosition;
            if (i10 + 1 >= this.allItemCount) {
                return;
            }
            recyclerView.smoothScrollToPosition(i10 + 1);
        }
    }

    private void initRecycleView() {
        if (this.recyclerView == null) {
            return;
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 1, false);
        this.linearLayoutManager = linearLayoutManager;
        this.recyclerView.setLayoutManager(linearLayoutManager);
        this.recyclerView.setAdapter(this.adapter);
        this.recyclerView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.quiz.QuizReviewListFragment.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
                super.onScrollStateChanged(recyclerView, i10);
                QuizReviewListFragment.this.updateActionBarView();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
                super.onScrolled(recyclerView, i10, i11);
                QuizReviewListFragment.this.updateActionBarView();
            }
        });
    }

    private void setCurTitle() {
        setTitle((this.curPosition + 1) + " / " + this.allItemCount);
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

    private boolean isViewRightAnswer(View view, QuizQuestion quizQuestion) {
        Object tag = view.getTag();
        if (tag instanceof QuizOption) {
            return ((QuizOption) tag).isCorrect(quizQuestion.id());
        }
        return false;
    }

    private void showAnswers(QuizQuestion quizQuestion, boolean z6, QuizQuestionViewHolder quizQuestionViewHolder) {
        int i10;
        QuizOption quizOption;
        if (getActivity() == null) {
            return;
        }
        int size = CollectionUtils.getSize(quizQuestion.quizOptions());
        EqualGridLayout equalGridLayout = quizQuestionViewHolder.gridLayout;
        if (equalGridLayout == null || equalGridLayout.getChildCount() != 4) {
            for (int i11 = 0; i11 < 4; i11++) {
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
                if (z6) {
                    i10 = R.layout.quiz_question_media_answer_item;
                } else {
                    i10 = R.layout.quiz_question_answer_item;
                }
                quizQuestionViewHolder.gridLayout.addView(layoutInflaterFrom.inflate(i10, (ViewGroup) quizQuestionViewHolder.gridLayout, false));
            }
        }
        for (int i12 = 0; i12 < quizQuestionViewHolder.gridLayout.getChildCount(); i12++) {
            View childAt = quizQuestionViewHolder.gridLayout.getChildAt(i12);
            if (i12 < size && (quizOption = quizQuestion.quizOptions().get(i12)) != null && childAt != null) {
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

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        List<QuizQuestion> list;
        super.onCreate(bundle);
        if (bundle != null) {
            this.quiz = (Blog) JacksonUtils.readAs(bundle.getString("quiz"), Blog.class);
            this.curPosition = bundle.getInt("curPos");
            this.allItemCount = bundle.getInt("allCount");
        } else {
            this.quiz = (Blog) JacksonUtils.readAs(getStringParam("quiz"), Blog.class);
        }
        Blog blog = this.quiz;
        if (blog != null && (list = blog.quizQuestionList) != null) {
            this.quizQuestions = list;
        } else if (isAdded()) {
            getActivity().finish();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.menu_quiz_review, menu);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.quiz_review_layout, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.next) {
            goNext();
        } else if (menuItem.getItemId() == R.id.explanation) {
            showExplanation();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        super.onPrepareOptionsMenu(menu);
        List<QuizQuestion> list = this.quizQuestions;
        boolean z10 = true;
        if (list != null && list.get(this.curPosition) != null && !TextUtils.isEmpty(this.quizQuestions.get(this.curPosition).quizAnswerExplanation())) {
            z6 = true;
        } else {
            z6 = false;
        }
        menu.findItem(R.id.explanation).setVisible(z6);
        MenuItem menuItemFindItem = menu.findItem(R.id.next);
        if (this.curPosition >= this.allItemCount - 1) {
            z10 = false;
        }
        menuItemFindItem.setVisible(z10);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("quiz", JacksonUtils.writeAsString(this.quiz));
        bundle.putInt("curPos", this.curPosition);
        bundle.putInt("allCount", this.allItemCount);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.adapter = new QuizQuestionListAdapter();
        this.allItemCount = this.quizQuestions.size();
        setHasOptionsMenu(true);
        this.recyclerView = (RecyclerView) view.findViewById(R.id.recycle_layout);
        initRecycleView();
        setCurTitle();
        setHasOptionsMenu(true);
    }
}
