package com.narvii.account.settings;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.util.AccountWebHelper;

/* loaded from: classes2.dex */
public class UpdateEmailFragment extends AccountSettingsBaseFragment implements View.OnClickListener {
    TextView addEmail;
    TextView changeEmail;
    TextView desc;
    TextView email;
    TextView verifyEmail;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_update_email, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        setTitle(R.string.account_email);
    }

    @Override // com.narvii.account.settings.AccountSettingsBaseFragment
    protected void updateViews() {
        super.updateViews();
        String email = this.accountService.getEmail();
        if (TextUtils.isEmpty(email)) {
            this.email.setText(R.string.account_no_email_yet);
            this.addEmail.setVisibility(0);
            this.changeEmail.setVisibility(8);
            this.verifyEmail.setVisibility(8);
            this.desc.setText((CharSequence) null);
            return;
        }
        this.email.setText(email);
        this.addEmail.setVisibility(8);
        if (this.accountService.hasEmailActivation()) {
            this.desc.setText(getString(R.string.account_settings_email_verified) + " 👏");
            this.changeEmail.setVisibility(0);
            this.verifyEmail.setVisibility(8);
            return;
        }
        this.desc.setText(getString(R.string.account_settings_email_not_verified) + " 😱");
        this.changeEmail.setVisibility(0);
        this.verifyEmail.setVisibility(0);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.email = (TextView) view.findViewById(R.id.email);
        this.desc = (TextView) view.findViewById(R.id.desc);
        this.addEmail = (TextView) view.findViewById(R.id.add_email);
        this.changeEmail = (TextView) view.findViewById(R.id.change_email);
        this.verifyEmail = (TextView) view.findViewById(R.id.verify_email);
        this.addEmail.setOnClickListener(this);
        this.changeEmail.setOnClickListener(this);
        this.verifyEmail.setOnClickListener(this);
        updateViews();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.add_email || id == R.id.change_email) {
            openWebPage(new AccountWebHelper(this).getUpdateEmailUrl());
        } else {
            if (id != R.id.verify_email) {
                return;
            }
            openWebPage(new AccountWebHelper(this).getActivateEmailUrl());
        }
    }
}
