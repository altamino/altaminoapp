package com.narvii.util;

import android.content.SharedPreferences;
import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.ActType;
import com.narvii.logging.LogEvent;

/* JADX INFO: loaded from: classes9.dex */
public class ReferrerTrackUtils {
    private static ReferrerTrackUtils referrerTrackUtils;

    public static ReferrerTrackUtils getInstance() {
        if (referrerTrackUtils == null) {
            referrerTrackUtils = new ReferrerTrackUtils();
        }
        return referrerTrackUtils;
    }

    public void trackReferrer(NVContext nVContext) {
        final SharedPreferences sharedPreferences = (SharedPreferences) nVContext.getService(IncubatorApplication.PREFS_SERVICE_KEY);
        if (!sharedPreferences.contains("referrer_track")) {
            final InstallReferrerClient installReferrerClientBuild = InstallReferrerClient.newBuilder(nVContext.getContext()).build();
            try {
                installReferrerClientBuild.startConnection(new InstallReferrerStateListener() { // from class: com.narvii.util.ReferrerTrackUtils.1
                    @Override // com.android.installreferrer.api.InstallReferrerStateListener
                    public void onInstallReferrerServiceDisconnected() {
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r5v1, types: [boolean] */
                    /* JADX WARN: Type inference failed for: r5v6, types: [com.android.installreferrer.api.InstallReferrerClient] */
                    /* JADX WARN: Type inference failed for: r5v7 */
                    @Override // com.android.installreferrer.api.InstallReferrerStateListener
                    public void onInstallReferrerSetupFinished(int i10) {
                        if (i10 != 0) {
                            return;
                        }
                        boolean z6 = 1;
                        z6 = 1;
                        try {
                            try {
                                ReferrerDetails installReferrer = installReferrerClientBuild.getInstallReferrer();
                                if (installReferrer != null) {
                                    LogEvent.builder(NVApplication.instance()).appEvent().onlyInternalLogging().actType(ActType.auto).actSemantic(ActSemantic.error).extraParam("install_referrer", installReferrer.getInstallReferrer()).send();
                                }
                            } catch (RemoteException e) {
                                e.printStackTrace();
                                Log.e("install_referrer_error", e.toString());
                            }
                        } finally {
                            sharedPreferences.edit().putBoolean("referrer_track", z6).apply();
                            installReferrerClientBuild.endConnection();
                        }
                    }
                });
            } catch (Exception unused) {
            }
        }
    }
}
