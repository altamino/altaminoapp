package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemMemberFilterBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final FontAwesomeView checkmark;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemMemberFilterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemMemberFilterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_member_filter, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemMemberFilterBinding(@NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull FontAwesomeView fontAwesomeView, @NonNull NicknameView nicknameView) {
        this.rootView = linearLayout;
        this.avatar = thumbImageView;
        this.checkmark = fontAwesomeView;
        this.nickname = nicknameView;
    }

    @NonNull
    public static ItemMemberFilterBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
        if (thumbImageView != null) {
            i10 = R.id.checkmark;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.checkmark);
            if (fontAwesomeView != null) {
                i10 = R.id.nickname;
                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                if (nicknameView != null) {
                    return new ItemMemberFilterBinding((LinearLayout) view, thumbImageView, fontAwesomeView, nicknameView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
