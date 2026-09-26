package com.narvii.services;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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
import com.narvii.util.http.ProxyStack;
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class DrawerResponseListenerProvider implements AutostartServiceProvider<Callback<Object>>, Callback<Object> {
    WeakReference<Activity> currentActivity;
    boolean joined;
    DownloadLaunchImage latestDownload;

    class DownloadLaunchImage extends Thread {
        File delete;
        File furl;
        File target;
        File tmp;
        String url;

        /* JADX WARN: Code duplicated, block: B:115:? A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:69:0x0102  */
        /* JADX WARN: Code duplicated, block: B:89:0x00f4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:96:0x00f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            HttpURLConnection httpURLConnectionCreateConnection;
            InputStream inputStream;
            DrawerResponseListenerProvider drawerResponseListenerProvider;
            DrawerResponseListenerProvider drawerResponseListenerProvider2;
            try {
                httpURLConnectionCreateConnection = new ProxyStack(NVApplication.instance()).createConnection(new URL(this.url));
                try {
                    inputStream = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
                    try {
                        try {
                            if (DrawerResponseListenerProvider.this.latestDownload != this) {
                                this.tmp.delete();
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Exception unused) {
                                    }
                                }
                                if (httpURLConnectionCreateConnection != null) {
                                    try {
                                        httpURLConnectionCreateConnection.disconnect();
                                    } catch (Exception unused2) {
                                    }
                                }
                                DrawerResponseListenerProvider drawerResponseListenerProvider3 = DrawerResponseListenerProvider.this;
                                if (drawerResponseListenerProvider3.latestDownload == this) {
                                    drawerResponseListenerProvider3.latestDownload = null;
                                    return;
                                }
                                return;
                            }
                            byte[] bArr = new byte[4096];
                            FileOutputStream fileOutputStream = new FileOutputStream(this.tmp);
                            do {
                                int i10 = inputStream.read(bArr);
                                if (i10 != -1) {
                                    fileOutputStream.write(bArr, 0, i10);
                                } else {
                                    fileOutputStream.close();
                                    if (this.tmp.renameTo(this.target)) {
                                        this.delete.delete();
                                        Utils.writeToFile(this.furl, this.url);
                                        Log.i("community launch image download succeed " + this.url);
                                    }
                                    this.tmp.delete();
                                    try {
                                        inputStream.close();
                                    } catch (Exception unused3) {
                                    }
                                    if (httpURLConnectionCreateConnection != null) {
                                        try {
                                            httpURLConnectionCreateConnection.disconnect();
                                        } catch (Exception unused4) {
                                        }
                                    }
                                    drawerResponseListenerProvider2 = DrawerResponseListenerProvider.this;
                                    if (drawerResponseListenerProvider2.latestDownload != this) {
                                        return;
                                    }
                                }
                            } while (DrawerResponseListenerProvider.this.latestDownload == this);
                            this.tmp.delete();
                            try {
                                inputStream.close();
                            } catch (Exception unused5) {
                            }
                            if (httpURLConnectionCreateConnection != null) {
                                try {
                                    httpURLConnectionCreateConnection.disconnect();
                                } catch (Exception unused6) {
                                }
                            }
                            DrawerResponseListenerProvider drawerResponseListenerProvider4 = DrawerResponseListenerProvider.this;
                            if (drawerResponseListenerProvider4.latestDownload == this) {
                                drawerResponseListenerProvider4.latestDownload = null;
                                return;
                            }
                            return;
                        } catch (Exception e) {
                            e = e;
                            Log.w("fail to download community launch image " + this.url, e);
                            this.tmp.delete();
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Exception unused7) {
                                }
                            }
                            if (httpURLConnectionCreateConnection != null) {
                                try {
                                    httpURLConnectionCreateConnection.disconnect();
                                } catch (Exception unused8) {
                                }
                            }
                            drawerResponseListenerProvider2 = DrawerResponseListenerProvider.this;
                            if (drawerResponseListenerProvider2.latestDownload != this) {
                                return;
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        this.tmp.delete();
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception unused9) {
                            }
                        }
                        if (httpURLConnectionCreateConnection != null) {
                            try {
                                httpURLConnectionCreateConnection.disconnect();
                            } catch (Exception unused10) {
                            }
                        }
                        drawerResponseListenerProvider = DrawerResponseListenerProvider.this;
                        if (drawerResponseListenerProvider.latestDownload == this) {
                            throw th;
                        }
                        drawerResponseListenerProvider.latestDownload = null;
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    inputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = null;
                    this.tmp.delete();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (httpURLConnectionCreateConnection != null) {
                        httpURLConnectionCreateConnection.disconnect();
                    }
                    drawerResponseListenerProvider = DrawerResponseListenerProvider.this;
                    if (drawerResponseListenerProvider.latestDownload == this) {
                        throw th;
                    }
                    drawerResponseListenerProvider.latestDownload = null;
                    throw th;
                }
            } catch (Exception e6) {
                e = e6;
                httpURLConnectionCreateConnection = null;
                inputStream = null;
            } catch (Throwable th3) {
                th = th3;
                httpURLConnectionCreateConnection = null;
                inputStream = null;
            }
            drawerResponseListenerProvider2.latestDownload = null;
        }

        DownloadLaunchImage(String str, File file, File file2, File file3, File file4) {
            this.url = str;
            this.tmp = file;
            this.target = file2;
            this.delete = file3;
            this.furl = file4;
        }
    }

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

    @Override // com.narvii.util.Callback
    public void call(Object obj) {
        if (obj instanceof FullCommunityResponse) {
            FullCommunityResponse fullCommunityResponse = (FullCommunityResponse) obj;
            final int i10 = fullCommunityResponse.community.id;
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
                public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list2, String str, ApiResponse apiResponse, Throwable th) {
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

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                    ((AccountService) NVApplication.instance().getService("account")).updateProfile(userResponse.user, userResponse.timestamp, true);
                    ((AffiliationsService) NVApplication.instance().getService("affiliations")).opAdd(i10);
                }
            });
            this.joined = true;
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Callback<Object> callback) {
        if (nVContext instanceof Activity) {
            this.currentActivity = new WeakReference<>((Activity) nVContext);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Callback<Object> callback) {
        if (nVContext instanceof Application) {
            this.joined = false;
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
        if (downloadLaunchImage != null && Utils.isEquals(downloadLaunchImage.url, str)) {
            return;
        }
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
