package com.narvii.permisson;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.view.View;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.RequiresApi;
import androidx.core.app.ActivityCompat;
import androidx.core.app.AppOpsManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import e8.l;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.a0;
import w7.l0;
import w7.s;

/* JADX INFO: loaded from: classes7.dex */
public final class PermissionUtilsV2 {

    @NotNull
    public static final PermissionUtilsV2 INSTANCE = new PermissionUtilsV2();

    @NotNull
    private static final Map<String, Integer> minSdkPermissionList = s0.l(a0.a("com.android.voicemail.permission.ADD_VOICEMAIL", 14), a0.a("android.permission.BODY_SENSORS", 20), a0.a("android.permission.READ_CALL_LOG", 16), a0.a("android.permission.READ_EXTERNAL_STORAGE", 16), a0.a("android.permission.USE_SIP", 9), a0.a("android.permission.WRITE_CALL_LOG", 16), a0.a("android.permission.SYSTEM_ALERT_WINDOW", 23), a0.a("android.permission.WRITE_SETTINGS", 23));

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GranularMediaPermissions.values().length];
            try {
                iArr[GranularMediaPermissions.READ_MEDIA_IMAGES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GranularMediaPermissions.READ_MEDIA_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GranularMediaPermissions.READ_MEDIA_AUDIO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @ChecksSdkIntAtLeast
    private final boolean isApiLevel23OrHigher() {
        return true;
    }

    private final String obtainPermissionName(NotificationPermissions notificationPermissions) {
        if (Build.VERSION.SDK_INT >= 33) {
            return "android.permission.POST_NOTIFICATIONS";
        }
        return null;
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public final boolean shouldShowRequestPermissionRationale(@NotNull Activity activity, @NotNull String... permissions) {
        t.j(activity, "activity");
        t.j(permissions, "permissions");
        for (String str : permissions) {
            if (ActivityCompat.j(activity, str)) {
                return true;
            }
        }
        return false;
    }

    private final Integer getPermissionName(String str) {
        return PermissionUtils.PERMISSION_NAMES.get(str);
    }

    private final Integer getPermissionRationale(String str) {
        return PermissionUtils.PERMISSION_RATIONALES.get(str);
    }

    private final String getRationalTitleOrDefault(Context context, String str, String str2) {
        if (str != null) {
            return str;
        }
        Integer permissionName = getPermissionName(str2);
        String string = permissionName != null ? context.getString(permissionName.intValue()) : null;
        if (string == null) {
            string = "";
        }
        return string;
    }

    private final String getRationaleMessageOrDefault(Context context, String str, String str2) {
        if (str != null) {
            return str;
        }
        Integer permissionRationale = getPermissionRationale(str2);
        String string = permissionRationale != null ? context.getString(permissionRationale.intValue()) : null;
        if (string == null) {
            string = "";
        }
        return string;
    }

    private final boolean hasSelfPermissionReadImages(Context context) {
        return ContextCompat.checkSelfPermission(context, obtainPermissionName(GranularMediaPermissions.READ_MEDIA_IMAGES)) == 0;
    }

    private final boolean isXiaomiManufacturer() {
        return kotlin.text.t.w(Build.MANUFACTURER, "Xiaomi", true);
    }

    private final boolean permissionExistOnAndroidVersion(String str) {
        Integer num = minSdkPermissionList.get(str);
        return num == null || num.intValue() <= Build.VERSION.SDK_INT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showPermissionDeniedDialog$lambda$3(Context ctx, View view) {
        t.j(ctx, "$ctx");
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", ctx.getPackageName(), null));
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(ctx, intent);
    }

    public final boolean hasSelfPermission(@NotNull Context ctx, @NotNull String... permissions) {
        t.j(ctx, "ctx");
        t.j(permissions, "permissions");
        for (String str : permissions) {
            PermissionUtilsV2 permissionUtilsV2 = INSTANCE;
            if (!permissionUtilsV2.permissionExistOnAndroidVersion(str) || !permissionUtilsV2.checkSinglePermission(ctx, str)) {
                return false;
            }
        }
        return true;
    }

    public final boolean hasSelfPermissionPushNotifications(@NotNull Context context) {
        t.j(context, "context");
        String strObtainPermissionName = obtainPermissionName(NotificationPermissions.POST_NOTIFICATIONS);
        return strObtainPermissionName == null || ContextCompat.checkSelfPermission(context, strObtainPermissionName) == 0;
    }

    public final boolean hasSelfPermissionReadAudios(@NotNull Context ctx) {
        t.j(ctx, "ctx");
        return ContextCompat.checkSelfPermission(ctx, obtainPermissionName(GranularMediaPermissions.READ_MEDIA_AUDIO)) == 0;
    }

    public final boolean hasSelfPermissionReadImagesAndVideos(@NotNull Context ctx) {
        t.j(ctx, "ctx");
        return hasSelfPermissionReadImages(ctx) && hasSelfPermissionReadVideos(ctx);
    }

    public final boolean hasSelfPermissionReadVideos(@NotNull Context ctx) {
        t.j(ctx, "ctx");
        return ContextCompat.checkSelfPermission(ctx, obtainPermissionName(GranularMediaPermissions.READ_MEDIA_VIDEO)) == 0;
    }

    @NotNull
    public final String obtainPermissionName(@NotNull GranularMediaPermissions permission) {
        t.j(permission, "permission");
        if (Build.VERSION.SDK_INT < 33) {
            return "android.permission.READ_EXTERNAL_STORAGE";
        }
        int i10 = WhenMappings.$EnumSwitchMapping$0[permission.ordinal()];
        if (i10 == 1) {
            return "android.permission.READ_MEDIA_IMAGES";
        }
        if (i10 == 2) {
            return "android.permission.READ_MEDIA_VIDEO";
        }
        if (i10 == 3) {
            return "android.permission.READ_MEDIA_AUDIO";
        }
        throw new s();
    }

    public final void shoRationaleDialog(@NotNull Context ctx, @NotNull RationaleDialogConfig config) {
        t.j(ctx, "ctx");
        t.j(config, "config");
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(ctx);
        aCMAlertDialog.setTitle(getRationalTitleOrDefault(ctx, config.getTitle(), config.getPermissionName()));
        aCMAlertDialog.setMessage(getRationaleMessageOrDefault(ctx, config.getTitle(), config.getPermissionName()));
        final l<View, l0> onNegativeListener = config.getOnNegativeListener();
        aCMAlertDialog.addNagativeButton(R.string.cancel, onNegativeListener != null ? new View.OnClickListener() { // from class: com.narvii.permisson.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                onNegativeListener.invoke(view);
            }
        } : null);
        final l<View, l0> onPositiveListener = config.getOnPositiveListener();
        aCMAlertDialog.addButton(R.string.ok, onPositiveListener != null ? new View.OnClickListener() { // from class: com.narvii.permisson.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                onPositiveListener.invoke(view);
            }
        } : null);
        aCMAlertDialog.show();
    }

    public final void showPermissionDeniedDialog(@NotNull final Context ctx) {
        t.j(ctx, "ctx");
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(ctx);
        aCMAlertDialog.setMessage(com.narvii.lib.R.string.decline_permission_hint);
        aCMAlertDialog.addButton(com.narvii.lib.R.string.cancel, (View.OnClickListener) null, -7829368);
        aCMAlertDialog.addButton(R.string.ok, new View.OnClickListener() { // from class: com.narvii.permisson.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PermissionUtilsV2.showPermissionDeniedDialog$lambda$3(ctx, view);
            }
        });
        aCMAlertDialog.show();
    }

    private PermissionUtilsV2() {
    }

    private final boolean checkSinglePermission(Context context, String str) {
        if (!isApiLevel23OrHigher()) {
            return false;
        }
        if (isXiaomiManufacturer()) {
            return checkSinglePermissionXiaomi(context, str);
        }
        return checkSinglePermissionDefault(context, str);
    }

    @RequiresApi
    private final boolean checkSinglePermissionDefault(Context context, String str) {
        if (ContextCompat.checkSelfPermission(context, str) == 0) {
            return true;
        }
        return false;
    }

    @RequiresApi
    private final boolean checkSinglePermissionXiaomi(Context context, String str) {
        String strD = AppOpsManagerCompat.d(str);
        if (strD == null) {
            return true;
        }
        if (AppOpsManagerCompat.b(context, strD, Process.myUid(), context.getPackageName()) == 0 && checkSinglePermissionDefault(context, str)) {
            return true;
        }
        return false;
    }

    public final boolean shouldShowRequestPermissionRationale(@NotNull Fragment fragment, @NotNull String... permissions) {
        t.j(fragment, "fragment");
        t.j(permissions, "permissions");
        for (String str : permissions) {
            if (fragment.shouldShowRequestPermissionRationale(str)) {
                return true;
            }
        }
        return false;
    }
}
