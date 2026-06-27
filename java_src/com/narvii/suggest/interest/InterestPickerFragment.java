package com.narvii.suggest.interest;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.LocalBroadcastManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.StaticViewAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.util.InterestPickerUtils;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class InterestPickerFragment extends NVFragment implements FragmentOnBackListener {
    public static final String INTEREST_CHANGED = "com.narvii.action.INTEREST_CHANGED";
    public static final int STEP_BASIC_INFO = 1;
    public static final int STEP_MAIN_INTEREST = 2;
    public static final int STEP_SUB_INTEREST = 3;
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

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.interestPickerStyle = getIntParam("interestPickerStyle", 2);
        this.data.clear();
        this.canSkipAll = getBooleanParam("canSkipAll", false);
        if (bundle == null) {
            if (this.interestPickerStyle == 4) {
                this.step = 2;
            } else {
                this.step = 1;
            }
        } else {
            this.step = bundle.getInt("currentStep");
            this.data.putAll(bundle);
        }
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(InterestPickerUtils.FINISH_EXISTING_INTEREST_PICKER));
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        LocalBroadcastManager.getInstance(getContext()).sendBroadcast(new Intent(INTEREST_CHANGED));
        super.onDestroy();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("currentStep", this.step);
        bundle.putAll(this.data);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.interest_picker_layout_container, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
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

    private void showStep(int i) {
        Fragment interestPickerBaseInfoFragment;
        if (i == 1) {
            interestPickerBaseInfoFragment = new InterestPickerBaseInfoFragment();
        } else if (i == 2) {
            interestPickerBaseInfoFragment = new InterestPickerMainInterestFragment();
        } else {
            interestPickerBaseInfoFragment = i != 3 ? null : new InterestPickerSubInterestFragment();
        }
        if (interestPickerBaseInfoFragment != null) {
            showFragment(interestPickerBaseInfoFragment);
        } else {
            finish();
        }
    }

    public void showFragment(Fragment fragment) {
        if (isAdded()) {
            FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
            fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            fragmentTransactionBeginTransaction.replace(R.id.frame, fragment).addToBackStack(null).commitAllowingStateLoss();
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (getChildFragmentManager().getBackStackEntryCount() <= 1) {
            return this.forceSelect;
        }
        this.step--;
        getChildFragmentManager().popBackStack();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getStackSize() {
        return getChildFragmentManager().getBackStackEntryCount();
    }

    protected void showLast() {
        if (onBackPressed(null)) {
            return;
        }
        finish();
    }

    protected void showNext() {
        int i = this.interestPickerStyle;
        if (i == 3 || i == 4) {
            int i2 = this.step + 1;
            this.step = i2;
            showStep(i2);
            return;
        }
        finish();
    }

    public static abstract class InterestPickerBaseFragment extends NVListFragment {
        private InterestPickerFragment baseFragment;
        protected TextView btSkip;

        protected abstract void doSubmit();

        protected int getTotalSteps(int i) {
            if (i == 3) {
                return 3;
            }
            return i == 4 ? 2 : 1;
        }

        @Override // com.narvii.app.theme.NVThemeFragment
        public int initNVTheme() {
            return 2;
        }

        @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            Fragment parentFragment = getParentFragment();
            if (parentFragment instanceof InterestPickerFragment) {
                this.baseFragment = (InterestPickerFragment) parentFragment;
            }
        }

        @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
        public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
            super.onViewCreated(view, bundle);
            View viewFindViewById = view.findViewById(R.id.actionbar_back);
            if (viewFindViewById != null) {
                InterestPickerFragment interestPickerFragment = this.baseFragment;
                if (interestPickerFragment != null && interestPickerFragment.forceSelect && this.baseFragment.getStackSize() <= 1) {
                    viewFindViewById.setVisibility(8);
                }
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.suggest.interest.-$$Lambda$InterestPickerFragment$InterestPickerBaseFragment$g-0fR3s61vs8qGkyLOWwkc9L28U
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$onViewCreated$0$InterestPickerFragment$InterestPickerBaseFragment(view2);
                    }
                });
            }
            TextView textView = (TextView) view.findViewById(R.id.next_button);
            if (textView != null) {
                InterestPickerFragment interestPickerFragment2 = this.baseFragment;
                int stackSize = interestPickerFragment2 != null ? interestPickerFragment2.getStackSize() : 1;
                InterestPickerFragment interestPickerFragment3 = this.baseFragment;
                int totalSteps = getTotalSteps(interestPickerFragment3 != null ? interestPickerFragment3.interestPickerStyle : 0);
                textView.setText(getNextButtonText(stackSize, totalSteps));
                View viewFindViewById2 = view.findViewById(R.id.next_button_icon);
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setVisibility(stackSize < totalSteps ? 0 : 8);
                }
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.suggest.interest.-$$Lambda$InterestPickerFragment$InterestPickerBaseFragment$3zBT4zTmfRFZ76Zm8TZV98a5MAU
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$onViewCreated$1$InterestPickerFragment$InterestPickerBaseFragment(view2);
                    }
                });
            }
            this.btSkip = (TextView) view.findViewById(R.id.skip_button);
            TextView textView2 = this.btSkip;
            if (textView2 != null) {
                textView2.setVisibility(showSkip() ? 0 : 8);
                this.btSkip.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.suggest.interest.-$$Lambda$InterestPickerFragment$InterestPickerBaseFragment$IydpkGvFuNY7vtt6o6VFeJ_9l_4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$onViewCreated$2$InterestPickerFragment$InterestPickerBaseFragment(view2);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onViewCreated$0$InterestPickerFragment$InterestPickerBaseFragment(View view) {
            showLast();
        }

        public /* synthetic */ void lambda$onViewCreated$1$InterestPickerFragment$InterestPickerBaseFragment(View view) {
            doSubmit();
        }

        public /* synthetic */ void lambda$onViewCreated$2$InterestPickerFragment$InterestPickerBaseFragment(View view) {
            doSkip();
        }

        protected String getNextButtonText(int i, int i2) {
            return (i2 == 1 || i == i2) ? getString(R.string.next) : getString(R.string.step_with_step, Integer.valueOf(i), Integer.valueOf(i2));
        }

        protected void showLast() {
            InterestPickerFragment interestPickerFragment = this.baseFragment;
            if (interestPickerFragment != null) {
                interestPickerFragment.showLast();
            }
        }

        protected void showNext(Bundle bundle) {
            InterestPickerFragment interestPickerFragment = this.baseFragment;
            if (interestPickerFragment != null) {
                if (bundle != null) {
                    interestPickerFragment.data.putAll(bundle);
                }
                this.baseFragment.showNext();
            }
        }

        protected boolean showSkip() {
            InterestPickerFragment interestPickerFragment = this.baseFragment;
            if (interestPickerFragment != null) {
                return interestPickerFragment.canSkipAll;
            }
            return true;
        }

        protected void doSkip() {
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Skip").send();
            finish();
        }

        protected Bundle getData() {
            InterestPickerFragment interestPickerFragment = this.baseFragment;
            if (interestPickerFragment != null) {
                return interestPickerFragment.data;
            }
            return new Bundle();
        }

        protected String getLanguageCode() {
            String stringParam = getStringParam("contentLanguage");
            return stringParam == null ? ((ContentLanguageService) getService("content_language")).getRequestPrefLanguageWithLocalAsDefault() : stringParam;
        }

        @Override // com.narvii.list.NVListFragment
        protected Drawable getFrameDarkBackgroundDrawable() {
            return new ColorDrawable(0);
        }

        protected class BottomPaddingAdapter extends StaticViewAdapter {
            private NVAdapter mainAdapter;

            protected BottomPaddingAdapter(NVAdapter nVAdapter) {
                this.mainAdapter = nVAdapter;
                View view = new View(InterestPickerBaseFragment.this.getContext());
                view.setMinimumHeight(getMinimumHeight());
                addViews(view);
            }

            protected int getMinimumHeight() {
                return Utils.dpToPxInt(InterestPickerBaseFragment.this.getContext(), 90.0f);
            }

            @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
            public int getCount() {
                NVAdapter nVAdapter = this.mainAdapter;
                if (nVAdapter == null || nVAdapter.isEmpty()) {
                    return 0;
                }
                return super.getCount();
            }
        }
    }
}
