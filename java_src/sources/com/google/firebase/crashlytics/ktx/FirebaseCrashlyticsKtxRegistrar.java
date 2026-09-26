package com.google.firebase.crashlytics.ktx;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.c;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public final class FirebaseCrashlyticsKtxRegistrar implements ComponentRegistrar {

    @NotNull
    public static final a Companion = new a(null);

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @NotNull
    public List<c<?>> getComponents() {
        return v.m();
    }
}
