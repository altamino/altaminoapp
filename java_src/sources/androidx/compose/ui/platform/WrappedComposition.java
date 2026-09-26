package androidx.compose.ui.platform;

import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composition;
import androidx.compose.ui.R;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class WrappedComposition implements Composition, LifecycleEventObserver {

    @Nullable
    private Lifecycle addedToLifecycle;
    private boolean disposed;

    @NotNull
    private e8.p<? super Composer, ? super Integer, w7.l0> lastContent;

    @NotNull
    private final Composition original;

    @NotNull
    private final AndroidComposeView owner;

    @NotNull
    public final Composition x() {
        return this.original;
    }

    @NotNull
    public final AndroidComposeView y() {
        return this.owner;
    }

    public WrappedComposition(@NotNull AndroidComposeView owner, @NotNull Composition original) {
        kotlin.jvm.internal.t.j(owner, "owner");
        kotlin.jvm.internal.t.j(original, "original");
        this.owner = owner;
        this.original = original;
        this.lastContent = ComposableSingletons$Wrapper_androidKt.INSTANCE.a();
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        kotlin.jvm.internal.t.j(source, "source");
        kotlin.jvm.internal.t.j(event, "event");
        if (event == Lifecycle.Event.ON_DESTROY) {
            t();
        } else {
            if (event != Lifecycle.Event.ON_CREATE || this.disposed) {
                return;
            }
            v(this.lastContent);
        }
    }

    @Override // androidx.compose.runtime.Composition
    public void t() {
        if (!this.disposed) {
            this.disposed = true;
            this.owner.getView().setTag(R.id.wrapped_composition_tag, null);
            Lifecycle lifecycle = this.addedToLifecycle;
            if (lifecycle != null) {
                lifecycle.d(this);
            }
        }
        this.original.t();
    }

    @Override // androidx.compose.runtime.Composition
    public boolean u() {
        return this.original.u();
    }

    @Override // androidx.compose.runtime.Composition
    @ComposableInferredTarget
    public void v(@NotNull e8.p<? super Composer, ? super Integer, w7.l0> content) {
        kotlin.jvm.internal.t.j(content, "content");
        this.owner.setOnViewTreeOwnersAvailable(new WrappedComposition$setContent$1(this, content));
    }

    @Override // androidx.compose.runtime.Composition
    public boolean w() {
        return this.original.w();
    }
}
