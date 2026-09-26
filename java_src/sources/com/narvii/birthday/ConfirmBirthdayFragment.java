package com.narvii.birthday;

import android.app.ActionBar;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BasicProfileResponse;
import com.narvii.util.Constants;
import com.narvii.util.DateUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.safedk.android.utils.Logger;
import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class ConfirmBirthdayFragment extends NVFragment {
    private Date birthdate;
    private EnterBirthdayFragment.BirthdayType birthdayType;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EnterBirthdayFragment.BirthdayType.values().length];
            try {
                iArr[EnterBirthdayFragment.BirthdayType.LIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnterBirthdayFragment.BirthdayType.WELCOME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnterBirthdayFragment.BirthdayType.SIGNUP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "ConfirmBirthday";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    private final void confirmBirthday() {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.setCancelable(false);
        progressDialog.setCanceledOnTouchOutside(false);
        progressDialog.show();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(Constants.BIRTHDAY_FORMAT, Locale.getDefault());
        Date date = this.birthdate;
        if (date == null) {
            t.B("birthdate");
            date = null;
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().global().post().path("/persona/profile/birthday").param("birthday", simpleDateFormat.format(date)).build(), new ApiResponseListener<BasicProfileResponse>(BasicProfileResponse.class) { // from class: com.narvii.birthday.ConfirmBirthdayFragment.confirmBirthday.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable BasicProfileResponse basicProfileResponse) throws Exception {
                super.onFinish(apiRequest, basicProfileResponse);
                SharedPreferences.Editor editorEdit = ((AccountService) ConfirmBirthdayFragment.this.getService("account")).getPrefs().edit();
                Date date2 = ConfirmBirthdayFragment.this.birthdate;
                if (date2 == null) {
                    t.B("birthdate");
                    date2 = null;
                }
                editorEdit.putInt(AccountService.PREFS_AGE, Utils.getAge(date2));
                editorEdit.apply();
                progressDialog.dismiss();
                ConfirmBirthdayFragment.this.setResult(-1);
                ConfirmBirthdayFragment.this.finish();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                progressDialog.dismiss();
                if (i10 == 106) {
                    ConfirmBirthdayFragment.this.goToAccountDeleted();
                } else if (i10 != 110) {
                    NVToast.makeText(ConfirmBirthdayFragment.this.getContext(), str, 0).show();
                } else {
                    ConfirmBirthdayFragment.this.setResult(2);
                    ConfirmBirthdayFragment.this.finish();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void goToAccountDeleted() {
        Intent intent = FragmentWrapperActivity.intent(AccountDeletedFragment.class);
        EnterBirthdayFragment.BirthdayType birthdayType = this.birthdayType;
        if (birthdayType == null) {
            t.B("birthdayType");
            birthdayType = null;
        }
        intent.putExtra(Constants.PARAM_BIRTHDAY_TYPE, birthdayType);
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    private final void handleConfirmClick() {
        EnterBirthdayFragment.BirthdayType birthdayType = this.birthdayType;
        Date date = null;
        if (birthdayType == null) {
            t.B("birthdayType");
            birthdayType = null;
        }
        if (birthdayType != EnterBirthdayFragment.BirthdayType.LIVE) {
            EnterBirthdayFragment.BirthdayType birthdayType2 = this.birthdayType;
            if (birthdayType2 == null) {
                t.B("birthdayType");
                birthdayType2 = null;
            }
            if (birthdayType2 != EnterBirthdayFragment.BirthdayType.WELCOME) {
                EnterBirthdayFragment.BirthdayType birthdayType3 = this.birthdayType;
                if (birthdayType3 == null) {
                    t.B("birthdayType");
                    birthdayType3 = null;
                }
                if (birthdayType3 != EnterBirthdayFragment.BirthdayType.GLOBAL_PROFILE) {
                    Intent intent = new Intent();
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(Constants.BIRTHDAY_FORMAT, Locale.getDefault());
                    Date date2 = this.birthdate;
                    if (date2 == null) {
                        t.B("birthdate");
                    } else {
                        date = date2;
                    }
                    intent.putExtra(Constants.PARAM_BIRTHDAY, simpleDateFormat.format(date));
                    l0 l0Var = l0.INSTANCE;
                    setResult(-1, intent);
                    finish();
                    return;
                }
            }
        }
        confirmBirthday();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$0(ConfirmBirthdayFragment this$0, View view) {
        t.j(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$2$lambda$1(ConfirmBirthdayFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.setResult(3);
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$3(ConfirmBirthdayFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.handleConfirmClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$4(ConfirmBirthdayFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.finish();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_confirm_birthday, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intent intent;
        Intent intent2;
        ActionBar actionBar;
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        FragmentActivity activity = getActivity();
        if (activity != null && (actionBar = activity.getActionBar()) != null) {
            actionBar.hide();
        }
        FragmentActivity activity2 = getActivity();
        Serializable serializableExtra = null;
        Serializable serializableExtra2 = (activity2 == null || (intent2 = activity2.getIntent()) == null) ? null : intent2.getSerializableExtra(Constants.PARAM_BIRTHDAY_TYPE);
        t.h(serializableExtra2, "null cannot be cast to non-null type com.narvii.birthday.EnterBirthdayFragment.BirthdayType");
        this.birthdayType = (EnterBirthdayFragment.BirthdayType) serializableExtra2;
        FragmentActivity activity3 = getActivity();
        if (activity3 != null && (intent = activity3.getIntent()) != null) {
            serializableExtra = intent.getSerializableExtra(Constants.PARAM_BIRTHDAY);
        }
        t.h(serializableExtra, "null cannot be cast to non-null type java.util.Date");
        this.birthdate = (Date) serializableExtra;
        initView(view);
        hideBottomAdsView();
    }

    private final void initView(View view) {
        String string;
        ((ImageView) view.findViewById(R.id.actionbar_back)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.birthday.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ConfirmBirthdayFragment.initView$lambda$0(this.f1835a, view2);
            }
        });
        EnterBirthdayFragment.BirthdayType birthdayType = this.birthdayType;
        Date date = null;
        if (birthdayType == null) {
            t.B("birthdayType");
            birthdayType = null;
        }
        int i10 = WhenMappings.$EnumSwitchMapping$0[birthdayType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    string = "";
                } else {
                    string = getString(R.string.account_signup);
                    t.i(string, "getString(...)");
                }
            } else {
                string = getString(R.string.welcome);
                t.i(string, "getString(...)");
                TextView textView = (TextView) view.findViewById(R.id.skip);
                textView.setVisibility(0);
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.birthday.e
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        ConfirmBirthdayFragment.initView$lambda$2$lambda$1(this.f1836a, view2);
                    }
                });
            }
        } else {
            string = getString(R.string.tmg_go_live);
            t.i(string, "getString(...)");
        }
        ((TextView) view.findViewById(R.id.title)).setText(string);
        TextView textView2 = (TextView) view.findViewById(R.id.birthday);
        DateFormat dateInstance = DateFormat.getDateInstance(1);
        Date date2 = this.birthdate;
        if (date2 == null) {
            t.B("birthdate");
            date2 = null;
        }
        textView2.setText(dateInstance.format(date2));
        TextView textView3 = (TextView) view.findViewById(R.id.ageTV);
        Date date3 = this.birthdate;
        if (date3 == null) {
            t.B("birthdate");
        } else {
            date = date3;
        }
        textView3.setText(String.valueOf(DateUtils.ageFromBirthDate(date)));
        ((Button) view.findViewById(R.id.confirm)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.birthday.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ConfirmBirthdayFragment.initView$lambda$3(this.f1837a, view2);
            }
        });
        ((Button) view.findViewById(R.id.change_date)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.birthday.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ConfirmBirthdayFragment.initView$lambda$4(this.f1838a, view2);
            }
        });
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 3143) {
            setResult(i11, intent);
            if (i11 != 0) {
                finish();
            }
        }
    }
}
