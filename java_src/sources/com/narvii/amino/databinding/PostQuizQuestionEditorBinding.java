package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.BackgroundPickerView;
import com.narvii.widget.NVScrollView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class PostQuizQuestionEditorBinding implements ViewBinding {

    @NonNull
    public final BackgroundPickerView backgroundPicker;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final LinearLayout postAddPhoto;

    @NonNull
    public final LinearLayout postEditPhoto;

    @NonNull
    public final EditText postQuizAnswer1;

    @NonNull
    public final EditText postQuizAnswer2;

    @NonNull
    public final EditText postQuizAnswer3;

    @NonNull
    public final EditText postQuizAnswer4;

    @NonNull
    public final TextView postQuizCountdown1;

    @NonNull
    public final TextView postQuizCountdown2;

    @NonNull
    public final TextView postQuizCountdown3;

    @NonNull
    public final TextView postQuizCountdown4;

    @NonNull
    public final TextView postQuizCountdownExplanation;

    @NonNull
    public final TextView postQuizCountdownTitle;

    @NonNull
    public final EditText postQuizExplanation;

    @NonNull
    public final LinearLayout root;

    @NonNull
    private final NVScrollView rootView;

    @NonNull
    public final NVScrollView scroll;

    @NonNull
    public final EditText title;

    private PostQuizQuestionEditorBinding(@NonNull NVScrollView nVScrollView, @NonNull BackgroundPickerView backgroundPickerView, @NonNull ThumbImageView thumbImageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull EditText editText, @NonNull EditText editText2, @NonNull EditText editText3, @NonNull EditText editText4, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull EditText editText5, @NonNull LinearLayout linearLayout3, @NonNull NVScrollView nVScrollView2, @NonNull EditText editText6) {
        this.rootView = nVScrollView;
        this.backgroundPicker = backgroundPickerView;
        this.image = thumbImageView;
        this.postAddPhoto = linearLayout;
        this.postEditPhoto = linearLayout2;
        this.postQuizAnswer1 = editText;
        this.postQuizAnswer2 = editText2;
        this.postQuizAnswer3 = editText3;
        this.postQuizAnswer4 = editText4;
        this.postQuizCountdown1 = textView;
        this.postQuizCountdown2 = textView2;
        this.postQuizCountdown3 = textView3;
        this.postQuizCountdown4 = textView4;
        this.postQuizCountdownExplanation = textView5;
        this.postQuizCountdownTitle = textView6;
        this.postQuizExplanation = editText5;
        this.root = linearLayout3;
        this.scroll = nVScrollView2;
        this.title = editText6;
    }

    @NonNull
    public static PostQuizQuestionEditorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVScrollView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostQuizQuestionEditorBinding bind(@NonNull View view) {
        int i10 = R.id.background_picker;
        BackgroundPickerView backgroundPickerView = (BackgroundPickerView) ViewBindings.a(view, R.id.background_picker);
        if (backgroundPickerView != null) {
            i10 = R.id.image;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
            if (thumbImageView != null) {
                i10 = R.id.post_add_photo;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.post_add_photo);
                if (linearLayout != null) {
                    i10 = R.id.post_edit_photo;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.post_edit_photo);
                    if (linearLayout2 != null) {
                        i10 = R.id.post_quiz_answer_1;
                        EditText editText = (EditText) ViewBindings.a(view, R.id.post_quiz_answer_1);
                        if (editText != null) {
                            i10 = R.id.post_quiz_answer_2;
                            EditText editText2 = (EditText) ViewBindings.a(view, R.id.post_quiz_answer_2);
                            if (editText2 != null) {
                                i10 = R.id.post_quiz_answer_3;
                                EditText editText3 = (EditText) ViewBindings.a(view, R.id.post_quiz_answer_3);
                                if (editText3 != null) {
                                    i10 = R.id.post_quiz_answer_4;
                                    EditText editText4 = (EditText) ViewBindings.a(view, R.id.post_quiz_answer_4);
                                    if (editText4 != null) {
                                        i10 = R.id.post_quiz_countdown_1;
                                        TextView textView = (TextView) ViewBindings.a(view, R.id.post_quiz_countdown_1);
                                        if (textView != null) {
                                            i10 = R.id.post_quiz_countdown_2;
                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.post_quiz_countdown_2);
                                            if (textView2 != null) {
                                                i10 = R.id.post_quiz_countdown_3;
                                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.post_quiz_countdown_3);
                                                if (textView3 != null) {
                                                    i10 = R.id.post_quiz_countdown_4;
                                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.post_quiz_countdown_4);
                                                    if (textView4 != null) {
                                                        i10 = R.id.post_quiz_countdown_explanation;
                                                        TextView textView5 = (TextView) ViewBindings.a(view, R.id.post_quiz_countdown_explanation);
                                                        if (textView5 != null) {
                                                            i10 = R.id.post_quiz_countdown_title;
                                                            TextView textView6 = (TextView) ViewBindings.a(view, R.id.post_quiz_countdown_title);
                                                            if (textView6 != null) {
                                                                i10 = R.id.post_quiz_explanation;
                                                                EditText editText5 = (EditText) ViewBindings.a(view, R.id.post_quiz_explanation);
                                                                if (editText5 != null) {
                                                                    i10 = R.id.root;
                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.root);
                                                                    if (linearLayout3 != null) {
                                                                        NVScrollView nVScrollView = (NVScrollView) view;
                                                                        i10 = R.id.title;
                                                                        EditText editText6 = (EditText) ViewBindings.a(view, R.id.title);
                                                                        if (editText6 != null) {
                                                                            return new PostQuizQuestionEditorBinding(nVScrollView, backgroundPickerView, thumbImageView, linearLayout, linearLayout2, editText, editText2, editText3, editText4, textView, textView2, textView3, textView4, textView5, textView6, editText5, linearLayout3, nVScrollView, editText6);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PostQuizQuestionEditorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_quiz_question_editor, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
