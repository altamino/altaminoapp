package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class DialogLanguageChooseLayoutBinding implements ViewBinding {

    @NonNull
    public final RecyclerView languageList;

    @NonNull
    public final Button languagePickCancel;

    @NonNull
    public final FrameLayout root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DialogLanguageChooseLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogLanguageChooseLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_language_choose_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogLanguageChooseLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull RecyclerView recyclerView, @NonNull Button button, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.languageList = recyclerView;
        this.languagePickCancel = button;
        this.root = frameLayout2;
    }

    @NonNull
    public static DialogLanguageChooseLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.language_list;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.a(view, R.id.language_list);
        if (recyclerView != null) {
            i10 = R.id.language_pick_cancel;
            Button button = (Button) ViewBindings.a(view, R.id.language_pick_cancel);
            if (button != null) {
                FrameLayout frameLayout = (FrameLayout) view;
                return new DialogLanguageChooseLayoutBinding(frameLayout, recyclerView, button, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
