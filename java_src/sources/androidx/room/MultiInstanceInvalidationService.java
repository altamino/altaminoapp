package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import java.util.LinkedHashMap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
@ExperimentalRoomApi
public final class MultiInstanceInvalidationService extends Service {
    private int maxClientId;

    @NotNull
    private final Map<Integer, String> clientNames = new LinkedHashMap();

    @NotNull
    private final RemoteCallbackList<IMultiInstanceInvalidationCallback> callbackList = new RemoteCallbackList<IMultiInstanceInvalidationCallback>() { // from class: androidx.room.MultiInstanceInvalidationService$callbackList$1
        @Override // android.os.RemoteCallbackList
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onCallbackDied(@NotNull IMultiInstanceInvalidationCallback callback, @NotNull Object cookie) {
            kotlin.jvm.internal.t.j(callback, "callback");
            kotlin.jvm.internal.t.j(cookie, "cookie");
            this.this$0.b().remove((Integer) cookie);
        }
    };

    @NotNull
    private final IMultiInstanceInvalidationService.Stub binder = new IMultiInstanceInvalidationService.Stub() { // from class: androidx.room.MultiInstanceInvalidationService$binder$1
        @Override // androidx.room.IMultiInstanceInvalidationService
        public int V0(@NotNull IMultiInstanceInvalidationCallback callback, @Nullable String str) {
            kotlin.jvm.internal.t.j(callback, "callback");
            int i10 = 0;
            if (str == null) {
                return 0;
            }
            RemoteCallbackList<IMultiInstanceInvalidationCallback> remoteCallbackListA = this.this$0.a();
            MultiInstanceInvalidationService multiInstanceInvalidationService = this.this$0;
            synchronized (remoteCallbackListA) {
                try {
                    multiInstanceInvalidationService.d(multiInstanceInvalidationService.c() + 1);
                    int iC = multiInstanceInvalidationService.c();
                    if (multiInstanceInvalidationService.a().register(callback, Integer.valueOf(iC))) {
                        multiInstanceInvalidationService.b().put(Integer.valueOf(iC), str);
                        i10 = iC;
                    } else {
                        multiInstanceInvalidationService.d(multiInstanceInvalidationService.c() - 1);
                        multiInstanceInvalidationService.c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return i10;
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public void u1(@NotNull IMultiInstanceInvalidationCallback callback, int i10) {
            kotlin.jvm.internal.t.j(callback, "callback");
            RemoteCallbackList<IMultiInstanceInvalidationCallback> remoteCallbackListA = this.this$0.a();
            MultiInstanceInvalidationService multiInstanceInvalidationService = this.this$0;
            synchronized (remoteCallbackListA) {
                multiInstanceInvalidationService.a().unregister(callback);
                multiInstanceInvalidationService.b().remove(Integer.valueOf(i10));
            }
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public void K0(int i10, @NotNull String[] tables) {
            kotlin.jvm.internal.t.j(tables, "tables");
            RemoteCallbackList<IMultiInstanceInvalidationCallback> remoteCallbackListA = this.this$0.a();
            MultiInstanceInvalidationService multiInstanceInvalidationService = this.this$0;
            synchronized (remoteCallbackListA) {
                String str = multiInstanceInvalidationService.b().get(Integer.valueOf(i10));
                if (str == null) {
                    Log.w(Room.LOG_TAG, "Remote invalidation client ID not registered");
                    return;
                }
                int iBeginBroadcast = multiInstanceInvalidationService.a().beginBroadcast();
                for (int i11 = 0; i11 < iBeginBroadcast; i11++) {
                    try {
                        Object broadcastCookie = multiInstanceInvalidationService.a().getBroadcastCookie(i11);
                        kotlin.jvm.internal.t.h(broadcastCookie, "null cannot be cast to non-null type kotlin.Int");
                        int iIntValue = ((Integer) broadcastCookie).intValue();
                        String str2 = multiInstanceInvalidationService.b().get(Integer.valueOf(iIntValue));
                        if (i10 != iIntValue && kotlin.jvm.internal.t.e(str, str2)) {
                            try {
                                ((IMultiInstanceInvalidationCallback) multiInstanceInvalidationService.a().getBroadcastItem(i11)).l(tables);
                            } catch (RemoteException e) {
                                Log.w(Room.LOG_TAG, "Error invoking a remote callback", e);
                            }
                        }
                    } catch (Throwable th) {
                        multiInstanceInvalidationService.a().finishBroadcast();
                        throw th;
                    }
                }
                multiInstanceInvalidationService.a().finishBroadcast();
                l0 l0Var = l0.INSTANCE;
            }
        }
    };

    @NotNull
    public final RemoteCallbackList<IMultiInstanceInvalidationCallback> a() {
        return this.callbackList;
    }

    @NotNull
    public final Map<Integer, String> b() {
        return this.clientNames;
    }

    public final int c() {
        return this.maxClientId;
    }

    public final void d(int i10) {
        this.maxClientId = i10;
    }

    @Override // android.app.Service
    @NotNull
    public IBinder onBind(@NotNull Intent intent) {
        kotlin.jvm.internal.t.j(intent, "intent");
        return this.binder;
    }
}
