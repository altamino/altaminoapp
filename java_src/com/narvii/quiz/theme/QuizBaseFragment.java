package com.narvii.quiz.theme;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.internal.view.SupportMenu;
import android.view.View;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.community.AffiliationsService;
import com.narvii.config.ConfigService;
import com.narvii.feed.FeedHelper;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.model.Blog;
import com.narvii.model.QuizQuestion;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.scene.quiz.QuizQuestionResult;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ACMAlertDialog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class QuizBaseFragment extends NVFragment implements FragmentOnBackListener {
    public static final int QUIZ_MODE_HELL = 1;
    public static final int QUIZ_MODE_NORMAL = 0;
    private FeedHelper feedHelper;
    protected String liveLayerTarget;
    protected ACMAlertDialog quitAlertDialog;
    protected Blog quiz;
    protected QuizQuestion quizQuestion;
    protected boolean resultUploaded;
    protected boolean resultUploading;
    public final List<String> actions = new ArrayList();
    public final HashMap<String, Object> params = new HashMap<>();
    protected QuizThemeDelegate quizeThemeDelegate = new QuizThemeDelegate();

    protected boolean allowQuit() {
        return false;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    protected boolean isFullScreen() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getActivity().setVolumeControlStream(3);
        this.feedHelper = new FeedHelper(this);
        this.quiz = (Blog) JacksonUtils.readAs(getStringParam(EntryManager.ENTRY_QUIZZES), Blog.class);
        boolean booleanParam = getBooleanParam("preview");
        boolean booleanParam2 = getBooleanParam("flagMode");
        if (booleanParam || booleanParam2) {
            this.quizQuestion = (QuizQuestion) JacksonUtils.readAs(getStringParam(EntryManager.ENTRY_QUEATION), QuizQuestion.class);
            return;
        }
        Blog blog = this.quiz;
        if (blog == null || CollectionUtils.isEmpty(blog.quizQuestionList)) {
            finish();
        } else {
            this.quizQuestion = this.quiz.quizQuestionList.get(getIntParam("currentQuestion"));
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.quizeThemeDelegate.setTheme(this, this.quiz, this.quizQuestion, isFullScreen());
    }

    public void uploadQuizResult(ApiResponseListener apiResponseListener) {
        if (isJoinedThisCommunity()) {
            this.resultUploading = true;
            ApiService apiService = (ApiService) getService("api");
            ArrayList listAs = JacksonUtils.readListAs(getStringParam("resultList"), QuizQuestionResult.class);
            if (listAs == null) {
                listAs = new ArrayList();
            }
            boolean booleanParam = getBooleanParam("hellMode");
            apiService.exec(ApiRequest.builder().path("blog/" + this.quiz.id() + "/quiz/result").post().tag(ApiService.ASYNC_CALL_TAG).param("mode", Integer.valueOf(booleanParam ? 1 : 0)).param("quizAnswerList", JacksonUtils.DEFAULT_MAPPER.valueToTree(listAs)).signature(1).selfHandleErrorCode(ApiService.API_ERR_USER_NOT_IN_COMMUNITY).build(), apiResponseListener);
        }
    }

    public boolean isJoinedThisCommunity() {
        if (((AccountService) getService("account")).hasAccount()) {
            return ((AffiliationsService) getService("affiliations")).contains(((ConfigService) getService("config")).getCommunityId());
        }
        return false;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (allowQuit()) {
            return false;
        }
        this.quitAlertDialog = new ACMAlertDialog(getContext());
        this.quitAlertDialog.setMessage(R.string.sure_to_quit);
        this.quitAlertDialog.addButton(R.string.cancel, null);
        this.quitAlertDialog.addButton(R.string.quiz_quit, new View.OnClickListener() { // from class: com.narvii.quiz.theme.QuizBaseFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LiveLayerService liveLayerService = (LiveLayerService) QuizBaseFragment.this.getService("liveLayer");
                QuizBaseFragment.this.liveLayerTarget = QuizBaseFragment.this.quiz.objectTypeName() + "/" + QuizBaseFragment.this.quiz.id();
                QuizBaseFragment.this.actions.add(LiveLayerService.ACTION_PLAYING);
                QuizBaseFragment quizBaseFragment = QuizBaseFragment.this;
                quizBaseFragment.params.put("blogType", Integer.valueOf(quizBaseFragment.quiz.type));
                if (LiveLayerUtils.isStatusOk(QuizBaseFragment.this.quiz)) {
                    QuizBaseFragment quizBaseFragment2 = QuizBaseFragment.this;
                    liveLayerService.reportInactive(quizBaseFragment2.actions, quizBaseFragment2.liveLayerTarget, quizBaseFragment2.params);
                }
                QuizBaseFragment quizBaseFragment3 = QuizBaseFragment.this;
                if (quizBaseFragment3.resultUploaded) {
                    quizBaseFragment3.finish();
                } else {
                    quizBaseFragment3.uploadQuizResult(ApiResponseListener.IGNORE_RESPONSE_LISTENER);
                    QuizBaseFragment.this.finish();
                }
            }
        }, SupportMenu.CATEGORY_MASK);
        this.quitAlertDialog.getWindow().setFlags(1024, 1024);
        this.quitAlertDialog.show();
        return true;
    }

    public void addQuizListExtra(Intent intent) {
        this.feedHelper.addQuizListExtra(getActivity().getIntent(), intent);
    }
}
