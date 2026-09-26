package com.narvii.flag.resolve;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes9.dex */
public class UserProfileFlagModeFragment extends UserProfileFragment implements FlagResolveBar.FlagAttachObject {
    FlagResolveBar flagResolveBar;
    User user;

    @Override // com.narvii.flag.resolve.FlagResolveBar.FlagAttachObject
    public NVObject attachObject() {
        return this.user;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.user.profile.UserProfileFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i10, i11, intent, this.user, 0);
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.user.profile.UserProfileFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.flagResolveBar = FlagModeHelper.attachFlagMode(view, this);
        this.onFinishListener = new Callback<User>() { // from class: com.narvii.flag.resolve.UserProfileFlagModeFragment.1
            @Override // com.narvii.util.Callback
            public void call(User user) {
                UserProfileFlagModeFragment userProfileFlagModeFragment = UserProfileFlagModeFragment.this;
                userProfileFlagModeFragment.user = user;
                if (user == null || user.status == 9) {
                    userProfileFlagModeFragment.flagResolveBar.showAlreadyResolved();
                }
            }
        };
        FlagResolveBar flagResolveBar = this.flagResolveBar;
        if (flagResolveBar != null) {
            flagResolveBar.setLeftText(getString(R.string.hide));
        }
    }
}
