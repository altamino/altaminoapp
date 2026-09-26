package com.narvii.notification;

import android.os.SystemClock;
import androidx.collection.LongSparseArray;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes4.dex */
public class NotificationCenter {
    private static final int MAX = 255;
    private static long prevTime;
    private final LongSparseArray<Long> timeMap = new LongSparseArray<>();
    private final LinkedList<Notification> notifications = new LinkedList<>();
    private final ArrayList<Client> clients = new ArrayList<>();

    private static class Client {
        long contextId;
        WeakReference<NotificationListener> listener;
        long time;

        private Client() {
        }
    }

    public void registerListener(NVContext nVContext, NotificationListener notificationListener) {
        long contextId = nVContext.getContextId() ^ ((long) (nVContext.getClass().hashCode() << 32));
        Long lH = this.timeMap.h(contextId);
        long jTime = lH == null ? time() : lH.longValue();
        Client client = new Client();
        client.contextId = contextId;
        client.listener = new WeakReference<>(notificationListener);
        client.time = jTime;
        synchronized (this.clients) {
            this.clients.add(client);
        }
        broadcast(client);
    }

    public void unregisterListener(NVContext nVContext, boolean z6) {
        long j6;
        long contextId = nVContext.getContextId() ^ ((long) (nVContext.getClass().hashCode() << 32));
        synchronized (this.clients) {
            try {
                Iterator<Client> it = this.clients.iterator();
                j6 = 0;
                while (it.hasNext()) {
                    Client next = it.next();
                    long j10 = next.contextId;
                    if (j10 != 0 && j10 == contextId) {
                        it.remove();
                        j6 = next.time;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z6) {
            this.timeMap.n(contextId);
        } else if (j6 != 0) {
            this.timeMap.m(contextId, Long.valueOf(j6));
        }
    }

    static long time() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j6 = prevTime;
        if (jElapsedRealtime > j6) {
            prevTime = jElapsedRealtime;
            return jElapsedRealtime;
        }
        long j10 = j6 + 1;
        prevTime = j10;
        return j10;
    }

    protected void broadcast(Client client) {
        long jTime = time();
        synchronized (this.clients) {
            try {
                Iterator<Client> it = this.clients.iterator();
                while (it.hasNext()) {
                    Client next = it.next();
                    NotificationListener notificationListener = next.listener.get();
                    if (notificationListener == null) {
                        it.remove();
                    } else {
                        for (Notification notification : this.notifications) {
                            if (notification.time >= next.time) {
                                if (NVApplication.DEBUG) {
                                    notificationListener.onNotification(notification);
                                } else {
                                    try {
                                        notificationListener.onNotification(notification);
                                    } catch (Exception e) {
                                        Log.e("onNotification() error", e);
                                    }
                                }
                            }
                        }
                        next.time = jTime;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void sendNotification(Notification notification) {
        notification.time = time();
        this.notifications.addLast(notification);
        for (int size = this.notifications.size(); size > 255; size--) {
            this.notifications.removeFirst();
        }
        broadcast(null);
    }

    public void registerListener(NotificationListener notificationListener) {
        Client client = new Client();
        client.contextId = 0L;
        client.listener = new WeakReference<>(notificationListener);
        client.time = time();
        synchronized (this.clients) {
            this.clients.add(client);
        }
    }

    public void unregisterListener(NotificationListener notificationListener) {
        synchronized (this.clients) {
            try {
                Iterator<Client> it = this.clients.iterator();
                while (it.hasNext()) {
                    NotificationListener notificationListener2 = it.next().listener.get();
                    if (notificationListener2 == null || notificationListener2 == notificationListener) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
