package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ComponentWatermarkCreatorInfoBinding implements ViewBinding {

    @NonNull
    public final TextView authorBgCommunityAminoId;

    @NonNull
    public final TextView authorBgCommunityNameOrAminoId;

    @NonNull
    public final ThumbImageView authorBgUserAvatar;

    @NonNull
    public final TextView authorBgUserName;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ComponentWatermarkCreatorInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ComponentWatermarkCreatorInfoBinding bind(@NonNull View view) {
        int i10 = R.id.author_bg_community_amino_id;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.author_bg_community_name_or_amino_id;
            TextView textView2 = (TextView) ViewBindings.a(view, i10);
            if (textView2 != null) {
                i10 = R.id.author_bg_user_avatar;
                ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
                if (thumbImageView != null) {
                    i10 = R.id.author_bg_user_name;
                    TextView textView3 = (TextView) ViewBindings.a(view, i10);
                    if (textView3 != null) {
                        return new ComponentWatermarkCreatorInfoBinding((LinearLayout) view, textView, textView2, thumbImageView, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ComponentWatermarkCreatorInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.component_watermark_creator_info, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ComponentWatermarkCreatorInfoBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.authorBgCommunityAminoId = textView;
        this.authorBgCommunityNameOrAminoId = textView2;
        this.authorBgUserAvatar = thumbImageView;
        this.authorBgUserName = textView3;
    }
}
