package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class PostPlainPollLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView hint;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final EditText title;

    @NonNull
    public final TextView titleCounter;

    @NonNull
    public static PostPlainPollLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostPlainPollLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_plain_poll_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostPlainPollLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull EditText editText, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.hint = textView;
        this.image = thumbImageView;
        this.title = editText;
        this.titleCounter = textView2;
    }

    @NonNull
    public static PostPlainPollLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.hint;
        TextView textView = (TextView) ViewBindings.a(view, R.id.hint);
        if (textView != null) {
            i10 = R.id.image;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
            if (thumbImageView != null) {
                i10 = R.id.title;
                EditText editText = (EditText) ViewBindings.a(view, R.id.title);
                if (editText != null) {
                    i10 = R.id.title_counter;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.title_counter);
                    if (textView2 != null) {
                        return new PostPlainPollLayoutBinding((RelativeLayout) view, textView, thumbImageView, editText, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
