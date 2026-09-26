package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class PostImageLayoutBinding implements ViewBinding {

    @NonNull
    public final FlexLayout addPhotoPlaceholder;

    @NonNull
    public final TextView caption;

    @NonNull
    public final LinearLayout currentLanguageInfoLayout;

    @NonNull
    public final NVImageView imageContent;

    @NonNull
    public final RecyclerView multiImageContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FrameLayout singleImageContainer;

    @NonNull
    public final EditText title;

    @NonNull
    public static PostImageLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostImageLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_image_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostImageLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull NVImageView nVImageView, @NonNull RecyclerView recyclerView, @NonNull FrameLayout frameLayout, @NonNull EditText editText) {
        this.rootView = linearLayout;
        this.addPhotoPlaceholder = flexLayout;
        this.caption = textView;
        this.currentLanguageInfoLayout = linearLayout2;
        this.imageContent = nVImageView;
        this.multiImageContainer = recyclerView;
        this.singleImageContainer = frameLayout;
        this.title = editText;
    }

    @NonNull
    public static PostImageLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.add_photo_placeholder;
        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.add_photo_placeholder);
        if (flexLayout != null) {
            i10 = R.id.caption;
            TextView textView = (TextView) ViewBindings.a(view, R.id.caption);
            if (textView != null) {
                i10 = R.id.current_language_info_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.current_language_info_layout);
                if (linearLayout != null) {
                    i10 = R.id.image_content;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.image_content);
                    if (nVImageView != null) {
                        i10 = R.id.multi_image_container;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.a(view, R.id.multi_image_container);
                        if (recyclerView != null) {
                            i10 = R.id.single_image_container;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.single_image_container);
                            if (frameLayout != null) {
                                i10 = R.id.title;
                                EditText editText = (EditText) ViewBindings.a(view, R.id.title);
                                if (editText != null) {
                                    return new PostImageLayoutBinding((LinearLayout) view, flexLayout, textView, linearLayout, nVImageView, recyclerView, frameLayout, editText);
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
