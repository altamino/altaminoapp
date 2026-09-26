package androidx.room;

import android.content.Context;
import androidx.annotation.RestrictTo;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class Room {

    @NotNull
    private static final String CURSOR_CONV_SUFFIX = "_CursorConverter";

    @NotNull
    public static final Room INSTANCE = new Room();

    @NotNull
    public static final String LOG_TAG = "ROOM";

    @NotNull
    public static final String MASTER_TABLE_NAME = "room_master_table";

    @NotNull
    public static final <T extends RoomDatabase> RoomDatabase.Builder<T> a(@NotNull Context context, @NotNull Class<T> klass, @Nullable String str) {
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(klass, "klass");
        if (true ^ (str == null || kotlin.text.t.z(str))) {
            return new RoomDatabase.Builder<>(context, klass, str);
        }
        throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder".toString());
    }

    @RestrictTo
    public static final <T, C> T b(@NotNull Class<C> klass, @NotNull String suffix) {
        String str;
        kotlin.jvm.internal.t.j(klass, "klass");
        kotlin.jvm.internal.t.j(suffix, "suffix");
        Package r1 = klass.getPackage();
        kotlin.jvm.internal.t.g(r1);
        String fullPackage = r1.getName();
        String canonicalName = klass.getCanonicalName();
        kotlin.jvm.internal.t.g(canonicalName);
        kotlin.jvm.internal.t.i(fullPackage, "fullPackage");
        if (fullPackage.length() != 0) {
            canonicalName = canonicalName.substring(fullPackage.length() + 1);
            kotlin.jvm.internal.t.i(canonicalName, "this as java.lang.String).substring(startIndex)");
        }
        String str2 = kotlin.text.t.F(canonicalName, '.', '_', false, 4, null) + suffix;
        try {
            if (fullPackage.length() == 0) {
                str = str2;
            } else {
                str = fullPackage + '.' + str2;
            }
            Class<?> cls = Class.forName(str, true, klass.getClassLoader());
            kotlin.jvm.internal.t.h(cls, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.Room.getGeneratedImplementation>");
            return (T) cls.newInstance();
        } catch (ClassNotFoundException unused) {
            throw new RuntimeException("Cannot find implementation for " + klass.getCanonicalName() + ". " + str2 + " does not exist");
        } catch (IllegalAccessException unused2) {
            throw new RuntimeException("Cannot access the constructor " + klass + ".canonicalName");
        } catch (InstantiationException unused3) {
            throw new RuntimeException("Failed to create an instance of " + klass + ".canonicalName");
        }
    }

    @NotNull
    public static final <T extends RoomDatabase> RoomDatabase.Builder<T> c(@NotNull Context context, @NotNull Class<T> klass) {
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(klass, "klass");
        return new RoomDatabase.Builder<>(context, klass, null);
    }

    private Room() {
    }
}
