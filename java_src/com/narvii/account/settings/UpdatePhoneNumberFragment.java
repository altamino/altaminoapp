package com.narvii.account.settings;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.account.mobile.MobileCountryInfoHelper;
import com.narvii.account.mobile.MyPhoneCountryCodePicker;
import com.narvii.amino.mastes.R;
import com.narvii.util.AccountWebHelper;
import com.narvii.widget.TextInputLayout;

/* loaded from: classes2.dex */
public class UpdatePhoneNumberFragment extends AccountSettingsBaseFragment implements View.OnClickListener {
    TextView action;
    TextView desc;
    TextView noPhoneSet;
    TextInputLayout phoneLayout;

    @Override // com.narvii.account.settings.AccountSettingsBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getActivity().getWindow().setSoftInputMode(2);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_update_phone_number, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        setTitle(R.string.account_phone_number);
    }

    @Override // com.narvii.account.settings.AccountSettingsBaseFragment
    protected void updateViews() {
        super.updateViews();
        String phoneNumber = this.accountService.getPhoneNumber();
        if (TextUtils.isEmpty(phoneNumber)) {
            this.noPhoneSet.setVisibility(0);
            this.desc.setVisibility(8);
            this.phoneLayout.setVisibility(8);
            this.action.setText(R.string.add_phone_number);
            return;
        }
        this.noPhoneSet.setVisibility(8);
        this.desc.setVisibility(0);
        this.action.setText(R.string.update_phone_number);
        this.phoneLayout.setVisibility(0);
        String[] strArrSplit = phoneNumber.split(" ");
        if (strArrSplit.length == 2) {
            ((MyPhoneCountryCodePicker) this.phoneLayout.findViewById(R.id.country_picker)).setPhoneNumber(strArrSplit[0]);
            ((EditText) this.phoneLayout.findViewById(R.id.edit)).setText(strArrSplit[1]);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.noPhoneSet = (TextView) view.findViewById(R.id.no_phone_set);
        this.desc = (TextView) view.findViewById(R.id.desc);
        this.phoneLayout = (TextInputLayout) view.findViewById(R.id.phone_input_layout);
        this.action = (TextView) view.findViewById(R.id.action);
        this.action.setOnClickListener(this);
        updateViews();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.action) {
            return;
        }
        openWebPage(new AccountWebHelper(this).getUpdatePhoneNumberUrl("+" + new MobileCountryInfoHelper(getContext()).getLocalCountryCode(null)));
    }
}
