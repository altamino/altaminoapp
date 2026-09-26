package com.narvii.monetization;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;
import com.narvii.list.NVListFragment;

/* JADX INFO: loaded from: classes11.dex */
public abstract class MembershipBasedListFragment extends NVListFragment {
    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        MemberShipExpireWarningFragment.attachTo(this);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_membsership_check_list, viewGroup, false);
    }
}
