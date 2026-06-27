package com.narvii.util;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;

/* loaded from: classes3.dex */
public class AppUpgradeFragment extends NVFragment {
    AppUpgradeDialog dlg;

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_upgrade, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.dlg == null) {
            this.dlg = new AppUpgradeDialog(this);
        }
        this.dlg.show();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        AppUpgradeDialog appUpgradeDialog = this.dlg;
        if (appUpgradeDialog == null || !appUpgradeDialog.isShowing()) {
            return;
        }
        this.dlg.dismiss();
    }
}
