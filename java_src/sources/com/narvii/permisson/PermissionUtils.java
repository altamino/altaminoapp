package com.narvii.permisson;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.ActivityCompat;
import androidx.core.app.AppOpsManagerCompat;
import androidx.core.content.PermissionChecker;
import androidx.fragment.app.Fragment;
import com.narvii.lib.R;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class PermissionUtils {
    private static final SimpleArrayMap<String, Integer> MIN_SDK_PERMISSIONS;
    public static final SimpleArrayMap<String, Integer> PERMISSION_NAMES;
    public static final SimpleArrayMap<String, Integer> PERMISSION_RATIONALES;

    public static boolean hasSelfPermission(Context context, String... strArr) {
        for (String str : strArr) {
            if (permissionExists(str) && !hasSelfPermission(context, str)) {
                return false;
            }
        }
        return true;
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static boolean shouldShowRequestPermissionRationale(Activity activity, String... strArr) {
        for (String str : strArr) {
            if (ActivityCompat.j(activity, str)) {
                return true;
            }
        }
        return false;
    }

    static {
        SimpleArrayMap<String, Integer> simpleArrayMap = new SimpleArrayMap<>();
        PERMISSION_NAMES = simpleArrayMap;
        SimpleArrayMap<String, Integer> simpleArrayMap2 = new SimpleArrayMap<>();
        PERMISSION_RATIONALES = simpleArrayMap2;
        SimpleArrayMap<String, Integer> simpleArrayMap3 = new SimpleArrayMap<>(8);
        MIN_SDK_PERMISSIONS = simpleArrayMap3;
        simpleArrayMap3.put("com.android.voicemail.permission.ADD_VOICEMAIL", 14);
        simpleArrayMap3.put("android.permission.BODY_SENSORS", 20);
        simpleArrayMap3.put("android.permission.READ_CALL_LOG", 16);
        simpleArrayMap3.put("android.permission.READ_EXTERNAL_STORAGE", 16);
        simpleArrayMap3.put("android.permission.USE_SIP", 9);
        simpleArrayMap3.put("android.permission.WRITE_CALL_LOG", 16);
        simpleArrayMap3.put("android.permission.SYSTEM_ALERT_WINDOW", 23);
        simpleArrayMap3.put("android.permission.WRITE_SETTINGS", 23);
        simpleArrayMap.put("android.permission.CAMERA", Integer.valueOf(R.string.permission_camera));
        int i10 = R.string.permission_contacts;
        simpleArrayMap.put("android.permission.READ_CONTACTS", Integer.valueOf(i10));
        simpleArrayMap.put("android.permission.WRITE_CONTACTS", Integer.valueOf(i10));
        int i11 = R.string.permission_location;
        simpleArrayMap.put("android.permission.ACCESS_COARSE_LOCATION", Integer.valueOf(i11));
        simpleArrayMap.put("android.permission.ACCESS_FINE_LOCATION", Integer.valueOf(i11));
        simpleArrayMap.put("android.permission.RECORD_AUDIO", Integer.valueOf(R.string.permission_microphone));
        int i12 = R.string.permission_storage;
        simpleArrayMap.put("android.permission.READ_EXTERNAL_STORAGE", Integer.valueOf(i12));
        simpleArrayMap.put("android.permission.WRITE_EXTERNAL_STORAGE", Integer.valueOf(i12));
        simpleArrayMap.put("android.permission.READ_MEDIA_IMAGES", Integer.valueOf(R.string.permission_read_media_images));
        simpleArrayMap.put("android.permission.READ_MEDIA_VIDEO", Integer.valueOf(R.string.permission_read_media_video));
        simpleArrayMap.put("android.permission.READ_MEDIA_AUDIO", Integer.valueOf(R.string.permission_read_media_audio));
        simpleArrayMap.put("android.permission.POST_NOTIFICATIONS", Integer.valueOf(R.string.permission_post_notifications));
        simpleArrayMap2.put("android.permission.CAMERA", Integer.valueOf(R.string.permission_camera_rationale_1));
        int i13 = R.string.permission_contacts_rationale;
        simpleArrayMap2.put("android.permission.READ_CONTACTS", Integer.valueOf(i13));
        simpleArrayMap2.put("android.permission.WRITE_CONTACTS", Integer.valueOf(i13));
        int i14 = R.string.permission_location_rationale;
        simpleArrayMap2.put("android.permission.ACCESS_COARSE_LOCATION", Integer.valueOf(i14));
        simpleArrayMap2.put("android.permission.ACCESS_FINE_LOCATION", Integer.valueOf(i14));
        simpleArrayMap2.put("android.permission.RECORD_AUDIO", Integer.valueOf(R.string.permission_microphone_rationale));
        int i15 = R.string.permission_storage_rationale;
        simpleArrayMap2.put("android.permission.READ_EXTERNAL_STORAGE", Integer.valueOf(i15));
        simpleArrayMap2.put("android.permission.WRITE_EXTERNAL_STORAGE", Integer.valueOf(i15));
        simpleArrayMap2.put("android.permission.READ_MEDIA_IMAGES", Integer.valueOf(R.string.permission_read_media_images_rationale));
        simpleArrayMap2.put("android.permission.READ_MEDIA_VIDEO", Integer.valueOf(R.string.permission_read_media_video_rationale));
        simpleArrayMap2.put("android.permission.READ_MEDIA_AUDIO", Integer.valueOf(R.string.permission_read_media_audio_rationale));
        simpleArrayMap2.put("android.permission.READ_MEDIA_AUDIO", Integer.valueOf(R.string.push_notification_system_hint));
        simpleArrayMap2.put("android.permission.POST_NOTIFICATIONS", Integer.valueOf(R.string.push_notification_hint));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showPermissionDeniedDialog$0(Context context, View view) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(context, intent);
    }

    private static boolean permissionExists(String str) {
        Integer num = MIN_SDK_PERMISSIONS.get(str);
        return num == null || Build.VERSION.SDK_INT >= num.intValue();
    }

    public static void showPermissionDeniedDialog(final Context context) {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(context);
        aCMAlertDialog.setMessage(R.string.decline_permission_hint);
        aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, -7829368);
        aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.permisson.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PermissionUtils.lambda$showPermissionDeniedDialog$0(context, view);
            }
        });
        aCMAlertDialog.show();
    }

    private static boolean hasSelfPermission(Context context, String str) {
        String str2 = Build.MANUFACTURER;
        if (!TextUtils.isEmpty(str2) && "xiaomi".equalsIgnoreCase(str2.toLowerCase(Locale.US))) {
            return hasSelfPermissionForXiaomi(context, str);
        }
        try {
            return PermissionChecker.c(context, str) == 0;
        } catch (RuntimeException unused) {
            return false;
        }
    }

    private static boolean hasSelfPermissionForXiaomi(Context context, String str) {
        String strD = AppOpsManagerCompat.d(str);
        if (strD == null) {
            return true;
        }
        if (AppOpsManagerCompat.b(context, strD, Process.myUid(), context.getPackageName()) == 0 && PermissionChecker.c(context, str) == 0) {
            return true;
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
}
