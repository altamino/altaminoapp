package androidx.core.app;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.content.LocusIdCompat;
import androidx.core.os.BuildCompat;
import com.safedk.android.utils.Logger;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ActivityCompat extends ContextCompat {
    private static PermissionCompatDelegate sDelegate;

    /* JADX INFO: renamed from: androidx.core.app.ActivityCompat$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ String[] val$permissionsArray;
        final /* synthetic */ int val$requestCode;

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.val$permissionsArray.length];
            PackageManager packageManager = this.val$activity.getPackageManager();
            String packageName = this.val$activity.getPackageName();
            int length = this.val$permissionsArray.length;
            for (int i10 = 0; i10 < length; i10++) {
                iArr[i10] = packageManager.checkPermission(this.val$permissionsArray[i10], packageName);
            }
            ((OnRequestPermissionsResultCallback) this.val$activity).onRequestPermissionsResult(this.val$requestCode, this.val$permissionsArray, iArr);
        }
    }

    @RequiresApi
    static class Api23Impl {
        /* JADX INFO: Access modifiers changed from: package-private */
        @DoNotInline
        public static void a(Object obj) {
            ((android.app.SharedElementCallback.OnSharedElementsReadyListener) obj).onSharedElementsReady();
        }

        private Api23Impl() {
        }

        @DoNotInline
        static void b(Activity activity, String[] strArr, int i10) {
            activity.requestPermissions(strArr, i10);
        }

        @DoNotInline
        static boolean c(Activity activity, String str) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
    }

    @RequiresApi
    static class Api30Impl {
        @DoNotInline
        static void b(@NonNull Activity activity, @Nullable LocusIdCompat locusIdCompat, @Nullable Bundle bundle) {
            activity.setLocusContext(locusIdCompat == null ? null : locusIdCompat.b(), bundle);
        }

        private Api30Impl() {
        }

        @DoNotInline
        static Display a(ContextWrapper contextWrapper) {
            return contextWrapper.getDisplay();
        }
    }

    public interface OnRequestPermissionsResultCallback {
        void onRequestPermissionsResult(int i10, @NonNull String[] strArr, @NonNull int[] iArr);
    }

    public interface PermissionCompatDelegate {
        boolean a(@NonNull Activity activity, @NonNull String[] strArr, @IntRange int i10);
    }

    @RestrictTo
    public interface RequestPermissionsRequestCodeValidator {
        void validateRequestPermissionsRequestCode(int i10);
    }

    @RequiresApi
    static class SharedElementCallback21Impl extends android.app.SharedElementCallback {
        private final SharedElementCallback mCallback;

        @Override // android.app.SharedElementCallback
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.mCallback.onCaptureSharedElementSnapshot(view, matrix, rectF);
        }

        @Override // android.app.SharedElementCallback
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.mCallback.onCreateSnapshotView(context, parcelable);
        }

        @Override // android.app.SharedElementCallback
        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.mCallback.onMapSharedElements(list, map);
        }

        @Override // android.app.SharedElementCallback
        public void onRejectSharedElements(List<View> list) {
            this.mCallback.onRejectSharedElements(list);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementEnd(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementStart(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        @RequiresApi
        public void onSharedElementsArrived(List<String> list, List<View> list2, final android.app.SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            this.mCallback.onSharedElementsArrived(list, list2, new SharedElementCallback.OnSharedElementsReadyListener() { // from class: androidx.core.app.b
                @Override // androidx.core.app.SharedElementCallback.OnSharedElementsReadyListener
                public final void a() {
                    ActivityCompat.Api23Impl.a(onSharedElementsReadyListener);
                }
            });
        }

        SharedElementCallback21Impl(SharedElementCallback sharedElementCallback) {
            this.mCallback = sharedElementCallback;
        }
    }

    @RequiresApi
    static class Api16Impl {
        public static void safedk_Activity_startActivityForResult_9f44e908bf9d747fc527dbfa22dc7b4d(Activity p0, Intent p1, int p5, Bundle p8) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5, p8);
        }

        private Api16Impl() {
        }

        @DoNotInline
        static void a(Activity activity) {
            activity.finishAffinity();
        }

        @DoNotInline
        static void b(Activity activity, Intent intent, int i10, Bundle bundle) {
            safedk_Activity_startActivityForResult_9f44e908bf9d747fc527dbfa22dc7b4d(activity, intent, i10, bundle);
        }

        @DoNotInline
        static void c(Activity activity, IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
            activity.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13, bundle);
        }
    }

    @RequiresApi
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static void a(Activity activity) {
            activity.finishAfterTransition();
        }

        @DoNotInline
        static void b(Activity activity) {
            activity.postponeEnterTransition();
        }

        @DoNotInline
        static void c(Activity activity, android.app.SharedElementCallback sharedElementCallback) {
            activity.setEnterSharedElementCallback(sharedElementCallback);
        }

        @DoNotInline
        static void d(Activity activity, android.app.SharedElementCallback sharedElementCallback) {
            activity.setExitSharedElementCallback(sharedElementCallback);
        }

        @DoNotInline
        static void e(Activity activity) {
            activity.startPostponedEnterTransition();
        }
    }

    @RequiresApi
    static class Api22Impl {
        private Api22Impl() {
        }

        @DoNotInline
        static Uri a(Activity activity) {
            return activity.getReferrer();
        }
    }

    @RequiresApi
    static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static <T> T a(Activity activity, int i10) {
            return (T) activity.requireViewById(i10);
        }
    }

    @RequiresApi
    static class Api31Impl {
        private Api31Impl() {
        }

        @DoNotInline
        static boolean a(@NonNull Activity activity) {
            return activity.isLaunchedFromBubble();
        }
    }

    public static void f(@NonNull final Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else {
            new Handler(activity.getMainLooper()).post(new Runnable() { // from class: androidx.core.app.a
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityCompat.d(activity);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @OptIn
    public static void g(@NonNull Activity activity, @NonNull String[] strArr, @IntRange int i10) {
        PermissionCompatDelegate permissionCompatDelegate = sDelegate;
        if (permissionCompatDelegate == null || !permissionCompatDelegate.a(activity, strArr, i10)) {
            HashSet hashSet = new HashSet();
            for (int i11 = 0; i11 < strArr.length; i11++) {
                if (TextUtils.isEmpty(strArr[i11])) {
                    throw new IllegalArgumentException("Permission request for permissions " + Arrays.toString(strArr) + " must not contain null or empty values");
                }
                if (!BuildCompat.c() && TextUtils.equals(strArr[i11], "android.permission.POST_NOTIFICATIONS")) {
                    hashSet.add(Integer.valueOf(i11));
                }
            }
            int size = hashSet.size();
            String[] strArr2 = size > 0 ? new String[strArr.length - size] : strArr;
            if (size > 0) {
                if (size == strArr.length) {
                    return;
                }
                int i12 = 0;
                for (int i13 = 0; i13 < strArr.length; i13++) {
                    if (!hashSet.contains(Integer.valueOf(i13))) {
                        strArr2[i12] = strArr[i13];
                        i12++;
                    }
                }
            }
            if (activity instanceof RequestPermissionsRequestCodeValidator) {
                ((RequestPermissionsRequestCodeValidator) activity).validateRequestPermissionsRequestCode(i10);
            }
            Api23Impl.b(activity, strArr, i10);
        }
    }

    public static void h(@NonNull Activity activity, @Nullable SharedElementCallback sharedElementCallback) {
        Api21Impl.c(activity, sharedElementCallback != null ? new SharedElementCallback21Impl(sharedElementCallback) : null);
    }

    public static void i(@NonNull Activity activity, @Nullable SharedElementCallback sharedElementCallback) {
        Api21Impl.d(activity, sharedElementCallback != null ? new SharedElementCallback21Impl(sharedElementCallback) : null);
    }

    protected ActivityCompat() {
    }

    public static void b(@NonNull Activity activity) {
        Api16Impl.a(activity);
    }

    public static void c(@NonNull Activity activity) {
        Api21Impl.a(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(Activity activity) {
        if (!activity.isFinishing() && !ActivityRecreator.i(activity)) {
            activity.recreate();
        }
    }

    public static void e(@NonNull Activity activity) {
        Api21Impl.b(activity);
    }

    @OptIn
    public static boolean j(@NonNull Activity activity, @NonNull String str) {
        if (!BuildCompat.c() && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return false;
        }
        return Api23Impl.c(activity, str);
    }

    public static void k(@NonNull Activity activity, @NonNull Intent intent, int i10, @Nullable Bundle bundle) {
        Api16Impl.b(activity, intent, i10, bundle);
    }

    public static void l(@NonNull Activity activity, @NonNull IntentSender intentSender, int i10, @Nullable Intent intent, int i11, int i12, int i13, @Nullable Bundle bundle) throws IntentSender.SendIntentException {
        Api16Impl.c(activity, intentSender, i10, intent, i11, i12, i13, bundle);
    }

    public static void m(@NonNull Activity activity) {
        Api21Impl.e(activity);
    }
}
