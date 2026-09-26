package androidx.browser.trusted.sharing;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ShareTarget {
    public static final String ENCODING_TYPE_MULTIPART = "multipart/form-data";
    public static final String ENCODING_TYPE_URL_ENCODED = "application/x-www-form-urlencoded";

    @SuppressLint({"IntentName"})
    public static final String KEY_ACTION = "androidx.browser.trusted.sharing.KEY_ACTION";
    public static final String KEY_ENCTYPE = "androidx.browser.trusted.sharing.KEY_ENCTYPE";
    public static final String KEY_METHOD = "androidx.browser.trusted.sharing.KEY_METHOD";
    public static final String KEY_PARAMS = "androidx.browser.trusted.sharing.KEY_PARAMS";
    public static final String METHOD_GET = "GET";
    public static final String METHOD_POST = "POST";

    @NonNull
    public final String action;

    @Nullable
    public final String encodingType;

    @Nullable
    public final String method;

    @NonNull
    public final Params params;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface EncodingType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface RequestMethod {
    }

    public static final class FileFormField {
        public static final String KEY_ACCEPTED_TYPES = "androidx.browser.trusted.sharing.KEY_ACCEPTED_TYPES";
        public static final String KEY_NAME = "androidx.browser.trusted.sharing.KEY_FILE_NAME";

        @NonNull
        public final List<String> acceptedTypes;

        @NonNull
        public final String name;

        public FileFormField(@NonNull String str, @NonNull List<String> list) {
            this.name = str;
            this.acceptedTypes = Collections.unmodifiableList(list);
        }
    }

    public static class Params {
        public static final String KEY_FILES = "androidx.browser.trusted.sharing.KEY_FILES";
        public static final String KEY_TEXT = "androidx.browser.trusted.sharing.KEY_TEXT";
        public static final String KEY_TITLE = "androidx.browser.trusted.sharing.KEY_TITLE";

        @Nullable
        public final List<FileFormField> files;

        @Nullable
        public final String text;

        @Nullable
        public final String title;

        public Params(@Nullable String str, @Nullable String str2, @Nullable List<FileFormField> list) {
            this.title = str;
            this.text = str2;
            this.files = list;
        }
    }

    public ShareTarget(@NonNull String str, @Nullable String str2, @Nullable String str3, @NonNull Params params) {
        this.action = str;
        this.method = str2;
        this.encodingType = str3;
        this.params = params;
    }
}
