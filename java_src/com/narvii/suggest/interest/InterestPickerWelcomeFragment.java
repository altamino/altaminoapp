package com.narvii.suggest.interest;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.util.InterestPickerUtils;

/* loaded from: classes3.dex */
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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "InterestPickerWelcome";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(InterestPickerUtils.FINISH_EXISTING_INTEREST_PICKER));
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_interest_picker_welcome, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.findViewById(R.id.start).setOnClickListener(this);
        view.findViewById(R.id.skip).setOnClickListener(this);
        if (getActivity() != null && getActivity().getActionBar() != null) {
            getActivity().getActionBar().hide();
        }
        setTitle((CharSequence) null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.skip) {
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Skip").send();
            finish();
        } else {
            if (id != R.id.start) {
                return;
            }
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Start").send();
            Intent intent = FragmentWrapperActivity.intent(InterestPickerFragment.class);
            intent.putExtra("interestPickerStyle", getIntParam("interestPickerStyle"));
            intent.putExtra("contentLanguage", getStringParam("contentLanguage"));
            intent.putExtra("canSkipAll", true);
            startActivity(intent);
            finish();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }
}
