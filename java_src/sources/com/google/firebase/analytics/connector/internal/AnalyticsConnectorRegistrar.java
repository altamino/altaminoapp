package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.h;
import com.google.firebase.components.s;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@Keep
@KeepForSdk
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    @NonNull
    @Keep
    @SuppressLint({"MissingPermission"})
    @KeepForSdk
    public List<com.google.firebase.components.c<?>> getComponents() {
        return Arrays.asList(com.google.firebase.components.c.e(com.google.firebase.analytics.connector.a.class).b(s.k(com.google.firebase.f.class)).b(s.k(Context.class)).b(s.k(l4.d.class)).f(new h() { // from class: com.google.firebase.analytics.connector.internal.b
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return com.google.firebase.analytics.connector.b.h((com.google.firebase.f) eVar.get(com.google.firebase.f.class), (Context) eVar.get(Context.class), (l4.d) eVar.get(l4.d.class));
            }
        }).e().d(), b5.h.b("fire-analytics", "21.5.0"));
    }
}
