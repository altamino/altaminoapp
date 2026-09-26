package com.narvii.quiz.theme;

import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.model.Blog;
import com.narvii.model.QuizQuestion;
import com.narvii.widget.FullscreenBackgroundView;

/* JADX INFO: loaded from: classes10.dex */
public class QuizThemeDelegate {
    public void setTheme(NVFragment nVFragment, Blog blog, QuizQuestion quizQuestion, boolean z6) {
        if (nVFragment == null) {
            return;
        }
        nVFragment.setTitle((CharSequence) null);
        if (nVFragment.getActivity() == null) {
            return;
        }
        ((ImageView) nVFragment.getActivity().getActionBar().getCustomView().findViewById(R.id.actionbar_back)).setImageResource(R.drawable.ic_back_cross);
        if (z6) {
            nVFragment.getActivity().getWindow().setFlags(1024, 1024);
        }
        nVFragment.getActivity().getWindow().setBackgroundDrawable(new ColorDrawable(-15461356));
        if (nVFragment.getView() == null) {
            throw new IllegalStateException("setTheme should be invoked after onCreateView");
        }
        FullscreenBackgroundView fullscreenBackgroundView = (FullscreenBackgroundView) nVFragment.getView().findViewById(R.id.background);
        if (fullscreenBackgroundView != null) {
            fullscreenBackgroundView.setBackgroundSource(quizQuestion, blog);
        }
        View viewFindViewById = nVFragment.getView().findViewById(R.id.quiz_background_overlay);
        if (nVFragment.getBooleanParam("hellMode")) {
            int color = ContextCompat.getColor(nVFragment.getContext(), R.color.quiz_bg_hell_mode_overlay);
            if (blog.getBackgroundMedia() != null) {
                color = ColorUtils.o(color, 216);
            }
            viewFindViewById.setBackgroundColor(color);
        }
    }
}
