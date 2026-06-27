package com.narvii.flag.resolve;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.blog.detail.BlogDetailFragment;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.feed.FeedSummaryItem;
import com.narvii.flag.resolve.FlagResolveBar;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Blog;
import com.narvii.model.NVObject;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.quiz.QuizQuestionFragment;
import com.narvii.util.JacksonUtils;

/* loaded from: classes2.dex */
public class QuizzesQuestionFlagModeFragment extends QuizQuestionFragment implements FlagResolveBar.FlagAttachObject {
    FlagResolveBar flagResolveBar;
    Blog quiz;

    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme;
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment
    protected boolean isFullScreen() {
        return false;
    }

    @Override // com.narvii.quiz.QuizQuestionFragment, com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        String stringParam;
        super.onCreate(bundle);
        if (bundle != null) {
            stringParam = bundle.getString(EntryManager.ENTRY_QUIZZES);
        } else {
            stringParam = getStringParam(EntryManager.ENTRY_QUIZZES);
        }
        if (TextUtils.isEmpty(stringParam)) {
            return;
        }
        this.quiz = (Blog) JacksonUtils.readAs(stringParam, Blog.class);
    }

    @Override // com.narvii.quiz.QuizQuestionFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.firstMedia != null) {
            return layoutInflater.inflate(R.layout.fragment_quiz_question_media_flag_mode, viewGroup, false);
        }
        return layoutInflater.inflate(R.layout.fragment_quiz_question_flag_mode, viewGroup, false);
    }

    @Override // com.narvii.quiz.QuizQuestionFragment, com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        FlagResolveBar flagResolveBar;
        super.onViewCreated(view, bundle);
        if (isAdded() && this.quiz != null) {
            FeedSummaryItem feedSummaryItem = (FeedSummaryItem) view.findViewById(R.id.feed_summary_item);
            feedSummaryItem.setFeed(this.quiz);
            feedSummaryItem.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.flag.resolve.QuizzesQuestionFlagModeFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Intent intent = FragmentWrapperActivity.intent(BlogDetailFragment.class);
                    intent.putExtra("id", QuizzesQuestionFlagModeFragment.this.quiz.id());
                    intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(QuizzesQuestionFlagModeFragment.this.quiz));
                    intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, QuizzesQuestionFlagModeFragment.this.quiz.isGlobalAnnouncement);
                    QuizzesQuestionFlagModeFragment.this.startActivity(intent);
                }
            });
            this.flagResolveBar = FlagModeHelper.attachFlagModeForCertainView((FrameLayout) view.findViewById(R.id.flag_container), this);
            Blog blog = this.quiz;
            if ((blog == null || blog.status == 9) && (flagResolveBar = this.flagResolveBar) != null) {
                flagResolveBar.showAlreadyResolved();
            }
        }
        ((ImageView) getActivity().getActionBar().getCustomView().findViewById(R.id.actionbar_back)).setImageResource(R.drawable.ic_back);
        setTitle(getString(R.string.quiz_question));
    }

    @Override // com.narvii.quiz.QuizQuestionFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        FlagModeHelper.saveInstanceStats(this, bundle);
        bundle.putString(EntryManager.ENTRY_QUIZZES, JacksonUtils.writeAsString(this.quiz));
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i, i2, intent, this.quiz, 1);
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.flag.resolve.FlagResolveBar.FlagAttachObject
    public NVObject attachObject() {
        return this.quiz;
    }
}
