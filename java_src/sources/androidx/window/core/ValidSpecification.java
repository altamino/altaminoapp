package androidx.window.core;

import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class ValidSpecification<T> extends SpecificationComputer<T> {

    @NotNull
    private final Logger logger;

    @NotNull
    private final String tag;

    @NotNull
    private final T value;

    @NotNull
    private final SpecificationComputer.VerificationMode verificationMode;

    @Override // androidx.window.core.SpecificationComputer
    @NotNull
    public T a() {
        return this.value;
    }

    @Override // androidx.window.core.SpecificationComputer
    @NotNull
    public SpecificationComputer<T> c(@NotNull String message, @NotNull l<? super T, Boolean> condition) {
        t.j(message, "message");
        t.j(condition, "condition");
        return condition.invoke(this.value).booleanValue() ? this : new FailedSpecification(this.value, this.tag, message, this.logger, this.verificationMode);
    }

    public ValidSpecification(@NotNull T value, @NotNull String tag, @NotNull SpecificationComputer.VerificationMode verificationMode, @NotNull Logger logger) {
        t.j(value, "value");
        t.j(tag, "tag");
        t.j(verificationMode, "verificationMode");
        t.j(logger, "logger");
        this.value = value;
        this.tag = tag;
        this.verificationMode = verificationMode;
        this.logger = logger;
    }
}
