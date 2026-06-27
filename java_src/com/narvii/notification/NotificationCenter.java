package com.narvii.notification;

import android.os.SystemClock;
import android.support.v4.util.LongSparseArray;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class NotificationCenter {
    private static final int MAX = 255;
    private static long prevTime;
    private final LongSparseArray<Long> timeMap = new LongSparseArray<>();
    private final LinkedList<Notification> notifications = new LinkedList<>();
    private final ArrayList<Client> clients = new ArrayList<>();

    /* loaded from: classes3.dex */
    private static class Client {
        long contextId;
        WeakReference<NotificationListener> listener;
        long time;

        private Client() {
        }
    }

    static long time() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = prevTime;
        if (jElapsedRealtime > j) {
            prevTime = jElapsedRealtime;
            return jElapsedRealtime;
        }
        long j2 = j + 1;
        prevTime = j2;
        return j2;
    }

    public void sendNotification(Notification notification) {
        notification.time = time();
        this.notifications.addLast(notification);
        for (int size = this.notifications.size(); size > 255; size--) {
            this.notifications.removeFirst();
        }
        broadcast(null);
    }

    protected void broadcast(Client client) {
        long jTime = time();
        synchronized (this.clients) {
            Iterator<Client> it = this.clients.iterator();
            while (it.hasNext()) {
                Client next = it.next();
                NotificationListener notificationListener = next.listener.get();
                if (notificationListener == null) {
                    it.remove();
                } else {
                    Iterator<Notification> it2 = this.notifications.iterator();
                    while (it2.hasNext()) {
                        Notification next2 = it2.next();
                        if (next2.time >= next.time) {
                            if (NVApplication.DEBUG) {
                                notificationListener.onNotification(next2);
                            } else {
                                try {
                                    notificationListener.onNotification(next2);
                                } catch (Exception e) {
                                    Log.e("onNotification() error", e);
                                }
                            }
                        }
                    }
                    next.time = jTime;
                }
            }
        }
    }

    public void registerListener(NVContext nVContext, NotificationListener notificationListener) {
        long contextId = nVContext.getContextId() ^ (nVContext.getClass().hashCode() << 32);
        Long l = this.timeMap.get(contextId);
        long jTime = l == null ? time() : l.longValue();
        Client client = new Client();
        client.contextId = contextId;
        client.listener = new WeakReference<>(notificationListener);
        client.time = jTime;
        synchronized (this.clients) {
            this.clients.add(client);
        }
        broadcast(client);
    }

    public void unregisterListener(NVContext nVContext, boolean z) {
        long j;
        long contextId = nVContext.getContextId() ^ (nVContext.getClass().hashCode() << 32);
        synchronized (this.clients) {
            Iterator<Client> it = this.clients.iterator();
            j = 0;
            while (it.hasNext()) {
                Client next = it.next();
                if (next.contextId != 0 && next.contextId == contextId) {
                    it.remove();
                    j = next.time;
                }
            }
        }
        if (z) {
            this.timeMap.remove(contextId);
        } else if (j != 0) {
            this.timeMap.put(contextId, Long.valueOf(j));
        }
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
            Iterator<Client> it = this.clients.iterator();
            while (it.hasNext()) {
                NotificationListener notificationListener2 = it.next().listener.get();
                if (notificationListener2 == null || notificationListener2 == notificationListener) {
                    it.remove();
                }
            }
        }
    }
}
