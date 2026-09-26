package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.account.mobile.MyPhoneCountryCodePicker;
import com.narvii.amino.master.R;
import com.narvii.widget.TextInputLayout;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentUpdatePhoneNumberSettingsBinding implements ViewBinding {

    @NonNull
    public final ImageView actionbarBack;

    @NonNull
    public final Button addPhoneNumber;

    @NonNull
    public final Button changePhoneNumber;

    @NonNull
    public final MyPhoneCountryCodePicker countryPicker;

    @NonNull
    public final TextView desc;

    @NonNull
    public final EditText edit;

    @NonNull
    public final TextView noPhoneSet;

    @NonNull
    public final TextInputLayout phoneInputLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final RelativeLayout titleBar;

    @NonNull
    public static FragmentUpdatePhoneNumberSettingsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentUpdatePhoneNumberSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_update_phone_number_settings, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentUpdatePhoneNumberSettingsBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull Button button2, @NonNull MyPhoneCountryCodePicker myPhoneCountryCodePicker, @NonNull TextView textView, @NonNull EditText editText, @NonNull TextView textView2, @NonNull TextInputLayout textInputLayout, @NonNull TextView textView3, @NonNull RelativeLayout relativeLayout) {
        this.rootView = linearLayout;
        this.actionbarBack = imageView;
        this.addPhoneNumber = button;
        this.changePhoneNumber = button2;
        this.countryPicker = myPhoneCountryCodePicker;
        this.desc = textView;
        this.edit = editText;
        this.noPhoneSet = textView2;
        this.phoneInputLayout = textInputLayout;
        this.title = textView3;
        this.titleBar = relativeLayout;
    }

    @NonNull
    public static FragmentUpdatePhoneNumberSettingsBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_back;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.actionbar_back);
        if (imageView != null) {
            i10 = R.id.add_phone_number;
            Button button = (Button) ViewBindings.a(view, R.id.add_phone_number);
            if (button != null) {
                i10 = R.id.change_phone_number;
                Button button2 = (Button) ViewBindings.a(view, R.id.change_phone_number);
                if (button2 != null) {
                    i10 = R.id.country_picker;
                    MyPhoneCountryCodePicker myPhoneCountryCodePicker = (MyPhoneCountryCodePicker) ViewBindings.a(view, R.id.country_picker);
                    if (myPhoneCountryCodePicker != null) {
                        i10 = R.id.desc;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.desc);
                        if (textView != null) {
                            i10 = R.id.edit;
                            EditText editText = (EditText) ViewBindings.a(view, R.id.edit);
                            if (editText != null) {
                                i10 = R.id.no_phone_set;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.no_phone_set);
                                if (textView2 != null) {
                                    i10 = R.id.phone_input_layout;
                                    TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.a(view, R.id.phone_input_layout);
                                    if (textInputLayout != null) {
                                        i10 = R.id.title;
                                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.title);
                                        if (textView3 != null) {
                                            i10 = R.id.title_bar;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.title_bar);
                                            if (relativeLayout != null) {
                                                return new FragmentUpdatePhoneNumberSettingsBinding((LinearLayout) view, imageView, button, button2, myPhoneCountryCodePicker, textView, editText, textView2, textInputLayout, textView3, relativeLayout);
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
