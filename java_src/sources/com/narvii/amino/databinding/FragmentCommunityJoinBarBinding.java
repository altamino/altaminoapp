package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.CommunityIconView;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentCommunityJoinBarBinding implements ViewBinding {

    @NonNull
    public final Button action;

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final TextView communityName;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FragmentCommunityJoinBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentCommunityJoinBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_community_join_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentCommunityJoinBarBinding(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull CommunityIconView communityIconView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.action = button;
        this.communityIcon = communityIconView;
        this.communityName = textView;
    }

    @NonNull
    public static FragmentCommunityJoinBarBinding bind(@NonNull View view) {
        int i10 = R.id.action;
        Button button = (Button) ViewBindings.a(view, R.id.action);
        if (button != null) {
            i10 = R.id.community_icon;
            CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
            if (communityIconView != null) {
                i10 = R.id.community_name;
                TextView textView = (TextView) ViewBindings.a(view, R.id.community_name);
                if (textView != null) {
                    return new FragmentCommunityJoinBarBinding((LinearLayout) view, button, communityIconView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
