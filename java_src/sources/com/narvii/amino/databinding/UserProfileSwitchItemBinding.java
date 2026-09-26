package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SwitchButton;

/* JADX INFO: loaded from: classes8.dex */
public final class UserProfileSwitchItemBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final SwitchButton userSwitchComments;

    @NonNull
    public final RadioGroup userSwitchGroup;

    @NonNull
    public final SwitchButton userSwitchPosts;

    @NonNull
    public final SwitchButton userSwitchSavedPosts;

    @NonNull
    public static UserProfileSwitchItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserProfileSwitchItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_profile_switch_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserProfileSwitchItemBinding(@NonNull LinearLayout linearLayout, @NonNull SwitchButton switchButton, @NonNull RadioGroup radioGroup, @NonNull SwitchButton switchButton2, @NonNull SwitchButton switchButton3) {
        this.rootView = linearLayout;
        this.userSwitchComments = switchButton;
        this.userSwitchGroup = radioGroup;
        this.userSwitchPosts = switchButton2;
        this.userSwitchSavedPosts = switchButton3;
    }

    @NonNull
    public static UserProfileSwitchItemBinding bind(@NonNull View view) {
        int i10 = R.id.user_switch_comments;
        SwitchButton switchButton = (SwitchButton) ViewBindings.a(view, R.id.user_switch_comments);
        if (switchButton != null) {
            i10 = R.id.user_switch_group;
            RadioGroup radioGroup = (RadioGroup) ViewBindings.a(view, R.id.user_switch_group);
            if (radioGroup != null) {
                i10 = R.id.user_switch_posts;
                SwitchButton switchButton2 = (SwitchButton) ViewBindings.a(view, R.id.user_switch_posts);
                if (switchButton2 != null) {
                    i10 = R.id.user_switch_saved_posts;
                    SwitchButton switchButton3 = (SwitchButton) ViewBindings.a(view, R.id.user_switch_saved_posts);
                    if (switchButton3 != null) {
                        return new UserProfileSwitchItemBinding((LinearLayout) view, switchButton, radioGroup, switchButton2, switchButton3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
