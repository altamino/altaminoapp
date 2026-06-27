package com.narvii.blog.post;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.RelativeSizeSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.quiz.QuizQuestionFragment;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.BackgroundPickerView;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class QuizQuestionEditor extends NVFragment implements View.OnClickListener, MediaPickerFragment.OnResultListener, MediaPickerFragment.OnPickColorResultListener, FragmentWillFinishListener, FragmentOnBackListener {
    EditText answer1;
    EditText answer2;
    EditText answer3;
    EditText answer4;
    BackgroundPickerView backgroundPickerView;
    File dir;
    EditText explanation;
    MediaPickerFragment mediaPickerFragment;
    QuizQuestion question;
    View root;
    ScrollView scroll;
    EditText title;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        this.mediaPickerFragment = (MediaPickerFragment) getFragmentManager().findFragmentByTag("mediaPicker");
        if (this.mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            getFragmentManager().beginTransaction().add(this.mediaPickerFragment, "mediaPicker").commit();
        }
        this.mediaPickerFragment.addOnResultListener(this);
        this.mediaPickerFragment.pickColorResultListener = this;
        if (bundle == null) {
            this.question = (QuizQuestion) JacksonUtils.readAs(getStringParam(EntryManager.ENTRY_QUEATION), QuizQuestion.class);
        } else {
            this.question = (QuizQuestion) JacksonUtils.readAs(bundle.getString(EntryManager.ENTRY_QUEATION), QuizQuestion.class);
        }
        if (this.question == null) {
            this.question = new QuizQuestion();
        }
        this.dir = getContext().getFilesDir();
        if (this.dir.isDirectory()) {
            return;
        }
        finish();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemFindItem = menu.findItem(R.string.compose_preview);
        if (canPreview()) {
            menuItemFindItem.setEnabled(true);
            menuItemFindItem.getIcon().setAlpha(255);
        } else {
            menuItemFindItem.setEnabled(false);
            menuItemFindItem.getIcon().setAlpha(130);
        }
    }

    private boolean canPreview() {
        if (!isEditTextEmpty(this.title) || !isEditTextEmpty(this.answer1) || !isEditTextEmpty(this.answer2) || !isEditTextEmpty(this.answer3) || !isEditTextEmpty(this.answer4)) {
            return true;
        }
        QuizQuestion quizQuestion = this.question;
        if (quizQuestion == null) {
            return false;
        }
        if (quizQuestion.hasBackground()) {
            return true;
        }
        List<Media> list = this.question.mediaList;
        return list != null && list.size() > 0;
    }

    private boolean isEditTextEmpty(EditText editText) {
        return editText == null || TextUtils.isEmpty(editText.getText().toString());
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.add(0, R.string.compose_preview, 0, R.string.compose_preview).setIcon(R.drawable.ic_quiz_question_preview).setShowAsAction(2);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.compose_preview) {
            Intent intent = FragmentWrapperActivity.intent(QuizQuestionFragment.class);
            intent.putExtra("preview", true);
            intent.putExtra(EntryManager.ENTRY_QUEATION, JacksonUtils.writeAsString(save()));
            intent.putExtra(EntryManager.ENTRY_QUIZZES, getStringParam(EntryManager.ENTRY_QUIZZES));
            startActivity(intent);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.post_quiz_question_editor, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(EntryManager.ENTRY_QUEATION, JacksonUtils.writeAsString(save()));
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        AndroidBug5497Workaround.assistActivity(getActivity());
        this.scroll = (ScrollView) view.findViewById(R.id.scroll);
        this.root = view.findViewById(R.id.root);
        this.title = (EditText) view.findViewById(R.id.title);
        this.answer1 = (EditText) view.findViewById(R.id.post_quiz_answer_1);
        this.answer2 = (EditText) view.findViewById(R.id.post_quiz_answer_2);
        this.answer3 = (EditText) view.findViewById(R.id.post_quiz_answer_3);
        this.answer4 = (EditText) view.findViewById(R.id.post_quiz_answer_4);
        this.explanation = (EditText) view.findViewById(R.id.post_quiz_explanation);
        view.findViewById(R.id.post_add_photo).setOnClickListener(this);
        view.findViewById(R.id.post_edit_photo).setOnClickListener(this);
        this.backgroundPickerView = (BackgroundPickerView) view.findViewById(R.id.background_picker);
        this.backgroundPickerView.setMediaPicker(this.mediaPickerFragment, this.dir, 0);
        this.title.setInputType(16385);
        this.title.setSingleLine(true);
        this.title.setLines(5);
        this.title.setHorizontallyScrolling(false);
        this.title.setImeOptions(5);
        new EditHelper(this.title, (TextView) view.findViewById(R.id.post_quiz_countdown_title), 130);
        this.answer1.setInputType(16385);
        this.answer1.setSingleLine(true);
        this.answer1.setLines(2);
        this.answer1.setHorizontallyScrolling(false);
        this.answer1.setImeOptions(5);
        new EditHelper(this.answer1, (TextView) view.findViewById(R.id.post_quiz_countdown_1), 30);
        this.answer2.setInputType(16385);
        this.answer2.setSingleLine(true);
        this.answer2.setLines(2);
        this.answer2.setHorizontallyScrolling(false);
        this.answer2.setImeOptions(5);
        new EditHelper(this.answer2, (TextView) view.findViewById(R.id.post_quiz_countdown_2), 30);
        this.answer3.setInputType(16385);
        this.answer3.setSingleLine(true);
        this.answer3.setLines(2);
        this.answer3.setHorizontallyScrolling(false);
        this.answer3.setImeOptions(5);
        new EditHelper(this.answer3, (TextView) view.findViewById(R.id.post_quiz_countdown_3), 30);
        this.answer4.setInputType(16385);
        this.answer4.setSingleLine(true);
        this.answer4.setLines(2);
        this.answer4.setHorizontallyScrolling(false);
        this.answer4.setImeOptions(6);
        new EditHelper(this.answer4, (TextView) view.findViewById(R.id.post_quiz_countdown_4), 30);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) getString(R.string.quiz_explanation_hint1));
        spannableStringBuilder.append((CharSequence) "\n");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) getString(R.string.quiz_explanation_hint2));
        spannableStringBuilder.setSpan(new RelativeSizeSpan(0.75f), length, spannableStringBuilder.length(), 0);
        this.explanation.setHint(spannableStringBuilder);
        this.explanation.setInputType(16385);
        this.explanation.setSingleLine(true);
        this.explanation.setLines(4);
        this.explanation.setHorizontallyScrolling(false);
        this.explanation.setImeOptions(6);
        new EditHelper(this.explanation, (TextView) view.findViewById(R.id.post_quiz_countdown_explanation), 130);
        updateView();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.post_add_photo || view.getId() == R.id.post_edit_photo) {
            int i = view.getId() == R.id.post_edit_photo ? 64 : 0;
            Bundle bundle = new Bundle();
            bundle.putBoolean("pickImage", true);
            this.mediaPickerFragment.pickMedia(this.dir, bundle, i | 6);
        }
    }

    void updateView() {
        if (!Utils.isEquals(this.question.title, this.title.getText().toString())) {
            this.title.setText(this.question.title);
        }
        List<QuizOption> listQuizOptions = this.question.quizOptions();
        QuizOption correctAnswer = this.question.getCorrectAnswer();
        if (correctAnswer != null && listQuizOptions != null) {
            ArrayList arrayList = new ArrayList(listQuizOptions);
            arrayList.remove(correctAnswer);
            listQuizOptions = arrayList;
        }
        Media media = null;
        if (!Utils.isEquals(correctAnswer == null ? null : correctAnswer.title, this.answer1.getText().toString())) {
            this.answer1.setText(correctAnswer == null ? null : correctAnswer.title);
        }
        this.answer1.setTag(correctAnswer);
        QuizOption quizOption = (listQuizOptions == null || listQuizOptions.size() <= 0) ? null : listQuizOptions.get(0);
        if (!Utils.isEquals(quizOption == null ? null : quizOption.title, this.answer2.getText().toString())) {
            this.answer2.setText(quizOption == null ? null : quizOption.title);
        }
        this.answer2.setTag(quizOption);
        QuizOption quizOption2 = (listQuizOptions == null || listQuizOptions.size() <= 1) ? null : listQuizOptions.get(1);
        if (!Utils.isEquals(quizOption2 == null ? null : quizOption2.title, this.answer3.getText().toString())) {
            this.answer3.setText(quizOption2 == null ? null : quizOption2.title);
        }
        this.answer3.setTag(quizOption2);
        QuizOption quizOption3 = (listQuizOptions == null || listQuizOptions.size() <= 2) ? null : listQuizOptions.get(2);
        if (!Utils.isEquals(quizOption3 == null ? null : quizOption3.title, this.answer4.getText().toString())) {
            this.answer4.setText(quizOption3 == null ? null : quizOption3.title);
        }
        this.answer4.setTag(quizOption3);
        if (!Utils.isEquals(this.question.quizAnswerExplanation(), this.explanation.getText().toString())) {
            this.explanation.setText(this.question.quizAnswerExplanation());
        }
        View viewFindViewById = this.root.findViewById(R.id.post_add_photo);
        List<Media> list = this.question.mediaList;
        int i = 8;
        viewFindViewById.setVisibility((list == null || list.size() == 0) ? 0 : 8);
        View viewFindViewById2 = this.root.findViewById(R.id.post_edit_photo);
        List<Media> list2 = this.question.mediaList;
        if (list2 != null && list2.size() != 0) {
            i = 0;
        }
        viewFindViewById2.setVisibility(i);
        NVImageView nVImageView = (NVImageView) viewFindViewById2.findViewById(R.id.image);
        List<Media> list3 = this.question.mediaList;
        if (list3 != null && list3.size() > 0) {
            media = this.question.mediaList.get(0);
        }
        nVImageView.setImageMedia(media);
        BackgroundPickerView backgroundPickerView = this.backgroundPickerView;
        if (backgroundPickerView != null) {
            backgroundPickerView.setBackgroundPost(this.question);
        }
        invalidateOptionsMenu();
    }

    QuizQuestion save() {
        this.question.title = this.title.getText().toString();
        ArrayList arrayList = new ArrayList();
        QuizOption quizOption = (QuizOption) this.answer1.getTag();
        if (quizOption == null) {
            quizOption = new QuizOption();
            quizOption.isCorrect = true;
        }
        quizOption.title = this.answer1.getText().toString();
        arrayList.add(quizOption);
        QuizOption quizOption2 = (QuizOption) this.answer2.getTag();
        if (quizOption2 == null) {
            quizOption2 = new QuizOption();
            quizOption2.isCorrect = false;
        }
        quizOption2.title = this.answer2.getText().toString();
        arrayList.add(quizOption2);
        QuizOption quizOption3 = (QuizOption) this.answer3.getTag();
        if (quizOption3 == null) {
            quizOption3 = new QuizOption();
            quizOption3.isCorrect = false;
        }
        quizOption3.title = this.answer3.getText().toString();
        arrayList.add(quizOption3);
        QuizOption quizOption4 = (QuizOption) this.answer4.getTag();
        if (quizOption4 == null) {
            quizOption4 = new QuizOption();
            quizOption4.isCorrect = false;
        }
        quizOption4.title = this.answer4.getText().toString();
        arrayList.add(quizOption4);
        this.question.setQuizOptions(arrayList);
        this.question.setQuizAnswerExplanation(this.explanation.getText().toString());
        return this.question;
    }

    @Override // com.narvii.media.MediaPickerFragment.OnPickColorResultListener
    public void onPickColorResult(int i, Bundle bundle) {
        save();
        this.question.setBackgroundColor(i);
        this.question.setBackgroundMediaList(null);
        updateView();
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        save();
        if (bundle.getBoolean("pickImage")) {
            this.question.mediaList = list;
            updateView();
        } else if (bundle.getInt("type") == 10000) {
            this.question.setBackgroundColor(0);
            this.question.setBackgroundMediaList(list);
            updateView();
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (this.question != null) {
            QuizQuestion quizQuestionSave = save();
            if (!quizQuestionSave.isEmpty() && (!quizQuestionSave.isComplete() || quizQuestionSave.hasDuplicateOption())) {
                AlertDialog alertDialog = new AlertDialog(getContext());
                if (!quizQuestionSave.isComplete()) {
                    alertDialog.setTitle(R.string.quiz_question_incomplete_title);
                    alertDialog.setMessage(R.string.quiz_question_incomplete_message);
                } else {
                    alertDialog.setTitle(R.string.quiz_duplicate_title);
                }
                alertDialog.addButton(R.string.go_back, 0, new View.OnClickListener() { // from class: com.narvii.blog.post.QuizQuestionEditor.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        QuizQuestionEditor.this.finish();
                    }
                });
                alertDialog.addButton(R.string.edit, 0, (View.OnClickListener) null);
                alertDialog.show();
                return true;
            }
        }
        return false;
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        SoftKeyboard.hideSoftKeyboard(nVActivity);
        if (this.question != null) {
            Intent intent = nVActivity.getIntent();
            intent.putExtra(EntryManager.ENTRY_QUEATION, JacksonUtils.writeAsString(save()));
            nVActivity.setResult(-1, intent);
        }
    }

    class EditHelper implements View.OnFocusChangeListener, TextWatcher {
        TextView countDown;
        EditText editText;
        int maxLength;

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        EditHelper(EditText editText, TextView textView, int i) {
            this.editText = editText;
            this.countDown = textView;
            this.maxLength = i;
            update();
            editText.setOnFocusChangeListener(this);
            editText.addTextChangedListener(this);
        }

        void update() {
            this.countDown.setVisibility(this.editText.isFocused() ? 0 : 4);
            this.countDown.setText(String.valueOf(this.maxLength - this.editText.length()));
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            update();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            QuizQuestionEditor.this.invalidateOptionsMenu();
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            update();
            EditText editText = this.editText;
            QuizQuestionEditor quizQuestionEditor = QuizQuestionEditor.this;
            if (editText == quizQuestionEditor.answer1 && z) {
                int[] iArr = new int[2];
                quizQuestionEditor.scroll.getLocationInWindow(iArr);
                int i = iArr[1];
                this.editText.getLocationInWindow(iArr);
                int iDpToPx = (iArr[1] - i) - ((int) Utils.dpToPx(QuizQuestionEditor.this.getContext(), 10.0f));
                if (iDpToPx > 0) {
                    QuizQuestionEditor.this.scroll.smoothScrollBy(0, iDpToPx);
                }
            }
        }
    }
}
