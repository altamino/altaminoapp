package com.narvii.amino.page;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.drawer.DrawerHost;
import com.narvii.util.ViewUtils;

/* JADX INFO: loaded from: classes6.dex */
public class EmptyHomePage extends NVFragment implements DrawerHost.RequestCommunityInfoListener {
    private DrawerHost drawerHost;
    View empty;
    View progress;

    private void updateViews() {
        DrawerHost drawerHost = this.drawerHost;
        boolean z6 = drawerHost != null && drawerHost.isRequestingCommunity();
        ViewUtils.show(this.progress, z6);
        ViewUtils.show(this.empty, !z6);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DrawerHost drawerHost = (DrawerHost) getService("drawerHost");
        this.drawerHost = drawerHost;
        if (drawerHost != null) {
            drawerHost.addRequestCommunityInfoListener(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_home_empty, viewGroup, false);
    }

    @Override // com.narvii.drawer.DrawerHost.RequestCommunityInfoListener
    public void onRequestCommunityStatusChanged() {
        updateViews();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
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
}
