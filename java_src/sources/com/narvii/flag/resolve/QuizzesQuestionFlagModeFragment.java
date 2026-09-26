package com.narvii.flag.resolve;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.blog.detail.BlogDetailFragment;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.feed.FeedSummaryItem;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Blog;
import com.narvii.model.NVObject;
import com.narvii.quiz.QuizQuestionFragment;
import com.narvii.util.JacksonUtils;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes7.dex */
public class QuizzesQuestionFlagModeFragment extends QuizQuestionFragment implements FlagResolveBar.FlagAttachObject {
    FlagResolveBar flagResolveBar;
    Blog quiz;

    @Override // com.narvii.flag.resolve.FlagResolveBar.FlagAttachObject
    public NVObject attachObject() {
        return this.quiz;
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme;
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment
    protected boolean isFullScreen() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i10, i11, intent, this.quiz, 1);
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.quiz.QuizQuestionFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return this.firstMedia != null ? layoutInflater.inflate(R.layout.fragment_quiz_question_media_flag_mode, viewGroup, false) : layoutInflater.inflate(R.layout.fragment_quiz_question_flag_mode, viewGroup, false);
    }

    @Override // com.narvii.quiz.QuizQuestionFragment, com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        String stringParam;
        super.onCreate(bundle);
        if (bundle != null) {
            stringParam = bundle.getString("quiz");
        } else {
            stringParam = getStringParam("quiz");
        }
        if (!TextUtils.isEmpty(stringParam)) {
            this.quiz = (Blog) JacksonUtils.readAs(stringParam, Blog.class);
        }
    }

    @Override // com.narvii.quiz.QuizQuestionFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        FlagModeHelper.saveInstanceStats(this, bundle);
        bundle.putString("quiz", JacksonUtils.writeAsString(this.quiz));
    }

    @Override // com.narvii.quiz.QuizQuestionFragment, com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (isAdded() && this.quiz != null) {
            FeedSummaryItem feedSummaryItem = (FeedSummaryItem) view.findViewById(R.id.feed_summary_item);
            feedSummaryItem.setFeed(this.quiz);
            feedSummaryItem.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.flag.resolve.QuizzesQuestionFlagModeFragment.1
                public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Intent intent = FragmentWrapperActivity.intent(BlogDetailFragment.class);
                    intent.putExtra("id", QuizzesQuestionFlagModeFragment.this.quiz.id());
                    intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(QuizzesQuestionFlagModeFragment.this.quiz));
                    intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, QuizzesQuestionFlagModeFragment.this.quiz.isGlobalAnnouncement);
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(QuizzesQuestionFlagModeFragment.this, intent);
                }
            });
            FlagResolveBar flagResolveBarAttachFlagModeForCertainView = FlagModeHelper.attachFlagModeForCertainView((FrameLayout) view.findViewById(R.id.flag_container), this);
            this.flagResolveBar = flagResolveBarAttachFlagModeForCertainView;
            Blog blog = this.quiz;
            if ((blog == null || blog.status == 9) && flagResolveBarAttachFlagModeForCertainView != null) {
                flagResolveBarAttachFlagModeForCertainView.showAlreadyResolved();
            }
        }
        ((ImageView) getActivity().getActionBar().getCustomView().findViewById(R.id.actionbar_back)).setImageResource(R.drawable.ic_back);
        setTitle(getString(R.string.quiz_question));
    }
}
