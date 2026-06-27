package kotlin.jvm.internal;

import com.narvii.pushservice.PushNotificationService;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.markers.KMappedMarker;

/* loaded from: classes4.dex */
public class TypeIntrinsics {
    private static <T extends Throwable> T sanitizeStackTrace(T t) {
        Intrinsics.sanitizeStackTrace(t, TypeIntrinsics.class.getName());
        return t;
    }

    public static void throwCce(Object obj, String str) {
        throwCce((obj == null ? PushNotificationService.NO_GROUP : obj.getClass().getName()) + " cannot be cast to " + str);
        throw null;
    }

    public static void throwCce(String str) {
        throwCce(new ClassCastException(str));
        throw null;
    }

    public static ClassCastException throwCce(ClassCastException classCastException) {
        sanitizeStackTrace(classCastException);
        throw classCastException;
    }

    public static Iterable asMutableIterable(Object obj) {
        if (obj instanceof KMappedMarker) {
            throwCce(obj, "kotlin.collections.MutableIterable");
            throw null;
        }
        return castToIterable(obj);
    }

    public static Iterable castToIterable(Object obj) {
        try {
            return (Iterable) obj;
        } catch (ClassCastException e) {
            throwCce(e);
            throw null;
        }
    }

    public static Collection asMutableCollection(Object obj) {
        if (obj instanceof KMappedMarker) {
            throwCce(obj, "kotlin.collections.MutableCollection");
            throw null;
        }
        return castToCollection(obj);
    }

    public static Collection castToCollection(Object obj) {
        try {
            return (Collection) obj;
        } catch (ClassCastException e) {
            throwCce(e);
            throw null;
        }
    }

    public static List asMutableList(Object obj) {
        if (obj instanceof KMappedMarker) {
            throwCce(obj, "kotlin.collections.MutableList");
            throw null;
        }
        return castToList(obj);
    }

    public static List castToList(Object obj) {
        try {
            return (List) obj;
        } catch (ClassCastException e) {
            throwCce(e);
            throw null;
        }
    }

    public static Map asMutableMap(Object obj) {
        if (obj instanceof KMappedMarker) {
            throwCce(obj, "kotlin.collections.MutableMap");
            throw null;
        }
        return castToMap(obj);
    }

    public static Map castToMap(Object obj) {
        try {
            return (Map) obj;
        } catch (ClassCastException e) {
            throwCce(e);
            throw null;
        }
    }
}
