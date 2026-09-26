package com.narvii.blog.post;

import android.animation.LayoutTransition;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.model.Media;
import com.narvii.model.QuizQuestion;
import com.narvii.model.api.ApiResponse;
import com.narvii.post.DraftPostActivity;
import com.narvii.post.PostHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.BackgroundPickerView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVScrollView;
import com.narvii.widget.SwipeToDeleteLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes8.dex */
public class QuizPostActivity extends TopicPostActivity {
    static final int REQUEST_ADD = 32;
    static final int REQUEST_QUESTION = 31;
    View header;
    ViewGroup root;

    public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity
    public String draftType() {
        return "quiz";
    }

    View getQuestionCell(View view) {
        for (int i10 = 0; i10 < 4; i10++) {
            if (view.getId() == R.id.post_quiz_question) {
                return view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (View) view.getParent();
            }
        }
        return null;
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        setShouldInflateAd(true);
        super.onCreate(bundle);
        ((NVScrollView) findViewById(R.id.scroll)).setOnScrollListener(new NVScrollView.OnScrollListener() { // from class: com.narvii.blog.post.QuizPostActivity.1
            @Override // com.narvii.widget.NVScrollView.OnScrollListener
            public void onScroll(int i10, int i11, int i12, int i13) {
                QuizPostActivity.this.closeAllSwipeToDelete(true);
            }
        });
        View viewFindViewById = findViewById(R.id.post_quiz_header_subtitle);
        this.header = viewFindViewById;
        viewFindViewById.setVisibility(0);
        findViewById(R.id.post_quiz_header).setVisibility(0);
        this.root = (ViewGroup) this.header.getParent();
        View viewInflate = getLayoutInflater().inflate(R.layout.post_quiz_add_question, this.root, false);
        viewInflate.findViewById(R.id.post_quiz_add_question).setOnClickListener(this);
        this.root.addView(viewInflate, getQuestionIndex());
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.addTransitionListener(new LayoutTransition.TransitionListener() { // from class: com.narvii.blog.post.QuizPostActivity.2
            @Override // android.animation.LayoutTransition.TransitionListener
            public void endTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i10) {
                if (i10 == 3 && view.getId() == R.id.post_quiz_question) {
                    QuizQuestion quizQuestion = (QuizQuestion) view.getTag();
                    if (quizQuestion != null && ((BlogPost) ((DraftPostActivity) QuizPostActivity.this).post).quizQuestionList != null) {
                        ((BlogPost) ((DraftPostActivity) QuizPostActivity.this).post).quizQuestionList.remove(quizQuestion);
                    }
                    QuizPostActivity quizPostActivity = QuizPostActivity.this;
                    quizPostActivity.updateQuiz(((BlogPost) ((DraftPostActivity) quizPostActivity).post).quizQuestionList);
                }
            }

            @Override // android.animation.LayoutTransition.TransitionListener
            public void startTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i10) {
            }
        });
        this.root.setLayoutTransition(layoutTransition);
    }

    int trimEmptyQuestion(List<QuizQuestion> list, boolean z6) {
        int i10 = 0;
        if (list != null) {
            ListIterator<QuizQuestion> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                if (listIterator.previous().isEmpty()) {
                    listIterator.remove();
                    i10++;
                } else if (z6) {
                    break;
                }
            }
        }
        return i10;
    }

    void updateQuiz(List<QuizQuestion> list) {
        boolean z6;
        boolean z10;
        List<Media> list2;
        int size = list == null ? 0 : list.size();
        int questionIndex = getQuestionIndex();
        LinkedList linkedList = new LinkedList();
        int childCount = this.root.getChildCount();
        while (questionIndex < childCount) {
            View childAt = this.root.getChildAt(questionIndex);
            if (childAt.getId() != R.id.post_quiz_question) {
                break;
            }
            linkedList.add(childAt);
            questionIndex++;
        }
        while (true) {
            if (linkedList.size() >= 7 && linkedList.size() >= size) {
                break;
            }
            View viewInflate = getLayoutInflater().inflate(R.layout.post_quiz_question_item, this.root, false);
            viewInflate.findViewById(R.id.post_quiz_question_click).setOnClickListener(this);
            viewInflate.findViewById(R.id.delete).setOnClickListener(this);
            linkedList.add(viewInflate);
            this.root.addView(viewInflate, questionIndex);
            questionIndex++;
        }
        while (size > 7 && linkedList.size() > size) {
            this.root.removeView((View) linkedList.removeLast());
        }
        int i10 = 0;
        while (true) {
            if (i10 >= size && i10 >= 7) {
                return;
            }
            View view = (View) linkedList.get(i10);
            Media media = null;
            QuizQuestion quizQuestion = i10 < size ? list.get(i10) : null;
            view.setTag(quizQuestion);
            view.setTag(R.id.index, Integer.valueOf(i10));
            boolean z11 = true;
            if (quizQuestion == null || quizQuestion.isEmpty()) {
                z6 = false;
                z10 = false;
            } else {
                z6 = !quizQuestion.isComplete();
                z10 = quizQuestion.hasDuplicateOption() || hasDuplicateQuestion(list, quizQuestion);
            }
            if (!z6 && !z10) {
                z11 = false;
            }
            view.findViewById(R.id.post_quiz_question_click).setBackgroundResource(z11 ? R.drawable.post_quiz_question_err_bg : R.drawable.post_quiz_question_bg);
            TextView textView = (TextView) view.findViewById(R.id.post_quiz_question_no);
            textView.setTextColor(z11 ? -1503941 : -4210753);
            i10++;
            textView.setText(String.valueOf(i10));
            ((TextView) view.findViewById(R.id.title)).setText(quizQuestion == null ? null : quizQuestion.title);
            TextView textView2 = (TextView) view.findViewById(R.id.error);
            if (z11) {
                textView2.setVisibility(0);
                if (z6) {
                    textView2.setText(R.string.quiz_incomplete_answer);
                } else if (z10) {
                    textView2.setText(R.string.quiz_duplicate_answer);
                }
            } else {
                textView2.setVisibility(4);
            }
            NVImageView nVImageView = (NVImageView) view.findViewById(R.id.image);
            if (quizQuestion != null && (list2 = quizQuestion.mediaList) != null && list2.size() != 0) {
                media = quizQuestion.mediaList.get(0);
            }
            nVImageView.setImageMedia(media);
        }
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BasePostActivity
    protected void checkEligible() {
        checkEligible("blog", "quiz");
    }

    void closeAllSwipeToDelete(boolean z6) {
        int childCount = this.root.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = this.root.getChildAt(i10);
            if (childAt instanceof SwipeToDeleteLayout) {
                ((SwipeToDeleteLayout) childAt).setSwipeRight(false, z6);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.BasePostActivity
    public void doPost(BlogPost blogPost) {
        if (blogPost.quizQuestionList != null) {
            ArrayList arrayList = new ArrayList(blogPost.quizQuestionList);
            if (trimEmptyQuestion(arrayList, false) > 0) {
                blogPost.quizQuestionList = arrayList;
            }
        }
        super.doPost(blogPost);
    }

    int getQuestionIndex() {
        int childCount = this.root.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (this.root.getChildAt(i10) == this.header) {
                return i10 + 1;
            }
        }
        return 0;
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
    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity
    public void onPostLoaded(BlogPost blogPost) {
        super.onPostLoaded(blogPost);
        if (isEdit()) {
            setTitle(R.string.edit);
        } else {
            setTitle(R.string.post_quiz_title);
        }
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
        boolean z6;
        boolean z10;
        if (!super.validateUpload(blogPost)) {
            return false;
        }
        ArrayList<QuizQuestion> arrayList = new ArrayList();
        List<QuizQuestion> list = blogPost.quizQuestionList;
        if (list != null) {
            arrayList.addAll(list);
        }
        trimEmptyQuestion(arrayList, false);
        if (arrayList.size() < (NVApplication.DEBUG ? 2 : 7)) {
            z10 = false;
            z6 = true;
        } else {
            z6 = false;
            z10 = false;
            for (QuizQuestion quizQuestion : arrayList) {
                if (!quizQuestion.isComplete()) {
                    z6 = true;
                }
                if (quizQuestion.hasDuplicateOption()) {
                    z10 = true;
                }
                if (hasDuplicateQuestion(arrayList, quizQuestion)) {
                    z10 = true;
                }
            }
        }
        if (!z6 && !z10) {
            return true;
        }
        AlertDialog alertDialog = new AlertDialog(this);
        if (z6) {
            alertDialog.setTitle(R.string.quiz_question_incomplete_title);
            alertDialog.setMessage(R.string.quiz_question_incomplete_message);
        } else {
            alertDialog.setTitle(R.string.quiz_duplicate_title);
        }
        alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
        alertDialog.show();
        return false;
    }

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 31 && i11 == -1) {
            int intExtra = intent.getIntExtra("index", 0);
            QuizQuestion quizQuestion = (QuizQuestion) JacksonUtils.readAs(intent.getStringExtra("question"), QuizQuestion.class);
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
        if (i10 == 32 && i11 == -1) {
            QuizQuestion quizQuestion2 = (QuizQuestion) JacksonUtils.readAs(intent.getStringExtra("question"), QuizQuestion.class);
            if (!quizQuestion2.isEmpty()) {
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
    }

    @Override // com.narvii.blog.post.TopicPostActivity, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view.getId() == R.id.post_quiz_question_click) {
            View questionCell = getQuestionCell(view);
            QuizQuestion quizQuestion = (QuizQuestion) questionCell.getTag();
            BlogPost blogPostSavePost = savePost();
            Intent intent = FragmentWrapperActivity.intent(QuizQuestionEditor.class);
            intent.putExtra("quiz", JacksonUtils.writeAsString(blogPostSavePost));
            intent.putExtra("question", JacksonUtils.writeAsString(quizQuestion));
            intent.putExtra("dir", this.draftManager.getDir(this.draftId).getAbsolutePath());
            intent.putExtra("index", ((Integer) questionCell.getTag(R.id.index)).intValue());
            safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent, 31);
        }
        if (view.getId() == R.id.delete) {
            View questionCell2 = getQuestionCell(view);
            ((SwipeToDeleteLayout) questionCell2).setSwipeRight(false, true);
            ((ViewGroup) questionCell2.getParent()).removeView(questionCell2);
        }
        if (view.getId() == R.id.post_quiz_add_question) {
            Intent intent2 = FragmentWrapperActivity.intent(QuizQuestionEditor.class);
            intent2.putExtra("quiz", JacksonUtils.writeAsString(this.post));
            intent2.putExtra("dir", this.draftManager.getDir(this.draftId).getAbsolutePath());
            safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(this, intent2, 32);
        }
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

    @Override // com.narvii.blog.post.TopicPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        super.onPostFinished(postHelper, apiResponse);
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
}
