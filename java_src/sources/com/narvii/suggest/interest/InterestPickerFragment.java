package com.narvii.suggest.interest;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.birthday.EnterBirthdayFragment;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.StaticViewAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.util.Callback;
import com.narvii.util.Constants;
import com.narvii.util.InterestPickerUtils;
import com.narvii.util.Utils;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class InterestPickerFragment extends NVFragment implements FragmentOnBackListener {
    public static final String INTEREST_CHANGED = "com.narvii.action.INTEREST_CHANGED";
    public static final String PARAM_CAN_SKIP_ALL = "canSkipAll";
    public static final int STEP_BIRTHDAY = 1;
    public static final int STEP_GENDER = 2;
    public static final int STEP_MAIN_INTEREST = 3;
    public static final int STEP_SUB_INTEREST = 4;
    private int step = 1;
    private int interestPickerStyle = 2;
    private boolean forceSelect = true;
    private boolean canSkipAll = false;
    private Bundle data = new Bundle();
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.suggest.interest.InterestPickerFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                InterestPickerFragment.this.finish();
            } else if (InterestPickerUtils.FINISH_EXISTING_INTEREST_PICKER.equals(intent.getAction())) {
                InterestPickerFragment.this.finish();
            }
        }
    };

    public static abstract class InterestPickerBaseFragment extends NVListFragment {
        protected TextView btSkip;
        private InterestPickerFragment parentFragment;

        protected class BottomPaddingAdapter extends StaticViewAdapter {
            private NVAdapter mainAdapter;

            protected BottomPaddingAdapter(NVAdapter nVAdapter) {
                this.mainAdapter = nVAdapter;
                View view = new View(InterestPickerBaseFragment.this.getContext());
                view.setMinimumHeight(getMinimumHeight());
                addViews(view);
            }

            @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
            public int getCount() {
                NVAdapter nVAdapter = this.mainAdapter;
                if (nVAdapter == null || nVAdapter.isEmpty()) {
                    return 0;
                }
                return super.getCount();
            }

            protected int getMinimumHeight() {
                return Utils.dpToPxInt(InterestPickerBaseFragment.this.getContext(), 90.0f);
            }
        }

        protected abstract void doSubmit();

        protected String getNextButtonText(int i10, int i11) {
            return (i11 == 1 || i10 == i11) ? getString(R.string.done) : getString(R.string.next);
        }

        protected int getTotalSteps(int i10) {
            return i10 == 3 ? 3 : 1;
        }

        @Override // com.narvii.app.theme.NVThemeFragment
        public int initNVTheme() {
            return 2;
        }

        protected void doSkip() {
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Skip").send();
            finish();
        }

        protected Bundle getData() {
            InterestPickerFragment interestPickerFragment = this.parentFragment;
            return interestPickerFragment != null ? interestPickerFragment.data : new Bundle();
        }

        @Override // com.narvii.list.NVListFragment
        @NonNull
        protected Drawable getFrameDarkBackgroundDrawable() {
            return new ColorDrawable(0);
        }

        protected String getLanguageCode() {
            String stringParam = getStringParam("contentLanguage");
            return stringParam == null ? ((ContentLanguageService) getService("content_language")).getRequestPrefLanguageWithLocalAsDefault() : stringParam;
        }

        protected void showLast() {
            InterestPickerFragment interestPickerFragment = this.parentFragment;
            if (interestPickerFragment != null) {
                interestPickerFragment.showLast();
            }
        }

        protected void showNext(Bundle bundle) {
            InterestPickerFragment interestPickerFragment = this.parentFragment;
            if (interestPickerFragment != null) {
                if (bundle != null) {
                    interestPickerFragment.data.putAll(bundle);
                }
                this.parentFragment.showNext();
            }
        }

        protected boolean showSkip() {
            InterestPickerFragment interestPickerFragment = this.parentFragment;
            if (interestPickerFragment != null) {
                return interestPickerFragment.canSkipAll;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onViewCreated$0(View view) {
            showLast();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onViewCreated$1(View view) {
            doSubmit();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onViewCreated$2(View view) {
            doSkip();
        }

        @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            Fragment parentFragment = getParentFragment();
            if (parentFragment instanceof InterestPickerFragment) {
                this.parentFragment = (InterestPickerFragment) parentFragment;
            }
        }

        @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
        public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
            int i10;
            super.onViewCreated(view, bundle);
            View viewFindViewById = view.findViewById(R.id.actionbar_back);
            int i11 = 8;
            int stackSize = 1;
            if (viewFindViewById != null) {
                InterestPickerFragment interestPickerFragment = this.parentFragment;
                if (interestPickerFragment != null && interestPickerFragment.forceSelect && this.parentFragment.getStackSize() <= 1) {
                    viewFindViewById.setVisibility(8);
                }
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.suggest.interest.c
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f2743a.lambda$onViewCreated$0(view2);
                    }
                });
            }
            TextView textView = (TextView) view.findViewById(R.id.next_button);
            if (textView != null) {
                InterestPickerFragment interestPickerFragment2 = this.parentFragment;
                if (interestPickerFragment2 != null) {
                    stackSize = interestPickerFragment2.getStackSize();
                }
                InterestPickerFragment interestPickerFragment3 = this.parentFragment;
                if (interestPickerFragment3 != null) {
                    i10 = interestPickerFragment3.interestPickerStyle;
                } else {
                    i10 = 0;
                }
                textView.setText(getNextButtonText(stackSize, getTotalSteps(i10)));
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.suggest.interest.d
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f2744a.lambda$onViewCreated$1(view2);
                    }
                });
            }
            TextView textView2 = (TextView) view.findViewById(R.id.skip_button);
            this.btSkip = textView2;
            if (textView2 != null) {
                if (showSkip()) {
                    i11 = 0;
                }
                textView2.setVisibility(i11);
                this.btSkip.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.suggest.interest.e
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f2745a.lambda$onViewCreated$2(view2);
                    }
                });
            }
        }
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    private void showStep(int i10) {
        Fragment interestPickerGenderFragment;
        if (i10 == 1) {
            ((AccountService) getService("account")).hasBirthday(new Callback() { // from class: com.narvii.suggest.interest.b
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f2742a.lambda$showStep$0((Boolean) obj);
                }
            });
            return;
        }
        if (i10 == 2) {
            interestPickerGenderFragment = new InterestPickerGenderFragment();
        } else if (i10 != 3) {
            interestPickerGenderFragment = i10 != 4 ? null : new InterestPickerSubInterestFragment();
        } else {
            interestPickerGenderFragment = new InterestPickerMainInterestFragment();
        }
        if (interestPickerGenderFragment != null) {
            showFragment(interestPickerGenderFragment);
        } else {
            finish();
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    protected void showLast() {
        if (onBackPressed(null)) {
            return;
        }
        finish();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        LocalBroadcastManager.b(getContext()).d(new Intent(INTEREST_CHANGED));
        super.onDestroy();
    }

    protected void showNext() {
        if (this.interestPickerStyle != 3) {
            finish();
            return;
        }
        int i10 = this.step + 1;
        this.step = i10;
        showStep(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getStackSize() {
        return getChildFragmentManager().u0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showStep$0(Boolean bool) {
        if (bool.booleanValue()) {
            int i10 = this.step + 1;
            this.step = i10;
            showStep(i10);
        } else {
            Intent intent = FragmentWrapperActivity.intent(EnterBirthdayFragment.class);
            intent.putExtra(Constants.PARAM_BIRTHDAY_TYPE, EnterBirthdayFragment.BirthdayType.WELCOME);
            intent.putExtra("canSkipAll", this.canSkipAll);
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, EnterBirthdayFragment.REQUEST_CONFIRM_BIRTHDAY);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 3143) {
            if (i11 != -1 && i11 != 2) {
                if (i11 == 3) {
                    LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Skip").send();
                    finish();
                    return;
                } else {
                    if (i11 == 0) {
                        finish();
                        return;
                    }
                    return;
                }
            }
            int i12 = this.step + 1;
            this.step = i12;
            showStep(i12);
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (getChildFragmentManager().u0() <= 1) {
            if (this.forceSelect) {
                return true;
            }
            return false;
        }
        this.step--;
        getChildFragmentManager().i1();
        return true;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.interestPickerStyle = getIntParam("interestPickerStyle", 2);
        this.data.clear();
        this.canSkipAll = getBooleanParam("canSkipAll", false);
        if (bundle == null) {
            this.step = 1;
        } else {
            this.step = bundle.getInt("currentStep");
            this.data.putAll(bundle);
        }
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(InterestPickerUtils.FINISH_EXISTING_INTEREST_PICKER));
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.interest_picker_layout_container, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("currentStep", this.step);
        bundle.putAll(this.data);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (getActivity() != null && getActivity().getActionBar() != null) {
            getActivity().getActionBar().hide();
        }
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
        setTitle((CharSequence) null);
        if (getStackSize() == 0) {
            showStep(this.step);
        }
    }

    public void showFragment(Fragment fragment) {
        if (!isAdded()) {
            return;
        }
        FragmentTransaction fragmentTransactionQ = getChildFragmentManager().q();
        fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        fragmentTransactionQ.u(R.id.frame, fragment).h(null).k();
    }
}
