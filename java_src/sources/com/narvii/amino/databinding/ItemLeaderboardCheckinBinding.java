package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class ItemLeaderboardCheckinBinding implements ViewBinding {

    @NonNull
    public final Button checkInSeeAll;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final ImageView starLayout;

    @NonNull
    public final TextView title;

    @NonNull
    public final LinearLayout userGridContainer;

    @NonNull
    public final GridLayout userGridLayout;

    @NonNull
    public static ItemLeaderboardCheckinBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemLeaderboardCheckinBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_leaderboard_checkin, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemLeaderboardCheckinBinding(@NonNull FlexLayout flexLayout, @NonNull Button button, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull GridLayout gridLayout) {
        this.rootView = flexLayout;
        this.checkInSeeAll = button;
        this.starLayout = imageView;
        this.title = textView;
        this.userGridContainer = linearLayout;
        this.userGridLayout = gridLayout;
    }

    @NonNull
    public static ItemLeaderboardCheckinBinding bind(@NonNull View view) {
        int i10 = R.id.check_in_see_all;
        Button button = (Button) ViewBindings.a(view, R.id.check_in_see_all);
        if (button != null) {
            i10 = R.id.star_layout;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.star_layout);
            if (imageView != null) {
                i10 = R.id.title;
                TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                if (textView != null) {
                    i10 = R.id.user_grid_container;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.user_grid_container);
                    if (linearLayout != null) {
                        i10 = R.id.user_grid_layout;
                        GridLayout gridLayout = (GridLayout) ViewBindings.a(view, R.id.user_grid_layout);
                        if (gridLayout != null) {
                            return new ItemLeaderboardCheckinBinding((FlexLayout) view, button, imageView, textView, linearLayout, gridLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
