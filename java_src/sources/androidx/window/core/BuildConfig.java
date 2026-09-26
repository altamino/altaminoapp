package androidx.window.core;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class BuildConfig {

    @NotNull
    public static final BuildConfig INSTANCE = new BuildConfig();

    @NotNull
    private static final SpecificationComputer.VerificationMode verificationMode = SpecificationComputer.VerificationMode.QUIET;

    @NotNull
    public final SpecificationComputer.VerificationMode a() {
        return verificationMode;
    }

    private BuildConfig() {
    }
}
