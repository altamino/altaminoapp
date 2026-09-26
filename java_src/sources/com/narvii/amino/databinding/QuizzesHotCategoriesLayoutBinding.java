package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.PushButton;

/* JADX INFO: loaded from: classes6.dex */
public final class QuizzesHotCategoriesLayoutBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView bestHint;

    @NonNull
    public final ImageView bestIcon;

    @NonNull
    public final PushButton bestLayout;

    @NonNull
    public final AutoSizingTextView bestTitle;

    @NonNull
    public final AutoSizingTextView playgroundHint;

    @NonNull
    public final ImageView playgroundIcon;

    @NonNull
    public final PushButton playgroundLayout;

    @NonNull
    public final AutoSizingTextView playgroundTitle;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static QuizzesHotCategoriesLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizzesHotCategoriesLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quizzes_hot_categories_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizzesHotCategoriesLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull ImageView imageView, @NonNull PushButton pushButton, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull AutoSizingTextView autoSizingTextView3, @NonNull ImageView imageView2, @NonNull PushButton pushButton2, @NonNull AutoSizingTextView autoSizingTextView4) {
        this.rootView = linearLayout;
        this.bestHint = autoSizingTextView;
        this.bestIcon = imageView;
        this.bestLayout = pushButton;
        this.bestTitle = autoSizingTextView2;
        this.playgroundHint = autoSizingTextView3;
        this.playgroundIcon = imageView2;
        this.playgroundLayout = pushButton2;
        this.playgroundTitle = autoSizingTextView4;
    }

    @NonNull
    public static QuizzesHotCategoriesLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.best_hint;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.best_hint);
        if (autoSizingTextView != null) {
            i10 = R.id.best_icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.best_icon);
            if (imageView != null) {
                i10 = R.id.best_layout;
                PushButton pushButton = (PushButton) ViewBindings.a(view, R.id.best_layout);
                if (pushButton != null) {
                    i10 = R.id.best_title;
                    AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.best_title);
                    if (autoSizingTextView2 != null) {
                        i10 = R.id.playground_hint;
                        AutoSizingTextView autoSizingTextView3 = (AutoSizingTextView) ViewBindings.a(view, R.id.playground_hint);
                        if (autoSizingTextView3 != null) {
                            i10 = R.id.playground_icon;
                            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.playground_icon);
                            if (imageView2 != null) {
                                i10 = R.id.playground_layout;
                                PushButton pushButton2 = (PushButton) ViewBindings.a(view, R.id.playground_layout);
                                if (pushButton2 != null) {
                                    i10 = R.id.playground_title;
                                    AutoSizingTextView autoSizingTextView4 = (AutoSizingTextView) ViewBindings.a(view, R.id.playground_title);
                                    if (autoSizingTextView4 != null) {
                                        return new QuizzesHotCategoriesLayoutBinding((LinearLayout) view, autoSizingTextView, imageView, pushButton, autoSizingTextView2, autoSizingTextView3, imageView2, pushButton2, autoSizingTextView4);
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
}
