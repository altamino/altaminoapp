package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemAudienceLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView audienceCount;

    @NonNull
    public final LinearLayout audienceCountContainer;

    @NonNull
    public final UserAvatarLayoutMiniNobadgeBinding avatar1;

    @NonNull
    public final UserAvatarLayoutMiniNobadgeBinding avatar2;

    @NonNull
    public final UserAvatarLayoutMiniNobadgeBinding avatar3;

    @NonNull
    public final UserAvatarLayoutMiniNobadgeBinding avatar4;

    @NonNull
    public final FrameLayout lastAvatarLayout;

    @NonNull
    public final ImageView more;

    @NonNull
    public final NVImageView overlay;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemAudienceLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemAudienceLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_audience_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemAudienceLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull UserAvatarLayoutMiniNobadgeBinding userAvatarLayoutMiniNobadgeBinding, @NonNull UserAvatarLayoutMiniNobadgeBinding userAvatarLayoutMiniNobadgeBinding2, @NonNull UserAvatarLayoutMiniNobadgeBinding userAvatarLayoutMiniNobadgeBinding3, @NonNull UserAvatarLayoutMiniNobadgeBinding userAvatarLayoutMiniNobadgeBinding4, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull NVImageView nVImageView) {
        this.rootView = linearLayout;
        this.audienceCount = textView;
        this.audienceCountContainer = linearLayout2;
        this.avatar1 = userAvatarLayoutMiniNobadgeBinding;
        this.avatar2 = userAvatarLayoutMiniNobadgeBinding2;
        this.avatar3 = userAvatarLayoutMiniNobadgeBinding3;
        this.avatar4 = userAvatarLayoutMiniNobadgeBinding4;
        this.lastAvatarLayout = frameLayout;
        this.more = imageView;
        this.overlay = nVImageView;
    }

    @NonNull
    public static ItemAudienceLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.audience_count;
        TextView textView = (TextView) ViewBindings.a(view, R.id.audience_count);
        if (textView != null) {
            i10 = R.id.audience_count_container;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.audience_count_container);
            if (linearLayout != null) {
                i10 = R.id.avatar1;
                View viewA = ViewBindings.a(view, R.id.avatar1);
                if (viewA != null) {
                    UserAvatarLayoutMiniNobadgeBinding userAvatarLayoutMiniNobadgeBindingBind = UserAvatarLayoutMiniNobadgeBinding.bind(viewA);
                    i10 = R.id.avatar2;
                    View viewA2 = ViewBindings.a(view, R.id.avatar2);
                    if (viewA2 != null) {
                        UserAvatarLayoutMiniNobadgeBinding userAvatarLayoutMiniNobadgeBindingBind2 = UserAvatarLayoutMiniNobadgeBinding.bind(viewA2);
                        i10 = R.id.avatar3;
                        View viewA3 = ViewBindings.a(view, R.id.avatar3);
                        if (viewA3 != null) {
                            UserAvatarLayoutMiniNobadgeBinding userAvatarLayoutMiniNobadgeBindingBind3 = UserAvatarLayoutMiniNobadgeBinding.bind(viewA3);
                            i10 = R.id.avatar4;
                            View viewA4 = ViewBindings.a(view, R.id.avatar4);
                            if (viewA4 != null) {
                                UserAvatarLayoutMiniNobadgeBinding userAvatarLayoutMiniNobadgeBindingBind4 = UserAvatarLayoutMiniNobadgeBinding.bind(viewA4);
                                i10 = R.id.last_avatar_layout;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.last_avatar_layout);
                                if (frameLayout != null) {
                                    i10 = R.id.more;
                                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.more);
                                    if (imageView != null) {
                                        i10 = R.id.overlay;
                                        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.overlay);
                                        if (nVImageView != null) {
                                            return new ItemAudienceLayoutBinding((LinearLayout) view, textView, linearLayout, userAvatarLayoutMiniNobadgeBindingBind, userAvatarLayoutMiniNobadgeBindingBind2, userAvatarLayoutMiniNobadgeBindingBind3, userAvatarLayoutMiniNobadgeBindingBind4, frameLayout, imageView, nVImageView);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
