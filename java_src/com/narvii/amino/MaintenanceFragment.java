package com.narvii.amino;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.account.notice.AccountNotice;
import com.narvii.app.NVFragment;

/* loaded from: classes2.dex */
public class MaintenanceFragment extends NVFragment {
    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(com.narvii.amino.mastes.R.layout.maintenance_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((TextView) view.findViewById(com.narvii.amino.mastes.R.id.text)).setText(getStringParam(AccountNotice.LEVEL_MESSAGE));
    }
}
