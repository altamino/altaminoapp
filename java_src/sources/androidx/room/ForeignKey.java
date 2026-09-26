package androidx.room;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Method from annotation default annotation not found: deferred */
/* JADX WARN: Method from annotation default annotation not found: onDelete */
/* JADX WARN: Method from annotation default annotation not found: onUpdate */
/* JADX INFO: loaded from: classes6.dex */
@Target({})
@Retention(RetentionPolicy.CLASS)
public @interface ForeignKey {
    public static final int CASCADE = 5;

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int NO_ACTION = 1;
    public static final int RESTRICT = 2;
    public static final int SET_DEFAULT = 4;
    public static final int SET_NULL = 3;

    @Retention(RetentionPolicy.CLASS)
    public @interface Action {
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int CASCADE = 5;
        public static final int NO_ACTION = 1;
        public static final int RESTRICT = 2;
        public static final int SET_DEFAULT = 4;
        public static final int SET_NULL = 3;

        private Companion() {
        }
    }
}
