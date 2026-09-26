package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes6.dex */
public final class LiveLayerMainTitleLayoutBinding implements ViewBinding {

    @NonNull
    public final ImageView icon;

    @NonNull
    public final TextView listTitle;

    @NonNull
    public final FrameLayout mainTitleLayout;

    @NonNull
    public final TintButton minimize;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LiveLayerMainTitleLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerMainTitleLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_main_title_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerMainTitleLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull TintButton tintButton) {
        this.rootView = frameLayout;
        this.icon = imageView;
        this.listTitle = textView;
        this.mainTitleLayout = frameLayout2;
        this.minimize = tintButton;
    }

    @NonNull
    public static LiveLayerMainTitleLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
        if (imageView != null) {
            i10 = R.id.list_title;
            TextView textView = (TextView) ViewBindings.a(view, R.id.list_title);
            if (textView != null) {
                FrameLayout frameLayout = (FrameLayout) view;
                i10 = R.id.minimize;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.minimize);
                if (tintButton != null) {
                    return new LiveLayerMainTitleLayoutBinding(frameLayout, imageView, textView, frameLayout, tintButton);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
