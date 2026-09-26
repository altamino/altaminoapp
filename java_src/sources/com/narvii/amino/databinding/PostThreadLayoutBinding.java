package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.EditTextIMG;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NVScrollView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class PostThreadLayoutBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView chatShowGuideline;

    @NonNull
    public final EditTextIMG content;

    @NonNull
    public final GridLayout grid;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final LinearLayout postFansOnly;

    @NonNull
    public final LinearLayout root;

    @NonNull
    private final NVScrollView rootView;

    @NonNull
    public final EditText title;

    @NonNull
    public static PostThreadLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVScrollView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostThreadLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_thread_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostThreadLayoutBinding(@NonNull NVScrollView nVScrollView, @NonNull FontAwesomeView fontAwesomeView, @NonNull EditTextIMG editTextIMG, @NonNull GridLayout gridLayout, @NonNull ThumbImageView thumbImageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull EditText editText) {
        this.rootView = nVScrollView;
        this.chatShowGuideline = fontAwesomeView;
        this.content = editTextIMG;
        this.grid = gridLayout;
        this.image = thumbImageView;
        this.postFansOnly = linearLayout;
        this.root = linearLayout2;
        this.title = editText;
    }

    @NonNull
    public static PostThreadLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.chat_show_guideline;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.chat_show_guideline);
        if (fontAwesomeView != null) {
            i10 = R.id.content;
            EditTextIMG editTextIMG = (EditTextIMG) ViewBindings.a(view, R.id.content);
            if (editTextIMG != null) {
                i10 = R.id.grid;
                GridLayout gridLayout = (GridLayout) ViewBindings.a(view, R.id.grid);
                if (gridLayout != null) {
                    i10 = R.id.image;
                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
                    if (thumbImageView != null) {
                        i10 = R.id.post_fans_only;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.post_fans_only);
                        if (linearLayout != null) {
                            i10 = R.id.root;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.root);
                            if (linearLayout2 != null) {
                                i10 = R.id.title;
                                EditText editText = (EditText) ViewBindings.a(view, R.id.title);
                                if (editText != null) {
                                    return new PostThreadLayoutBinding((NVScrollView) view, fontAwesomeView, editTextIMG, gridLayout, thumbImageView, linearLayout, linearLayout2, editText);
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
