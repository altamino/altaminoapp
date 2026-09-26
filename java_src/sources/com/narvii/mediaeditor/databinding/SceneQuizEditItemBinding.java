package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.mediaeditor.R;
import com.narvii.widget.FullFocusEditText;
import com.narvii.widget.NVImageView;
import com.narvii.widgets.SceneQuizAnswerImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class SceneQuizEditItemBinding implements ViewBinding {

    @NonNull
    public final FullFocusEditText answerEditText;

    @NonNull
    public final SceneQuizAnswerImageView answerImage;

    @NonNull
    public final FlexLayout cardView;

    @NonNull
    public final NVImageView duplicateMark;

    @NonNull
    public final FrameLayout editLayout;

    @NonNull
    public final View itemBg;

    @NonNull
    public final TextView left;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final NVImageView shader;

    @NonNull
    public final View shadow;

    @NonNull
    public static SceneQuizEditItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SceneQuizEditItemBinding bind(@NonNull View view) {
        View viewA;
        View viewA2;
        int i10 = R.id.answer_edit_text;
        FullFocusEditText fullFocusEditText = (FullFocusEditText) ViewBindings.a(view, i10);
        if (fullFocusEditText != null) {
            i10 = R.id.answer_image;
            SceneQuizAnswerImageView sceneQuizAnswerImageView = (SceneQuizAnswerImageView) ViewBindings.a(view, i10);
            if (sceneQuizAnswerImageView != null) {
                i10 = R.id.card_view;
                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, i10);
                if (flexLayout != null) {
                    i10 = R.id.duplicate_mark;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
                    if (nVImageView != null) {
                        i10 = R.id.edit_layout;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                        if (frameLayout != null && (viewA = ViewBindings.a(view, (i10 = R.id.item_bg))) != null) {
                            i10 = R.id.left;
                            TextView textView = (TextView) ViewBindings.a(view, i10);
                            if (textView != null) {
                                i10 = R.id.shader;
                                NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, i10);
                                if (nVImageView2 != null && (viewA2 = ViewBindings.a(view, (i10 = R.id.shadow))) != null) {
                                    return new SceneQuizEditItemBinding((FlexLayout) view, fullFocusEditText, sceneQuizAnswerImageView, flexLayout, nVImageView, frameLayout, viewA, textView, nVImageView2, viewA2);
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
    public static SceneQuizEditItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.scene_quiz_edit_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SceneQuizEditItemBinding(@NonNull FlexLayout flexLayout, @NonNull FullFocusEditText fullFocusEditText, @NonNull SceneQuizAnswerImageView sceneQuizAnswerImageView, @NonNull FlexLayout flexLayout2, @NonNull NVImageView nVImageView, @NonNull FrameLayout frameLayout, @NonNull View view, @NonNull TextView textView, @NonNull NVImageView nVImageView2, @NonNull View view2) {
        this.rootView = flexLayout;
        this.answerEditText = fullFocusEditText;
        this.answerImage = sceneQuizAnswerImageView;
        this.cardView = flexLayout2;
        this.duplicateMark = nVImageView;
        this.editLayout = frameLayout;
        this.itemBg = view;
        this.left = textView;
        this.shader = nVImageView2;
        this.shadow = view2;
    }
}
