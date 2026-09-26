package q4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes10.dex */
@AutoValue
public abstract class d {

    @NonNull
    public static d INSTANCE = a().a();

    @AutoValue.Builder
    public static abstract class a {
        @NonNull
        public abstract d a();

        @NonNull
        public abstract a b(@Nullable String str);

        @NonNull
        public abstract a c(long j6);

        @NonNull
        public abstract a d(@NonNull String str);

        @NonNull
        public abstract a e(@Nullable String str);

        @NonNull
        public abstract a f(@Nullable String str);

        @NonNull
        public abstract a g(@NonNull c.a aVar);

        @NonNull
        public abstract a h(long j6);
    }

    @Nullable
    public abstract String b();

    public abstract long c();

    @Nullable
    public abstract String d();

    @Nullable
    public abstract String e();

    @Nullable
    public abstract String f();

    @NonNull
    public abstract c.a g();

    public abstract long h();

    @NonNull
    public abstract a n();

    @NonNull
    public static a a() {
        return new q4.a.b().h(0L).g(c.a.ATTEMPT_MIGRATION).c(0L);
    }

    public boolean i() {
        if (g() == c.a.REGISTER_ERROR) {
            return true;
        }
        return false;
    }

    public boolean j() {
        if (g() != c.a.NOT_GENERATED && g() != c.a.ATTEMPT_MIGRATION) {
            return false;
        }
        return true;
    }

    public boolean k() {
        if (g() == c.a.REGISTERED) {
            return true;
        }
        return false;
    }

    public boolean l() {
        if (g() == c.a.UNREGISTERED) {
            return true;
        }
        return false;
    }

    public boolean m() {
        if (g() == c.a.ATTEMPT_MIGRATION) {
            return true;
        }
        return false;
    }

    @NonNull
    public d o(@NonNull String str, long j6, long j10) {
        return n().b(str).c(j6).h(j10).a();
    }

    @NonNull
    public d p() {
        return n().b(null).a();
    }

    @NonNull
    public d q(@NonNull String str) {
        return n().e(str).g(c.a.REGISTER_ERROR).a();
    }

    @NonNull
    public d r() {
        return n().g(c.a.NOT_GENERATED).a();
    }

    @NonNull
    public d s(@NonNull String str, @NonNull String str2, long j6, @Nullable String str3, long j10) {
        return n().d(str).g(c.a.REGISTERED).b(str3).f(str2).c(j10).h(j6).a();
    }

    @NonNull
    public d t(@NonNull String str) {
        return n().d(str).g(c.a.UNREGISTERED).a();
    }
}
