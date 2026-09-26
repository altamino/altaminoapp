package androidx.room;

import androidx.annotation.RequiresApi;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Method from annotation default annotation not found: collate */
/* JADX WARN: Method from annotation default annotation not found: defaultValue */
/* JADX WARN: Method from annotation default annotation not found: index */
/* JADX WARN: Method from annotation default annotation not found: name */
/* JADX WARN: Method from annotation default annotation not found: typeAffinity */
/* JADX INFO: loaded from: classes6.dex */
@Target({ElementType.FIELD, ElementType.METHOD})
@Retention(RetentionPolicy.CLASS)
public @interface ColumnInfo {
    public static final int BINARY = 2;
    public static final int BLOB = 5;

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @NotNull
    public static final String INHERIT_FIELD_NAME = "[field-name]";
    public static final int INTEGER = 3;

    @RequiresApi
    public static final int LOCALIZED = 5;
    public static final int NOCASE = 3;
    public static final int REAL = 4;
    public static final int RTRIM = 4;
    public static final int TEXT = 2;
    public static final int UNDEFINED = 1;

    @RequiresApi
    public static final int UNICODE = 6;
    public static final int UNSPECIFIED = 1;

    @NotNull
    public static final String VALUE_UNSPECIFIED = "[value-unspecified]";

    @RequiresApi
    @Retention(RetentionPolicy.CLASS)
    public @interface Collate {
    }

    @Retention(RetentionPolicy.CLASS)
    public @interface SQLiteTypeAffinity {
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int BINARY = 2;
        public static final int BLOB = 5;

        @NotNull
        public static final String INHERIT_FIELD_NAME = "[field-name]";
        public static final int INTEGER = 3;

        @RequiresApi
        public static final int LOCALIZED = 5;
        public static final int NOCASE = 3;
        public static final int REAL = 4;
        public static final int RTRIM = 4;
        public static final int TEXT = 2;
        public static final int UNDEFINED = 1;

        @RequiresApi
        public static final int UNICODE = 6;
        public static final int UNSPECIFIED = 1;

        @NotNull
        public static final String VALUE_UNSPECIFIED = "[value-unspecified]";

        private Companion() {
        }
    }
}
