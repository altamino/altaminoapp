package androidx.window.core;

import e8.l;
import kotlin.collections.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes9.dex */
final class FailedSpecification<T> extends SpecificationComputer<T> {

    @NotNull
    private final WindowStrictModeException exception;

    @NotNull
    private final Logger logger;

    @NotNull
    private final String message;

    @NotNull
    private final String tag;

    @NotNull
    private final T value;

    @NotNull
    private final SpecificationComputer.VerificationMode verificationMode;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SpecificationComputer.VerificationMode.values().length];
            iArr[SpecificationComputer.VerificationMode.STRICT.ordinal()] = 1;
            iArr[SpecificationComputer.VerificationMode.LOG.ordinal()] = 2;
            iArr[SpecificationComputer.VerificationMode.QUIET.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // androidx.window.core.SpecificationComputer
    @NotNull
    public SpecificationComputer<T> c(@NotNull String message, @NotNull l<? super T, Boolean> condition) {
        t.j(message, "message");
        t.j(condition, "condition");
        return this;
    }

    @Override // androidx.window.core.SpecificationComputer
    @Nullable
    public T a() throws WindowStrictModeException {
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.verificationMode.ordinal()];
        if (i10 == 1) {
            throw this.exception;
        }
        if (i10 == 2) {
            this.logger.a(this.tag, b(this.value, this.message));
            return null;
        }
        if (i10 == 3) {
            return null;
        }
        throw new s();
    }

    public FailedSpecification(@NotNull T value, @NotNull String tag, @NotNull String message, @NotNull Logger logger, @NotNull SpecificationComputer.VerificationMode verificationMode) {
        t.j(value, "value");
        t.j(tag, "tag");
        t.j(message, "message");
        t.j(logger, "logger");
        t.j(verificationMode, "verificationMode");
        this.value = value;
        this.tag = tag;
        this.message = message;
        this.logger = logger;
        this.verificationMode = verificationMode;
        WindowStrictModeException windowStrictModeException = new WindowStrictModeException(b(value, message));
        StackTraceElement[] stackTrace = windowStrictModeException.getStackTrace();
        t.i(stackTrace, "stackTrace");
        Object[] array = p.I(stackTrace, 2).toArray(new StackTraceElement[0]);
        if (array != null) {
            windowStrictModeException.setStackTrace((StackTraceElement[]) array);
            this.exception = windowStrictModeException;
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }
}
