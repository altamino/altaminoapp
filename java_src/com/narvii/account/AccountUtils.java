package com.narvii.account;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import java.util.Locale;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class AccountUtils {
    private Context context;

    public AccountUtils(Context context) {
        this.context = context;
    }

    public boolean isValidEmail(String str) {
        return Pattern.matches("^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$", str.trim().toLowerCase(Locale.US));
    }

    public boolean isValidPassword(String str) {
        return (TextUtils.isEmpty(str) || str.contains(" ") || str.length() < 6) ? false : true;
    }

    public boolean validateEmail(TextView textView) {
        String string = textView.getText().toString();
        if (string.length() == 0) {
            textView.requestFocus();
            textView.setError(this.context.getText(R.string.account_no_email));
            return false;
        }
        if (isValidEmail(string)) {
            return true;
        }
        textView.requestFocus();
        textView.setError(this.context.getText(R.string.account_invalid_email));
        return false;
    }

    public boolean validatePassword(TextView textView, TextView textView2) {
        String string = textView.getText().toString();
        if (string.length() == 0) {
            textView.requestFocus();
            textView.setError(this.context.getText(R.string.account_no_pass));
            return false;
        }
        if (string.contains(" ") || string.length() < 6) {
            textView.requestFocus();
            textView.setError(this.context.getText(R.string.account_invalid_pass));
            return false;
        }
        if (textView2 == null || string.equals(textView2.getText().toString())) {
            return true;
        }
        textView2.requestFocus();
        textView2.setError(this.context.getText(R.string.account_pass_not_match));
        return false;
    }

    public boolean isEmailAndPassVerifed(TextView textView, TextView textView2) {
        String string = textView.getText().toString();
        return (!TextUtils.isEmpty(string) && isValidEmail(string)) && isValidPassword(textView2.getText().toString());
    }

    public boolean isPhoneAndPassVerifed(TextView textView, TextView textView2) {
        return (TextUtils.isEmpty(textView.getText().toString()) ^ true) && isValidPassword(textView2.getText().toString());
    }

    public int getAccountForegroundColor() {
        return ContextCompat.getColor(this.context, NVApplication.CLIENT_TYPE == 101 ? R.color.account_foreground_color_standalone : R.color.account_foreground_color);
    }

    public Drawable getAccountProgressDrawable() {
        return ContextCompat.getDrawable(this.context, NVApplication.CLIENT_TYPE == 101 ? R.drawable.signup_progress_standalone : R.drawable.signup_progress);
    }
}
