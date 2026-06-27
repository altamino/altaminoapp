package com.narvii.amino.page;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.drawer.DrawerHost;
import com.narvii.util.ViewUtils;

/* loaded from: classes2.dex */
public class EmptyHomePage extends NVFragment implements DrawerHost.RequestCommunityInfoListener {
    private DrawerHost drawerHost;
    View empty;
    View progress;

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.drawerHost = (DrawerHost) getService("drawerHost");
        DrawerHost drawerHost = this.drawerHost;
        if (drawerHost != null) {
            drawerHost.addRequestCommunityInfoListener(this);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_home_empty, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.empty = view.findViewById(android.R.id.empty);
        ((TextView) view.findViewById(R.id.empty_text)).setText(R.string.home_no_home_page);
        view.findViewById(R.id.empty_retry).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.page.EmptyHomePage.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ((DrawerHost) EmptyHomePage.this.getService("drawerHost")).refreshCommunityInfo(0L);
            }
        });
        this.progress = view.findViewById(android.R.id.progress);
        updateViews();
    }

    @Override // com.narvii.drawer.DrawerHost.RequestCommunityInfoListener
    public void onRequestCommunityStatusChanged() {
        updateViews();
    }

    private void updateViews() {
        DrawerHost drawerHost = this.drawerHost;
        boolean z = drawerHost != null && drawerHost.isRequestingCommunity();
        ViewUtils.show(this.progress, z);
        ViewUtils.show(this.empty, !z);
    }
}
