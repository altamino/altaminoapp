package com.narvii.scene.quiz;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.narvii.app.NVActivity;
import com.narvii.media.MediaPickerFragment;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
import com.narvii.scene.SceneBasePostFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.EditTextInnerScrollListener;
import com.narvii.widget.NVGradientDrawable;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class SceneQuizPostFragment extends SceneBasePostFragment implements MediaPickerFragment.OnResultListener, View.OnClickListener {
    List<View> answers = new ArrayList();
    private View grid;
    MediaPickerFragment mediaPickerFragment;
    QuizQuestion originalQuestion;
    QuizQuestion question;
    ScrollView scroll;
    View stub1;
    EditText title;

    class EditHelper implements View.OnFocusChangeListener, TextWatcher {
        TextView countDown;
        EditText editText;
        int maxLength;

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        EditHelper(EditText editText, TextView textView, int i10) {
            this.editText = editText;
            this.countDown = textView;
            this.maxLength = i10;
            update();
            editText.setOnFocusChangeListener(this);
            editText.addTextChangedListener(this);
            editText.setOnTouchListener(new EditTextInnerScrollListener());
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            SceneQuizPostFragment.this.save();
            SceneQuizPostFragment.this.updateDuplicateStatus();
            SceneQuizPostFragment.this.invalidateOptionsMenu();
        }

        void update() {
            this.countDown.setVisibility(this.editText.isFocused() ? 0 : 4);
            this.countDown.setText(String.valueOf(this.maxLength - this.editText.length()));
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z6) {
            update();
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            update();
        }
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected int getPostObjectType() {
        return 6;
    }

    private EditText getEditText(int i10) {
        return (EditText) this.answers.get(i10).findViewById(R.id.answer_edit_text);
    }

    private NVImageView getImageView(int i10) {
        return (NVImageView) this.answers.get(i10).findViewById(R.id.answer_image);
    }

    private QuizOption getQuizOption(int i10) {
        List<QuizOption> listQuizOptions = this.question.quizOptions();
        if (listQuizOptions == null || listQuizOptions.size() <= i10) {
            return null;
        }
        return listQuizOptions.get(i10);
    }

    private boolean hasDuplicateAnswers() {
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < this.answers.size(); i10++) {
            String strTrim = getEditText(i10).getText().toString().trim();
            if (!TextUtils.isEmpty(strTrim)) {
                if (hashSet.contains(strTrim)) {
                    return true;
                }
                hashSet.add(strTrim);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public QuizQuestion save() {
        this.question.title = this.title.getText().toString().trim();
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 < this.answers.size()) {
            QuizOption quizOption = (QuizOption) this.answers.get(i10).getTag();
            if (quizOption == null) {
                quizOption = new QuizOption();
                quizOption.isCorrect = Boolean.valueOf(i10 == 0);
                this.answers.get(i10).setTag(quizOption);
            }
            quizOption.title = getEditText(i10).getText().toString();
            arrayList.add(quizOption);
            i10++;
        }
        this.question.setQuizOptions(arrayList);
        return this.question;
    }

    private void setImageMedia(NVImageView nVImageView, Media media) {
        if (media != null) {
            nVImageView.setImageMedia(media);
        } else {
            nVImageView.setImageResource(R.drawable.ic_quiz_media_empty);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDuplicateStatus() {
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < this.answers.size(); i10++) {
            String strTrim = getEditText(i10).getText().toString().trim();
            if (map.containsKey(strTrim)) {
                map.put(strTrim, Integer.valueOf(((Integer) map.get(strTrim)).intValue() + 1));
            } else {
                map.put(strTrim, 1);
            }
        }
        for (int i11 = 0; i11 < this.answers.size(); i11++) {
            String strTrim2 = getEditText(i11).getText().toString().trim();
            this.answers.get(i11).findViewById(R.id.duplicate_mark).setVisibility(!TextUtils.isEmpty(strTrim2) && ((Integer) map.get(strTrim2)).intValue() > 1 ? 0 : 8);
        }
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected boolean canSubmit() {
        QuizQuestion quizQuestion = this.question;
        if (quizQuestion == null) {
            return false;
        }
        return !quizQuestion.isEmpty();
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected void doSubmit() {
        final int i10;
        QuizQuestion quizQuestion = this.question;
        if (quizQuestion != null) {
            String str = quizQuestion.title;
            if (str == null || str.trim().length() == 0) {
                i10 = R.string.input_quiz_title;
            } else if (this.question.isComplete()) {
                i10 = hasDuplicateAnswers() ? R.string.quiz_duplicate_answers : 0;
            } else {
                i10 = R.string.quiz_incomplete_answers;
            }
            if (i10 != 0) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(i10);
                aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.scene.quiz.SceneQuizPostFragment.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (i10 == R.string.input_quiz_title) {
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
            intent.putExtra("question", JacksonUtils.writeAsString(this.question));
            setResult(-1, intent);
            finish();
        }
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
    protected boolean isModified() {
        QuizQuestion quizQuestion = this.originalQuestion;
        if (quizQuestion == null) {
            return true;
        }
        return !quizQuestion.isSame(this.question);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_scene_quiz, viewGroup, false);
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected void onFrameHeightChanged() {
        int statusBarOverlaySize;
        if (this.frameHeight != 0) {
            if (getActivity() instanceof NVActivity) {
                NVActivity nVActivity = (NVActivity) getActivity();
                statusBarOverlaySize = nVActivity.getStatusBarOverlaySize() + nVActivity.getActionBarOverlaySize();
            } else {
                statusBarOverlaySize = 0;
            }
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.scene_answer_item_padding_h);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.scene_answer_item_margin);
            int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.scene_quiz_title_edit_margin_bottom);
            int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.scene_quiz_title_edit_height);
            int iDpToPxInt = Utils.dpToPxInt(getContext(), 10.0f);
            int iMax = ((this.frameHeight - (Math.max(statusBarOverlaySize + iDpToPxInt, (iDpToPxInt + getResources().getDimensionPixelSize(R.dimen.scene_edit_delete_margin_bottom)) + Utils.dpToPxInt(getContext(), 20.0f)) * 2)) - dimensionPixelSize3) - dimensionPixelSize2;
            float f = dimensionPixelOffset;
            int i10 = dimensionPixelSize * 4;
            float f6 = i10;
            int screenWidth = (int) ((((((Utils.getScreenWidth(getContext()) * 0.8f) - f) - f6) / 2.0f) * 1.29f * 2.0f) + f6 + f);
            int iMin = Math.min(iMax, screenWidth);
            int i11 = (int) ((((((iMin - i10) - dimensionPixelOffset) / 2.0f) / 1.29f) * 2.0f) + f6 + f);
            View view = this.grid;
            if (view != null) {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                layoutParams.height = iMin;
                layoutParams.width = i11;
                this.grid.setLayoutParams(layoutParams);
            }
            View view2 = this.stub1;
            if (view2 != null) {
                ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                layoutParams2.height = Math.max(0, (iMax - screenWidth) / 2);
                this.stub1.setLayoutParams(layoutParams2);
            }
            int i12 = ((float) (((iMin - dimensionPixelOffset) / 2) - (dimensionPixelSize * 2))) * 0.45f >= ((float) Utils.dpToPxInt(getContext(), 60.0f)) ? 3 : 2;
            for (int i13 = 0; i13 < this.answers.size(); i13++) {
                getEditText(i13).setLines(i12);
            }
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        int i10 = bundle.getInt("index");
        QuizOption quizOption = (QuizOption) this.answers.get(i10).getTag();
        if (quizOption == null) {
            quizOption = new QuizOption();
            quizOption.isCorrect = Boolean.valueOf(i10 == 0);
            this.answers.get(i10).setTag(quizOption);
        }
        quizOption.mediaList = list;
        setImageMedia(getImageView(i10), quizOption.getFirstMedia());
        save();
        invalidateOptionsMenu();
    }

    void updateView() {
        if (!Utils.isEquals(this.question.title, this.title.getText().toString())) {
            this.title.setText(this.question.title);
        }
        List<QuizOption> listQuizOptions = this.question.quizOptions();
        int i10 = 0;
        while (i10 < this.answers.size()) {
            Media firstMedia = null;
            QuizOption quizOption = (listQuizOptions == null || listQuizOptions.size() <= i10) ? null : listQuizOptions.get(i10);
            EditText editText = getEditText(i10);
            if (!Utils.isEquals(quizOption == null ? null : quizOption.title, editText.getText().toString())) {
                editText.setText(quizOption == null ? null : quizOption.title);
            }
            NVImageView imageView = getImageView(i10);
            if (quizOption != null) {
                firstMedia = quizOption.getFirstMedia();
            }
            setImageMedia(imageView, firstMedia);
            int i11 = R.id.index;
            imageView.setTag(i11, Integer.valueOf(i10));
            this.answers.get(i10).setTag(quizOption);
            this.answers.get(i10).setTag(i11, Integer.valueOf(i10));
            i10++;
        }
        updateDuplicateStatus();
        invalidateOptionsMenu();
    }

    private void setTextHint(int i10, int i11) {
        EditText editText = getEditText(i10);
        if (editText != null) {
            editText.setHint(i11);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z6;
        if (view.getId() == R.id.answer_image) {
            Bundle bundle = new Bundle();
            int iIntValue = ((Integer) view.getTag(R.id.index)).intValue();
            bundle.putInt("index", iIntValue);
            QuizOption quizOption = getQuizOption(iIntValue);
            int i10 = 0;
            if (quizOption != null && quizOption.getFirstMedia() != null) {
                z6 = true;
            } else {
                z6 = false;
            }
            MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
            File file = this.draftDir;
            if (z6) {
                i10 = 64;
            }
            mediaPickerFragment.pickMedia(file, bundle, i10 | 14);
        }
    }

    @Override // com.narvii.scene.SceneBasePostFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.new_quiz);
        MediaPickerFragment mediaPickerFragment = (MediaPickerFragment) getFragmentManager().m0("mediaPicker");
        this.mediaPickerFragment = mediaPickerFragment;
        if (mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            getFragmentManager().q().e(this.mediaPickerFragment, "mediaPicker").j();
        }
        this.mediaPickerFragment.addOnResultListener(this);
        if (bundle == null) {
            this.question = (QuizQuestion) JacksonUtils.readAs(getStringParam("question"), QuizQuestion.class);
        } else {
            this.question = (QuizQuestion) JacksonUtils.readAs(bundle.getString("question"), QuizQuestion.class);
        }
        if (this.question == null) {
            this.question = new QuizQuestion();
        }
        if (bundle == null) {
            this.originalQuestion = (QuizQuestion) this.question.m1622clone();
        } else {
            this.originalQuestion = (QuizQuestion) JacksonUtils.readAs(bundle.getString("originalQuestion"), QuizQuestion.class);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.scene.SceneBasePostFragment
    protected void onPostDeleted() {
        Intent intent = getActivity().getIntent();
        intent.putExtra("question", (String) null);
        setResult(-1, intent);
        finish();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("question", JacksonUtils.writeAsString(this.question));
        bundle.putString("originalQuestion", JacksonUtils.writeAsString(this.originalQuestion));
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(@Nullable Bundle bundle) {
        super.onViewStateRestored(bundle);
        View view = getView();
        this.scroll = (ScrollView) view.findViewById(R.id.scroll);
        EditText editText = (EditText) view.findViewById(R.id.title);
        this.title = editText;
        editText.setInputType(16385);
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
        for (int i10 = 0; i10 < this.answers.size(); i10++) {
            Drawable background = this.answers.get(i10).findViewById(R.id.item_bg).getBackground();
            if (background instanceof GradientDrawable) {
                ((GradientDrawable) background).setCornerRadii(fArr);
            }
        }
        NVGradientDrawable nVGradientDrawable = new NVGradientDrawable(ContextCompat.getColor(getContext(), R.color.scene_quiz_answer_right_gradient_start), ContextCompat.getColor(getContext(), R.color.scene_quiz_answer_right_gradient_end));
        nVGradientDrawable.setRadius(fArr);
        this.answers.get(0).findViewById(R.id.item_bg).setBackgroundDrawable(nVGradientDrawable);
        this.answers.get(0).findViewById(R.id.shader).setVisibility(0);
        EditText editText2 = getEditText(0);
        editText2.setTextColor(-1);
        editText2.setHintTextColor(-1);
        ((TextView) this.answers.get(0).findViewById(R.id.left)).setTextColor(-1996488705);
        this.stub1 = view.findViewById(R.id.stub1);
        this.grid = view.findViewById(R.id.grid);
        setTextHint(0, R.string.post_quiz_correct_answer);
        setTextHint(1, R.string.post_quiz_wrong_answer_1);
        setTextHint(2, R.string.post_quiz_wrong_answer_2);
        setTextHint(3, R.string.post_quiz_wrong_answer_3);
        updateView();
        for (int i11 = 0; i11 < this.answers.size(); i11++) {
            getImageView(i11).setOnClickListener(this);
            EditText editText3 = getEditText(i11);
            editText3.setInputType(16385);
            editText3.setTransformationMethod(new SingleLineTransformationMethod());
            editText3.setLines(3);
            editText3.setHorizontallyScrolling(false);
            editText3.setImeOptions(6);
            new EditHelper(editText3, (TextView) this.answers.get(i11).findViewById(R.id.left), 30);
        }
        this.title.addTextChangedListener(new TextWatcher() { // from class: com.narvii.scene.quiz.SceneQuizPostFragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i12, int i13, int i14) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i12, int i13, int i14) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SceneQuizPostFragment.this.save();
                SceneQuizPostFragment.this.invalidateOptionsMenu();
            }
        });
        onFrameHeightChanged();
    }
}
