package com.google.firebase.crashlytics.internal;

import com.google.firebase.crashlytics.internal.metadata.n;
import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class e implements com.google.firebase.remoteconfig.interop.rollouts.f {

    @NotNull
    private final n userMetadata;

    public e(@NotNull n userMetadata) {
        t.j(userMetadata, "userMetadata");
        this.userMetadata = userMetadata;
    }

    @Override // com.google.firebase.remoteconfig.interop.rollouts.f
    public void a(@NotNull com.google.firebase.remoteconfig.interop.rollouts.e rolloutsState) {
        t.j(rolloutsState, "rolloutsState");
        n nVar = this.userMetadata;
        Set<com.google.firebase.remoteconfig.interop.rollouts.d> setB = rolloutsState.b();
        t.i(setB, "rolloutsState.rolloutAssignments");
        ArrayList arrayList = new ArrayList(w.x(setB, 10));
        for (com.google.firebase.remoteconfig.interop.rollouts.d dVar : setB) {
            arrayList.add(com.google.firebase.crashlytics.internal.metadata.i.b(dVar.d(), dVar.b(), dVar.c(), dVar.f(), dVar.e()));
        }
        nVar.r(arrayList);
        g.f().b("Updated Crashlytics Rollout State");
    }
}
