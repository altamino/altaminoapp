package com.narvii.account;

import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.DatePicker;
import android.widget.TextView;
import com.narvii.account.mobile.CountryInfoR;
import com.narvii.account.mobile.MobileCountryInfoHelper;
import com.narvii.amino.mastes.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.suggest.interest.InterestPickerBaseInfoFragment;
import com.narvii.util.Callback;
import com.narvii.util.dialog.AlertDialog;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes2.dex */
public class AgeGatingFragment extends AccountBaseFragment {
    CountryInfoR countryInfo;
    TextView countryText;
    Date date;
    TextView dateText;
    TextView hintText;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "SignUpBirthday";
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            LoginActivity loginActivity = (LoginActivity) getActivity();
            loginActivity.statMaxLoginStep = 0;
            loginActivity.statMaxSignupSetp = 1;
        }
        Locale locale = Locale.getDefault();
        Iterator<CountryInfoR> it = MobileCountryInfoHelper.getCountryList().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            CountryInfoR next = it.next();
            if (next.isoCode.equalsIgnoreCase(locale.getCountry())) {
                this.countryInfo = next;
                break;
            }
        }
        SharedPreferences sharedPreferences = (SharedPreferences) getService("prefs");
        CountryInfoR countryInfoR = this.countryInfo;
        int i = (countryInfoR == null || !countryInfoR.isGDPR()) ? 13 : 16;
        if (sharedPreferences.contains(InterestPickerBaseInfoFragment.SUGGEST_INTEREST_AGE)) {
            i = sharedPreferences.getInt(InterestPickerBaseInfoFragment.SUGGEST_INTEREST_AGE, i);
        }
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, calendar.get(1) - i);
        calendar.set(2, 0);
        calendar.set(5, 1);
        this.date = calendar.getTime();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_age_gating, viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.countryText = (TextView) view.findViewById(R.id.country);
        this.countryText.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.AgeGatingFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) throws Resources.NotFoundException {
                LogEvent.clickWildcardBuilder(AgeGatingFragment.this, "Country").send();
                Dialog dialogCreateSelectCountryDialog = MobileCountryInfoHelper.createSelectCountryDialog(AgeGatingFragment.this.getContext(), new Callback<CountryInfoR>() { // from class: com.narvii.account.AgeGatingFragment.1.1
                    @Override // com.narvii.util.Callback
                    public void call(CountryInfoR countryInfoR) {
                        AgeGatingFragment ageGatingFragment = AgeGatingFragment.this;
                        ageGatingFragment.countryInfo = countryInfoR;
                        ageGatingFragment.updateCountryInfo();
                    }
                }, AgeGatingFragment.this.countryInfo, false);
                if (dialogCreateSelectCountryDialog != null) {
                    dialogCreateSelectCountryDialog.show();
                }
            }
        });
        this.dateText = (TextView) view.findViewById(R.id.date);
        this.dateText.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.AgeGatingFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Calendar calendar = Calendar.getInstance();
                Date date = AgeGatingFragment.this.date;
                if (date != null) {
                    calendar.setTime(date);
                }
                DatePickerDialog datePickerDialog = new DatePickerDialog(AgeGatingFragment.this.getContext(), new DatePickerDialog.OnDateSetListener() { // from class: com.narvii.account.AgeGatingFragment.2.1
                    @Override // android.app.DatePickerDialog.OnDateSetListener
                    public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                        Calendar calendar2 = Calendar.getInstance();
                        calendar2.set(1, i);
                        calendar2.set(2, i2);
                        calendar2.set(5, i3);
                        AgeGatingFragment.this.date = calendar2.getTime();
                        AgeGatingFragment.this.updateDate();
                    }
                }, calendar.get(1), calendar.get(2), calendar.get(5));
                datePickerDialog.show();
                datePickerDialog.getDatePicker().setDescendantFocusability(393216);
                datePickerDialog.getDatePicker().setMaxDate(System.currentTimeMillis());
            }
        });
        this.hintText = (TextView) view.findViewById(R.id.hint);
        view.findViewById(R.id.next).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.AgeGatingFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                LogEvent.clickBuilder(AgeGatingFragment.this, ActSemantic.pageEnter).area("Next").send();
                CountryInfoR countryInfoR = AgeGatingFragment.this.countryInfo;
                int i = (countryInfoR == null || !countryInfoR.isGDPR()) ? 13 : 16;
                if (AgeGatingFragment.this.date != null) {
                    Calendar calendar = Calendar.getInstance();
                    calendar.set(1, calendar.get(1) - i);
                    if (AgeGatingFragment.this.date.compareTo(calendar.getTime()) > 0) {
                        AlertDialog alertDialog = new AlertDialog(AgeGatingFragment.this.getContext());
                        alertDialog.setMessage(R.string.age_gating_message);
                        alertDialog.addButton(android.R.string.ok, 0, new View.OnClickListener() { // from class: com.narvii.account.AgeGatingFragment.3.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view3) {
                                AgeGatingFragment.this.getFragmentManager().popBackStack();
                            }
                        });
                        alertDialog.show();
                        return;
                    }
                }
                String stringParam = AgeGatingFragment.this.getStringParam("method");
                if ("Phone".equalsIgnoreCase(stringParam)) {
                    FragmentTransaction fragmentTransactionBeginTransaction = AgeGatingFragment.this.getFragmentManager().beginTransaction();
                    fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                    MobileSignupFragment mobileSignupFragment = new MobileSignupFragment();
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, AccountBaseFragment.SIGN_UP_METHOD_PHONE);
                    mobileSignupFragment.setArguments(bundle2);
                    fragmentTransactionBeginTransaction.replace(R.id.frame, mobileSignupFragment).addToBackStack(null).commitAllowingStateLoss();
                    return;
                }
                if ("Email".equalsIgnoreCase(stringParam)) {
                    FragmentTransaction fragmentTransactionBeginTransaction2 = AgeGatingFragment.this.getFragmentManager().beginTransaction();
                    fragmentTransactionBeginTransaction2.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                    EmailSignupFragment emailSignupFragment = new EmailSignupFragment();
                    Bundle bundle3 = new Bundle();
                    bundle3.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, AccountBaseFragment.SIGN_UP_METHOD_EMAIL);
                    emailSignupFragment.setArguments(bundle3);
                    fragmentTransactionBeginTransaction2.replace(R.id.frame, emailSignupFragment).addToBackStack(null).commitAllowingStateLoss();
                    return;
                }
                if ("Google".equalsIgnoreCase(stringParam)) {
                    ((GoogleLoginFragment) AgeGatingFragment.this.getFragmentManager().findFragmentById(R.id.google_login_fragment)).requestLogin(3);
                } else if ("AutoSignup".equalsIgnoreCase(stringParam)) {
                    ((GoogleLoginFragment) AgeGatingFragment.this.getFragmentManager().findFragmentById(R.id.google_login_fragment)).requirePasswordNext(AgeGatingFragment.this.getStringParam("thirdPartSecret"));
                }
            }
        });
        updateDate();
        updateCountryInfo();
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected void onMobileCheckSuccess(String str) {
        if (getFragmentManager() == null) {
            return;
        }
        SignUpSetPasswordFragment signUpSetPasswordFragment = new SignUpSetPasswordFragment();
        Bundle bundle = new Bundle();
        bundle.putString("validationContext", str);
        signUpSetPasswordFragment.setArguments(bundle);
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(0, 0, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        fragmentTransactionBeginTransaction.replace(R.id.frame, signUpSetPasswordFragment).addToBackStack(null).commitAllowingStateLoss();
    }

    void updateCountryInfo() {
        CountryInfoR countryInfoR = this.countryInfo;
        if (countryInfoR == null) {
            this.countryText.setText(Locale.getDefault().getDisplayCountry());
            this.hintText.setText(R.string.age_gating_hint2);
        } else {
            this.countryText.setText(countryInfoR.countryName);
            this.hintText.setText(this.countryInfo.isGDPR() ? R.string.age_gating_hint1 : R.string.age_gating_hint1_13);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.logging.Page
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void completeLogEvent(com.narvii.logging.LogEvent.Builder r7) {
        /*
            r6 = this;
            super.completeLogEvent(r7)
            java.lang.String r0 = "method"
            java.lang.String r0 = r6.getStringParam(r0)
            int r1 = r0.hashCode()
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            switch(r1) {
                case 67066748: goto L3d;
                case 77090126: goto L33;
                case 561774310: goto L29;
                case 1600313287: goto L1f;
                case 2138589785: goto L15;
                default: goto L14;
            }
        L14:
            goto L47
        L15:
            java.lang.String r1 = "Google"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L47
            r0 = 3
            goto L48
        L1f:
            java.lang.String r1 = "AutoSignup"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L47
            r0 = 4
            goto L48
        L29:
            java.lang.String r1 = "Facebook"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L47
            r0 = 2
            goto L48
        L33:
            java.lang.String r1 = "Phone"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L47
            r0 = 0
            goto L48
        L3d:
            java.lang.String r1 = "Email"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L47
            r0 = 1
            goto L48
        L47:
            r0 = -1
        L48:
            if (r0 == 0) goto L5d
            if (r0 == r5) goto L5a
            if (r0 == r4) goto L57
            if (r0 == r3) goto L54
            if (r0 == r2) goto L54
            r0 = 0
            goto L5f
        L54:
            java.lang.String r0 = "googleSignup"
            goto L5f
        L57:
            java.lang.String r0 = "facebookSignup"
            goto L5f
        L5a:
            java.lang.String r0 = "emailSignup"
            goto L5f
        L5d:
            java.lang.String r0 = "phoneSignup"
        L5f:
            if (r0 == 0) goto L66
            java.lang.String r1 = "signupMethod"
            r7.extraParam(r1, r0)
        L66:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.account.AgeGatingFragment.completeLogEvent(com.narvii.logging.LogEvent$Builder):void");
    }

    void updateDate() {
        this.dateText.setText(DateFormat.getDateInstance(1).format(this.date));
    }
}
