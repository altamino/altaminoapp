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

/* JADX INFO: loaded from: classes8.dex */
public final class RankingUserListTop3Binding implements ViewBinding {

    @NonNull
    public final FrameLayout firstContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FrameLayout secondContainer;

    @NonNull
    public final FrameLayout thirdContainer;

    @NonNull
    public static RankingUserListTop3Binding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RankingUserListTop3Binding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.ranking_user_list_top3, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RankingUserListTop3Binding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3) {
        this.rootView = linearLayout;
        this.firstContainer = frameLayout;
        this.secondContainer = frameLayout2;
        this.thirdContainer = frameLayout3;
    }

    @NonNull
    public static RankingUserListTop3Binding bind(@NonNull View view) {
        int i10 = R.id.first_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.first_container);
        if (frameLayout != null) {
            i10 = R.id.second_container;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.second_container);
            if (frameLayout2 != null) {
                i10 = R.id.third_container;
                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.third_container);
                if (frameLayout3 != null) {
                    return new RankingUserListTop3Binding((LinearLayout) view, frameLayout, frameLayout2, frameLayout3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
