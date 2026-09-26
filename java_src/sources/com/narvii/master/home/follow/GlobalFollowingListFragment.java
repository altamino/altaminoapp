package com.narvii.master.home.follow;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import com.narvii.user.list.FollowingListFragment;
import com.narvii.user.list.UserListExAdapter;

/* JADX INFO: loaded from: classes10.dex */
public class GlobalFollowingListFragment extends FollowingListFragment {
    @Override // com.narvii.user.list.FollowingListFragment
    protected boolean showAminoId() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-15528381);
    }

    @Override // com.narvii.user.list.FollowingListFragment, com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        ListAdapter listAdapterCreateAdapter = super.createAdapter(bundle);
        if (listAdapterCreateAdapter instanceof UserListExAdapter) {
            ((UserListExAdapter) listAdapterCreateAdapter).setDarkTheme(true);
        }
        return listAdapterCreateAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setDarkTheme(true);
    }

    @Override // com.narvii.user.list.FollowingListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.setBackgroundColor(-15528381);
    }
}
