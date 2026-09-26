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
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.widget.GradientView;
import com.narvii.widget.NVImageSwitcher;

/* JADX INFO: loaded from: classes10.dex */
public final class LiveLayerOnlineCategoryBinding implements ViewBinding {

    @NonNull
    public final FrameLayout cellReal;

    @NonNull
    public final GradientView gradient;

    @NonNull
    public final ImageView icon;

    @NonNull
    public final NVImageSwitcher imageSwitcher;

    @NonNull
    public final TextView members;

    @NonNull
    public final LiveLayerOnlineBar onlineBar;

    @NonNull
    public final FrameLayout rootLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static LiveLayerOnlineCategoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerOnlineCategoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_online_category, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerOnlineCategoryBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull GradientView gradientView, @NonNull ImageView imageView, @NonNull NVImageSwitcher nVImageSwitcher, @NonNull TextView textView, @NonNull LiveLayerOnlineBar liveLayerOnlineBar, @NonNull FrameLayout frameLayout3, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.cellReal = frameLayout2;
        this.gradient = gradientView;
        this.icon = imageView;
        this.imageSwitcher = nVImageSwitcher;
        this.members = textView;
        this.onlineBar = liveLayerOnlineBar;
        this.rootLayout = frameLayout3;
        this.title = textView2;
    }

    @NonNull
    public static LiveLayerOnlineCategoryBinding bind(@NonNull View view) {
        int i10 = R.id.cell_real;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.cell_real);
        if (frameLayout != null) {
            i10 = R.id.gradient;
            GradientView gradientView = (GradientView) ViewBindings.a(view, R.id.gradient);
            if (gradientView != null) {
                i10 = R.id.icon;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
                if (imageView != null) {
                    i10 = R.id.image_switcher;
                    NVImageSwitcher nVImageSwitcher = (NVImageSwitcher) ViewBindings.a(view, R.id.image_switcher);
                    if (nVImageSwitcher != null) {
                        i10 = R.id.members;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.members);
                        if (textView != null) {
                            i10 = R.id.online_bar;
                            LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) ViewBindings.a(view, R.id.online_bar);
                            if (liveLayerOnlineBar != null) {
                                FrameLayout frameLayout2 = (FrameLayout) view;
                                i10 = R.id.title;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                                if (textView2 != null) {
                                    return new LiveLayerOnlineCategoryBinding(frameLayout2, frameLayout, gradientView, imageView, nVImageSwitcher, textView, liveLayerOnlineBar, frameLayout2, textView2);
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
