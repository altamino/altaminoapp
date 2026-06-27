package com.narvii.feed.quizzes.share;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.feed.FeedHelper;
import com.narvii.model.Blog;
import com.narvii.model.CurrentQuizzesResult;
import com.narvii.model.Media;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
import com.narvii.model.User;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.SharePayload;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class QuizShareFragment extends ShareDarkRoomFragment {
    public static final String KEY_CURRENT_QUIZZES_RESULT = "current_quiz_result";
    public static final String KEY_FIRST_QUIZ_QUESTION = "first_question";
    private View bigTopOverlay;
    private View contentView;
    private EditText customTitle;
    private View.OnClickListener editListener = new View.OnClickListener() { // from class: com.narvii.feed.quizzes.share.QuizShareFragment.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            if (QuizShareFragment.this.customTitle != null) {
                QuizShareFragment.this.customTitle.requestFocus();
                if (!QuizShareFragment.this.customTitle.isEnabled()) {
                    SoftKeyboard.showSoftKeyboard(QuizShareFragment.this.customTitle);
                    QuizShareFragment.this.scrollToTop();
                }
                QuizShareFragment.this.customTitle.setEnabled(!QuizShareFragment.this.customTitle.isEnabled());
                QuizShareFragment quizShareFragment = QuizShareFragment.this;
                quizShareFragment.setActionBarRightButton(quizShareFragment.customTitle.isEnabled() ? R.string.done : R.string.edit, QuizShareFragment.this.editListener);
                QuizShareFragment quizShareFragment2 = QuizShareFragment.this;
                quizShareFragment2.updateActionBarLeftView(quizShareFragment2.customTitle.isEnabled() ? null : ContextCompat.getDrawable(QuizShareFragment.this.getContext(), R.drawable.ic_back_cross));
                QuizShareFragment.this.setActionBarRightDrawable(null);
                if (QuizShareFragment.this.contentView != null) {
                    QuizShareFragment.this.contentView.setEnabled(!QuizShareFragment.this.customTitle.isEnabled());
                }
            }
            QuizShareFragment.this.updateOverlayView();
        }
    };
    private QuizQuestion firstQuizQuestion;
    private Blog quiz;
    private CurrentQuizzesResult quizResult;
    private View smallTopOverlay;

    @Override // com.narvii.share.ShareDarkRoomFragment
    public int contentLayoutId() {
        return R.layout.quize_share_content_layout;
    }

    @Override // com.narvii.share.ShareDarkRoomFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        String stringParam;
        String stringParam2;
        String string;
        List<QuizQuestion> list;
        super.onCreate(bundle);
        if (bundle != null) {
            stringParam = bundle.getString(KEY_CURRENT_QUIZZES_RESULT);
            string = bundle.getString(KEY_FIRST_QUIZ_QUESTION);
            stringParam2 = bundle.getString(ShareDarkRoomFragment.KEY_SHARE_OBJECT);
        } else {
            stringParam = getStringParam(KEY_CURRENT_QUIZZES_RESULT);
            stringParam2 = getStringParam(ShareDarkRoomFragment.KEY_SHARE_OBJECT);
            string = null;
        }
        if (!TextUtils.isEmpty(stringParam)) {
            this.quizResult = (CurrentQuizzesResult) JacksonUtils.readAs(stringParam, CurrentQuizzesResult.class);
        }
        if (!TextUtils.isEmpty(stringParam2)) {
            this.quiz = (Blog) JacksonUtils.readAs(stringParam2, Blog.class);
        }
        if (!TextUtils.isEmpty(string)) {
            this.firstQuizQuestion = (QuizQuestion) JacksonUtils.readAs(string, QuizQuestion.class);
        }
        Blog blog = this.quiz;
        if (blog != null && (list = blog.quizQuestionList) != null) {
            this.firstQuizQuestion = list.get(0);
        } else if (this.quiz != null) {
            if (this.firstQuizQuestion == null) {
                new FeedHelper(this).loadQuizQuestionList(this.quiz, new Callback<Blog>() { // from class: com.narvii.feed.quizzes.share.QuizShareFragment.1
                    @Override // com.narvii.util.Callback
                    public void call(Blog blog2) {
                        QuizShareFragment.this.quiz = blog2;
                    }
                });
            }
        } else if (isAdded()) {
            finish();
        }
        Blog blog2 = this.quiz;
        if (blog2 == null || this.quizResult != null) {
            return;
        }
        this.quizResult = blog2.quizResultOfCurrentUser;
    }

    @Override // com.narvii.share.ShareDarkRoomFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onViewCreated(view, bundle);
        setActionBarRightButton(R.string.edit, this.editListener);
        setActionBarRightDrawable(null);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        updateActionBarLeftView(ContextCompat.getDrawable(getContext(), R.drawable.ic_back_cross));
    }

    public static void startQuizShareIntent(NVContext nVContext, Blog blog, final Callback<Intent> callback) {
        if (blog == null || nVContext == null) {
            return;
        }
        new FeedHelper(nVContext).loadQuizQuestionList(blog, new Callback<Blog>() { // from class: com.narvii.feed.quizzes.share.QuizShareFragment.2
            @Override // com.narvii.util.Callback
            public void call(Blog blog2) {
                Intent intent = FragmentWrapperActivity.intent(QuizShareFragment.class);
                intent.putExtra(ShareDarkRoomFragment.KEY_SHARE_OBJECT, JacksonUtils.writeAsString(blog2));
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(intent);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setActionBarRightDrawable(Drawable drawable) {
        ViewGroup viewGroup;
        View viewFindViewById;
        if (!isAdded() || getActivity() == null || getActivity().getActionBar() == null || (viewGroup = (ViewGroup) getActivity().getActionBar().getCustomView()) == null || (viewFindViewById = viewGroup.findViewById(R.id.actionbar_right_btn_btn)) == null) {
            return;
        }
        viewFindViewById.setBackgroundDrawable(drawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarLeftView(Drawable drawable) {
        ImageView imageView;
        View customView = getActivity().getActionBar().getCustomView();
        if (customView == null || (imageView = (ImageView) customView.findViewById(R.id.actionbar_back)) == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
        imageView.setClickable(drawable != null);
    }

    @Override // com.narvii.share.ShareDarkRoomFragment
    public void configContentView(View view) {
        EditText editText;
        this.contentView = view;
        if (view == null || this.firstQuizQuestion == null || this.quiz == null) {
            return;
        }
        TextView textView = (TextView) view.findViewById(R.id.share_question_title);
        if (textView != null) {
            textView.setText(this.firstQuizQuestion.title);
        }
        TextView textView2 = (TextView) view.findViewById(R.id.share_quiz_title);
        if (textView2 != null) {
            textView2.setText(this.quiz.title());
        }
        TextView textView3 = (TextView) view.findViewById(R.id.share_quiz_played_time);
        if (textView3 != null) {
            textView3.setText(getString(R.string.quiz_played_times, Integer.valueOf(this.quiz.getQuizPlayedTimes())));
        }
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.share_bg);
        View viewFindViewById = view.findViewById(R.id.share_bg_overlay);
        if (nVImageView != null) {
            configBackgroundView(nVImageView, viewFindViewById);
        }
        AccountService accountService = (AccountService) getService("account");
        User userProfile = accountService.getUserProfile();
        NVImageView nVImageView2 = (NVImageView) view.findViewById(R.id.avatar);
        if (nVImageView2 != null) {
            if (accountService.hasAccount()) {
                nVImageView2.setImageUrl(userProfile.icon());
                nVImageView2.setVisibility(0);
            } else {
                nVImageView2.setVisibility(4);
            }
        }
        TextView textView4 = (TextView) view.findViewById(R.id.nickname);
        if (textView4 != null && userProfile != null) {
            textView4.setText(userProfile.nickname());
        }
        List<QuizOption> wrongAnswers = getWrongAnswers();
        if (wrongAnswers != null && wrongAnswers.size() > 1) {
            TextView textView5 = (TextView) view.findViewById(R.id.answer_2);
            if (textView5 != null) {
                textView5.setText(wrongAnswers.get(0).title);
            }
            TextView textView6 = (TextView) view.findViewById(R.id.answer_3);
            if (textView6 != null) {
                textView6.setText(wrongAnswers.get(1).title);
            }
        }
        this.customTitle = (EditText) view.findViewById(R.id.share_custom_title);
        CurrentQuizzesResult currentQuizzesResult = this.quizResult;
        if (currentQuizzesResult != null && currentQuizzesResult.beatRate > 0.5f && (editText = this.customTitle) != null) {
            editText.setEnabled(false);
            this.customTitle.setText(getString(R.string.quizzes_result_defeat_i, Integer.valueOf(this.quizResult.getCurBeatRate())));
        }
        this.smallTopOverlay = view.findViewById(R.id.top_small_overlay);
        this.bigTopOverlay = view.findViewById(R.id.top_big_overlay);
        updateOverlayView();
        ViewCompat.postInvalidateOnAnimation(view);
        view.setOnClickListener(this.editListener);
    }

    @Override // com.narvii.share.ShareDarkRoomFragment
    public SharePayload getPreContentPayload(View view) {
        Bitmap bitmapCaptureScreen = captureScreen(view.findViewById(R.id.real_share_layout));
        Uri uriStorageBitmapScreen = storageBitmapScreen(EntryManager.ENTRY_QUIZZES, bitmapCaptureScreen);
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = this.quiz;
        String string = this.customTitle.getText().toString();
        if (this.customTitle != null && !TextUtils.isEmpty(string)) {
            sharePayload.text = string;
        } else {
            Context context = getContext();
            Object[] objArr = new Object[1];
            Blog blog = this.quiz;
            objArr[0] = blog != null ? blog.title() : null;
            sharePayload.text = context.getString(R.string.share_quiz_link2, objArr);
        }
        sharePayload.needTranslateLink = true;
        sharePayload.uri = uriStorageBitmapScreen;
        sharePayload.bitmap = bitmapCaptureScreen;
        return sharePayload;
    }

    private void configBackgroundView(NVImageView nVImageView, View view) {
        List<Media> list;
        QuizQuestion quizQuestion = this.firstQuizQuestion;
        if ((quizQuestion == null || (list = quizQuestion.mediaList) == null || list.size() == 0) ? false : true) {
            nVImageView.setImageMedia(this.firstQuizQuestion.mediaList.get(0));
            Blog blog = this.quiz;
            if (blog == null || blog.getBackgroundColor() == 0) {
                return;
            }
            view.setBackgroundColor(this.quiz.getBackgroundColor());
            return;
        }
        Blog blog2 = this.quiz;
        if (blog2 != null) {
            if (blog2.firstMedia() != null) {
                nVImageView.setImageMedia(this.quiz.firstMedia());
                if (this.quiz.getBackgroundColor() != 0) {
                    view.setBackgroundColor(this.quiz.getBackgroundColor());
                    return;
                }
                return;
            }
            if (this.quiz.getBackgroundColor() != 0) {
                nVImageView.setImageDrawable(new ColorDrawable(this.quiz.getBackgroundColor()));
                return;
            } else {
                nVImageView.setImageDrawable(new ColorDrawable(-11842741));
                view.setBackgroundColor(this.quiz.getBackgroundColor());
                return;
            }
        }
        nVImageView.setImageDrawable(new ColorDrawable(-11842741));
    }

    private List<QuizOption> getWrongAnswers() {
        if (this.firstQuizQuestion == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (QuizOption quizOption : this.firstQuizQuestion.quizOptions()) {
            if (!quizOption.isCorrect(this.firstQuizQuestion.id())) {
                arrayList.add(quizOption);
            }
        }
        return arrayList;
    }

    @Override // com.narvii.share.ShareDarkRoomFragment
    protected void preCheck() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.preCheck();
        EditText editText = this.customTitle;
        if (editText != null && editText.isEnabled()) {
            this.customTitle.setEnabled(false);
            setActionBarRightButton(this.customTitle.isEnabled() ? R.string.save : R.string.edit, this.editListener);
        }
        updateOverlayView();
        updateActionBarLeftView(this.customTitle.isEnabled() ? null : ContextCompat.getDrawable(getContext(), R.drawable.ic_back_cross));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOverlayView() {
        EditText editText = this.customTitle;
        if (editText != null) {
            boolean zIsEmpty = this.customTitle.isEnabled() ? false : TextUtils.isEmpty(editText.getText().toString());
            View view = this.smallTopOverlay;
            if (view != null) {
                view.setVisibility(zIsEmpty ? 0 : 8);
            }
            View view2 = this.bigTopOverlay;
            if (view2 != null) {
                view2.setVisibility(zIsEmpty ? 8 : 0);
            }
        }
    }
}
