package com.narvii.chat;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentActivity;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.video.flag.VVChannelFlagReportDialog;
import com.narvii.flag.model.Flag;
import com.narvii.flag.report.FlagRequestDialog;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.photos.PhotoManager;
import com.narvii.photos.PhotoUploadListener;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.image.Screenshot;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.video.pro.VideoPreProcessing;
import com.narvii.widget.FlagItemLayout;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class ChannelFlagHelper {
    private static final int SCREEN_SHOOT_INTERVAL = 20000;
    private static final String TAG = "ChannelFlagHelper";
    private boolean blockVideo;
    private int channelType;
    private int cid;
    private NVContext context;
    private int flagType;
    private String hintLanguage;
    private boolean isFlagRequestSent;
    private boolean isScreenShotDone = false;
    private String mediaUrl;
    private RtcService rtcService;
    File screenShootFile;
    private boolean shouldTakeScreenShoot;
    private boolean showBlock;
    private String threadId;
    private int uid;
    private User user;

    private class MyFlagRequestDialog extends FlagRequestDialog<ApiResponse> {
        VideoPreProcessing.ProgressCallback callback;
        private boolean needSnapshot;
        private Runnable screenShotCheckRunnable;

        @Override // com.narvii.flag.report.FlagRequestDialog
        public boolean hasPreBlockRequest() {
            return this.needSnapshot;
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        public boolean showBlockUser() {
            return true;
        }

        public MyFlagRequestDialog(Context context, boolean z6) {
            super(context, ApiResponse.class);
            this.screenShotCheckRunnable = new Runnable() { // from class: com.narvii.chat.ChannelFlagHelper.MyFlagRequestDialog.1
                @Override // java.lang.Runnable
                public void run() {
                    if (ChannelFlagHelper.this.isScreenShotDone || ChannelFlagHelper.this.isFlagRequestSent) {
                        return;
                    }
                    ChannelFlagHelper.this.isFlagRequestSent = true;
                    ChannelFlagHelper.this.mediaUrl = null;
                    MyFlagRequestDialog.this.flagWithScreenShoot();
                }
            };
            this.callback = new VideoPreProcessing.ProgressCallback() { // from class: com.narvii.chat.ChannelFlagHelper.MyFlagRequestDialog.3
                @Override // com.narvii.video.pro.VideoPreProcessing.ProgressCallback
                public void onProcessYUV(byte[] bArr, int i10, int i11, int i12) throws Throwable {
                    ChannelFlagHelper.this.isScreenShotDone = true;
                    if (ChannelFlagHelper.this.isFlagRequestSent) {
                        return;
                    }
                    if (bArr == null) {
                        MyFlagRequestDialog.this.flagWithScreenShoot();
                        return;
                    }
                    Log.d(ChannelFlagHelper.TAG, "finish capture");
                    ChannelFlagHelper channelFlagHelper = ChannelFlagHelper.this;
                    channelFlagHelper.screenShootFile = channelFlagHelper.getSnapshotFile();
                    byte[] bArr2 = new byte[(int) (((double) (i10 * i11)) * 1.5d)];
                    ChannelFlagHelper.this.swapYUV420ToNV21(bArr, bArr2, i10, i11);
                    YuvImage yuvImage = new YuvImage(bArr2, 17, i10, i11, null);
                    FileOutputStream fileOutputStream = null;
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(ChannelFlagHelper.this.screenShootFile);
                        try {
                            yuvImage.compressToJpeg(new Rect(0, 0, yuvImage.getWidth(), yuvImage.getHeight()), 70, fileOutputStream2);
                            Utils.safeClose(fileOutputStream2);
                        } catch (Exception unused) {
                            fileOutputStream = fileOutputStream2;
                            Utils.safeClose(fileOutputStream);
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            Utils.safeClose(fileOutputStream);
                            throw th;
                        }
                    } catch (Exception unused2) {
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    Log.d(ChannelFlagHelper.TAG, "begin upload");
                    ChannelFlagHelper channelFlagHelper2 = ChannelFlagHelper.this;
                    channelFlagHelper2.uploadFlagScreenShot(channelFlagHelper2.screenShootFile, new Callback<String>() { // from class: com.narvii.chat.ChannelFlagHelper.MyFlagRequestDialog.3.1
                        @Override // com.narvii.util.Callback
                        public void call(String str) {
                            Log.d(ChannelFlagHelper.TAG, "finish upload");
                            ChannelFlagHelper.this.mediaUrl = str;
                            MyFlagRequestDialog.this.sendFlagRequest();
                        }
                    });
                }
            };
            this.edtRequest.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            this.needSnapshot = z6;
            this.blockCheck.setChecked(ChannelFlagHelper.this.showBlock);
            this.blockLayout.setVisibility(ChannelFlagHelper.this.showBlock ? 0 : 8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void uploadCurFlagScreenShoot(final Callback callback) {
            FragmentActivity activity;
            if (ChannelFlagHelper.this.context instanceof NVFragment) {
                activity = ((NVFragment) ChannelFlagHelper.this.context).getActivity();
            } else {
                activity = ChannelFlagHelper.this.context instanceof NVActivity ? (NVActivity) ChannelFlagHelper.this.context : null;
            }
            if (activity != null) {
                ((PhotoManager) ChannelFlagHelper.this.context.getService("photo")).upload((String) null, Screenshot.takeScreenshot(activity), "flag-image", new PhotoUploadListener() { // from class: com.narvii.chat.ChannelFlagHelper.MyFlagRequestDialog.2
                    @Override // com.narvii.photos.PhotoUploadListener
                    public void onProgress(String str, int i10, int i11) {
                    }

                    @Override // com.narvii.photos.PhotoUploadListener
                    public void onFail(String str, int i10, String str2, Throwable th) {
                        Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.call(Boolean.FALSE);
                        }
                    }

                    @Override // com.narvii.photos.PhotoUploadListener
                    public void onFinish(String str, String str2) {
                        if (callback != null) {
                            ChannelFlagHelper.this.mediaUrl = str2;
                            callback.call(Boolean.TRUE);
                        }
                    }
                });
            } else if (callback != null) {
                callback.call(Boolean.FALSE);
            }
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        public ApiRequest.Builder createApiRequestBuilder(String str) {
            if (ChannelFlagHelper.this.flagType == 200) {
                ChannelFlagHelper.this.flagType = 201;
            }
            ApiRequest.Builder builderParam = ApiRequest.builder().post().communityId(ChannelFlagHelper.this.cid).path("/flag").param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, ChannelFlagHelper.this.user.uid()).param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, 0).param("flagType", Integer.valueOf(ChannelFlagHelper.this.flagType));
            Bundle bundle = new Bundle();
            bundle.putString("chat_id", ChannelFlagHelper.this.threadId);
            bundle.putString("chat_id", "");
            bundle.putString("type", AccountNotice.LEVEL_MESSAGE);
            bundle.putString("reason", Flag.getFlagTypeString(ChannelFlagHelper.this.flagType));
            FirebaseAnalytics.getInstance(getContext()).a("add_flag", bundle);
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode.put(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, ChannelFlagHelper.this.threadId);
            objectNodeCreateObjectNode.put(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, 12);
            if (ChannelFlagHelper.this.mediaUrl != null) {
                ArrayList arrayList = new ArrayList();
                Media media = new Media();
                media.type = 100;
                media.url = ChannelFlagHelper.this.mediaUrl;
                media.caption = null;
                arrayList.add(media);
                objectNodeCreateObjectNode.put("mediaList", JacksonUtils.createArrayNode(JacksonUtils.writeAsString(arrayList)));
            }
            builderParam.param("refObject", objectNodeCreateObjectNode);
            builderParam.param(AccountNotice.LEVEL_MESSAGE, str);
            return builderParam;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void flagWithScreenShoot() {
            SoftKeyboard.hideSoftKeyboard(getContext());
            com.narvii.video.ui.Utils.post(new Runnable() { // from class: com.narvii.chat.ChannelFlagHelper.MyFlagRequestDialog.4
                @Override // java.lang.Runnable
                public void run() {
                    MyFlagRequestDialog.this.uploadCurFlagScreenShoot(new Callback() { // from class: com.narvii.chat.ChannelFlagHelper.MyFlagRequestDialog.4.1
                        @Override // com.narvii.util.Callback
                        public void call(Object obj) {
                            MyFlagRequestDialog.this.sendFlagRequest();
                        }
                    });
                }
            });
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        public void execPreBlockRequest() {
            super.execPreBlockRequest();
            Handler handler = com.narvii.video.ui.Utils.handler;
            handler.removeCallbacks(this.screenShotCheckRunnable);
            Log.d(ChannelFlagHelper.TAG, "begin capture");
            ChannelFlagHelper.this.rtcService.captureVideoFrame(ChannelFlagHelper.this.uid, this.callback);
            handler.postDelayed(this.screenShotCheckRunnable, 20000L);
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        protected void onBlockUser() {
            String strUid;
            super.onBlockUser();
            if (this.blockCheck.isChecked() && ChannelFlagHelper.this.blockVideo) {
                RtcService rtcService = (RtcService) ChannelFlagHelper.this.context.getService("rtc");
                if (ChannelFlagHelper.this.user == null) {
                    strUid = null;
                } else {
                    strUid = ChannelFlagHelper.this.user.uid();
                }
                rtcService.addMutedUser(strUid);
            }
        }

        @Override // com.narvii.flag.report.FlagRequestDialog
        public void onSendRequest() {
            String str;
            super.onSendRequest();
            StatisticsEventBuilder statisticsEventBuilderUserPropInc = ((StatisticsService) ChannelFlagHelper.this.context.getService("statistics")).event("User Flags Post").userPropInc("Flagged Posts Total");
            if (ChannelFlagHelper.this.channelType == 5) {
                str = "Screening Room";
            } else {
                str = "VV Chat";
            }
            statisticsEventBuilderUserPropInc.source(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void swapYUV420ToNV21(byte[] bArr, byte[] bArr2, int i10, int i11) {
        int i12 = i10 * i11;
        System.arraycopy(bArr, 0, bArr2, 0, i12);
        int i13 = i12 / 4;
        int i14 = i12 + i13;
        for (int i15 = 0; i15 < i13; i15++) {
            int i16 = (i15 * 2) + i12;
            bArr2[i16] = bArr[i14 + i15];
            bArr2[i16 + 1] = bArr[i12 + i15];
        }
    }

    public void flagUserInChannel(int i10, User user, int i11, String str, int i12) {
        flagUserInChannel(i10, user, i11, str, i12, true);
    }

    public void setHintLanguage(String str) {
        this.hintLanguage = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFlagType(String str) {
        return Flag.getFlagType(this.context.getContext(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getSnapshotFile() {
        File file = new File(com.narvii.video.ui.Utils.getAvailableFileDir(this.context.getContext()), com.narvii.video.ui.Utils.TAG);
        file.mkdirs();
        File file2 = new File(file, SystemClock.elapsedRealtime() + ".jpg");
        File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            file2.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return file2;
    }

    private void showFlagDialog() {
        final VVChannelFlagReportDialog vVChannelFlagReportDialog = new VVChannelFlagReportDialog(this.context.getContext(), this.channelType == 5);
        vVChannelFlagReportDialog.setItemClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChannelFlagHelper.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChannelFlagHelper channelFlagHelper = ChannelFlagHelper.this;
                channelFlagHelper.flagType = channelFlagHelper.getFlagType(((FlagItemLayout) view).getLeftText());
                ChannelFlagHelper.this.showResonDialog();
                vVChannelFlagReportDialog.dismiss();
            }
        });
        vVChannelFlagReportDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showResonDialog() {
        int i10;
        MyFlagRequestDialog myFlagRequestDialog = new MyFlagRequestDialog(this.context.getContext(), this.shouldTakeScreenShoot && ((i10 = this.channelType) == 4 || i10 == 3 || i10 == 5));
        myFlagRequestDialog.setFlagUserInfo(this.cid, this.user.uid());
        myFlagRequestDialog.setEditHint(TextUtils.isEmpty(this.hintLanguage) ? this.context.getContext().getResources().getString(R.string.channel_flag_hint) : this.hintLanguage);
        myFlagRequestDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadFlagScreenShot(File file, final Callback<String> callback) {
        String strImportPhoto;
        NVContext nVContext = this.context;
        if (nVContext == null) {
            return;
        }
        PhotoManager photoManager = (PhotoManager) nVContext.getService("photo");
        try {
            strImportPhoto = photoManager.importPhoto(file.getParentFile(), Uri.fromFile(file));
        } catch (IOException e) {
            e.printStackTrace();
            strImportPhoto = null;
        }
        if (strImportPhoto != null) {
            photoManager.upload(strImportPhoto, "flag-image", new PhotoUploadListener() { // from class: com.narvii.chat.ChannelFlagHelper.2
                @Override // com.narvii.photos.PhotoUploadListener
                public void onProgress(String str, int i10, int i11) {
                }

                @Override // com.narvii.photos.PhotoUploadListener
                public void onFail(String str, int i10, String str2, Throwable th) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(null);
                    }
                }

                @Override // com.narvii.photos.PhotoUploadListener
                public void onFinish(String str, String str2) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str2);
                    }
                }
            });
        } else if (callback != null) {
            callback.call(null);
        }
    }

    public void flagUserInChannel(int i10, User user, int i11, String str, int i12, boolean z6) {
        flagUserInChannel(i10, user, i11, str, i12, z6, true);
    }

    public ChannelFlagHelper(NVContext nVContext) {
        this.context = nVContext;
        this.rtcService = (RtcService) nVContext.getService("rtc");
    }

    public void flagUserInChannel(int i10, User user, int i11, String str, int i12, boolean z6, boolean z10) {
        flagUserInChannel(i10, user, i11, str, i12, z6, z10, true);
    }

    public void flagUserInChannel(int i10, User user, int i11, String str, int i12, boolean z6, boolean z10, boolean z11) {
        this.cid = i10;
        this.user = user;
        this.channelType = i11;
        this.threadId = str;
        this.uid = i12;
        this.showBlock = z10;
        this.blockVideo = z11;
        this.mediaUrl = null;
        this.shouldTakeScreenShoot = z6;
        showFlagDialog();
    }
}
