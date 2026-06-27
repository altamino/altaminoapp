package com.narvii.permisson;

import android.app.Activity;
import android.content.Context;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.View;
import com.narvii.lib.R;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.widget.ACMAlertDialog;
import java.util.ArrayList;

/* loaded from: classes3.dex */
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

    private NVPermission(Activity activity) {
        this.activity = activity;
        this.context = activity;
    }

    private NVPermission(Fragment fragment) {
        this.fragment = fragment;
        this.context = fragment.getContext();
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
        if (PermissionUtils.hasSelfPermission(this.context, this.pendingPermissions)) {
            PermissionListener permissionListener = this.listener;
            if (permissionListener != null) {
                permissionListener.onPermissionGranted(this.requestCode);
                return;
            }
            return;
        }
        Activity activity = this.activity;
        if (activity != null) {
            if (PermissionUtils.shouldShowRequestPermissionRationale(activity, this.pendingPermissions)) {
                showRantionaleDialog(new Callback() { // from class: com.narvii.permisson.NVPermission.1
                    @Override // com.narvii.util.Callback
                    public void call(Object obj) {
                        Activity activity2 = NVPermission.this.activity;
                        NVPermission nVPermission = NVPermission.this;
                        ActivityCompat.requestPermissions(activity2, nVPermission.pendingPermissions, nVPermission.requestCode);
                    }
                }, new Callback() { // from class: com.narvii.permisson.NVPermission.2
                    @Override // com.narvii.util.Callback
                    public void call(Object obj) {
                        Callback callback = NVPermission.this.rationaleDenyCallback;
                        if (callback != null) {
                            callback.call(null);
                        }
                    }
                });
                return;
            } else {
                ActivityCompat.requestPermissions(this.activity, this.pendingPermissions, this.requestCode);
                return;
            }
        }
        Fragment fragment = this.fragment;
        if (fragment != null) {
            if (PermissionUtils.shouldShowRequestPermissionRationale(fragment, this.pendingPermissions) && this.rationaleTitle != null && this.rationaleMessage != null) {
                showRantionaleDialog(new Callback() { // from class: com.narvii.permisson.NVPermission.3
                    @Override // com.narvii.util.Callback
                    public void call(Object obj) {
                        Fragment fragment2 = NVPermission.this.fragment;
                        NVPermission nVPermission = NVPermission.this;
                        fragment2.requestPermissions(nVPermission.pendingPermissions, nVPermission.requestCode);
                    }
                }, new Callback() { // from class: com.narvii.permisson.NVPermission.4
                    @Override // com.narvii.util.Callback
                    public void call(Object obj) {
                        Callback callback = NVPermission.this.rationaleDenyCallback;
                        if (callback != null) {
                            callback.call(null);
                        }
                    }
                });
            } else {
                this.fragment.requestPermissions(this.pendingPermissions, this.requestCode);
            }
        }
    }

    private void showRantionaleDialog(final Callback callback, final Callback callback2) {
        String[] strArr = this.pendingPermissions;
        if (strArr == null || strArr.length == 0) {
            showRantionalDialog(this.rationaleTitle, this.rationaleMessage, callback);
            return;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            String[] strArr2 = this.pendingPermissions;
            if (i < strArr2.length) {
                arrayList.add(strArr2[i]);
                i++;
            } else {
                PermissionRationaleDialog.builder(this.context).setRationalePermissionList(arrayList).setCancelCallback(new Callback<Integer>() { // from class: com.narvii.permisson.NVPermission.6
                    @Override // com.narvii.util.Callback
                    public void call(Integer num) {
                        Callback callback3 = callback2;
                        if (callback3 != null) {
                            callback3.call(null);
                        }
                    }
                }).setCallback(new Callback<Integer>() { // from class: com.narvii.permisson.NVPermission.5
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
            }
        }
    }

    private void showRantionalDialog(String str, String str2, final Callback callback) {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.context);
        aCMAlertDialog.setTitle(this.rationaleTitle);
        aCMAlertDialog.setMessage(this.rationaleMessage);
        aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.permisson.NVPermission.7
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

    public static void showDeniedSnackBar(Context context) {
        showDeniedSnackBar(context, context.getString(R.string.decline_permission_hint));
    }

    public static void showDeniedSnackBar(Context context, String str) {
        NVToast.makeText(context, str, 1).show();
    }

    public static void showDeniedDialog(Context context) {
        PermissionUtils.showPermissionDeniedDialog(context);
    }

    public static void onRequestPermissionResult(Fragment fragment, PermissionListener permissionListener, int i, String[] strArr, int[] iArr) {
        handleRequestPermissionResult(fragment, permissionListener, i, strArr, iArr);
    }

    public static void onRequestPermissionResult(Activity activity, PermissionListener permissionListener, int i, String[] strArr, int[] iArr) {
        handleRequestPermissionResult(activity, permissionListener, i, strArr, iArr);
    }

    private static void handleRequestPermissionResult(Object obj, PermissionListener permissionListener, int i, String[] strArr, int[] iArr) {
        ArrayList arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList<>();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            String str = strArr[i2];
            if (iArr[i2] == 0) {
                arrayList.add(str);
            } else {
                arrayList2.add(str);
            }
        }
        int size = arrayList.size();
        boolean z = true;
        if ((size > 0 && arrayList2.size() == 0) && permissionListener != null) {
            permissionListener.onPermissionGranted(i);
        }
        if (arrayList2.size() > 0) {
            if (!(obj instanceof Activity) ? !(obj instanceof Fragment) || PermissionUtils.shouldShowRequestPermissionRationale((Fragment) obj, strArr) : PermissionUtils.shouldShowRequestPermissionRationale((Activity) obj, strArr)) {
                z = false;
            }
            permissionListener.onPermissionDenied(i, z, arrayList2);
        }
    }

    public static Builder builder(Activity activity) {
        return new Builder(activity);
    }

    public static Builder builder(Fragment fragment) {
        return new Builder(fragment);
    }

    public static class Builder {
        NVPermission nvPermission;

        private Builder(Activity activity) {
            this.nvPermission = new NVPermission(activity);
        }

        private Builder(Fragment fragment) {
            this.nvPermission = new NVPermission(fragment);
        }

        public Builder permissions(String[] strArr) {
            this.nvPermission.pendingPermissions = strArr;
            return this;
        }

        public Builder permission(String str) {
            return permissions(new String[]{str});
        }

        public Builder permissionListener(PermissionListener permissionListener) {
            this.nvPermission.listener = permissionListener;
            return this;
        }

        public Builder rationaleTitle(String str) {
            this.nvPermission.rationaleTitle = str;
            return this;
        }

        public Builder rationaleMessage(String str) {
            this.nvPermission.rationaleMessage = str;
            return this;
        }

        public Builder rationaleDneyCallback(Callback callback) {
            this.nvPermission.rationaleDenyCallback = callback;
            return this;
        }

        public Builder requestCode(int i) {
            this.nvPermission.requestCode = i;
            return this;
        }

        public void request() {
            this.nvPermission.request();
        }
    }
}
