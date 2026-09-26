package androidx.window.core;

import e8.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SpecificationComputer<T> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ SpecificationComputer b(Companion companion, Object obj, String str, VerificationMode verificationMode, Logger logger, int i10, Object obj2) {
            if ((i10 & 2) != 0) {
                verificationMode = BuildConfig.INSTANCE.a();
            }
            if ((i10 & 4) != 0) {
                logger = AndroidLogger.INSTANCE;
            }
            return companion.a(obj, str, verificationMode, logger);
        }

        @NotNull
        public final <T> SpecificationComputer<T> a(@NotNull T t5, @NotNull String tag, @NotNull VerificationMode verificationMode, @NotNull Logger logger) {
            t.j(t5, "<this>");
            t.j(tag, "tag");
            t.j(verificationMode, "verificationMode");
            t.j(logger, "logger");
            return new ValidSpecification(t5, tag, verificationMode, logger);
        }
    }

    public enum VerificationMode {
        STRICT,
        LOG,
        QUIET
    }

    @Nullable
    public abstract T a();

    @NotNull
    public abstract SpecificationComputer<T> c(@NotNull String str, @NotNull l<? super T, Boolean> lVar);

    @NotNull
    protected final String b(@NotNull Object value, @NotNull String message) {
        t.j(value, "value");
        t.j(message, "message");
        return message + " value: " + value;
    }
}
