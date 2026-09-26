package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ScenePollOptionLayoutBinding implements ViewBinding {

    @NonNull
    public final ImageView optionDeleteIv;

    @NonNull
    public final EditText optionEt;

    @NonNull
    public final RelativeLayout optionImageRl;

    @NonNull
    public final RelativeLayout optionInputRl;

    @NonNull
    public final ThumbImageView optionIv;

    @NonNull
    public final ThumbImageView optionPlaceholderIv;

    @NonNull
    public final TextView optionTextCountTv;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static ScenePollOptionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ScenePollOptionLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.option_delete_iv;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.option_et;
            EditText editText = (EditText) ViewBindings.a(view, i10);
            if (editText != null) {
                i10 = R.id.option_image_rl;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, i10);
                if (relativeLayout != null) {
                    i10 = R.id.option_input_rl;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.a(view, i10);
                    if (relativeLayout2 != null) {
                        i10 = R.id.option_iv;
                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
                        if (thumbImageView != null) {
                            i10 = R.id.option_placeholder_iv;
                            ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, i10);
                            if (thumbImageView2 != null) {
                                i10 = R.id.option_text_count_tv;
                                TextView textView = (TextView) ViewBindings.a(view, i10);
                                if (textView != null) {
                                    return new ScenePollOptionLayoutBinding((RelativeLayout) view, imageView, editText, relativeLayout, relativeLayout2, thumbImageView, thumbImageView2, textView);
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
    public static ScenePollOptionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.scene_poll_option_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ScenePollOptionLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull ThumbImageView thumbImageView, @NonNull ThumbImageView thumbImageView2, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.optionDeleteIv = imageView;
        this.optionEt = editText;
        this.optionImageRl = relativeLayout2;
        this.optionInputRl = relativeLayout3;
        this.optionIv = thumbImageView;
        this.optionPlaceholderIv = thumbImageView2;
        this.optionTextCountTv = textView;
    }
}
