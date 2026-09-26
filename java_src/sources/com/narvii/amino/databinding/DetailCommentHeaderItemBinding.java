package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class DetailCommentHeaderItemBinding implements ViewBinding {

    @NonNull
    public final LinearLayout cellLayout;

    @NonNull
    public final TextView commentCount;

    @NonNull
    public final TintButton commentSlides;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TintButton userCommentSetting;

    @NonNull
    public static DetailCommentHeaderItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailCommentHeaderItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_comment_header_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailCommentHeaderItemBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull TintButton tintButton2) {
        this.rootView = linearLayout;
        this.cellLayout = linearLayout2;
        this.commentCount = textView;
        this.commentSlides = tintButton;
        this.userCommentSetting = tintButton2;
    }

    @NonNull
    public static DetailCommentHeaderItemBinding bind(@NonNull View view) {
        int i10 = R.id.cell_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.cell_layout);
        if (linearLayout != null) {
            i10 = R.id.comment_count;
            TextView textView = (TextView) ViewBindings.a(view, R.id.comment_count);
            if (textView != null) {
                i10 = R.id.comment_slides;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.comment_slides);
                if (tintButton != null) {
                    i10 = R.id.user_comment_setting;
                    TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.user_comment_setting);
                    if (tintButton2 != null) {
                        return new DetailCommentHeaderItemBinding((LinearLayout) view, linearLayout, textView, tintButton, tintButton2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
