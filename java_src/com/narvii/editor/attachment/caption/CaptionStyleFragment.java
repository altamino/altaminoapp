package com.narvii.editor.attachment.caption;

import com.narvii.asset.IAsset;
import com.narvii.editor.utils.MeisheUtils;
import com.narvii.video.attachment.caption.CaptionEditListener;
import com.narvii.video.attachment.caption.CaptionStyleBaseFragment;
import java.io.File;

/* loaded from: classes2.dex */
public class CaptionStyleFragment extends CaptionStyleBaseFragment {
    @Override // com.narvii.asset.OnAssetSelectListener
    public boolean onAssetSelected(IAsset iAsset, File file) {
        String strInstallAsset;
        if (iAsset.isNone()) {
            strInstallAsset = null;
        } else {
            strInstallAsset = MeisheUtils.installAsset(file, 2, MeisheUtils.CAPTION_STYLE);
            if (strInstallAsset == null) {
                return false;
            }
        }
        if (!(getParentFragment() instanceof CaptionEditListener)) {
            return true;
        }
        ((CaptionEditListener) getParentFragment()).onStyleChanged(strInstallAsset, iAsset.id());
        return true;
    }
}
