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

/* JADX INFO: loaded from: classes10.dex */
public final class LiveMarqueeContainerBinding implements ViewBinding {

    @NonNull
    public final FrameLayout liveMarqueeContainer;

    @NonNull
    public final FrameLayout liveMarqueePlaceHolder;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static LiveMarqueeContainerBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.live_marquee_place_holder;
        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.live_marquee_place_holder);
        if (frameLayout2 != null) {
            i10 = R.id.title;
            TextView textView = (TextView) ViewBindings.a(view, R.id.title);
            if (textView != null) {
                return new LiveMarqueeContainerBinding(frameLayout, frameLayout, frameLayout2, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static LiveMarqueeContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveMarqueeContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_marquee_container, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveMarqueeContainerBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.liveMarqueeContainer = frameLayout2;
        this.liveMarqueePlaceHolder = frameLayout3;
        this.title = textView;
    }
}
