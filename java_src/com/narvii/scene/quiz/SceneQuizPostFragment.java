package com.narvii.scene.quiz;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.SingleLineTransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import com.narvii.app.NVActivity;
import com.narvii.media.MediaPickerFragment;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.scene.SceneBasePostFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.EditTextInnerScrollListener;
import com.narvii.widget.NVGradientDrawable;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes3.dex */
public class SceneQuizPostFragment extends SceneBasePostFragment implements MediaPickerFragment.OnResultListener, View.OnClickListener {
    List<View> answers = new ArrayList();
    private View grid;
    MediaPickerFragment mediaPickerFragment;
    QuizQuestion originalQuestion;
    QuizQuestion question;
    ScrollView scroll;
    View stub1;
    EditText title;

    @Override // com.narvii.scene.SceneBasePostFragment
    protected int getPostObjectType() {
        return 6;
    }

    @Override // com.narvii.scene.SceneBasePostFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setTitle(R.string.new_quiz);
        this.mediaPickerFragment = (MediaPickerFragment) getFragmentManager().findFragmentByTag("mediaPicker");
        if (this.mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            getFragmentManager().beginTransaction().add(this.mediaPickerFragment, "mediaPicker").commit();
        }
        this.mediaPickerFragment.addOnResultListener(this);
        if (bundle == null) {
            this.question = (QuizQuestion) JacksonUtils.readAs(getStringParam(EntryManager.ENTRY_QUEATION), QuizQuestion.class);
        } else {
            this.question = (QuizQuestion) JacksonUtils.readAs(bundle.getString(EntryManager.ENTRY_QUEATION), QuizQuestion.class);
        }
        if (this.question == null) {
            this.question = new QuizQuestion();
        }
        if (bundle == null) {
            this.originalQuestion = (QuizQuestion) this.question.m46clone();
        } else {
            this.originalQuestion = (QuizQuestion) JacksonUtils.readAs(bundle.getString("originalQuestion"), QuizQuestion.class);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected boolean canSubmit() {
        if (this.question == null) {
            return false;
        }
        return !r0.isEmpty();
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected void doSubmit() {
        QuizQuestion quizQuestion = this.question;
        if (quizQuestion != null) {
            final int i = 0;
            String str = quizQuestion.title;
            if (str == null || str.trim().length() == 0) {
                i = R.string.input_quiz_title;
            } else if (!this.question.isComplete()) {
                i = R.string.quiz_incomplete_answers;
            } else if (hasDuplicateAnswers()) {
                i = R.string.quiz_duplicate_answers;
            }
            if (i != 0) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(i);
                aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.scene.quiz.SceneQuizPostFragment.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (i == R.string.input_quiz_title) {
                            SceneQuizPostFragment.this.title.requestFocus();
                            Utils.postDelayed(new Runnable() { // from class: com.narvii.scene.quiz.SceneQuizPostFragment.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    SoftKeyboard.showSoftKeyboard(SceneQuizPostFragment.this.title);
                                }
                            }, 50L);
                        }
                    }
                });
                aCMAlertDialog.show();
                return;
            }
            Intent intent = getActivity().getIntent();
            intent.putExtra(EntryManager.ENTRY_QUEATION, JacksonUtils.writeAsString(this.question));
            setResult(-1, intent);
            finish();
        }
    }

    private boolean hasDuplicateAnswers() {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.answers.size(); i++) {
            String strTrim = getEditText(i).getText().toString().trim();
            if (!TextUtils.isEmpty(strTrim)) {
                if (hashSet.contains(strTrim)) {
                    return true;
                }
                hashSet.add(strTrim);
            }
        }
        return false;
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected boolean isModified() {
        if (this.originalQuestion == null) {
            return true;
        }
        return !r0.isSame(this.question);
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected boolean isContentEmpty() {
        QuizQuestion quizQuestion = this.question;
        if (quizQuestion != null) {
            return quizQuestion.isEmpty();
        }
        return false;
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected void onPostDeleted() {
        Intent intent = getActivity().getIntent();
        intent.putExtra(EntryManager.ENTRY_QUEATION, (String) null);
        setResult(-1, intent);
        finish();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_scene_quiz, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(EntryManager.ENTRY_QUEATION, JacksonUtils.writeAsString(this.question));
        bundle.putString("originalQuestion", JacksonUtils.writeAsString(this.originalQuestion));
    }

    @Override // android.support.v4.app.Fragment
    public void onViewStateRestored(Bundle bundle) throws Resources.NotFoundException {
        super.onViewStateRestored(bundle);
        View view = getView();
        this.scroll = (ScrollView) view.findViewById(R.id.scroll);
        this.title = (EditText) view.findViewById(R.id.title);
        this.title.setInputType(16385);
        this.title.setTransformationMethod(new SingleLineTransformationMethod());
        this.title.setLines(3);
        this.title.setHorizontallyScrolling(false);
        this.title.setImeOptions(6);
        this.title.setOnTouchListener(new EditTextInnerScrollListener());
        this.answers.add(view.findViewById(R.id.answer_1));
        this.answers.add(view.findViewById(R.id.answer_2));
        this.answers.add(view.findViewById(R.id.answer_3));
        this.answers.add(view.findViewById(R.id.answer_4));
        float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.scene_answer_item_corner_radius_fake);
        float dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.scene_answer_item_corner_radius);
        float[] fArr = {dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2};
        for (int i = 0; i < this.answers.size(); i++) {
            Drawable background = this.answers.get(i).findViewById(R.id.item_bg).getBackground();
            if (background instanceof GradientDrawable) {
                ((GradientDrawable) background).setCornerRadii(fArr);
            }
        }
        NVGradientDrawable nVGradientDrawable = new NVGradientDrawable(ContextCompat.getColor(getContext(), R.color.scene_quiz_answer_right_gradient_start), ContextCompat.getColor(getContext(), R.color.scene_quiz_answer_right_gradient_end));
        nVGradientDrawable.setRadius(fArr);
        this.answers.get(0).findViewById(R.id.item_bg).setBackgroundDrawable(nVGradientDrawable);
        this.answers.get(0).findViewById(R.id.shader).setVisibility(0);
        EditText editText = getEditText(0);
        editText.setTextColor(-1);
        editText.setHintTextColor(-1);
        ((TextView) this.answers.get(0).findViewById(R.id.left)).setTextColor(-1996488705);
        this.stub1 = view.findViewById(R.id.stub1);
        this.grid = view.findViewById(R.id.grid);
        setTextHint(0, R.string.post_quiz_correct_answer);
        setTextHint(1, R.string.post_quiz_wrong_answer_1);
        setTextHint(2, R.string.post_quiz_wrong_answer_2);
        setTextHint(3, R.string.post_quiz_wrong_answer_3);
        updateView();
        for (int i2 = 0; i2 < this.answers.size(); i2++) {
            getImageView(i2).setOnClickListener(this);
            EditText editText2 = getEditText(i2);
            editText2.setInputType(16385);
            editText2.setTransformationMethod(new SingleLineTransformationMethod());
            editText2.setLines(3);
            editText2.setHorizontallyScrolling(false);
            editText2.setImeOptions(6);
            new EditHelper(editText2, (TextView) this.answers.get(i2).findViewById(R.id.left), 30);
        }
        this.title.addTextChangedListener(new TextWatcher() { // from class: com.narvii.scene.quiz.SceneQuizPostFragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SceneQuizPostFragment.this.save();
                SceneQuizPostFragment.this.invalidateOptionsMenu();
            }
        });
        onFrameHeightChanged();
    }

    private EditText getEditText(int i) {
        return (EditText) this.answers.get(i).findViewById(R.id.answer_edit_text);
    }

    private NVImageView getImageView(int i) {
        return (NVImageView) this.answers.get(i).findViewById(R.id.answer_image);
    }

    private void setTextHint(int i, int i2) {
        EditText editText = getEditText(i);
        if (editText != null) {
            editText.setHint(i2);
        }
    }

    void updateView() {
        if (!Utils.isEquals(this.question.title, this.title.getText().toString())) {
            this.title.setText(this.question.title);
        }
        List<QuizOption> listQuizOptions = this.question.quizOptions();
        int i = 0;
        while (i < this.answers.size()) {
            Media firstMedia = null;
            QuizOption quizOption = (listQuizOptions == null || listQuizOptions.size() <= i) ? null : listQuizOptions.get(i);
            EditText editText = getEditText(i);
            if (!Utils.isEquals(quizOption == null ? null : quizOption.title, editText.getText().toString())) {
                editText.setText(quizOption == null ? null : quizOption.title);
            }
            NVImageView imageView = getImageView(i);
            if (quizOption != null) {
                firstMedia = quizOption.getFirstMedia();
            }
            setImageMedia(imageView, firstMedia);
            imageView.setTag(R.id.index, Integer.valueOf(i));
            this.answers.get(i).setTag(quizOption);
            this.answers.get(i).setTag(R.id.index, Integer.valueOf(i));
            i++;
        }
        updateDuplicateStatus();
        invalidateOptionsMenu();
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected void onFrameHeightChanged() throws Resources.NotFoundException {
        int actionBarOverlaySize;
        if (this.frameHeight != 0) {
            if (getActivity() instanceof NVActivity) {
                NVActivity nVActivity = (NVActivity) getActivity();
                actionBarOverlaySize = nVActivity.getActionBarOverlaySize() + nVActivity.getStatusBarOverlaySize();
            } else {
                actionBarOverlaySize = 0;
            }
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.scene_answer_item_padding_h);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.scene_answer_item_margin);
            int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.scene_quiz_title_edit_margin_bottom);
            int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.scene_quiz_title_edit_height);
            int iDpToPxInt = Utils.dpToPxInt(getContext(), 10.0f);
            int iMax = ((this.frameHeight - (Math.max(actionBarOverlaySize + iDpToPxInt, (iDpToPxInt + getResources().getDimensionPixelSize(R.dimen.scene_edit_delete_margin_bottom)) + Utils.dpToPxInt(getContext(), 20.0f)) * 2)) - dimensionPixelSize3) - dimensionPixelSize2;
            float f = dimensionPixelOffset;
            float f2 = dimensionPixelSize * 4;
            int screenWidth = (int) ((((((Utils.getScreenWidth(getContext()) * 0.8f) - f) - f2) / 2.0f) * 1.29f * 2.0f) + f2 + f);
            int iMin = Math.min(iMax, screenWidth);
            int i = (int) ((((((iMin - r5) - dimensionPixelOffset) / 2.0f) / 1.29f) * 2.0f) + f2 + f);
            View view = this.grid;
            if (view != null) {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                layoutParams.height = iMin;
                layoutParams.width = i;
                this.grid.setLayoutParams(layoutParams);
            }
            View view2 = this.stub1;
            if (view2 != null) {
                ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                layoutParams2.height = Math.max(0, (iMax - screenWidth) / 2);
                this.stub1.setLayoutParams(layoutParams2);
            }
            int i2 = ((float) (((iMin - dimensionPixelOffset) / 2) - (dimensionPixelSize * 2))) * 0.45f >= ((float) Utils.dpToPxInt(getContext(), 60.0f)) ? 3 : 2;
            for (int i3 = 0; i3 < this.answers.size(); i3++) {
                getEditText(i3).setLines(i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public QuizQuestion save() {
        this.question.title = this.title.getText().toString().trim();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < this.answers.size()) {
            QuizOption quizOption = (QuizOption) this.answers.get(i).getTag();
            if (quizOption == null) {
                quizOption = new QuizOption();
                quizOption.isCorrect = Boolean.valueOf(i == 0);
                this.answers.get(i).setTag(quizOption);
            }
            quizOption.title = getEditText(i).getText().toString();
            arrayList.add(quizOption);
            i++;
        }
        this.question.setQuizOptions(arrayList);
        return this.question;
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        int i = bundle.getInt("index");
        QuizOption quizOption = (QuizOption) this.answers.get(i).getTag();
        if (quizOption == null) {
            quizOption = new QuizOption();
            quizOption.isCorrect = Boolean.valueOf(i == 0);
            this.answers.get(i).setTag(quizOption);
        }
        quizOption.mediaList = list;
        setImageMedia(getImageView(i), quizOption.getFirstMedia());
        save();
        invalidateOptionsMenu();
    }

    private void setImageMedia(NVImageView nVImageView, Media media) {
        if (media != null) {
            nVImageView.setImageMedia(media);
        } else {
            nVImageView.setImageResource(R.drawable.ic_quiz_media_empty);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.answer_image) {
            Bundle bundle = new Bundle();
            int iIntValue = ((Integer) view.getTag(R.id.index)).intValue();
            bundle.putInt("index", iIntValue);
            QuizOption quizOption = getQuizOption(iIntValue);
            this.mediaPickerFragment.pickMedia(this.draftDir, bundle, (quizOption != null && quizOption.getFirstMedia() != null ? 64 : 0) | 14);
        }
    }

    private QuizOption getQuizOption(int i) {
        List<QuizOption> listQuizOptions = this.question.quizOptions();
        if (listQuizOptions == null || listQuizOptions.size() <= i) {
            return null;
        }
        return listQuizOptions.get(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDuplicateStatus() {
        HashMap map = new HashMap();
        for (int i = 0; i < this.answers.size(); i++) {
            String strTrim = getEditText(i).getText().toString().trim();
            if (map.containsKey(strTrim)) {
                map.put(strTrim, Integer.valueOf(((Integer) map.get(strTrim)).intValue() + 1));
            } else {
                map.put(strTrim, 1);
            }
        }
        for (int i2 = 0; i2 < this.answers.size(); i2++) {
            String strTrim2 = getEditText(i2).getText().toString().trim();
            this.answers.get(i2).findViewById(R.id.duplicate_mark).setVisibility(!TextUtils.isEmpty(strTrim2) && ((Integer) map.get(strTrim2)).intValue() > 1 ? 0 : 8);
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
            editText.setOnTouchListener(new EditTextInnerScrollListener());
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
            SceneQuizPostFragment.this.save();
            SceneQuizPostFragment.this.updateDuplicateStatus();
            SceneQuizPostFragment.this.invalidateOptionsMenu();
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            update();
        }
    }
}
