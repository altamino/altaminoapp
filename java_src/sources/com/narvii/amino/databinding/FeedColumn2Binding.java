package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class FeedColumn2Binding implements ViewBinding {

    @NonNull
    public final FrameLayout feedColumnLeft;

    @NonNull
    public final FrameLayout feedColumnRight;

    @NonNull
    public final View feedColumnTopDivider;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FeedColumn2Binding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedColumn2Binding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_column2, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedColumn2Binding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull View view) {
        this.rootView = linearLayout;
        this.feedColumnLeft = frameLayout;
        this.feedColumnRight = frameLayout2;
        this.feedColumnTopDivider = view;
    }

    @NonNull
    public static FeedColumn2Binding bind(@NonNull View view) {
        int i10 = R.id.feed_column_left;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.feed_column_left);
        if (frameLayout != null) {
            i10 = R.id.feed_column_right;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.feed_column_right);
            if (frameLayout2 != null) {
                i10 = R.id.feed_column_top_divider;
                View viewA = ViewBindings.a(view, R.id.feed_column_top_divider);
                if (viewA != null) {
                    return new FeedColumn2Binding((LinearLayout) view, frameLayout, frameLayout2, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
