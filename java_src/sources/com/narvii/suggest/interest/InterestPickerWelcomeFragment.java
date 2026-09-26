package com.narvii.suggest.interest;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.util.InterestPickerUtils;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class InterestPickerWelcomeFragment extends NVFragment implements View.OnClickListener {
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.suggest.interest.InterestPickerWelcomeFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                InterestPickerWelcomeFragment.this.finish();
            } else if (InterestPickerUtils.FINISH_EXISTING_INTEREST_PICKER.equals(intent.getAction())) {
                InterestPickerWelcomeFragment.this.finish();
            }
        }
    };

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "interest_picker_welcome";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.skip_button) {
            if (id == R.id.start) {
                LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Start").send();
                Intent intent = FragmentWrapperActivity.intent(InterestPickerFragment.class);
                intent.putExtra("interestPickerStyle", getIntParam("interestPickerStyle"));
                intent.putExtra("contentLanguage", getStringParam("contentLanguage"));
                intent.putExtra("canSkipAll", true);
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
                finish();
                return;
            }
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Skip").send();
        finish();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(InterestPickerUtils.FINISH_EXISTING_INTEREST_PICKER));
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_interest_picker_welcome, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.findViewById(R.id.start).setOnClickListener(this);
        view.findViewById(R.id.skip_button).setOnClickListener(this);
        if (getActivity() != null && getActivity().getActionBar() != null) {
            getActivity().getActionBar().hide();
        }
        setTitle((CharSequence) null);
    }
}
