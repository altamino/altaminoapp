package com.narvii.permisson;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.narvii.lib.R;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.widget.ACMAlertDialog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class NVPermission {
    public static final int REQ_AUDIO_RECORD = 200;
    public static final int REQ_CODE_ACCESS_COARSE_LOCATION = 106;
    public static final int REQ_CODE_ACCESS_FINE_LOCATION = 105;
    public static final int REQ_CODE_CALL_PHONE = 103;
    public static final int REQ_CODE_CAMERA = 104;
    public static final int REQ_CODE_GET_ACCOUNTS = 101;
    public static final int REQ_CODE_GIPHY = 302;
    public static final int REQ_CODE_MULTI_PERMISSION = 109;
    public static final int REQ_CODE_MUSIC = 303;
    public static final int REQ_CODE_PHONE_IMAGE = 301;
    public static final int REQ_CODE_READ_CONTACT = 110;
    public static final int REQ_CODE_READ_EXTERNAL_STORAGE = 107;
    public static final int REQ_CODE_READ_PHONE_STATE = 102;
    public static final int REQ_CODE_RECORD_AUDIO = 100;
    public static final int REQ_CODE_WRITE_EXTERNAL_STORAGE = 108;
    public static final int REQ_PLAY_LOCAL_VIDEO = 202;
    public static final int REQ_SCREEN_PLAY_OLD_VIDEO = 307;
    public static final int REQ_SHARE_BUTTON_SAVE_IMAGE = 201;
    public static final int REQ_SHARE_BUTTON_SAVE_STORY = 203;
    public static final int REQ_VV_CHAT_CAMERA_PREVIEW = 308;
    public static final int REQ_VV_CHAT_LAUNCH_AS_PRESENTER = 306;
    public static final int REQ_VV_CHAT_LAUNCH_SCREENROOM = 305;
    public static final int REQ_VV_CHAT_REQUEST_BE_PRESENTER = 304;
    private Activity activity;
    private Context context;
    private Fragment fragment;
    public PermissionListener listener;
    public String[] pendingPermissions;
    public Callback rationaleDenyCallback;
    public String rationaleMessage;
    public String rationaleTitle;
    public int requestCode;

    public static class Builder {
        NVPermission nvPermission;

        public Builder permissionListener(PermissionListener permissionListener) {
            this.nvPermission.listener = permissionListener;
            return this;
        }

        public Builder permissions(String[] strArr) {
            this.nvPermission.pendingPermissions = strArr;
            return this;
        }

        public Builder rationaleDneyCallback(Callback callback) {
            this.nvPermission.rationaleDenyCallback = callback;
            return this;
        }

        public Builder rationaleMessage(String str) {
            this.nvPermission.rationaleMessage = str;
            return this;
        }

        public Builder rationaleTitle(String str) {
            this.nvPermission.rationaleTitle = str;
            return this;
        }

        public void request() {
            this.nvPermission.request();
        }

        public Builder requestCode(int i10) {
            this.nvPermission.requestCode = i10;
            return this;
        }

        private Builder(Activity activity) {
            this.nvPermission = new NVPermission(activity);
        }

        public Builder permission(String str) {
            return permissions(new String[]{str});
        }

        private Builder(Fragment fragment) {
            this.nvPermission = new NVPermission(fragment);
        }
    }

    public static Builder builder(Activity activity) {
        return new Builder(activity);
    }

    public static void onRequestPermissionResult(Fragment fragment, PermissionListener permissionListener, int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        handleRequestPermissionResult(fragment, permissionListener, i10, strArr, iArr);
    }

    public static void showDeniedSnackBar(Context context) {
        showDeniedSnackBar(context, context.getString(R.string.decline_permission_hint));
    }

    public static Builder builder(Fragment fragment) {
        return new Builder(fragment);
    }

    private static void handleRequestPermissionResult(Object obj, PermissionListener permissionListener, int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        ArrayList arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList<>();
        boolean z6 = false;
        for (int i11 = 0; i11 < strArr.length; i11++) {
            String str = strArr[i11];
            if (iArr[i11] == 0) {
                arrayList.add(str);
            } else {
                arrayList2.add(str);
            }
        }
        if (arrayList.size() > 0 && arrayList2.size() == 0 && permissionListener != null) {
            permissionListener.onPermissionGranted(i10);
        }
        if (arrayList2.size() > 0) {
            if (!(obj instanceof Activity) ? !(!(obj instanceof Fragment) || PermissionUtils.shouldShowRequestPermissionRationale((Fragment) obj, strArr)) : !PermissionUtils.shouldShowRequestPermissionRationale((Activity) obj, strArr)) {
                z6 = true;
            }
            permissionListener.onPermissionDenied(i10, z6, arrayList2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$request$0(Object obj) {
        ActivityCompat.g(this.activity, this.pendingPermissions, this.requestCode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$request$1(Object obj) {
        Callback callback = this.rationaleDenyCallback;
        if (callback != null) {
            callback.call(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$request$2(Object obj) {
        this.fragment.requestPermissions(this.pendingPermissions, this.requestCode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$request$3(Object obj) {
        Callback callback = this.rationaleDenyCallback;
        if (callback != null) {
            callback.call(null);
        }
    }

    public static void onRequestPermissionResult(Activity activity, PermissionListener permissionListener, int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        handleRequestPermissionResult(activity, permissionListener, i10, strArr, iArr);
    }

    public static void showDeniedSnackBar(Context context, String str) {
        NVToast.makeText(context, str, 1).show();
    }

    private void showRantionalDialog(String str, String str2, final Callback callback) {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.context);
        aCMAlertDialog.setTitle(this.rationaleTitle);
        aCMAlertDialog.setMessage(this.rationaleMessage);
        aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.permisson.NVPermission.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }
        });
        aCMAlertDialog.show();
    }

    private void showRantionaleDialog(final Callback callback, final Callback callback2) {
        String[] strArr = this.pendingPermissions;
        if (strArr == null || strArr.length == 0) {
            showRantionalDialog(this.rationaleTitle, this.rationaleMessage, callback);
            return;
        }
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            String[] strArr2 = this.pendingPermissions;
            if (i10 >= strArr2.length) {
                PermissionRationaleDialog.builder(this.context).setRationalePermissionList(arrayList).setCancelCallback(new Callback<Integer>() { // from class: com.narvii.permisson.NVPermission.2
                    @Override // com.narvii.util.Callback
                    public void call(Integer num) {
                        Callback callback3 = callback2;
                        if (callback3 != null) {
                            callback3.call(null);
                        }
                    }
                }).setCallback(new Callback<Integer>() { // from class: com.narvii.permisson.NVPermission.1
                    @Override // com.narvii.util.Callback
                    public void call(Integer num) {
                        Callback callback3;
                        if (num.intValue() != 1 || (callback3 = callback) == null) {
                            return;
                        }
                        callback3.call(null);
                    }
                }).show();
                return;
            } else {
                arrayList.add(strArr2[i10]);
                i10++;
            }
        }
    }

    public void request() {
        if (this.pendingPermissions == null) {
            return;
        }
        if (TextUtils.isEmpty(this.rationaleTitle)) {
            this.rationaleTitle = this.context.getString(R.string.permission_request);
        }
        if (TextUtils.isEmpty(this.rationaleMessage)) {
            this.rationaleMessage = this.context.getString(R.string.permission_request_message);
        }
        PermissionUtilsV2 permissionUtilsV2 = PermissionUtilsV2.INSTANCE;
        if (permissionUtilsV2.hasSelfPermission(this.context, this.pendingPermissions)) {
            PermissionListener permissionListener = this.listener;
            if (permissionListener != null) {
                permissionListener.onPermissionGranted(this.requestCode);
                return;
            }
            return;
        }
        Activity activity = this.activity;
        if (activity != null) {
            if (permissionUtilsV2.shouldShowRequestPermissionRationale(activity, this.pendingPermissions)) {
                showRantionaleDialog(new Callback() { // from class: com.narvii.permisson.a
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f2573a.lambda$request$0(obj);
                    }
                }, new Callback() { // from class: com.narvii.permisson.b
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f2574a.lambda$request$1(obj);
                    }
                });
                return;
            } else {
                ActivityCompat.g(this.activity, this.pendingPermissions, this.requestCode);
                return;
            }
        }
        Fragment fragment = this.fragment;
        if (fragment != null) {
            if (!permissionUtilsV2.shouldShowRequestPermissionRationale(fragment, this.pendingPermissions) || this.rationaleTitle == null || this.rationaleMessage == null) {
                this.fragment.requestPermissions(this.pendingPermissions, this.requestCode);
            } else {
                showRantionaleDialog(new Callback() { // from class: com.narvii.permisson.c
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f2575a.lambda$request$2(obj);
                    }
                }, new Callback() { // from class: com.narvii.permisson.d
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        this.f2576a.lambda$request$3(obj);
                    }
                });
            }
        }
    }

    private NVPermission(Activity activity) {
        this.activity = activity;
        this.context = activity;
    }

    public static void showDeniedDialog(Context context) {
        PermissionUtils.showPermissionDeniedDialog(context);
    }

    private NVPermission(Fragment fragment) {
        this.fragment = fragment;
        this.context = fragment.getContext();
    }
}
