package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;

/* JADX INFO: loaded from: classes5.dex */
public final class ComponentWatermarkLogoBinding implements ViewBinding {

    @NonNull
    public final TextView communityFrom;

    @NonNull
    public final TextView communityNameOrAminoId;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView userName;

    @NonNull
    public static ComponentWatermarkLogoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ComponentWatermarkLogoBinding bind(@NonNull View view) {
        int i10 = R.id.community_from;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.community_name_or_amino_id;
            TextView textView2 = (TextView) ViewBindings.a(view, i10);
            if (textView2 != null) {
                i10 = R.id.user_name;
                TextView textView3 = (TextView) ViewBindings.a(view, i10);
                if (textView3 != null) {
                    return new ComponentWatermarkLogoBinding((RelativeLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ComponentWatermarkLogoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.component_watermark_logo, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ComponentWatermarkLogoBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = relativeLayout;
        this.communityFrom = textView;
        this.communityNameOrAminoId = textView2;
        this.userName = textView3;
    }
}
