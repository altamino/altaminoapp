package com.narvii.sharedfolder;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.flag.resolve.FlagModeHelper;
import com.narvii.flag.resolve.FlagResolveBar;
import com.narvii.model.SharedFile;
import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes2.dex */
public class SharedPhotoDetailFlagModeFragment extends SharedPhotoDetailFragment {
    FlagResolveBar flagResolveBar;
    SharedFile sharedFile;

    @Override // com.narvii.sharedfolder.SharedPhotoDetailFragment, com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.sharedfolder.SharedPhotoDetailFragment
    protected boolean isInFlagMode() {
        return true;
    }

    @Override // com.narvii.sharedfolder.SharedPhotoDetailFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i10, i11, intent, this.sharedFile, 1);
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.sharedfolder.SharedPhotoDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.shared_photo_flag_layout, viewGroup, false);
    }

    @Override // com.narvii.sharedfolder.SharedPhotoDetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        FlagModeHelper.saveInstanceStats(this, bundle);
    }

    @Override // com.narvii.sharedfolder.SharedPhotoDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (isAdded()) {
            this.flagResolveBar = FlagModeHelper.attachFlagModeForCertainView((ViewGroup) getView().findViewById(R.id.flag_container), this);
            this.onFinishListener = new Callback<SharedFile>() { // from class: com.narvii.sharedfolder.SharedPhotoDetailFlagModeFragment.1
                @Override // com.narvii.util.Callback
                public void call(SharedFile sharedFile) {
                    FlagResolveBar flagResolveBar;
                    SharedPhotoDetailFlagModeFragment sharedPhotoDetailFlagModeFragment = SharedPhotoDetailFlagModeFragment.this;
                    sharedPhotoDetailFlagModeFragment.sharedFile = sharedFile;
                    if ((sharedFile == null || sharedFile.status == 9) && (flagResolveBar = sharedPhotoDetailFlagModeFragment.flagResolveBar) != null) {
                        flagResolveBar.showAlreadyResolved();
                    }
                }
            };
        }
    }
}
