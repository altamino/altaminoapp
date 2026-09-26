package androidx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX WARN: Method from annotation default annotation not found: level */
/* JADX INFO: loaded from: classes6.dex */
@Target({ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.CLASS)
public @interface RequiresOptIn {

    public enum Level {
        WARNING,
        ERROR
    }
}
