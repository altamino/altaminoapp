package com.narvii.master.home.follow;

import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import com.narvii.user.list.FollowersListFragment;
import com.narvii.user.list.UserListExAdapter;

/* loaded from: classes3.dex */
public class GlobalFollowersListFragment extends FollowersListFragment {
    @Override // com.narvii.user.list.FollowersListFragment
    protected boolean showAminoId() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setDarkTheme(true);
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-15528381);
    }

    @Override // com.narvii.user.list.FollowersListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        view.setBackgroundColor(-15528381);
    }

    @Override // com.narvii.user.list.FollowersListFragment, com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        ListAdapter listAdapterCreateAdapter = super.createAdapter(bundle);
        if (listAdapterCreateAdapter instanceof UserListExAdapter) {
            ((UserListExAdapter) listAdapterCreateAdapter).setDarkTheme(true);
        }
        return listAdapterCreateAdapter;
    }
}
