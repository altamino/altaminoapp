package com.narvii.birthday;

import android.app.ActionBar;
import android.app.DatePickerDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.narvii.account.mobile.CountryInfoR;
import com.narvii.account.mobile.MobileCountryInfoHelper;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.util.Constants;
import com.narvii.util.DateUtils;
import com.safedk.android.utils.Logger;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class EnterBirthdayFragment extends NVFragment implements FragmentOnBackListener {
    public static final int BIRTHDATE_ALREADY_SET = 2;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String PARAM_CAN_SKIP_ALL = "canSkipAll";
    public static final int REQUEST_CONFIRM_BIRTHDAY = 3143;
    public static final int WELCOME_SKIPPED = 3;
    private Date birthdate;
    private BirthdayType birthdayType;
    private boolean canSkipAll = true;

    @Nullable
    private CountryInfoR countryInfo;
    private Button saveBtn;
    private TextView viewBirthday;

    public enum BirthdayType {
        SIGNUP,
        LIVE,
        WELCOME,
        GLOBAL_PROFILE;

        private static final /* synthetic */ z7.a $ENTRIES = z7.b.a(values());

        @NotNull
        public static z7.a<BirthdayType> getEntries() {
            return $ENTRIES;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BirthdayType.values().length];
            try {
                iArr[BirthdayType.LIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BirthdayType.WELCOME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BirthdayType.SIGNUP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "EnterBirthday";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleBirthdayClick$lambda$8(EnterBirthdayFragment this$0, DatePicker datePicker, int i10, int i11, int i12) {
        t.j(this$0, "this$0");
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, i10);
        calendar.set(2, i11);
        calendar.set(5, i12);
        Date time = calendar.getTime();
        t.i(time, "getTime(...)");
        this$0.birthdate = time;
        this$0.updateBirthdayLabel();
    }

    private final void handleSaveClick() {
        Intent intent = FragmentWrapperActivity.intent(ConfirmBirthdayFragment.class);
        BirthdayType birthdayType = this.birthdayType;
        Date date = null;
        if (birthdayType == null) {
            t.B("birthdayType");
            birthdayType = null;
        }
        intent.putExtra(Constants.PARAM_BIRTHDAY_TYPE, birthdayType);
        Date date2 = this.birthdate;
        if (date2 == null) {
            t.B("birthdate");
        } else {
            date = date2;
        }
        intent.putExtra(Constants.PARAM_BIRTHDAY, date);
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, REQUEST_CONFIRM_BIRTHDAY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initBirthday$lambda$5(EnterBirthdayFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.handleBirthdayClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$1$lambda$0(EnterBirthdayFragment this$0, View view) {
        t.j(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$3$lambda$2(EnterBirthdayFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.setResult(3);
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$4(EnterBirthdayFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.handleSaveClick();
    }

    private final void updateBirthdayLabel() {
        int i10;
        Date date = this.birthdate;
        Date date2 = null;
        if (date == null) {
            t.B("birthdate");
            date = null;
        }
        if (DateUtils.isToday(date)) {
            TextView textView = this.viewBirthday;
            if (textView == null) {
                t.B("viewBirthday");
                textView = null;
            }
            textView.setText(R.string.select);
            i10 = R.color.gray_66;
        } else {
            TextView textView2 = this.viewBirthday;
            if (textView2 == null) {
                t.B("viewBirthday");
                textView2 = null;
            }
            DateFormat dateInstance = DateFormat.getDateInstance(1);
            Date date3 = this.birthdate;
            if (date3 == null) {
                t.B("birthdate");
                date3 = null;
            }
            textView2.setText(dateInstance.format(date3));
            i10 = R.color.white;
        }
        TextView textView3 = this.viewBirthday;
        if (textView3 == null) {
            t.B("viewBirthday");
            textView3 = null;
        }
        textView3.setTextColor(ContextCompat.getColor(getContext(), i10));
        Button button = this.saveBtn;
        if (button == null) {
            t.B("saveBtn");
            button = null;
        }
        Date date4 = this.birthdate;
        if (date4 == null) {
            t.B("birthdate");
        } else {
            date2 = date4;
        }
        button.setEnabled(!DateUtils.isToday(date2));
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        BirthdayType birthdayType = this.birthdayType;
        if (birthdayType == null) {
            t.B("birthdayType");
            birthdayType = null;
        }
        return birthdayType == BirthdayType.WELCOME;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_enter_birthday, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intent intent;
        ActionBar actionBar;
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        FragmentActivity activity = getActivity();
        if (activity != null && (actionBar = activity.getActionBar()) != null) {
            actionBar.hide();
        }
        this.canSkipAll = getBooleanParam("canSkipAll", true);
        FragmentActivity activity2 = getActivity();
        Serializable serializableExtra = (activity2 == null || (intent = activity2.getIntent()) == null) ? null : intent.getSerializableExtra(Constants.PARAM_BIRTHDAY_TYPE);
        t.h(serializableExtra, "null cannot be cast to non-null type com.narvii.birthday.EnterBirthdayFragment.BirthdayType");
        this.birthdayType = (BirthdayType) serializableExtra;
        initView(view);
        initCountry();
        initBirthday(view);
        hideBottomAdsView();
    }

    private final void handleBirthdayClick() {
        Calendar calendar = Calendar.getInstance();
        Date date = this.birthdate;
        if (date == null) {
            t.B("birthdate");
            date = null;
        }
        calendar.setTime(date);
        DatePickerDialog datePickerDialog = new DatePickerDialog(getContext(), new DatePickerDialog.OnDateSetListener() { // from class: com.narvii.birthday.i
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public final void onDateSet(DatePicker datePicker, int i10, int i11, int i12) {
                EnterBirthdayFragment.handleBirthdayClick$lambda$8(this.f1840a, datePicker, i10, i11, i12);
            }
        }, calendar.get(1), calendar.get(2), calendar.get(5));
        datePickerDialog.show();
        DatePicker datePicker = datePickerDialog.getDatePicker();
        datePicker.setDescendantFocusability(393216);
        datePicker.setMaxDate(System.currentTimeMillis());
    }

    private final void initBirthday(View view) {
        Date time = Calendar.getInstance().getTime();
        t.i(time, "getTime(...)");
        this.birthdate = time;
        View viewFindViewById = view.findViewById(R.id.birthday);
        t.i(viewFindViewById, "findViewById(...)");
        TextView textView = (TextView) viewFindViewById;
        this.viewBirthday = textView;
        TextView textView2 = null;
        if (textView == null) {
            t.B("viewBirthday");
            textView = null;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.birthday.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EnterBirthdayFragment.initBirthday$lambda$5(this.f1839a, view2);
            }
        });
        TextView textView3 = this.viewBirthday;
        if (textView3 == null) {
            t.B("viewBirthday");
            textView3 = null;
        }
        textView3.setText(R.string.select);
        TextView textView4 = this.viewBirthday;
        if (textView4 == null) {
            t.B("viewBirthday");
        } else {
            textView2 = textView4;
        }
        textView2.setTextColor(ContextCompat.getColor(getContext(), R.color.gray_66));
    }

    private final void initCountry() {
        Locale locale = Locale.getDefault();
        for (CountryInfoR countryInfoR : MobileCountryInfoHelper.getCountryList()) {
            if (kotlin.text.t.w(countryInfoR.isoCode, locale.getCountry(), true)) {
                this.countryInfo = countryInfoR;
                return;
            }
        }
    }

    private final void initView(View view) {
        int i10;
        String string;
        ImageView imageView = (ImageView) view.findViewById(R.id.actionbar_back);
        BirthdayType birthdayType = this.birthdayType;
        Button button = null;
        if (birthdayType == null) {
            t.B("birthdayType");
            birthdayType = null;
        }
        int i11 = 8;
        if (birthdayType == BirthdayType.WELCOME) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        imageView.setVisibility(i10);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.birthday.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EnterBirthdayFragment.initView$lambda$1$lambda$0(this.f1841a, view2);
            }
        });
        BirthdayType birthdayType2 = this.birthdayType;
        if (birthdayType2 == null) {
            t.B("birthdayType");
            birthdayType2 = null;
        }
        int i12 = WhenMappings.$EnumSwitchMapping$0[birthdayType2.ordinal()];
        if (i12 != 1) {
            if (i12 != 2) {
                if (i12 != 3) {
                    string = "";
                } else {
                    string = getString(R.string.account_signup);
                    t.i(string, "getString(...)");
                }
            } else {
                string = getString(R.string.welcome);
                t.i(string, "getString(...)");
                TextView textView = (TextView) view.findViewById(R.id.skip);
                if (this.canSkipAll) {
                    i11 = 0;
                }
                textView.setVisibility(i11);
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.birthday.k
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        EnterBirthdayFragment.initView$lambda$3$lambda$2(this.f1842a, view2);
                    }
                });
            }
        } else {
            string = getString(R.string.tmg_go_live);
            t.i(string, "getString(...)");
            ((TextView) view.findViewById(R.id.description)).setText(getString(R.string.birthday_tmg_desc));
        }
        ((TextView) view.findViewById(R.id.title)).setText(string);
        View viewFindViewById = view.findViewById(R.id.save);
        t.i(viewFindViewById, "findViewById(...)");
        Button button2 = (Button) viewFindViewById;
        this.saveBtn = button2;
        if (button2 == null) {
            t.B("saveBtn");
            button2 = null;
        }
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.birthday.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                EnterBirthdayFragment.initView$lambda$4(this.f1843a, view2);
            }
        });
        Button button3 = this.saveBtn;
        if (button3 == null) {
            t.B("saveBtn");
        } else {
            button = button3;
        }
        button.setEnabled(false);
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
