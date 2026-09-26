package androidx.activity;

import androidx.lifecycle.LifecycleOwner;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface OnBackPressedDispatcherOwner extends LifecycleOwner {
    @NotNull
    OnBackPressedDispatcher getOnBackPressedDispatcher();
}
