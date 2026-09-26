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
import com.narvii.widget.GradientView;

/* JADX INFO: loaded from: classes4.dex */
public final class PublicChatActiveEntryBinding implements ViewBinding {

    @NonNull
    public final GradientView gradient;

    @NonNull
    public final ImageView icon;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static PublicChatActiveEntryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PublicChatActiveEntryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.public_chat_active_entry, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PublicChatActiveEntryBinding(@NonNull FrameLayout frameLayout, @NonNull GradientView gradientView, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.gradient = gradientView;
        this.icon = imageView;
        this.title = textView;
    }

    @NonNull
    public static PublicChatActiveEntryBinding bind(@NonNull View view) {
        int i10 = R.id.gradient;
        GradientView gradientView = (GradientView) ViewBindings.a(view, R.id.gradient);
        if (gradientView != null) {
            i10 = R.id.icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
            if (imageView != null) {
                i10 = R.id.title;
                TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                if (textView != null) {
                    return new PublicChatActiveEntryBinding((FrameLayout) view, gradientView, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
