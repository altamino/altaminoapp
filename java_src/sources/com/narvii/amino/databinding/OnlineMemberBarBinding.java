package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class OnlineMemberBarBinding implements ViewBinding {

    @NonNull
    public final NVImageView bar;

    @NonNull
    public final LinearLayout content;

    @NonNull
    public final View greenOval;

    @NonNull
    public final FrameLayout mainLayout;

    @NonNull
    public final TextView onlineMemberCount;

    @NonNull
    public final RelativeLayout onlineTextLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static OnlineMemberBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static OnlineMemberBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.online_member_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private OnlineMemberBarBinding(@NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout) {
        this.rootView = frameLayout;
        this.bar = nVImageView;
        this.content = linearLayout;
        this.greenOval = view;
        this.mainLayout = frameLayout2;
        this.onlineMemberCount = textView;
        this.onlineTextLayout = relativeLayout;
    }

    @NonNull
    public static OnlineMemberBarBinding bind(@NonNull View view) {
        int i10 = R.id.bar;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.bar);
        if (nVImageView != null) {
            i10 = R.id.content;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.content);
            if (linearLayout != null) {
                i10 = R.id.green_oval;
                View viewA = ViewBindings.a(view, R.id.green_oval);
                if (viewA != null) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    i10 = R.id.onlineMemberCount;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.onlineMemberCount);
                    if (textView != null) {
                        i10 = R.id.onlineTextLayout;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.onlineTextLayout);
                        if (relativeLayout != null) {
                            return new OnlineMemberBarBinding(frameLayout, nVImageView, linearLayout, viewA, frameLayout, textView, relativeLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
