package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class LiveLayerAllMembersSeeAllBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final Button seeAll;

    @NonNull
    public static LiveLayerAllMembersSeeAllBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerAllMembersSeeAllBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_all_members_see_all, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerAllMembersSeeAllBinding(@NonNull FrameLayout frameLayout, @NonNull Button button) {
        this.rootView = frameLayout;
        this.seeAll = button;
    }

    @NonNull
    public static LiveLayerAllMembersSeeAllBinding bind(@NonNull View view) {
        Button button = (Button) ViewBindings.a(view, R.id.see_all);
        if (button != null) {
            return new LiveLayerAllMembersSeeAllBinding((FrameLayout) view, button);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.see_all)));
    }
}
