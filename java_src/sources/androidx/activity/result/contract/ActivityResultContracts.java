package androidx.activity.result.contract;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import android.provider.MediaStore;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.annotation.CallSuper;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import j8.o;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.collections.d0;
import kotlin.collections.p;
import kotlin.collections.r0;
import kotlin.collections.s0;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.s;
import w7.u;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityResultContracts {

    public static class CaptureVideo extends ActivityResultContract<Uri, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final ActivityResultContract.SynchronousResult<Boolean> b(@NotNull Context context, @NotNull Uri input) {
            t.j(context, "context");
            t.j(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Boolean c(int i10, @Nullable Intent intent) {
            return Boolean.valueOf(i10 == -1);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull Uri input) {
            t.j(context, "context");
            t.j(input, "input");
            Intent intentPutExtra = new Intent("android.media.action.VIDEO_CAPTURE").putExtra("output", input);
            t.i(intentPutExtra, "Intent(MediaStore.ACTION…tore.EXTRA_OUTPUT, input)");
            return intentPutExtra;
        }
    }

    @RequiresApi
    public static class CreateDocument extends ActivityResultContract<String, Uri> {

        @NotNull
        private final String mimeType;

        public CreateDocument(@NotNull String mimeType) {
            t.j(mimeType, "mimeType");
            this.mimeType = mimeType;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final ActivityResultContract.SynchronousResult<Uri> b(@NotNull Context context, @NotNull String input) {
            t.j(context, "context");
            t.j(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Uri c(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }

        public CreateDocument() {
            this("*/*");
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull String input) {
            t.j(context, "context");
            t.j(input, "input");
            Intent intentPutExtra = new Intent("android.intent.action.CREATE_DOCUMENT").setType(this.mimeType).putExtra("android.intent.extra.TITLE", input);
            t.i(intentPutExtra, "Intent(Intent.ACTION_CRE…ntent.EXTRA_TITLE, input)");
            return intentPutExtra;
        }
    }

    public static class GetContent extends ActivityResultContract<String, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final ActivityResultContract.SynchronousResult<Uri> b(@NotNull Context context, @NotNull String input) {
            t.j(context, "context");
            t.j(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Uri c(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull String input) {
            t.j(context, "context");
            t.j(input, "input");
            Intent type = new Intent("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE").setType(input);
            t.i(type, "Intent(Intent.ACTION_GET…          .setType(input)");
            return type;
        }
    }

    @RequiresApi
    public static class GetMultipleContents extends ActivityResultContract<String, List<Uri>> {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @RequiresApi
        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }

            @NotNull
            public final List<Uri> a(@NotNull Intent intent) {
                t.j(intent, "<this>");
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Uri data = intent.getData();
                if (data != null) {
                    linkedHashSet.add(data);
                }
                ClipData clipData = intent.getClipData();
                if (clipData == null && linkedHashSet.isEmpty()) {
                    return v.m();
                }
                if (clipData != null) {
                    int itemCount = clipData.getItemCount();
                    for (int i10 = 0; i10 < itemCount; i10++) {
                        Uri uri = clipData.getItemAt(i10).getUri();
                        if (uri != null) {
                            linkedHashSet.add(uri);
                        }
                    }
                }
                return new ArrayList(linkedHashSet);
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final ActivityResultContract.SynchronousResult<List<Uri>> b(@NotNull Context context, @NotNull String input) {
            t.j(context, "context");
            t.j(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final List<Uri> c(int i10, @Nullable Intent intent) {
            List<Uri> listA;
            if (i10 != -1) {
                intent = null;
            }
            return (intent == null || (listA = Companion.a(intent)) == null) ? v.m() : listA;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull String input) {
            t.j(context, "context");
            t.j(input, "input");
            Intent intentPutExtra = new Intent("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE").setType(input).putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
            t.i(intentPutExtra, "Intent(Intent.ACTION_GET…TRA_ALLOW_MULTIPLE, true)");
            return intentPutExtra;
        }
    }

    @RequiresApi
    public static class OpenDocument extends ActivityResultContract<String[], Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final ActivityResultContract.SynchronousResult<Uri> b(@NotNull Context context, @NotNull String[] input) {
            t.j(context, "context");
            t.j(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Uri c(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull String[] input) {
            t.j(context, "context");
            t.j(input, "input");
            Intent type = new Intent("android.intent.action.OPEN_DOCUMENT").putExtra("android.intent.extra.MIME_TYPES", input).setType("*/*");
            t.i(type, "Intent(Intent.ACTION_OPE…          .setType(\"*/*\")");
            return type;
        }
    }

    @RequiresApi
    public static class OpenDocumentTree extends ActivityResultContract<Uri, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final ActivityResultContract.SynchronousResult<Uri> b(@NotNull Context context, @Nullable Uri uri) {
            t.j(context, "context");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Uri c(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @Nullable Uri uri) {
            t.j(context, "context");
            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
            if (Build.VERSION.SDK_INT >= 26 && uri != null) {
                intent.putExtra("android.provider.extra.INITIAL_URI", uri);
            }
            return intent;
        }
    }

    @RequiresApi
    public static class OpenMultipleDocuments extends ActivityResultContract<String[], List<Uri>> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final ActivityResultContract.SynchronousResult<List<Uri>> b(@NotNull Context context, @NotNull String[] input) {
            t.j(context, "context");
            t.j(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final List<Uri> c(int i10, @Nullable Intent intent) {
            List<Uri> listA;
            if (i10 != -1) {
                intent = null;
            }
            return (intent == null || (listA = GetMultipleContents.Companion.a(intent)) == null) ? v.m() : listA;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull String[] input) {
            t.j(context, "context");
            t.j(input, "input");
            Intent type = new Intent("android.intent.action.OPEN_DOCUMENT").putExtra("android.intent.extra.MIME_TYPES", input).putExtra("android.intent.extra.ALLOW_MULTIPLE", true).setType("*/*");
            t.i(type, "Intent(Intent.ACTION_OPE…          .setType(\"*/*\")");
            return type;
        }
    }

    public static final class PickContact extends ActivityResultContract<Void, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Uri c(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @Nullable Void r5) {
            t.j(context, "context");
            Intent type = new Intent("android.intent.action.PICK").setType("vnd.android.cursor.dir/contact");
            t.i(type, "Intent(Intent.ACTION_PIC…ct.Contacts.CONTENT_TYPE)");
            return type;
        }
    }

    @RequiresApi
    public static class PickMultipleVisualMedia extends ActivityResultContract<PickVisualMediaRequest, List<Uri>> {

        @NotNull
        public static final Companion Companion = new Companion(null);
        private final int maxItems;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }

            @SuppressLint({"NewApi", "ClassVerificationFailure"})
            public final int a() {
                if (PickVisualMedia.Companion.f()) {
                    return MediaStore.getPickImagesMaxLimit();
                }
                return Integer.MAX_VALUE;
            }
        }

        public PickMultipleVisualMedia() {
            this(0, 1, null);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final ActivityResultContract.SynchronousResult<List<Uri>> b(@NotNull Context context, @NotNull PickVisualMediaRequest input) {
            t.j(context, "context");
            t.j(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final List<Uri> c(int i10, @Nullable Intent intent) {
            List<Uri> listA;
            if (i10 != -1) {
                intent = null;
            }
            return (intent == null || (listA = GetMultipleContents.Companion.a(intent)) == null) ? v.m() : listA;
        }

        public /* synthetic */ PickMultipleVisualMedia(int i10, int i11, k kVar) {
            this((i11 & 1) != 0 ? Companion.a() : i10);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        @CallSuper
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull PickVisualMediaRequest input) {
            t.j(context, "context");
            t.j(input, "input");
            PickVisualMedia.Companion companion = PickVisualMedia.Companion;
            if (companion.f()) {
                Intent intent = new Intent("android.provider.action.PICK_IMAGES");
                intent.setType(companion.c(input.a()));
                if (this.maxItems > MediaStore.getPickImagesMaxLimit()) {
                    throw new IllegalArgumentException("Max items must be less or equals MediaStore.getPickImagesMaxLimit()".toString());
                }
                intent.putExtra("android.provider.extra.PICK_IMAGES_MAX", this.maxItems);
                return intent;
            }
            if (companion.e(context)) {
                ResolveInfo resolveInfoB = companion.b(context);
                if (resolveInfoB == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                ActivityInfo activityInfo = resolveInfoB.activityInfo;
                Intent intent2 = new Intent(PickVisualMedia.ACTION_SYSTEM_FALLBACK_PICK_IMAGES);
                intent2.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
                intent2.setType(companion.c(input.a()));
                intent2.putExtra(PickVisualMedia.GMS_EXTRA_PICK_IMAGES_MAX, this.maxItems);
                return intent2;
            }
            if (companion.d(context)) {
                ResolveInfo resolveInfoA = companion.a(context);
                if (resolveInfoA == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                ActivityInfo activityInfo2 = resolveInfoA.activityInfo;
                Intent intent3 = new Intent(PickVisualMedia.GMS_ACTION_PICK_IMAGES);
                intent3.setClassName(activityInfo2.applicationInfo.packageName, activityInfo2.name);
                intent3.putExtra(PickVisualMedia.GMS_EXTRA_PICK_IMAGES_MAX, this.maxItems);
                return intent3;
            }
            Intent intent4 = new Intent("android.intent.action.OPEN_DOCUMENT");
            intent4.setType(companion.c(input.a()));
            intent4.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
            if (intent4.getType() != null) {
                return intent4;
            }
            intent4.setType("*/*");
            intent4.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*"});
            return intent4;
        }

        public PickMultipleVisualMedia(int i10) {
            this.maxItems = i10;
            if (i10 <= 1) {
                throw new IllegalArgumentException("Max items must be higher than 1".toString());
            }
        }
    }

    @RequiresApi
    public static class PickVisualMedia extends ActivityResultContract<PickVisualMediaRequest, Uri> {

        @NotNull
        public static final String ACTION_SYSTEM_FALLBACK_PICK_IMAGES = "androidx.activity.result.contract.action.PICK_IMAGES";

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        public static final String EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_MAX = "androidx.activity.result.contract.extra.PICK_IMAGES_MAX";

        @NotNull
        public static final String GMS_ACTION_PICK_IMAGES = "com.google.android.gms.provider.action.PICK_IMAGES";

        @NotNull
        public static final String GMS_EXTRA_PICK_IMAGES_MAX = "com.google.android.gms.provider.extra.PICK_IMAGES_MAX";

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }

            @Nullable
            public final ResolveInfo a(@NotNull Context context) {
                t.j(context, "context");
                return context.getPackageManager().resolveActivity(new Intent(PickVisualMedia.GMS_ACTION_PICK_IMAGES), 1114112);
            }

            @Nullable
            public final ResolveInfo b(@NotNull Context context) {
                t.j(context, "context");
                return context.getPackageManager().resolveActivity(new Intent(PickVisualMedia.ACTION_SYSTEM_FALLBACK_PICK_IMAGES), 1114112);
            }

            @Nullable
            public final String c(@NotNull VisualMediaType input) {
                t.j(input, "input");
                if (input instanceof ImageOnly) {
                    return "image/*";
                }
                if (input instanceof VideoOnly) {
                    return "video/*";
                }
                if (input instanceof SingleMimeType) {
                    return ((SingleMimeType) input).a();
                }
                if (input instanceof ImageAndVideo) {
                    return null;
                }
                throw new s();
            }

            public final boolean d(@NotNull Context context) {
                t.j(context, "context");
                return a(context) != null;
            }

            public final boolean e(@NotNull Context context) {
                t.j(context, "context");
                return b(context) != null;
            }

            @SuppressLint({"ClassVerificationFailure", "NewApi"})
            public final boolean f() {
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 33) {
                    return true;
                }
                return i10 >= 30 && SdkExtensions.getExtensionVersion(30) >= 2;
            }
        }

        public static final class SingleMimeType implements VisualMediaType {

            @NotNull
            private final String mimeType;

            @NotNull
            public final String a() {
                return this.mimeType;
            }

            public SingleMimeType(@NotNull String mimeType) {
                t.j(mimeType, "mimeType");
                this.mimeType = mimeType;
            }
        }

        public interface VisualMediaType {
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final ActivityResultContract.SynchronousResult<Uri> b(@NotNull Context context, @NotNull PickVisualMediaRequest input) {
            t.j(context, "context");
            t.j(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Uri c(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent == null) {
                return null;
            }
            Uri data = intent.getData();
            if (data == null) {
                data = (Uri) d0.l0(GetMultipleContents.Companion.a(intent));
            }
            return data;
        }

        public static final class ImageAndVideo implements VisualMediaType {

            @NotNull
            public static final ImageAndVideo INSTANCE = new ImageAndVideo();

            private ImageAndVideo() {
            }
        }

        public static final class ImageOnly implements VisualMediaType {

            @NotNull
            public static final ImageOnly INSTANCE = new ImageOnly();

            private ImageOnly() {
            }
        }

        public static final class VideoOnly implements VisualMediaType {

            @NotNull
            public static final VideoOnly INSTANCE = new VideoOnly();

            private VideoOnly() {
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull PickVisualMediaRequest input) {
            Intent intent;
            t.j(context, "context");
            t.j(input, "input");
            Companion companion = Companion;
            if (companion.f()) {
                Intent intent2 = new Intent("android.provider.action.PICK_IMAGES");
                intent2.setType(companion.c(input.a()));
                return intent2;
            }
            if (companion.e(context)) {
                ResolveInfo resolveInfoB = companion.b(context);
                if (resolveInfoB == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                ActivityInfo activityInfo = resolveInfoB.activityInfo;
                intent = new Intent(ACTION_SYSTEM_FALLBACK_PICK_IMAGES);
                intent.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
                intent.setType(companion.c(input.a()));
            } else {
                if (!companion.d(context)) {
                    Intent intent3 = new Intent("android.intent.action.OPEN_DOCUMENT");
                    intent3.setType(companion.c(input.a()));
                    if (intent3.getType() != null) {
                        return intent3;
                    }
                    intent3.setType("*/*");
                    intent3.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*"});
                    return intent3;
                }
                ResolveInfo resolveInfoA = companion.a(context);
                if (resolveInfoA == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                ActivityInfo activityInfo2 = resolveInfoA.activityInfo;
                intent = new Intent(GMS_ACTION_PICK_IMAGES);
                intent.setClassName(activityInfo2.applicationInfo.packageName, activityInfo2.name);
                intent.setType(companion.c(input.a()));
            }
            return intent;
        }
    }

    public static final class RequestMultiplePermissions extends ActivityResultContract<String[], Map<String, Boolean>> {

        @NotNull
        public static final String ACTION_REQUEST_PERMISSIONS = "androidx.activity.result.contract.action.REQUEST_PERMISSIONS";

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        public static final String EXTRA_PERMISSIONS = "androidx.activity.result.contract.extra.PERMISSIONS";

        @NotNull
        public static final String EXTRA_PERMISSION_GRANT_RESULTS = "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS";

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }

            @NotNull
            public final Intent a(@NotNull String[] input) {
                t.j(input, "input");
                Intent intentPutExtra = new Intent(RequestMultiplePermissions.ACTION_REQUEST_PERMISSIONS).putExtra(RequestMultiplePermissions.EXTRA_PERMISSIONS, input);
                t.i(intentPutExtra, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)");
                return intentPutExtra;
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Map<String, Boolean> c(int i10, @Nullable Intent intent) {
            if (i10 == -1 && intent != null) {
                String[] stringArrayExtra = intent.getStringArrayExtra(EXTRA_PERMISSIONS);
                int[] intArrayExtra = intent.getIntArrayExtra(EXTRA_PERMISSION_GRANT_RESULTS);
                if (intArrayExtra == null || stringArrayExtra == null) {
                    return s0.h();
                }
                ArrayList arrayList = new ArrayList(intArrayExtra.length);
                for (int i11 : intArrayExtra) {
                    arrayList.add(Boolean.valueOf(i11 == 0));
                }
                return s0.u(d0.Z0(p.J(stringArrayExtra), arrayList));
            }
            return s0.h();
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull String[] input) {
            t.j(context, "context");
            t.j(input, "input");
            return Companion.a(input);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public ActivityResultContract.SynchronousResult<Map<String, Boolean>> b(@NotNull Context context, @NotNull String[] input) {
            t.j(context, "context");
            t.j(input, "input");
            if (input.length == 0) {
                return new ActivityResultContract.SynchronousResult<>(s0.h());
            }
            for (String str : input) {
                if (ContextCompat.checkSelfPermission(context, str) != 0) {
                    return null;
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(o.e(r0.e(input.length), 16));
            for (String str2 : input) {
                u uVarA = a0.a(str2, Boolean.TRUE);
                linkedHashMap.put(uVarA.c(), uVarA.d());
            }
            return new ActivityResultContract.SynchronousResult<>(linkedHashMap);
        }
    }

    public static final class RequestPermission extends ActivityResultContract<String, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull String input) {
            t.j(context, "context");
            t.j(input, "input");
            return RequestMultiplePermissions.Companion.a(new String[]{input});
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public ActivityResultContract.SynchronousResult<Boolean> b(@NotNull Context context, @NotNull String input) {
            t.j(context, "context");
            t.j(input, "input");
            if (ContextCompat.checkSelfPermission(context, input) == 0) {
                return new ActivityResultContract.SynchronousResult<>(Boolean.TRUE);
            }
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Boolean c(int i10, @Nullable Intent intent) {
            if (intent == null || i10 != -1) {
                return Boolean.FALSE;
            }
            int[] intArrayExtra = intent.getIntArrayExtra(RequestMultiplePermissions.EXTRA_PERMISSION_GRANT_RESULTS);
            boolean z6 = false;
            if (intArrayExtra != null) {
                for (int i11 : intArrayExtra) {
                    if (i11 == 0) {
                        z6 = true;
                        break;
                    }
                }
            }
            return Boolean.valueOf(z6);
        }
    }

    public static final class StartActivityForResult extends ActivityResultContract<Intent, ActivityResult> {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        public static final String EXTRA_ACTIVITY_OPTIONS_BUNDLE = "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE";

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull Intent input) {
            t.j(context, "context");
            t.j(input, "input");
            return input;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public ActivityResult c(int i10, @Nullable Intent intent) {
            return new ActivityResult(i10, intent);
        }
    }

    public static final class StartIntentSenderForResult extends ActivityResultContract<IntentSenderRequest, ActivityResult> {

        @NotNull
        public static final String ACTION_INTENT_SENDER_REQUEST = "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST";

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        public static final String EXTRA_INTENT_SENDER_REQUEST = "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST";

        @NotNull
        public static final String EXTRA_SEND_INTENT_EXCEPTION = "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION";

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull IntentSenderRequest input) {
            t.j(context, "context");
            t.j(input, "input");
            Intent intentPutExtra = new Intent(ACTION_INTENT_SENDER_REQUEST).putExtra(EXTRA_INTENT_SENDER_REQUEST, input);
            t.i(intentPutExtra, "Intent(ACTION_INTENT_SEN…NT_SENDER_REQUEST, input)");
            return intentPutExtra;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public ActivityResult c(int i10, @Nullable Intent intent) {
            return new ActivityResult(i10, intent);
        }
    }

    public static class TakePicture extends ActivityResultContract<Uri, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final ActivityResultContract.SynchronousResult<Boolean> b(@NotNull Context context, @NotNull Uri input) {
            t.j(context, "context");
            t.j(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Boolean c(int i10, @Nullable Intent intent) {
            return Boolean.valueOf(i10 == -1);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull Uri input) {
            t.j(context, "context");
            t.j(input, "input");
            Intent intentPutExtra = new Intent("android.media.action.IMAGE_CAPTURE").putExtra("output", input);
            t.i(intentPutExtra, "Intent(MediaStore.ACTION…tore.EXTRA_OUTPUT, input)");
            return intentPutExtra;
        }
    }

    public static class TakePicturePreview extends ActivityResultContract<Void, Bitmap> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final ActivityResultContract.SynchronousResult<Bitmap> b(@NotNull Context context, @Nullable Void r5) {
            t.j(context, "context");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Bitmap c(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return (Bitmap) intent.getParcelableExtra("data");
            }
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @Nullable Void r5) {
            t.j(context, "context");
            return new Intent("android.media.action.IMAGE_CAPTURE");
        }
    }

    public static class TakeVideo extends ActivityResultContract<Uri, Bitmap> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final ActivityResultContract.SynchronousResult<Bitmap> b(@NotNull Context context, @NotNull Uri input) {
            t.j(context, "context");
            t.j(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Bitmap c(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return (Bitmap) intent.getParcelableExtra("data");
            }
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(@NotNull Context context, @NotNull Uri input) {
            t.j(context, "context");
            t.j(input, "input");
            Intent intentPutExtra = new Intent("android.media.action.VIDEO_CAPTURE").putExtra("output", input);
            t.i(intentPutExtra, "Intent(MediaStore.ACTION…tore.EXTRA_OUTPUT, input)");
            return intentPutExtra;
        }
    }

    private ActivityResultContracts() {
    }
}
