package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.EditTextIMG;
import com.narvii.widget.NVScrollView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class PostGroupThreadLayoutBinding implements ViewBinding {

    @NonNull
    public final EditTextIMG content;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final LinearLayout root;

    @NonNull
    private final NVScrollView rootView;

    @NonNull
    public final EditText title;

    @NonNull
    public static PostGroupThreadLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVScrollView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostGroupThreadLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_group_thread_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostGroupThreadLayoutBinding(@NonNull NVScrollView nVScrollView, @NonNull EditTextIMG editTextIMG, @NonNull ThumbImageView thumbImageView, @NonNull LinearLayout linearLayout, @NonNull EditText editText) {
        this.rootView = nVScrollView;
        this.content = editTextIMG;
        this.image = thumbImageView;
        this.root = linearLayout;
        this.title = editText;
    }

    @NonNull
    public static PostGroupThreadLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        EditTextIMG editTextIMG = (EditTextIMG) ViewBindings.a(view, R.id.content);
        if (editTextIMG != null) {
            i10 = R.id.image;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
            if (thumbImageView != null) {
                i10 = R.id.root;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.root);
                if (linearLayout != null) {
                    i10 = R.id.title;
                    EditText editText = (EditText) ViewBindings.a(view, R.id.title);
                    if (editText != null) {
                        return new PostGroupThreadLayoutBinding((NVScrollView) view, editTextIMG, thumbImageView, linearLayout, editText);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
