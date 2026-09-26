package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import android.provider.BaseColumns;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class FontsContractCompat {

    @RestrictTo
    @Deprecated
    public static final String PARCEL_FONT_RESULTS = "font_results";

    @RestrictTo
    @Deprecated
    static final int RESULT_CODE_PROVIDER_NOT_FOUND = -1;

    @RestrictTo
    @Deprecated
    static final int RESULT_CODE_WRONG_CERTIFICATES = -2;

    public static final class Columns implements BaseColumns {
        public static final String FILE_ID = "file_id";
        public static final String ITALIC = "font_italic";
        public static final String RESULT_CODE = "result_code";
        public static final int RESULT_CODE_FONT_NOT_FOUND = 1;
        public static final int RESULT_CODE_FONT_UNAVAILABLE = 2;
        public static final int RESULT_CODE_MALFORMED_QUERY = 3;
        public static final int RESULT_CODE_OK = 0;
        public static final String TTC_INDEX = "font_ttc_index";
        public static final String VARIATION_SETTINGS = "font_variation_settings";
        public static final String WEIGHT = "font_weight";
    }

    public static class FontFamilyResult {
        public static final int STATUS_OK = 0;
        public static final int STATUS_UNEXPECTED_DATA_PROVIDED = 2;
        public static final int STATUS_WRONG_CERTIFICATES = 1;
        private final FontInfo[] mFonts;
        private final int mStatusCode;

        public FontInfo[] b() {
            return this.mFonts;
        }

        public int c() {
            return this.mStatusCode;
        }

        static FontFamilyResult a(int i10, @Nullable FontInfo[] fontInfoArr) {
            return new FontFamilyResult(i10, fontInfoArr);
        }

        @RestrictTo
        @Deprecated
        public FontFamilyResult(int i10, @Nullable FontInfo[] fontInfoArr) {
            this.mStatusCode = i10;
            this.mFonts = fontInfoArr;
        }
    }

    public static class FontInfo {
        private final boolean mItalic;
        private final int mResultCode;
        private final int mTtcIndex;
        private final Uri mUri;
        private final int mWeight;

        public int b() {
            return this.mResultCode;
        }

        @IntRange
        public int c() {
            return this.mTtcIndex;
        }

        @NonNull
        public Uri d() {
            return this.mUri;
        }

        @IntRange
        public int e() {
            return this.mWeight;
        }

        public boolean f() {
            return this.mItalic;
        }

        static FontInfo a(@NonNull Uri uri, @IntRange int i10, @IntRange int i11, boolean z6, int i12) {
            return new FontInfo(uri, i10, i11, z6, i12);
        }

        @RestrictTo
        @Deprecated
        public FontInfo(@NonNull Uri uri, @IntRange int i10, @IntRange int i11, boolean z6, int i12) {
            this.mUri = (Uri) Preconditions.i(uri);
            this.mTtcIndex = i10;
            this.mWeight = i11;
            this.mItalic = z6;
            this.mResultCode = i12;
        }
    }

    public static class FontRequestCallback {
        public static final int FAIL_REASON_FONT_LOAD_ERROR = -3;
        public static final int FAIL_REASON_FONT_NOT_FOUND = 1;
        public static final int FAIL_REASON_FONT_UNAVAILABLE = 2;
        public static final int FAIL_REASON_MALFORMED_QUERY = 3;
        public static final int FAIL_REASON_PROVIDER_NOT_FOUND = -1;
        public static final int FAIL_REASON_SECURITY_VIOLATION = -4;
        public static final int FAIL_REASON_WRONG_CERTIFICATES = -2;

        @RestrictTo
        @Deprecated
        public static final int RESULT_OK = 0;
        static final int RESULT_SUCCESS = 0;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        public @interface FontRequestFailReason {
        }

        public void a(int i10) {
        }

        public void b(Typeface typeface) {
        }
    }

    @Nullable
    public static Typeface a(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontInfo[] fontInfoArr) {
        return TypefaceCompat.b(context, cancellationSignal, fontInfoArr, 0);
    }

    @Nullable
    @RestrictTo
    public static Typeface c(@NonNull Context context, @NonNull FontRequest fontRequest, int i10, boolean z6, @IntRange int i11, @NonNull Handler handler, @NonNull FontRequestCallback fontRequestCallback) {
        CallbackWithHandler callbackWithHandler = new CallbackWithHandler(fontRequestCallback, handler);
        return z6 ? FontRequestWorker.e(context, fontRequest, callbackWithHandler, i10, i11) : FontRequestWorker.d(context, fontRequest, i10, null, callbackWithHandler);
    }

    private FontsContractCompat() {
    }

    @NonNull
    public static FontFamilyResult b(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontRequest fontRequest) throws PackageManager.NameNotFoundException {
        return FontProvider.e(context, fontRequest, cancellationSignal);
    }
}
