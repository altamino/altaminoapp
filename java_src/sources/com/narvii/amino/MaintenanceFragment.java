package com.narvii.amino;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.account.notice.AccountNotice;
import com.narvii.app.NVFragment;

/* JADX INFO: loaded from: classes11.dex */
public class MaintenanceFragment extends NVFragment {
    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(com.narvii.amino.master.R.layout.maintenance_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((TextView) view.findViewById(com.narvii.amino.master.R.id.text)).setText(getStringParam(AccountNotice.LEVEL_MESSAGE));
    }
}
