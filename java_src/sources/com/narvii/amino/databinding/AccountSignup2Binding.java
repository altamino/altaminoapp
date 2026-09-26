package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ClearEditText;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class AccountSignup2Binding implements ViewBinding {

    @NonNull
    public final CheckBox agree;

    @NonNull
    public final TextView agreeError;

    @NonNull
    public final TextView agreeText;

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final View avatarClick;

    @NonNull
    public final TintButton avatarPlaceholder;

    @NonNull
    public final TextView avatarPlaceholder2;

    @NonNull
    public final TextView bigTitle;

    @NonNull
    public final View divider;

    @NonNull
    public final ImageView icon;

    @NonNull
    public final Button next;

    @NonNull
    public final ClearEditText nickname;

    @NonNull
    public final TextView nicknameTitle;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final ScrollView scroll;

    @NonNull
    public static AccountSignup2Binding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AccountSignup2Binding bind(@NonNull View view) {
        int i10 = R.id.agree;
        CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.agree);
        if (checkBox != null) {
            i10 = R.id.agree_error;
            TextView textView = (TextView) ViewBindings.a(view, R.id.agree_error);
            if (textView != null) {
                i10 = R.id.agree_text;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.agree_text);
                if (textView2 != null) {
                    i10 = R.id.avatar;
                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
                    if (thumbImageView != null) {
                        i10 = R.id.avatar_click;
                        View viewA = ViewBindings.a(view, R.id.avatar_click);
                        if (viewA != null) {
                            i10 = R.id.avatar_placeholder;
                            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.avatar_placeholder);
                            if (tintButton != null) {
                                i10 = R.id.avatar_placeholder2;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.avatar_placeholder2);
                                if (textView3 != null) {
                                    i10 = R.id.big_title;
                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.big_title);
                                    if (textView4 != null) {
                                        i10 = R.id.divider;
                                        View viewA2 = ViewBindings.a(view, R.id.divider);
                                        if (viewA2 != null) {
                                            i10 = R.id.icon;
                                            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
                                            if (imageView != null) {
                                                i10 = R.id.next;
                                                Button button = (Button) ViewBindings.a(view, R.id.next);
                                                if (button != null) {
                                                    i10 = R.id.nickname;
                                                    ClearEditText clearEditText = (ClearEditText) ViewBindings.a(view, R.id.nickname);
                                                    if (clearEditText != null) {
                                                        i10 = R.id.nickname_title;
                                                        TextView textView5 = (TextView) ViewBindings.a(view, R.id.nickname_title);
                                                        if (textView5 != null) {
                                                            i10 = R.id.scroll;
                                                            ScrollView scrollView = (ScrollView) ViewBindings.a(view, R.id.scroll);
                                                            if (scrollView != null) {
                                                                return new AccountSignup2Binding((LinearLayout) view, checkBox, textView, textView2, thumbImageView, viewA, tintButton, textView3, textView4, viewA2, imageView, button, clearEditText, textView5, scrollView);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static AccountSignup2Binding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.account_signup2, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AccountSignup2Binding(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView, @NonNull View view, @NonNull TintButton tintButton, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull View view2, @NonNull ImageView imageView, @NonNull Button button, @NonNull ClearEditText clearEditText, @NonNull TextView textView5, @NonNull ScrollView scrollView) {
        this.rootView = linearLayout;
        this.agree = checkBox;
        this.agreeError = textView;
        this.agreeText = textView2;
        this.avatar = thumbImageView;
        this.avatarClick = view;
        this.avatarPlaceholder = tintButton;
        this.avatarPlaceholder2 = textView3;
        this.bigTitle = textView4;
        this.divider = view2;
        this.icon = imageView;
        this.next = button;
        this.nickname = clearEditText;
        this.nicknameTitle = textView5;
        this.scroll = scrollView;
    }
}
