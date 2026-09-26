package com.google.firebase.sessions;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingDeque;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class f0 {

    @NotNull
    public static final b Companion = new b(null);
    private static final int MAX_QUEUED_MESSAGES = 20;

    @NotNull
    public static final String TAG = "SessionLifecycleClient";

    @NotNull
    private final kotlin.coroutines.g backgroundDispatcher;

    @NotNull
    private final LinkedBlockingDeque<Message> queuedMessages;

    @Nullable
    private Messenger service;
    private boolean serviceBound;

    @NotNull
    private final d serviceConnection;

    public static final class a extends Handler {

        @NotNull
        private final kotlin.coroutines.g backgroundDispatcher;

        /* JADX INFO: renamed from: com.google.firebase.sessions.f0$a$a, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.SessionLifecycleClient$ClientUpdateHandler$handleSessionUpdate$1", f = "SessionLifecycleClient.kt", l = {73}, m = "invokeSuspend")
        static final class C0269a extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super w7.l0>, Object> {
            final /* synthetic */ String $sessionId;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0269a(String str, kotlin.coroutines.d<? super C0269a> dVar) {
                super(2, dVar);
                this.$sessionId = str;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                return new C0269a(this.$sessionId, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
                return ((C0269a) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        w7.w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w7.w.b(obj);
                    com.google.firebase.sessions.api.a aVar = com.google.firebase.sessions.api.a.INSTANCE;
                    this.label = 1;
                    obj = aVar.c(this);
                    if (obj == objE) {
                        return objE;
                    }
                }
                Collection<com.google.firebase.sessions.api.b> collectionValues = ((Map) obj).values();
                String str = this.$sessionId;
                for (com.google.firebase.sessions.api.b bVar : collectionValues) {
                    bVar.c(new com.google.firebase.sessions.api.b.C0267b(str));
                    Log.d(f0.TAG, "Notified " + bVar.b() + " of new session " + str);
                }
                return w7.l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull kotlin.coroutines.g backgroundDispatcher) {
            super(Looper.getMainLooper());
            kotlin.jvm.internal.t.j(backgroundDispatcher, "backgroundDispatcher");
            this.backgroundDispatcher = backgroundDispatcher;
        }

        private final void a(String str) {
            Log.d(f0.TAG, "Session update received: " + str);
            kotlinx.coroutines.k.d(p0.a(this.backgroundDispatcher), null, null, new C0269a(str, null), 3, null);
        }

        @Override // android.os.Handler
        public void handleMessage(@NotNull Message msg) {
            String string;
            kotlin.jvm.internal.t.j(msg, "msg");
            if (msg.what == 3) {
                Bundle data = msg.getData();
                if (data == null || (string = data.getString(SessionLifecycleService.SESSION_UPDATE_EXTRA)) == null) {
                    string = "";
                }
                a(string);
                return;
            }
            Log.w(f0.TAG, "Received unexpected event from the SessionLifecycleService: " + msg);
            super.handleMessage(msg);
        }
    }

    public static final class b {
        public /* synthetic */ b(kotlin.jvm.internal.k kVar) {
            this();
        }

        private b() {
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.SessionLifecycleClient$sendLifecycleEvents$1", f = "SessionLifecycleClient.kt", l = {149}, m = "invokeSuspend")
    static final class c extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super w7.l0>, Object> {
        final /* synthetic */ List<Message> $messages;
        int label;

        public static final class a<T> implements Comparator {
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t5, T t10) {
                return y7.c.d(Long.valueOf(((Message) t5).getWhen()), Long.valueOf(((Message) t10).getWhen()));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(List<Message> list, kotlin.coroutines.d<? super c> dVar) {
            super(2, dVar);
            this.$messages = list;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return f0.this.new c(this.$messages, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            return ((c) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w7.w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                com.google.firebase.sessions.api.a aVar = com.google.firebase.sessions.api.a.INSTANCE;
                this.label = 1;
                obj = aVar.c(this);
                if (obj == objE) {
                    return objE;
                }
            }
            Map map = (Map) obj;
            if (map.isEmpty()) {
                Log.d(f0.TAG, "Sessions SDK did not have any dependent SDKs register as dependencies. Events will not be sent.");
            } else {
                Collection collectionValues = map.values();
                if (!(collectionValues instanceof Collection) || !collectionValues.isEmpty()) {
                    Iterator it = collectionValues.iterator();
                    while (it.hasNext()) {
                        if (((com.google.firebase.sessions.api.b) it.next()).a()) {
                            List listL0 = kotlin.collections.d0.L0(kotlin.collections.d0.g0(kotlin.collections.v.s(f0.this.l(this.$messages, 2), f0.this.l(this.$messages, 1))), new a());
                            f0 f0Var = f0.this;
                            Iterator it2 = listL0.iterator();
                            while (it2.hasNext()) {
                                f0Var.p((Message) it2.next());
                            }
                        }
                    }
                    Log.d(f0.TAG, "Data Collection is disabled for all subscribers. Skipping this Event");
                } else {
                    Log.d(f0.TAG, "Data Collection is disabled for all subscribers. Skipping this Event");
                }
            }
            return w7.l0.INSTANCE;
        }
    }

    public static final class d implements ServiceConnection {
        d() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(@Nullable ComponentName componentName, @Nullable IBinder iBinder) {
            Log.d(f0.TAG, "Connected to SessionLifecycleService. Queue size " + f0.this.queuedMessages.size());
            f0.this.service = new Messenger(iBinder);
            f0.this.serviceBound = true;
            f0 f0Var = f0.this;
            f0Var.o(f0Var.j());
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(@Nullable ComponentName componentName) {
            Log.d(f0.TAG, "Disconnected from SessionLifecycleService");
            f0.this.service = null;
            f0.this.serviceBound = false;
        }
    }

    public final void h() {
        n(2);
    }

    public final void k() {
        n(1);
    }

    public f0(@NotNull kotlin.coroutines.g backgroundDispatcher) {
        kotlin.jvm.internal.t.j(backgroundDispatcher, "backgroundDispatcher");
        this.backgroundDispatcher = backgroundDispatcher;
        this.queuedMessages = new LinkedBlockingDeque<>(20);
        this.serviceConnection = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Message> j() {
        ArrayList arrayList = new ArrayList();
        this.queuedMessages.drainTo(arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Message l(List<Message> list, int i10) {
        Object obj;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (((Message) obj2).what == i10) {
                arrayList.add(obj2);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                long when = ((Message) next).getWhen();
                do {
                    Object next2 = it.next();
                    long when2 = ((Message) next2).getWhen();
                    if (when < when2) {
                        next = next2;
                        when = when2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        return (Message) obj;
    }

    private final void m(Message message) {
        if (!this.queuedMessages.offer(message)) {
            Log.d(TAG, "Failed to enqueue message " + message.what + ". Dropping.");
            return;
        }
        Log.d(TAG, "Queued message " + message.what + ". Queue size " + this.queuedMessages.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b2 o(List<Message> list) {
        return kotlinx.coroutines.k.d(p0.a(this.backgroundDispatcher), null, null, new c(list, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(Message message) {
        if (this.service == null) {
            m(message);
            return;
        }
        try {
            Log.d(TAG, "Sending lifecycle " + message.what + " to service");
            Messenger messenger = this.service;
            if (messenger != null) {
                messenger.send(message);
            }
        } catch (RemoteException e) {
            Log.w(TAG, "Unable to deliver message: " + message.what, e);
            m(message);
        }
    }

    public final void i() {
        h0.Companion.a().a(new Messenger(new a(this.backgroundDispatcher)), this.serviceConnection);
    }

    private final void n(int i10) {
        List<Message> listJ = j();
        Message messageObtain = Message.obtain(null, i10, 0, 0);
        kotlin.jvm.internal.t.i(messageObtain, "obtain(null, messageCode, 0, 0)");
        listJ.add(messageObtain);
        o(listJ);
    }
}
