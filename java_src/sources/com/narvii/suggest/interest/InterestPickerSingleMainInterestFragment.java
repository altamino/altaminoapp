package com.narvii.suggest.interest;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.logging.ActSemantic;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.InterestPickerUtils;

/* JADX INFO: loaded from: classes8.dex */
public class InterestPickerSingleMainInterestFragment extends InterestPickerMainInterestFragment {
    private MenuItem nextMenu;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.suggest.interest.InterestPickerSingleMainInterestFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                InterestPickerSingleMainInterestFragment.this.finish();
            } else if (InterestPickerUtils.FINISH_EXISTING_INTEREST_PICKER.equals(intent.getAction())) {
                InterestPickerSingleMainInterestFragment.this.finish();
            }
        }
    };

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.suggest.interest.InterestPickerMainInterestFragment, com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "interest_picker";
    }

    @Override // com.narvii.suggest.interest.InterestPickerMainInterestFragment
    protected String getSubmitAreaName() {
        return "SaveIcon";
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment, com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.suggest.interest.InterestPickerMainInterestFragment
    protected ActSemantic getSubmitSemantic() {
        return ActSemantic.save;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        LocalBroadcastManager.b(getContext()).d(new Intent(InterestPickerFragment.INTEREST_CHANGED));
        super.onDestroy();
    }

    @Override // com.narvii.suggest.interest.InterestPickerMainInterestFragment
    protected void updateButton() {
        MenuItem menuItem = this.nextMenu;
        if (menuItem != null) {
            menuItem.setEnabled(isPickedEnough());
            this.nextMenu.getIcon().setAlpha(isPickedEnough() ? 255 : 128);
        }
    }

    @Override // com.narvii.suggest.interest.InterestPickerMainInterestFragment, com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(InterestPickerUtils.FINISH_EXISTING_INTEREST_PICKER));
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.ok, 0, R.string.ok).setIcon(new ActionBarIcon(getContext(), com.narvii.amino.master.R.string.fa_check)).setShowAsAction(2);
    }

    @Override // com.narvii.suggest.interest.InterestPickerMainInterestFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(com.narvii.amino.master.R.layout.interest_picker_layout_single_main_interest, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            doSubmit();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        this.nextMenu = menu.findItem(R.string.ok);
    }

    @Override // com.narvii.suggest.interest.InterestPickerMainInterestFragment, com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
        setTitle((CharSequence) null);
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment
    protected void showNext(Bundle bundle) {
        finish();
    }
}
