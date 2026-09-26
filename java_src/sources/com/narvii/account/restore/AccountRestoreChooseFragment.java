package com.narvii.account.restore;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountUtils;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes8.dex */
public class AccountRestoreChooseFragment extends NVFragment implements View.OnClickListener {
    private void restoreAccount(int i10) {
        Intent intent;
        if (i10 == 1) {
            intent = FragmentWrapperActivity.intent(AccountRestoreEmailFragment.class);
            intent.putExtra(AccountRestoreBaseFragment.KEY_RESTORE_ACCOUNT, i10);
        } else if (i10 == 2) {
            intent = FragmentWrapperActivity.intent(AccoutRestorePhoneFragment.class);
            intent.putExtra(AccountRestoreBaseFragment.KEY_RESTORE_ACCOUNT, i10);
        } else {
            intent = null;
        }
        if (intent != null) {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        }
        if (getActivity() != null) {
            getActivity().finish();
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.email) {
            if (id == R.id.phone) {
                restoreAccount(2);
                return;
            }
            return;
        }
        restoreAccount(1);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getActivity().getActionBar().hide();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_account_restore_third_part_choose, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.bg);
        if (nVImageView != null) {
            nVImageView.setBackgroundResource(R.drawable.master_login_signup_bg);
        }
        view.findViewById(R.id.email).setOnClickListener(this);
        view.findViewById(R.id.phone).setOnClickListener(this);
        AccountUtils accountUtils = new AccountUtils(getContext());
        ((Button) view.findViewById(R.id.email)).setTextColor(accountUtils.getAccountForegroundColor());
        ((Button) view.findViewById(R.id.phone)).setTextColor(accountUtils.getAccountForegroundColor());
        View viewFindViewById = view.findViewById(R.id.actionbar_back);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.restore.AccountRestoreChooseFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AccountRestoreChooseFragment.this.getActivity().finish();
                }
            });
        }
        StatusBarUtils.addMarginTopToContentChild(view.findViewById(R.id.title_bar), getStatusBarOverlaySize());
    }
}
