package androidx.compose.animation;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public abstract class ExitTransition {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final ExitTransition None = new ExitTransitionImpl(new TransitionData(null, null, null, null, 15, null));

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ ExitTransition(k kVar) {
        this();
    }

    @NotNull
    public abstract TransitionData a();

    private ExitTransition() {
    }

    @Stable
    @NotNull
    public final ExitTransition b(@NotNull ExitTransition exit) {
        t.j(exit, "exit");
        Fade fadeB = a().b();
        if (fadeB == null) {
            fadeB = exit.a().b();
        }
        Slide slideD = a().d();
        if (slideD == null) {
            slideD = exit.a().d();
        }
        ChangeSize changeSizeA = a().a();
        if (changeSizeA == null) {
            changeSizeA = exit.a().a();
        }
        Scale scaleC = a().c();
        if (scaleC == null) {
            scaleC = exit.a().c();
        }
        return new ExitTransitionImpl(new TransitionData(fadeB, slideD, changeSizeA, scaleC));
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof ExitTransition) && t.e(((ExitTransition) obj).a(), a());
    }

    public int hashCode() {
        return a().hashCode();
    }
}
