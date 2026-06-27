package com.narvii.permisson;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.AppOpsManagerCompat;
import android.support.v4.app.Fragment;
import android.support.v4.content.PermissionChecker;
import android.support.v4.util.SimpleArrayMap;
import android.text.TextUtils;
import android.view.View;
import com.narvii.lib.R;
import com.narvii.widget.ACMAlertDialog;
import java.util.Locale;

/* loaded from: classes3.dex */
public class PermissionUtils {
    public static final SimpleArrayMap<String, Integer> PERMISSION_NAMES = new SimpleArrayMap<>();
    public static final SimpleArrayMap<String, Integer> PERMISSION_RATIONALES = new SimpleArrayMap<>();
    private static final SimpleArrayMap<String, Integer> MIN_SDK_PERMISSIONS = new SimpleArrayMap<>(8);

    static {
        MIN_SDK_PERMISSIONS.put("com.android.voicemail.permission.ADD_VOICEMAIL", 14);
        MIN_SDK_PERMISSIONS.put("android.permission.BODY_SENSORS", 20);
        MIN_SDK_PERMISSIONS.put("android.permission.READ_CALL_LOG", 16);
        MIN_SDK_PERMISSIONS.put("android.permission.READ_EXTERNAL_STORAGE", 16);
        MIN_SDK_PERMISSIONS.put("android.permission.USE_SIP", 9);
        MIN_SDK_PERMISSIONS.put("android.permission.WRITE_CALL_LOG", 16);
        MIN_SDK_PERMISSIONS.put("android.permission.SYSTEM_ALERT_WINDOW", 23);
        MIN_SDK_PERMISSIONS.put("android.permission.WRITE_SETTINGS", 23);
        PERMISSION_NAMES.put("android.permission.CAMERA", Integer.valueOf(R.string.permission_camera));
        PERMISSION_NAMES.put("android.permission.READ_CONTACTS", Integer.valueOf(R.string.permission_contacts));
        PERMISSION_NAMES.put("android.permission.WRITE_CONTACTS", Integer.valueOf(R.string.permission_contacts));
        PERMISSION_NAMES.put("android.permission.ACCESS_COARSE_LOCATION", Integer.valueOf(R.string.permission_location));
        PERMISSION_NAMES.put("android.permission.ACCESS_FINE_LOCATION", Integer.valueOf(R.string.permission_location));
        PERMISSION_NAMES.put("android.permission.RECORD_AUDIO", Integer.valueOf(R.string.permission_microphone));
        PERMISSION_NAMES.put("android.permission.READ_EXTERNAL_STORAGE", Integer.valueOf(R.string.permission_storage));
        PERMISSION_NAMES.put("android.permission.WRITE_EXTERNAL_STORAGE", Integer.valueOf(R.string.permission_storage));
        PERMISSION_RATIONALES.put("android.permission.CAMERA", Integer.valueOf(R.string.permission_camera_rationale_1));
        PERMISSION_RATIONALES.put("android.permission.READ_CONTACTS", Integer.valueOf(R.string.permission_contacts_rationale));
        PERMISSION_RATIONALES.put("android.permission.WRITE_CONTACTS", Integer.valueOf(R.string.permission_contacts_rationale));
        PERMISSION_RATIONALES.put("android.permission.ACCESS_COARSE_LOCATION", Integer.valueOf(R.string.permission_location_rationale));
        PERMISSION_RATIONALES.put("android.permission.ACCESS_FINE_LOCATION", Integer.valueOf(R.string.permission_location_rationale));
        PERMISSION_RATIONALES.put("android.permission.RECORD_AUDIO", Integer.valueOf(R.string.permission_microphone_rationale));
        PERMISSION_RATIONALES.put("android.permission.READ_EXTERNAL_STORAGE", Integer.valueOf(R.string.permission_storage_rationale));
        PERMISSION_RATIONALES.put("android.permission.WRITE_EXTERNAL_STORAGE", Integer.valueOf(R.string.permission_storage_rationale));
    }

    public static boolean verifyPermissions(int... iArr) {
        if (iArr.length == 0) {
            return false;
        }
        for (int i : iArr) {
            if (i != 0) {
                return false;
            }
        }
        return true;
    }

    private static boolean permissionExists(String str) {
        Integer num = MIN_SDK_PERMISSIONS.get(str);
        return num == null || Build.VERSION.SDK_INT >= num.intValue();
    }

    public static boolean hasSelfPermission(Context context, String... strArr) {
        for (String str : strArr) {
            if (permissionExists(str) && !hasSelfPermission(context, str)) {
                return false;
            }
        }
        return true;
    }

    private static boolean hasSelfPermission(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 23 && !TextUtils.isEmpty(Build.MANUFACTURER) && "xiaomi".equalsIgnoreCase(Build.MANUFACTURER.toLowerCase(Locale.US))) {
            return hasSelfPermissionForXiaomi(context, str);
        }
        try {
            return PermissionChecker.checkSelfPermission(context, str) == 0;
        } catch (RuntimeException unused) {
            return false;
        }
    }

    private static boolean hasSelfPermissionForXiaomi(Context context, String str) {
        String strPermissionToOp = AppOpsManagerCompat.permissionToOp(str);
        if (strPermissionToOp == null) {
            return true;
        }
        return AppOpsManagerCompat.noteOp(context, strPermissionToOp, Process.myUid(), context.getPackageName()) == 0 && PermissionChecker.checkSelfPermission(context, str) == 0;
    }

    public static boolean shouldShowRequestPermissionRationale(Activity activity, String... strArr) {
        for (String str : strArr) {
            if (ActivityCompat.shouldShowRequestPermissionRationale(activity, str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean shouldShowRequestPermissionRationale(Fragment fragment, String... strArr) {
        for (String str : strArr) {
            if (fragment.shouldShowRequestPermissionRationale(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isAllPermissionGranted(String[] strArr, int[] iArr) {
        if (strArr == null) {
            return true;
        }
        for (int i = 0; i < strArr.length; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void showPermissionDeniedDialog(final Context context) {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(context);
        aCMAlertDialog.setMessage(R.string.decline_permission_hint);
        aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, -7829368);
        aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.permisson.PermissionUtils.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", context.getPackageName(), null));
                context.startActivity(intent);
            }
        });
        aCMAlertDialog.show();
    }
}
