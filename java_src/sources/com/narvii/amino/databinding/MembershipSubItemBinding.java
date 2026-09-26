package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class MembershipSubItemBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView background;

    @NonNull
    public final TextView badge;

    @NonNull
    public final TextView price;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView saved;

    @NonNull
    public final TextView text;

    @NonNull
    public final TextView text2;

    @NonNull
    public final View topShadow;

    @NonNull
    public static MembershipSubItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MembershipSubItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.membership_sub_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MembershipSubItemBinding(@NonNull FrameLayout frameLayout, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull View view) {
        this.rootView = frameLayout;
        this.background = thumbImageView;
        this.badge = textView;
        this.price = textView2;
        this.saved = textView3;
        this.text = textView4;
        this.text2 = textView5;
        this.topShadow = view;
    }

    @NonNull
    public static MembershipSubItemBinding bind(@NonNull View view) {
        int i10 = R.id.background;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.background);
        if (thumbImageView != null) {
            i10 = R.id.badge;
            TextView textView = (TextView) ViewBindings.a(view, R.id.badge);
            if (textView != null) {
                i10 = R.id.price;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.price);
                if (textView2 != null) {
                    i10 = R.id.saved;
                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.saved);
                    if (textView3 != null) {
                        i10 = R.id.text;
                        TextView textView4 = (TextView) ViewBindings.a(view, R.id.text);
                        if (textView4 != null) {
                            i10 = R.id.text2;
                            TextView textView5 = (TextView) ViewBindings.a(view, R.id.text2);
                            if (textView5 != null) {
                                i10 = R.id.top_shadow;
                                View viewA = ViewBindings.a(view, R.id.top_shadow);
                                if (viewA != null) {
                                    return new MembershipSubItemBinding((FrameLayout) view, thumbImageView, textView, textView2, textView3, textView4, textView5, viewA);
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
