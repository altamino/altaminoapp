package com.narvii.account.mobile;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.telephony.PhoneNumberUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.emojione.EmojionePng;
import com.narvii.util.emojione.EmojioneShortName;
import java.util.Locale;
import org.slf4j.c;

/* JADX INFO: loaded from: classes6.dex */
public class MyPhoneCountryCodePicker extends TextView implements View.OnClickListener {
    EditText bindPhoneNumberEdit;
    CountryInfoR countryInfo;
    TextWatcher phoneNumberFormattingTextWatcher;

    public CountryInfoR getCountryInfo() {
        return this.countryInfo;
    }

    private void update() {
        TextWatcher textWatcher;
        EditText editText = this.bindPhoneNumberEdit;
        if (editText != null && (textWatcher = this.phoneNumberFormattingTextWatcher) != null) {
            editText.removeTextChangedListener(textWatcher);
            this.phoneNumberFormattingTextWatcher = null;
        }
        if (this.bindPhoneNumberEdit == null || this.countryInfo == null) {
            return;
        }
        PhoneNumberFormattingTextWatcher phoneNumberFormattingTextWatcher = new PhoneNumberFormattingTextWatcher(this.countryInfo.isoCode);
        this.phoneNumberFormattingTextWatcher = phoneNumberFormattingTextWatcher;
        this.bindPhoneNumberEdit.addTextChangedListener(phoneNumberFormattingTextWatcher);
        EditText editText2 = this.bindPhoneNumberEdit;
        editText2.setText(PhoneNumberUtils.stripSeparators(editText2.getText().toString()));
        EditText editText3 = this.bindPhoneNumberEdit;
        editText3.setSelection(editText3.length());
    }

    public void bindPhoneNumberEdit(EditText editText) {
        TextWatcher textWatcher;
        EditText editText2 = this.bindPhoneNumberEdit;
        if (editText2 != null && (textWatcher = this.phoneNumberFormattingTextWatcher) != null) {
            editText2.removeTextChangedListener(textWatcher);
            this.phoneNumberFormattingTextWatcher = null;
        }
        this.bindPhoneNumberEdit = editText;
        update();
    }

    public int getCountryCode() {
        return this.countryInfo.countryCode;
    }

    public void setCountryInfo(CountryInfoR countryInfoR) {
        this.countryInfo = countryInfoR;
        setText(c.ANY_NON_NULL_MARKER + countryInfoR.countryCode);
        Drawable bitmapDrawable = new BitmapDrawable(getResources(), EmojionePng.getBitmap(getContext(), EmojioneShortName.shortNameToUnicode.get("flag_" + countryInfoR.isoCode.toLowerCase(Locale.US))));
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 2.0f);
        int textSize = (int) (getTextSize() - ((float) iDpToPxInt));
        bitmapDrawable.setBounds(0, 0, textSize, textSize);
        Drawable drawable = Utils.isRtl() ? getCompoundDrawables()[0] : bitmapDrawable;
        if (!Utils.isRtl()) {
            bitmapDrawable = getCompoundDrawables()[2];
        }
        setCompoundDrawables(drawable, null, bitmapDrawable, null);
        setCompoundDrawablePadding(iDpToPxInt);
        update();
    }

    public void setPhoneNumber(String str) {
        setCountryInfo(new MobileCountryInfoHelper(getContext()).getLocalCountryInfo(str));
    }

    public MyPhoneCountryCodePicker(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setPhoneNumber(null);
        setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        LogEvent.clickWildcardBuilder(LogUtils.getPageContext(this), "Country").send();
        Dialog dialogCreateSelectCountryDialog = MobileCountryInfoHelper.createSelectCountryDialog(getContext(), new Callback<CountryInfoR>() { // from class: com.narvii.account.mobile.MyPhoneCountryCodePicker.1
            @Override // com.narvii.util.Callback
            public void call(CountryInfoR countryInfoR) {
                MyPhoneCountryCodePicker.this.setCountryInfo(countryInfoR);
                MobileCountryInfoHelper.setLastSelectedCountry(countryInfoR);
            }
        }, this.countryInfo, true);
        if (dialogCreateSelectCountryDialog != null) {
            dialogCreateSelectCountryDialog.show();
        }
    }
}
