package com.narvii.amino.databinding;

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
import com.narvii.amino.master.R;
import com.narvii.chat.video.view.VVIndicatorView;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentVvContentMiniBinding implements ViewBinding {

    @NonNull
    public final UserAvatarLayoutMiniNobadgeNoavatarBinding avatar1;

    @NonNull
    public final UserAvatarLayoutMiniNobadgeNoavatarBinding avatar2;

    @NonNull
    public final UserAvatarLayoutMiniNobadgeNoavatarBinding avatar3;

    @NonNull
    public final TextView memberCount;

    @NonNull
    public final ImageView mute;

    @NonNull
    public final LinearLayout root;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final VVIndicatorView vvTypeIndicator;

    @NonNull
    public static FragmentVvContentMiniBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentVvContentMiniBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_vv_content_mini, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentVvContentMiniBinding(@NonNull LinearLayout linearLayout, @NonNull UserAvatarLayoutMiniNobadgeNoavatarBinding userAvatarLayoutMiniNobadgeNoavatarBinding, @NonNull UserAvatarLayoutMiniNobadgeNoavatarBinding userAvatarLayoutMiniNobadgeNoavatarBinding2, @NonNull UserAvatarLayoutMiniNobadgeNoavatarBinding userAvatarLayoutMiniNobadgeNoavatarBinding3, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull VVIndicatorView vVIndicatorView) {
        this.rootView = linearLayout;
        this.avatar1 = userAvatarLayoutMiniNobadgeNoavatarBinding;
        this.avatar2 = userAvatarLayoutMiniNobadgeNoavatarBinding2;
        this.avatar3 = userAvatarLayoutMiniNobadgeNoavatarBinding3;
        this.memberCount = textView;
        this.mute = imageView;
        this.root = linearLayout2;
        this.vvTypeIndicator = vVIndicatorView;
    }

    @NonNull
    public static FragmentVvContentMiniBinding bind(@NonNull View view) {
        int i10 = R.id.avatar_1;
        View viewA = ViewBindings.a(view, R.id.avatar_1);
        if (viewA != null) {
            UserAvatarLayoutMiniNobadgeNoavatarBinding userAvatarLayoutMiniNobadgeNoavatarBindingBind = UserAvatarLayoutMiniNobadgeNoavatarBinding.bind(viewA);
            i10 = R.id.avatar_2;
            View viewA2 = ViewBindings.a(view, R.id.avatar_2);
            if (viewA2 != null) {
                UserAvatarLayoutMiniNobadgeNoavatarBinding userAvatarLayoutMiniNobadgeNoavatarBindingBind2 = UserAvatarLayoutMiniNobadgeNoavatarBinding.bind(viewA2);
                i10 = R.id.avatar_3;
                View viewA3 = ViewBindings.a(view, R.id.avatar_3);
                if (viewA3 != null) {
                    UserAvatarLayoutMiniNobadgeNoavatarBinding userAvatarLayoutMiniNobadgeNoavatarBindingBind3 = UserAvatarLayoutMiniNobadgeNoavatarBinding.bind(viewA3);
                    i10 = R.id.member_count;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.member_count);
                    if (textView != null) {
                        i10 = R.id.mute;
                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.mute);
                        if (imageView != null) {
                            LinearLayout linearLayout = (LinearLayout) view;
                            i10 = R.id.vv_type_indicator;
                            VVIndicatorView vVIndicatorView = (VVIndicatorView) ViewBindings.a(view, R.id.vv_type_indicator);
                            if (vVIndicatorView != null) {
                                return new FragmentVvContentMiniBinding(linearLayout, userAvatarLayoutMiniNobadgeNoavatarBindingBind, userAvatarLayoutMiniNobadgeNoavatarBindingBind2, userAvatarLayoutMiniNobadgeNoavatarBindingBind3, textView, imageView, linearLayout, vVIndicatorView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
