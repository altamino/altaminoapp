package com.narvii.sharedfolder;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.flag.resolve.FlagModeHelper;
import com.narvii.flag.resolve.FlagResolveBar;
import com.narvii.model.SharedFile;
import com.narvii.util.Callback;

/* loaded from: classes3.dex */
public class SharedPhotoDetailFlagModeFragment extends SharedPhotoDetailFragment {
    FlagResolveBar flagResolveBar;
    SharedFile sharedFile;

    @Override // com.narvii.sharedfolder.SharedPhotoDetailFragment
    protected boolean isInFlagMode() {
        return true;
    }

    @Override // com.narvii.sharedfolder.SharedPhotoDetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        FlagModeHelper.saveInstanceStats(this, bundle);
    }

    @Override // com.narvii.sharedfolder.SharedPhotoDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.shared_photo_flag_layout, viewGroup, false);
    }

    @Override // com.narvii.sharedfolder.SharedPhotoDetailFragment, com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.sharedfolder.SharedPhotoDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (isAdded()) {
            this.flagResolveBar = FlagModeHelper.attachFlagModeForCertainView((ViewGroup) getView().findViewById(R.id.flag_container), this);
            this.onFinishListener = new Callback<SharedFile>() { // from class: com.narvii.sharedfolder.SharedPhotoDetailFlagModeFragment.1
                @Override // com.narvii.util.Callback
                public void call(SharedFile sharedFile) {
                    FlagResolveBar flagResolveBar;
                    SharedPhotoDetailFlagModeFragment.this.sharedFile = sharedFile;
                    if ((sharedFile == null || sharedFile.status == 9) && (flagResolveBar = SharedPhotoDetailFlagModeFragment.this.flagResolveBar) != null) {
                        flagResolveBar.showAlreadyResolved();
                    }
                }
            };
        }
    }

    @Override // com.narvii.sharedfolder.SharedPhotoDetailFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i, i2, intent, this.sharedFile, 1);
        super.onActivityResult(i, i2, intent);
    }
}
