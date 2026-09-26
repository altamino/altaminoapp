package com.google.firebase.remoteconfig.internal.rollouts;

import android.util.Log;
import androidx.annotation.NonNull;
import c5.i;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.internal.f;
import com.google.firebase.remoteconfig.internal.g;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes6.dex */
public class e {
    private f activatedConfigsCache;
    private Executor executor;
    private a rolloutsStateFactory;
    private Set<com.google.firebase.remoteconfig.interop.rollouts.f> subscribers = Collections.newSetFromMap(new ConcurrentHashMap());

    public void g(@NonNull g gVar) {
        try {
            final com.google.firebase.remoteconfig.interop.rollouts.e eVarB = this.rolloutsStateFactory.b(gVar);
            for (final com.google.firebase.remoteconfig.interop.rollouts.f fVar : this.subscribers) {
                this.executor.execute(new Runnable() { // from class: com.google.firebase.remoteconfig.internal.rollouts.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        fVar.a(eVarB);
                    }
                });
            }
        } catch (i e) {
            Log.w(com.google.firebase.remoteconfig.a.TAG, "Exception publishing RolloutsState to subscribers. Continuing to listen for changes.", e);
        }
    }

    public void h(@NonNull final com.google.firebase.remoteconfig.interop.rollouts.f fVar) {
        this.subscribers.add(fVar);
        final Task<g> taskE = this.activatedConfigsCache.e();
        taskE.addOnSuccessListener(this.executor, new OnSuccessListener() { // from class: com.google.firebase.remoteconfig.internal.rollouts.c
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                this.f1672a.f(taskE, fVar, (g) obj);
            }
        });
    }

    public e(@NonNull f fVar, @NonNull a aVar, @NonNull Executor executor) {
        this.activatedConfigsCache = fVar;
        this.rolloutsStateFactory = aVar;
        this.executor = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(Task task, final com.google.firebase.remoteconfig.interop.rollouts.f fVar, g gVar) {
        try {
            g gVar2 = (g) task.getResult();
            if (gVar2 != null) {
                final com.google.firebase.remoteconfig.interop.rollouts.e eVarB = this.rolloutsStateFactory.b(gVar2);
                this.executor.execute(new Runnable() { // from class: com.google.firebase.remoteconfig.internal.rollouts.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        fVar.a(eVarB);
                    }
                });
            }
        } catch (i e) {
            Log.w(com.google.firebase.remoteconfig.a.TAG, "Exception publishing RolloutsState to subscriber. Continuing to listen for changes.", e);
        }
    }
}
