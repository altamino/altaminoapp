package com.narvii.account;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import java.util.Locale;
import java.util.regex.Pattern;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class AccountUtils {
    private Context context;

    public boolean isPhoneWithCountryCode(String str) {
        if (str == null) {
            return false;
        }
        return (str.startsWith(org.slf4j.c.ANY_NON_NULL_MARKER) && str.length() > 2) || (str.startsWith(TarConstants.VERSION_POSIX) && str.length() > 3);
    }

    public int getAccountForegroundColor() {
        return ContextCompat.getColor(this.context, R.color.account_foreground_color);
    }

    public Drawable getAccountProgressDrawable() {
        return ContextCompat.getDrawable(this.context, R.drawable.signup_progress);
    }

    @Nullable
    public String getCountryCode(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (str.startsWith(TarConstants.VERSION_POSIX)) {
                str = str.replaceFirst(TarConstants.VERSION_POSIX, org.slf4j.c.ANY_NON_NULL_MARKER);
            }
            com.google.i18n.phonenumbers.m mVarY = com.google.i18n.phonenumbers.h.i().y(str, "");
            if (mVarY.j()) {
                return String.valueOf(mVarY.c());
            }
            return null;
        } catch (com.google.i18n.phonenumbers.g e) {
            e.printStackTrace();
            return null;
        }
    }

    @Nullable
    public String getNationalNumber(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (str.startsWith(TarConstants.VERSION_POSIX)) {
                str = str.replaceFirst(TarConstants.VERSION_POSIX, org.slf4j.c.ANY_NON_NULL_MARKER);
            }
            com.google.i18n.phonenumbers.m mVarY = com.google.i18n.phonenumbers.h.i().y(str, "");
            return mVarY.j() ? String.valueOf(mVarY.f()) : str;
        } catch (com.google.i18n.phonenumbers.g e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean hasOnlyDigits(String str) {
        return str.replaceAll("[0-9]", "").length() == 0;
    }

    public AccountUtils(Context context) {
        this.context = context;
    }

    public boolean isEmailAndPassVerifed(TextView textView, TextView textView2) {
        String string = textView.getText().toString();
        String string2 = textView2.getText().toString();
        if (!TextUtils.isEmpty(string) && isValidEmail(string) && isValidPassword(string2)) {
            return true;
        }
        return false;
    }

    public boolean isPhoneAndPassVerified(TextView textView, TextView textView2) {
        String string = textView.getText().toString();
        String string2 = textView2.getText().toString();
        if ((!TextUtils.isEmpty(string)) && isValidPassword(string2)) {
            return true;
        }
        return false;
    }

    public boolean isPhoneWithCountryAndPassVerified(TextView textView, TextView textView2) {
        String string = textView.getText().toString();
        String string2 = textView2.getText().toString();
        if (isPhoneWithCountryCode(string) && isValidPassword(string2)) {
            return true;
        }
        return false;
    }

    public boolean isValidEmail(String str) {
        return Pattern.matches("^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$", str.trim().toLowerCase(Locale.US));
    }

    public boolean isValidPassword(String str) {
        if (!TextUtils.isEmpty(str) && !str.contains(" ") && str.length() >= 6) {
            return true;
        }
        return false;
    }

    public boolean validateEmail(TextView textView) {
        String string = textView.getText().toString();
        if (string.length() == 0) {
            textView.requestFocus();
            textView.setError(this.context.getText(R.string.account_no_email));
            return false;
        }
        if (!isValidEmail(string)) {
            textView.requestFocus();
            textView.setError(this.context.getText(R.string.account_invalid_email));
            return false;
        }
        return true;
    }

    public boolean validatePassword(TextView textView, TextView textView2) {
        String string = textView.getText().toString();
        if (string.length() == 0) {
            textView.requestFocus();
            textView.setError(this.context.getText(R.string.account_no_pass));
            return false;
        }
        if (!string.contains(" ") && string.length() >= 6) {
            if (textView2 != null && !string.equals(textView2.getText().toString())) {
                textView2.requestFocus();
                textView2.setError(this.context.getText(R.string.account_pass_not_match));
                return false;
            }
            return true;
        }
        textView.requestFocus();
        textView.setError(this.context.getText(R.string.account_invalid_pass));
        return false;
    }
}
