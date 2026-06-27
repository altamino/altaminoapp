package com.narvii.blog.post;

import android.animation.LayoutTransition;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.model.QuizQuestion;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.post.DraftPostActivity;
import com.narvii.post.PostHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.BackgroundPickerView;
import com.narvii.widget.NVScrollView;
import com.narvii.widget.SwipeToDeleteLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes2.dex */
public class QuizPostActivity extends TopicPostActivity {
    static final int REQUEST_ADD = 32;
    static final int REQUEST_QUESTION = 31;
    View header;
    ViewGroup root;

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity
    public String draftType() {
        return EntryManager.ENTRY_QUIZZES;
    }

    @Override // com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        BackgroundPickerView backgroundPickerView = this.backgroundPickerView;
        if (backgroundPickerView != null) {
            backgroundPickerView.setBackgroundText(getString(R.string.quiz_background));
            this.backgroundPickerView.setChooseBackgroundText(getString(R.string.quiz_background));
        }
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((NVScrollView) findViewById(R.id.scroll)).setOnScrollListener(new NVScrollView.OnScrollListener() { // from class: com.narvii.blog.post.QuizPostActivity.1
            @Override // com.narvii.widget.NVScrollView.OnScrollListener
            public void onScroll(int i, int i2, int i3, int i4) {
                QuizPostActivity.this.closeAllSwipeToDelete(true);
            }
        });
        this.header = findViewById(R.id.post_quiz_header_subtitle);
        this.header.setVisibility(0);
        findViewById(R.id.post_quiz_header).setVisibility(0);
        this.root = (ViewGroup) this.header.getParent();
        View viewInflate = getLayoutInflater().inflate(R.layout.post_quiz_add_question, this.root, false);
        viewInflate.findViewById(R.id.post_quiz_add_question).setOnClickListener(this);
        this.root.addView(viewInflate, getQuestionIndex());
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.addTransitionListener(new LayoutTransition.TransitionListener() { // from class: com.narvii.blog.post.QuizPostActivity.2
            @Override // android.animation.LayoutTransition.TransitionListener
            public void startTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i) {
            }

            @Override // android.animation.LayoutTransition.TransitionListener
            public void endTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i) {
                if (i == 3 && view.getId() == R.id.post_quiz_question) {
                    QuizQuestion quizQuestion = (QuizQuestion) view.getTag();
                    if (quizQuestion != null && ((BlogPost) ((DraftPostActivity) QuizPostActivity.this).post).quizQuestionList != null) {
                        ((BlogPost) ((DraftPostActivity) QuizPostActivity.this).post).quizQuestionList.remove(quizQuestion);
                    }
                    QuizPostActivity quizPostActivity = QuizPostActivity.this;
                    quizPostActivity.updateQuiz(((BlogPost) ((DraftPostActivity) quizPostActivity).post).quizQuestionList);
                }
            }
        });
        this.root.setLayoutTransition(layoutTransition);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity
    public void onPostLoaded(BlogPost blogPost) {
        super.onPostLoaded(blogPost);
        if (isEdit()) {
            setTitle(R.string.edit);
        } else {
            setTitle(R.string.post_quiz_title);
        }
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BasePostActivity
    protected void checkEligible() {
        checkEligible("blog", EntryManager.ENTRY_QUIZZES);
    }

    @Override // com.narvii.blog.post.TopicPostActivity, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view.getId() == R.id.post_quiz_question_click) {
            View questionCell = getQuestionCell(view);
            QuizQuestion quizQuestion = (QuizQuestion) questionCell.getTag();
            BlogPost blogPostSavePost = savePost();
            Intent intent = FragmentWrapperActivity.intent(QuizQuestionEditor.class);
            intent.putExtra(EntryManager.ENTRY_QUIZZES, JacksonUtils.writeAsString(blogPostSavePost));
            intent.putExtra(EntryManager.ENTRY_QUEATION, JacksonUtils.writeAsString(quizQuestion));
            intent.putExtra("dir", this.draftManager.getDir(this.draftId).getAbsolutePath());
            intent.putExtra("index", ((Integer) questionCell.getTag(R.id.index)).intValue());
            startActivityForResult(intent, 31);
        }
        if (view.getId() == R.id.delete) {
            View questionCell2 = getQuestionCell(view);
            ((SwipeToDeleteLayout) questionCell2).setSwipeRight(false, true);
            ((ViewGroup) questionCell2.getParent()).removeView(questionCell2);
        }
        if (view.getId() == R.id.post_quiz_add_question) {
            Intent intent2 = FragmentWrapperActivity.intent(QuizQuestionEditor.class);
            intent2.putExtra(EntryManager.ENTRY_QUIZZES, JacksonUtils.writeAsString(this.post));
            intent2.putExtra("dir", this.draftManager.getDir(this.draftId).getAbsolutePath());
            startActivityForResult(intent2, 32);
        }
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 31 && i2 == -1) {
            int intExtra = intent.getIntExtra("index", 0);
            QuizQuestion quizQuestion = (QuizQuestion) JacksonUtils.readAs(intent.getStringExtra(EntryManager.ENTRY_QUEATION), QuizQuestion.class);
            BlogPost blogPostSavePost = savePost();
            if (blogPostSavePost.quizQuestionList == null) {
                blogPostSavePost.quizQuestionList = new ArrayList();
            }
            while (blogPostSavePost.quizQuestionList.size() < intExtra + 1) {
                blogPostSavePost.quizQuestionList.add(new QuizQuestion());
            }
            blogPostSavePost.quizQuestionList.set(intExtra, quizQuestion);
            updateView(blogPostSavePost);
            if (hasDuplicateQuestion(blogPostSavePost.quizQuestionList, quizQuestion)) {
                NVToast.makeText(this, R.string.quiz_duplicate_title, 0).show();
            }
        }
        if (i == 32 && i2 == -1) {
            QuizQuestion quizQuestion2 = (QuizQuestion) JacksonUtils.readAs(intent.getStringExtra(EntryManager.ENTRY_QUEATION), QuizQuestion.class);
            if (quizQuestion2.isEmpty()) {
                return;
            }
            BlogPost blogPostSavePost2 = savePost();
            if (blogPostSavePost2.quizQuestionList == null) {
                blogPostSavePost2.quizQuestionList = new ArrayList();
            }
            trimEmptyQuestion(blogPostSavePost2.quizQuestionList, true);
            blogPostSavePost2.quizQuestionList.add(quizQuestion2);
            updateView(blogPostSavePost2);
            if (hasDuplicateQuestion(blogPostSavePost2.quizQuestionList, quizQuestion2)) {
                NVToast.makeText(this, R.string.quiz_duplicate_title, 0).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(BlogPost blogPost) {
        super.updateView(blogPost);
        ((TextView) this.root.findViewById(R.id.title)).setHint(R.string.post_quiz_title_hint);
        ((TextView) this.root.findViewById(R.id.content)).setHint(R.string.post_quiz_content_hint);
        this.root.findViewById(R.id.post_add_link).setVisibility(8);
        updateQuiz(blogPost.quizQuestionList);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void updateQuiz(java.util.List<com.narvii.model.QuizQuestion> r15) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.blog.post.QuizPostActivity.updateQuiz(java.util.List):void");
    }

    int getQuestionIndex() {
        int childCount = this.root.getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (this.root.getChildAt(i) == this.header) {
                return i + 1;
            }
        }
        return 0;
    }

    View getQuestionCell(View view) {
        for (int i = 0; i < 4; i++) {
            if (view.getId() == R.id.post_quiz_question) {
                return view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (View) view.getParent();
            }
        }
        return null;
    }

    int trimEmptyQuestion(List<QuizQuestion> list, boolean z) {
        int i = 0;
        if (list != null) {
            ListIterator<QuizQuestion> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                if (listIterator.previous().isEmpty()) {
                    listIterator.remove();
                    i++;
                } else if (z) {
                    break;
                }
            }
        }
        return i;
    }

    boolean hasDuplicateQuestion(List<QuizQuestion> list, QuizQuestion quizQuestion) {
        String str = quizQuestion.title;
        String strTrim = str == null ? null : str.trim();
        if (TextUtils.isEmpty(strTrim)) {
            return false;
        }
        for (QuizQuestion quizQuestion2 : list) {
            if (quizQuestion2 != quizQuestion) {
                String str2 = quizQuestion2.title;
                if (strTrim.equals(str2 == null ? null : str2.trim())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BasePostActivity
    public BlogPost savePost() {
        BlogPost blogPostSavePost = super.savePost();
        blogPostSavePost.type = 6;
        return blogPostSavePost;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BasePostActivity
    public boolean validateUpload(BlogPost blogPost) {
        boolean z;
        boolean z2;
        if (!super.validateUpload(blogPost)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        List<QuizQuestion> list = blogPost.quizQuestionList;
        if (list != null) {
            arrayList.addAll(list);
        }
        trimEmptyQuestion(arrayList, false);
        if (arrayList.size() < (NVApplication.DEBUG ? 2 : 7)) {
            z = true;
            z2 = false;
        } else {
            Iterator it = arrayList.iterator();
            z = false;
            z2 = false;
            while (it.hasNext()) {
                QuizQuestion quizQuestion = (QuizQuestion) it.next();
                if (!quizQuestion.isComplete()) {
                    z = true;
                }
                if (quizQuestion.hasDuplicateOption()) {
                    z2 = true;
                }
                if (hasDuplicateQuestion(arrayList, quizQuestion)) {
                    z2 = true;
                }
            }
        }
        if (!z && !z2) {
            return true;
        }
        AlertDialog alertDialog = new AlertDialog(this);
        if (z) {
            alertDialog.setTitle(R.string.quiz_question_incomplete_title);
            alertDialog.setMessage(R.string.quiz_question_incomplete_message);
        } else {
            alertDialog.setTitle(R.string.quiz_duplicate_title);
        }
        alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
        alertDialog.show();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BasePostActivity
    public void doPost(BlogPost blogPost) {
        List<QuizQuestion> list = blogPost.quizQuestionList;
        if (list != null) {
            ArrayList arrayList = new ArrayList(list);
            if (trimEmptyQuestion(arrayList, false) > 0) {
                blogPost.quizQuestionList = arrayList;
            }
        }
        super.doPost(blogPost);
    }

    void closeAllSwipeToDelete(boolean z) {
        int childCount = this.root.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.root.getChildAt(i);
            if (childAt instanceof SwipeToDeleteLayout) {
                ((SwipeToDeleteLayout) childAt).setSwipeRight(false, z);
            }
        }
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        super.onPostFinished(postHelper, apiResponse);
    }
}
