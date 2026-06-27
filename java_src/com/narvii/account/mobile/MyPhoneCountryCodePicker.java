package com.narvii.account.mobile;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.telephony.PhoneNumberUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.emojione.EmojionePng;
import com.narvii.util.emojione.EmojioneShortName;
import java.util.Locale;

/* loaded from: classes2.dex */
public class MyPhoneCountryCodePicker extends TextView implements View.OnClickListener {
    EditText bindPhoneNumberEdit;
    CountryInfoR countryInfo;
    TextWatcher phoneNumberFormattingTextWatcher;

    public MyPhoneCountryCodePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setPhoneNumber(null);
        setOnClickListener(this);
    }

    public void setPhoneNumber(String str) {
        setCountryInfo(new MobileCountryInfoHelper(getContext()).getLocalCountryInfo(str));
    }

    public CountryInfoR getCountryInfo() {
        return this.countryInfo;
    }

    public void setCountryInfo(CountryInfoR countryInfoR) {
        this.countryInfo = countryInfoR;
        setText("+" + countryInfoR.countryCode);
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), EmojionePng.getBitmap(getContext(), EmojioneShortName.shortNameToUnicode.get("flag_" + countryInfoR.isoCode.toLowerCase(Locale.US))));
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 2.0f);
        int textSize = (int) (getTextSize() - ((float) iDpToPxInt));
        bitmapDrawable.setBounds(0, 0, textSize, textSize);
        Drawable drawable = Utils.isRtl() ? getCompoundDrawables()[0] : bitmapDrawable;
        Drawable drawable2 = bitmapDrawable;
        if (!Utils.isRtl()) {
            drawable2 = getCompoundDrawables()[2];
        }
        setCompoundDrawables(drawable, null, drawable2, null);
        setCompoundDrawablePadding(iDpToPxInt);
        update();
    }

    public int getCountryCode() {
        return this.countryInfo.countryCode;
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

    private void update() {
        CountryInfoR countryInfoR;
        TextWatcher textWatcher;
        EditText editText = this.bindPhoneNumberEdit;
        if (editText != null && (textWatcher = this.phoneNumberFormattingTextWatcher) != null) {
            editText.removeTextChangedListener(textWatcher);
            this.phoneNumberFormattingTextWatcher = null;
        }
        if (this.bindPhoneNumberEdit == null || (countryInfoR = this.countryInfo) == null || Build.VERSION.SDK_INT < 21) {
            return;
        }
        this.phoneNumberFormattingTextWatcher = new PhoneNumberFormattingTextWatcher(countryInfoR.isoCode);
        this.bindPhoneNumberEdit.addTextChangedListener(this.phoneNumberFormattingTextWatcher);
        EditText editText2 = this.bindPhoneNumberEdit;
        editText2.setText(PhoneNumberUtils.stripSeparators(editText2.getText().toString()));
        EditText editText3 = this.bindPhoneNumberEdit;
        editText3.setSelection(editText3.length());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
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
