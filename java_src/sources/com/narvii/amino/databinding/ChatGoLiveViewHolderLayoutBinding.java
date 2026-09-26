package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.ScaleView;

/* JADX INFO: loaded from: classes.dex */
public final class ChatGoLiveViewHolderLayoutBinding implements ViewBinding {

    @NonNull
    public final FlexLayout container;

    @NonNull
    public final TextView modeHintTv;

    @NonNull
    public final ImageView modeIv;

    @NonNull
    public final TextView modeTitleTv;

    @NonNull
    private final ScaleView rootView;

    @NonNull
    public final ScaleView scaleView;

    @NonNull
    public static ChatGoLiveViewHolderLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ScaleView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatGoLiveViewHolderLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_go_live_view_holder_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatGoLiveViewHolderLayoutBinding(@NonNull ScaleView scaleView, @NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull ScaleView scaleView2) {
        this.rootView = scaleView;
        this.container = flexLayout;
        this.modeHintTv = textView;
        this.modeIv = imageView;
        this.modeTitleTv = textView2;
        this.scaleView = scaleView2;
    }

    @NonNull
    public static ChatGoLiveViewHolderLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.container;
        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.container);
        if (flexLayout != null) {
            i10 = R.id.mode_hint_tv;
            TextView textView = (TextView) ViewBindings.a(view, R.id.mode_hint_tv);
            if (textView != null) {
                i10 = R.id.mode_iv;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.mode_iv);
                if (imageView != null) {
                    i10 = R.id.mode_title_tv;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.mode_title_tv);
                    if (textView2 != null) {
                        ScaleView scaleView = (ScaleView) view;
                        return new ChatGoLiveViewHolderLayoutBinding(scaleView, flexLayout, textView, imageView, textView2, scaleView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
