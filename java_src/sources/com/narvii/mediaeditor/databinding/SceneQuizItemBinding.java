package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.mediaeditor.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class SceneQuizItemBinding implements ViewBinding {

    @NonNull
    public final NVImageView answerImage;

    @NonNull
    public final AutoSizingTextView answerText;

    @NonNull
    public final FlexLayout cardView;

    @NonNull
    public final View itemBg;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final NVImageView shader;

    @NonNull
    public final View shadow;

    @NonNull
    public static SceneQuizItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SceneQuizItemBinding bind(@NonNull View view) {
        View viewA;
        View viewA2;
        int i10 = R.id.answer_image;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
        if (nVImageView != null) {
            i10 = R.id.answer_text;
            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, i10);
            if (autoSizingTextView != null) {
                i10 = R.id.card_view;
                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, i10);
                if (flexLayout != null && (viewA = ViewBindings.a(view, (i10 = R.id.item_bg))) != null) {
                    i10 = R.id.shader;
                    NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, i10);
                    if (nVImageView2 != null && (viewA2 = ViewBindings.a(view, (i10 = R.id.shadow))) != null) {
                        return new SceneQuizItemBinding((FlexLayout) view, nVImageView, autoSizingTextView, flexLayout, viewA, nVImageView2, viewA2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static SceneQuizItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.scene_quiz_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SceneQuizItemBinding(@NonNull FlexLayout flexLayout, @NonNull NVImageView nVImageView, @NonNull AutoSizingTextView autoSizingTextView, @NonNull FlexLayout flexLayout2, @NonNull View view, @NonNull NVImageView nVImageView2, @NonNull View view2) {
        this.rootView = flexLayout;
        this.answerImage = nVImageView;
        this.answerText = autoSizingTextView;
        this.cardView = flexLayout2;
        this.itemBg = view;
        this.shader = nVImageView2;
        this.shadow = view2;
    }
}
