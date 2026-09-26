package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;
import com.narvii.widget.Top3UserLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemTopGifterHeaderBinding implements ViewBinding {

    @NonNull
    public final LinearLayout layoutAvatar;

    @NonNull
    public final NicknameView name;

    @NonNull
    private final Top3UserLayout rootView;

    @NonNull
    public final Top3UserLayout top3Layout;

    @NonNull
    public final ImageView userNoImage;

    @NonNull
    public static ItemTopGifterHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public Top3UserLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemTopGifterHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_top_gifter_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemTopGifterHeaderBinding(@NonNull Top3UserLayout top3UserLayout, @NonNull LinearLayout linearLayout, @NonNull NicknameView nicknameView, @NonNull Top3UserLayout top3UserLayout2, @NonNull ImageView imageView) {
        this.rootView = top3UserLayout;
        this.layoutAvatar = linearLayout;
        this.name = nicknameView;
        this.top3Layout = top3UserLayout2;
        this.userNoImage = imageView;
    }

    @NonNull
    public static ItemTopGifterHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.layout_avatar;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.layout_avatar);
        if (linearLayout != null) {
            i10 = R.id.name;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.name);
            if (nicknameView != null) {
                Top3UserLayout top3UserLayout = (Top3UserLayout) view;
                i10 = R.id.user_no_image;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.user_no_image);
                if (imageView != null) {
                    return new ItemTopGifterHeaderBinding(top3UserLayout, linearLayout, nicknameView, top3UserLayout, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
