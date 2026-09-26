package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SwipeableLayout;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentAvatarFramePickerBinding implements ViewBinding {

    @NonNull
    public final FrameLayout checkArea;

    @NonNull
    public final TintButton close;

    @NonNull
    public final FrameLayout closeArea;

    @NonNull
    public final View dismissMask;

    @NonNull
    public final SwipeableLayout frame;

    @NonNull
    public final TextView listTitle;

    @NonNull
    public final FrameLayout membershipExpireFragmentContainer;

    @NonNull
    public final TintButton minimize;

    @NonNull
    public final FrameLayout minimizeArea;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout titleLayout;

    @NonNull
    public static FragmentAvatarFramePickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentAvatarFramePickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_avatar_frame_picker, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentAvatarFramePickerBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TintButton tintButton, @NonNull FrameLayout frameLayout3, @NonNull View view, @NonNull SwipeableLayout swipeableLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout4, @NonNull TintButton tintButton2, @NonNull FrameLayout frameLayout5, @NonNull FrameLayout frameLayout6) {
        this.rootView = frameLayout;
        this.checkArea = frameLayout2;
        this.close = tintButton;
        this.closeArea = frameLayout3;
        this.dismissMask = view;
        this.frame = swipeableLayout;
        this.listTitle = textView;
        this.membershipExpireFragmentContainer = frameLayout4;
        this.minimize = tintButton2;
        this.minimizeArea = frameLayout5;
        this.titleLayout = frameLayout6;
    }

    @NonNull
    public static FragmentAvatarFramePickerBinding bind(@NonNull View view) {
        int i10 = R.id.check_area;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.check_area);
        if (frameLayout != null) {
            i10 = R.id.close;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.close);
            if (tintButton != null) {
                i10 = R.id.close_area;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.close_area);
                if (frameLayout2 != null) {
                    i10 = R.id.dismiss_mask;
                    View viewA = ViewBindings.a(view, R.id.dismiss_mask);
                    if (viewA != null) {
                        i10 = R.id.frame;
                        SwipeableLayout swipeableLayout = (SwipeableLayout) ViewBindings.a(view, R.id.frame);
                        if (swipeableLayout != null) {
                            i10 = R.id.list_title;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.list_title);
                            if (textView != null) {
                                i10 = R.id.membership_expire_fragment_container;
                                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.membership_expire_fragment_container);
                                if (frameLayout3 != null) {
                                    i10 = R.id.minimize;
                                    TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.minimize);
                                    if (tintButton2 != null) {
                                        i10 = R.id.minimize_area;
                                        FrameLayout frameLayout4 = (FrameLayout) ViewBindings.a(view, R.id.minimize_area);
                                        if (frameLayout4 != null) {
                                            i10 = R.id.title_layout;
                                            FrameLayout frameLayout5 = (FrameLayout) ViewBindings.a(view, R.id.title_layout);
                                            if (frameLayout5 != null) {
                                                return new FragmentAvatarFramePickerBinding((FrameLayout) view, frameLayout, tintButton, frameLayout2, viewA, swipeableLayout, textView, frameLayout3, tintButton2, frameLayout4, frameLayout5);
                                            }
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
