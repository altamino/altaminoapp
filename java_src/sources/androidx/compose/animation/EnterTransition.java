package androidx.compose.animation;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public abstract class EnterTransition {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final EnterTransition None = new EnterTransitionImpl(new TransitionData(null, null, null, null, 15, null));

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ EnterTransition(k kVar) {
        this();
    }

    @NotNull
    public abstract TransitionData a();

    private EnterTransition() {
    }

    @Stable
    @NotNull
    public final EnterTransition b(@NotNull EnterTransition enter) {
        t.j(enter, "enter");
        Fade fadeB = a().b();
        if (fadeB == null) {
            fadeB = enter.a().b();
        }
        Slide slideD = a().d();
        if (slideD == null) {
            slideD = enter.a().d();
        }
        ChangeSize changeSizeA = a().a();
        if (changeSizeA == null) {
            changeSizeA = enter.a().a();
        }
        Scale scaleC = a().c();
        if (scaleC == null) {
            scaleC = enter.a().c();
        }
        return new EnterTransitionImpl(new TransitionData(fadeB, slideD, changeSizeA, scaleC));
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof EnterTransition) && t.e(((EnterTransition) obj).a(), a());
    }

    public int hashCode() {
        return a().hashCode();
    }
}
