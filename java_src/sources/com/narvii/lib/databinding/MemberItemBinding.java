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
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class MemberItemBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final TextView jointime;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final ImageView securityLevel;

    @NonNull
    public static MemberItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MemberItemBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
        if (thumbImageView != null) {
            i10 = R.id.jointime;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.nickname;
                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, i10);
                if (nicknameView != null) {
                    i10 = R.id.security_level;
                    ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                    if (imageView != null) {
                        return new MemberItemBinding((LinearLayout) view, thumbImageView, textView, nicknameView, imageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MemberItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.member_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MemberItemBinding(@NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull NicknameView nicknameView, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.avatar = thumbImageView;
        this.jointime = textView;
        this.nickname = nicknameView;
        this.securityLevel = imageView;
    }
}
