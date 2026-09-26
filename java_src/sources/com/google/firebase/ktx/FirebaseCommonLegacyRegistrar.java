package com.google.firebase.ktx;

import androidx.annotation.Keep;
import b5.h;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.c;
import java.util.List;
import kotlin.collections.u;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Keep
public final class FirebaseCommonLegacyRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    @NotNull
    public List<c<?>> getComponents() {
        return u.e(h.b("fire-core-ktx", "20.4.2"));
    }
}
