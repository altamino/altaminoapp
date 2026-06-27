package com.narvii.flag.resolve;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.flag.resolve.FlagResolveBar;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;

/* loaded from: classes2.dex */
public class UserProfileFlagModeFragment extends UserProfileFragment implements FlagResolveBar.FlagAttachObject {
    FlagResolveBar flagResolveBar;
    User user;

    @Override // com.narvii.user.profile.UserProfileFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onViewCreated(view, bundle);
        this.flagResolveBar = FlagModeHelper.attachFlagMode(view, this);
        this.onFinishListener = new Callback<User>() { // from class: com.narvii.flag.resolve.UserProfileFlagModeFragment.1
            @Override // com.narvii.util.Callback
            public void call(User user) {
                UserProfileFlagModeFragment.this.user = user;
                if (user == null || user.status == 9) {
                    UserProfileFlagModeFragment.this.flagResolveBar.showAlreadyResolved();
                }
            }
        };
        FlagResolveBar flagResolveBar = this.flagResolveBar;
        if (flagResolveBar != null) {
            flagResolveBar.setLeftText(getString(R.string.hide));
        }
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.user.profile.UserProfileFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i, i2, intent, this.user, 0);
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.flag.resolve.FlagResolveBar.FlagAttachObject
    public NVObject attachObject() {
        return this.user;
    }
}
