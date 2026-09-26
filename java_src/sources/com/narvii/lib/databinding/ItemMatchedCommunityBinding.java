package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemMatchedCommunityBinding implements ViewBinding {

    @NonNull
    public final TextView communityAminoId;

    @NonNull
    public final ThumbImageView communityIcon;

    @NonNull
    public final ImageView communityInviteLock;

    @NonNull
    public final TextView communityName;

    @NonNull
    public final TextView extraInfo;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemMatchedCommunityBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemMatchedCommunityBinding bind(@NonNull View view) {
        int i10 = R.id.community_amino_id;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.community_icon;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
            if (thumbImageView != null) {
                i10 = R.id.community_invite_lock;
                ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                if (imageView != null) {
                    i10 = R.id.community_name;
                    TextView textView2 = (TextView) ViewBindings.a(view, i10);
                    if (textView2 != null) {
                        i10 = R.id.extra_info;
                        TextView textView3 = (TextView) ViewBindings.a(view, i10);
                        if (textView3 != null) {
                            return new ItemMatchedCommunityBinding((LinearLayout) view, textView, thumbImageView, imageView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemMatchedCommunityBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_matched_community, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemMatchedCommunityBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.communityAminoId = textView;
        this.communityIcon = thumbImageView;
        this.communityInviteLock = imageView;
        this.communityName = textView2;
        this.extraInfo = textView3;
    }
}
