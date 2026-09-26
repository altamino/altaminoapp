package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedToolbarExternalLayout;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class FeedTitleExternalToolbarBinding implements ViewBinding {

    @NonNull
    public final LinearLayout feedExternalToolbarMore;

    @NonNull
    public final TintButton feedExternalToolbarMoreIcon;

    @NonNull
    private final FeedToolbarExternalLayout rootView;

    @NonNull
    public static FeedTitleExternalToolbarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedToolbarExternalLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedTitleExternalToolbarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_title_external_toolbar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedTitleExternalToolbarBinding(@NonNull FeedToolbarExternalLayout feedToolbarExternalLayout, @NonNull LinearLayout linearLayout, @NonNull TintButton tintButton) {
        this.rootView = feedToolbarExternalLayout;
        this.feedExternalToolbarMore = linearLayout;
        this.feedExternalToolbarMoreIcon = tintButton;
    }

    @NonNull
    public static FeedTitleExternalToolbarBinding bind(@NonNull View view) {
        int i10 = R.id.feed_external_toolbar_more;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.feed_external_toolbar_more);
        if (linearLayout != null) {
            i10 = R.id.feed_external_toolbar_more_icon;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.feed_external_toolbar_more_icon);
            if (tintButton != null) {
                return new FeedTitleExternalToolbarBinding((FeedToolbarExternalLayout) view, linearLayout, tintButton);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
