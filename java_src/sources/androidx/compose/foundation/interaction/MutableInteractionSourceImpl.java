package androidx.compose.foundation.interaction;

import androidx.compose.runtime.Stable;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.channels.a;
import kotlinx.coroutines.flow.d0;
import kotlinx.coroutines.flow.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
@Stable
final class MutableInteractionSourceImpl implements MutableInteractionSource {

    @NotNull
    private final w<Interaction> interactions = d0.b(0, 16, a.DROP_OLDEST, 1, null);

    @Override // androidx.compose.foundation.interaction.InteractionSource
    @NotNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public w<Interaction> c() {
        return this.interactions;
    }

    @Override // androidx.compose.foundation.interaction.MutableInteractionSource
    public boolean a(@NotNull Interaction interaction) {
        t.j(interaction, "interaction");
        return c().c(interaction);
    }

    @Override // androidx.compose.foundation.interaction.MutableInteractionSource
    @Nullable
    public Object b(@NotNull Interaction interaction, @NotNull d<? super l0> dVar) {
        Object objEmit = c().emit(interaction, dVar);
        if (objEmit == kotlin.coroutines.intrinsics.d.e()) {
            return objEmit;
        }
        return l0.INSTANCE;
    }
}
