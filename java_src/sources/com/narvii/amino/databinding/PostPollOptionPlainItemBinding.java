package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SwipeToDeleteLayout;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class PostPollOptionPlainItemBinding implements ViewBinding {

    @NonNull
    public final Button delete;

    @NonNull
    public final ThumbImageView pollOptImage;

    @NonNull
    public final EditText pollOptTitle;

    @NonNull
    public final TextView postPollCountdown;

    @NonNull
    public final SwipeToDeleteLayout postPollOption;

    @NonNull
    private final SwipeToDeleteLayout rootView;

    @NonNull
    public static PostPollOptionPlainItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SwipeToDeleteLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostPollOptionPlainItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_poll_option_plain_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostPollOptionPlainItemBinding(@NonNull SwipeToDeleteLayout swipeToDeleteLayout, @NonNull Button button, @NonNull ThumbImageView thumbImageView, @NonNull EditText editText, @NonNull TextView textView, @NonNull SwipeToDeleteLayout swipeToDeleteLayout2) {
        this.rootView = swipeToDeleteLayout;
        this.delete = button;
        this.pollOptImage = thumbImageView;
        this.pollOptTitle = editText;
        this.postPollCountdown = textView;
        this.postPollOption = swipeToDeleteLayout2;
    }

    @NonNull
    public static PostPollOptionPlainItemBinding bind(@NonNull View view) {
        int i10 = R.id.delete;
        Button button = (Button) ViewBindings.a(view, R.id.delete);
        if (button != null) {
            i10 = R.id.poll_opt_image;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.poll_opt_image);
            if (thumbImageView != null) {
                i10 = R.id.poll_opt_title;
                EditText editText = (EditText) ViewBindings.a(view, R.id.poll_opt_title);
                if (editText != null) {
                    i10 = R.id.post_poll_countdown;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.post_poll_countdown);
                    if (textView != null) {
                        SwipeToDeleteLayout swipeToDeleteLayout = (SwipeToDeleteLayout) view;
                        return new PostPollOptionPlainItemBinding(swipeToDeleteLayout, button, thumbImageView, editText, textView, swipeToDeleteLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
