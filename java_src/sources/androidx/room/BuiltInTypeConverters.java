package androidx.room;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX WARN: Method from annotation default annotation not found: enums */
/* JADX WARN: Method from annotation default annotation not found: uuid */
/* JADX INFO: loaded from: classes9.dex */
@Target({})
@Retention(RetentionPolicy.CLASS)
public @interface BuiltInTypeConverters {

    public enum State {
        ENABLED,
        DISABLED,
        INHERITED
    }
}
