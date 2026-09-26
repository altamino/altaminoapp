package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.video.overlay.AudienceAnimatedMemberBar;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemAudienceAnimatedLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView audienceCount;

    @NonNull
    public final LinearLayout audienceCountContainer;

    @NonNull
    public final AudienceAnimatedMemberBar audienceMemberBar;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemAudienceAnimatedLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemAudienceAnimatedLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_audience_animated_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemAudienceAnimatedLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull AudienceAnimatedMemberBar audienceAnimatedMemberBar) {
        this.rootView = linearLayout;
        this.audienceCount = textView;
        this.audienceCountContainer = linearLayout2;
        this.audienceMemberBar = audienceAnimatedMemberBar;
    }

    @NonNull
    public static ItemAudienceAnimatedLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.audience_count;
        TextView textView = (TextView) ViewBindings.a(view, R.id.audience_count);
        if (textView != null) {
            i10 = R.id.audience_count_container;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.audience_count_container);
            if (linearLayout != null) {
                i10 = R.id.audience_member_bar;
                AudienceAnimatedMemberBar audienceAnimatedMemberBar = (AudienceAnimatedMemberBar) ViewBindings.a(view, R.id.audience_member_bar);
                if (audienceAnimatedMemberBar != null) {
                    return new ItemAudienceAnimatedLayoutBinding((LinearLayout) view, textView, linearLayout, audienceAnimatedMemberBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
