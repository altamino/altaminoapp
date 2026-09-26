package com.narvii.item.property;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;

/* JADX INFO: loaded from: classes10.dex */
public class ItemPropertyEditPanelFragment extends NVFragment {
    ItemPropertyEditPanel panel;

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.panel.setup(getActivity().findViewById(R.id.frame));
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ItemPropertyEditPanel itemPropertyEditPanel = (ItemPropertyEditPanel) layoutInflater.inflate(R.layout.post_item_property_panel, viewGroup, false);
        this.panel = itemPropertyEditPanel;
        return itemPropertyEditPanel;
    }
}
