package com.narvii.editor.provider;

import android.os.Build;
import com.meicam.sdk.NvsStreamingContext;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.editor.utils.MeisheUtils;
import com.narvii.media.PhoneImagePickerFragment;
import com.narvii.util.Log;

/* loaded from: classes2.dex */
public class MeisheService {
    private static final String TAG = "MeisheService";
    private NVContext nvContext;

    public MeisheService(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public void init() {
        if (MeisheUtils.isSupportMeishe()) {
            try {
                NvsStreamingContext.init(this.nvContext.getContext(), "assets:/license/3366-136-d4c90018b5e69af4de08e3e3c57a799f.lic", 0);
                if (NVApplication.DEBUG) {
                    try {
                        NvsStreamingContext.SdkVersion sdkVersion = NvsStreamingContext.getInstance().getSdkVersion();
                        Log.d(TAG, "Meishe SDK Version:\n majorVersion : " + sdkVersion.majorVersion + "\n minorVersion : " + sdkVersion.minorVersion + "\n revisionNumber : " + sdkVersion.revisionNumber);
                    } catch (Throwable unused) {
                    }
                }
            } catch (Throwable th) {
                MeisheUtils.isSupportMeishe = false;
                PhoneImagePickerFragment.isSupportMeishe = false;
                Log.e(TAG, "CPU:" + Build.CPU_ABI);
                Log.e(th.getMessage());
            }
        }
    }
}
