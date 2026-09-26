package androidx.room;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX WARN: Method from annotation default annotation not found: name */
/* JADX WARN: Method from annotation default annotation not found: orders */
/* JADX WARN: Method from annotation default annotation not found: unique */
/* JADX INFO: loaded from: classes5.dex */
@Target({})
@Retention(RetentionPolicy.CLASS)
public @interface Index {

    public enum Order {
        ASC,
        DESC
    }
}
