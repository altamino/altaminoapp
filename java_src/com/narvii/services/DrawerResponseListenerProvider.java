package com.narvii.services;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.community.FullCommunityResponse;
import com.narvii.config.ConfigService;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes.dex */
public class DrawerResponseListenerProvider implements AutostartServiceProvider<Callback<Object>>, Callback<Object> {
    WeakReference<Activity> currentActivity;
    boolean joined;
    DownloadLaunchImage latestDownload;

    @Override // com.narvii.services.ServiceProvider
    public Callback<Object> create(NVContext nVContext) {
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Callback<Object> callback) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Callback<Object> callback) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Callback<Object> callback) {
        if (nVContext instanceof Application) {
            this.joined = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Callback<Object> callback) {
        if (nVContext instanceof Activity) {
            this.currentActivity = new WeakReference<>((Activity) nVContext);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Callback<Object> callback) {
        if (nVContext instanceof Activity) {
            WeakReference<Activity> weakReference = this.currentActivity;
            if ((weakReference == null ? null : weakReference.get()) == nVContext) {
                this.currentActivity = null;
            }
        }
    }

    @Override // com.narvii.util.Callback
    public void call(Object obj) throws IOException {
        if (obj instanceof FullCommunityResponse) {
            FullCommunityResponse fullCommunityResponse = (FullCommunityResponse) obj;
            final int i = fullCommunityResponse.community.id;
            ThemePackService themePackService = (ThemePackService) NVApplication.instance().getService("themePack");
            Community community = fullCommunityResponse.community;
            themePackService.require(community.id, community.themePackRevision(), fullCommunityResponse.community.themePackUrl(), true);
            List<Media> list = fullCommunityResponse.community.promotionalMediaList;
            if (list != null && list.size() > 0) {
                downloadLaunchImage(fullCommunityResponse.community.promotionalMediaList.get(0).url);
            }
            AccountService accountService = (AccountService) NVApplication.instance().getService("account");
            WeakReference<Activity> weakReference = this.currentActivity;
            Activity activity = weakReference == null ? null : weakReference.get();
            if (this.joined || activity == null || fullCommunityResponse.currentUserInfo != null || !accountService.hasAccount()) {
                return;
            }
            Log.w("auto join community");
            ((ApiService) NVApplication.instance().getService("api")).exec(ApiRequest.builder().post().path("/community/join").build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.services.DrawerResponseListenerProvider.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                    ((AccountService) NVApplication.instance().getService("account")).updateProfile(userResponse.user, userResponse.timestamp, true);
                    ((AffiliationsService) NVApplication.instance().getService("affiliations")).opAdd(i);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list2, String str, ApiResponse apiResponse, Throwable th) {
                    if (apiResponse != null) {
                        WeakReference<Activity> weakReference2 = DrawerResponseListenerProvider.this.currentActivity;
                        Activity activity2 = weakReference2 == null ? null : weakReference2.get();
                        if (((activity2 instanceof NVContext) && ((ConfigService) ((NVContext) activity2).getService("config")).getCommunityId() == 0) || activity2 == null) {
                            return;
                        }
                        AlertDialog.Builder builder = new AlertDialog.Builder(activity2);
                        builder.setMessage(str);
                        builder.setNegativeButton(R.string.close, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                        builder.show();
                    }
                }
            });
            this.joined = true;
        }
    }

    private void downloadLaunchImage(String str) {
        File file;
        File file2;
        File file3 = (File) NVApplication.instance().getService("filesDir");
        File file4 = new File(file3, "community-launch-image.u");
        if (Utils.isEquals(str, Utils.readStringFromFile(file4))) {
            return;
        }
        DownloadLaunchImage downloadLaunchImage = this.latestDownload;
        if (downloadLaunchImage == null || !Utils.isEquals(downloadLaunchImage.url, str)) {
            if (Utils.isGif(str)) {
                file2 = new File(file3, "community-launch-image.gif");
                file = new File(file3, "community-launch-image.jpg");
            } else {
                file = new File(file3, "community-launch-image.gif");
                file2 = new File(file3, "community-launch-image.jpg");
            }
            DownloadLaunchImage downloadLaunchImage2 = new DownloadLaunchImage(str, new File(file3, "community-launch-image.t"), file2, file, file4);
            this.latestDownload = downloadLaunchImage2;
            downloadLaunchImage2.start();
        }
    }

    class DownloadLaunchImage extends Thread {
        File delete;
        File furl;
        File target;
        File tmp;
        String url;

        DownloadLaunchImage(String str, File file, File file2, File file3, File file4) {
            this.url = str;
            this.tmp = file;
            this.target = file2;
            this.delete = file3;
            this.furl = file4;
        }

        /* JADX WARN: Removed duplicated region for block: B:102:0x0105 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:128:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:90:0x0117  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x010c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.services.DrawerResponseListenerProvider.DownloadLaunchImage.run():void");
        }
    }
}
