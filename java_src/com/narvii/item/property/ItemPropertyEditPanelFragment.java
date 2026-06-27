package com.narvii.item.property;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;

/* loaded from: classes.dex */
public class ItemPropertyEditPanelFragment extends NVFragment {
    ItemPropertyEditPanel panel;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.panel = (ItemPropertyEditPanel) layoutInflater.inflate(R.layout.post_item_property_panel, viewGroup, false);
        return this.panel;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        this.panel.setup(getActivity().findViewById(R.id.frame));
    }
}
