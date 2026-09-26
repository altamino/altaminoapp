package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ScrollInterceptNestedFrameLayout;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentFansOnlyMaskBinding implements ViewBinding {

    @NonNull
    public final TextView becomeFans;

    @NonNull
    public final TextView hint;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final ScrollInterceptNestedFrameLayout rootView;

    @NonNull
    public static FragmentFansOnlyMaskBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ScrollInterceptNestedFrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentFansOnlyMaskBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_fans_only_mask, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentFansOnlyMaskBinding(@NonNull ScrollInterceptNestedFrameLayout scrollInterceptNestedFrameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull NicknameView nicknameView) {
        this.rootView = scrollInterceptNestedFrameLayout;
        this.becomeFans = textView;
        this.hint = textView2;
        this.nickname = nicknameView;
    }

    @NonNull
    public static FragmentFansOnlyMaskBinding bind(@NonNull View view) {
        int i10 = R.id.become_fans;
        TextView textView = (TextView) ViewBindings.a(view, R.id.become_fans);
        if (textView != null) {
            i10 = R.id.hint;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.hint);
            if (textView2 != null) {
                i10 = R.id.nickname;
                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                if (nicknameView != null) {
                    return new FragmentFansOnlyMaskBinding((ScrollInterceptNestedFrameLayout) view, textView, textView2, nicknameView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
