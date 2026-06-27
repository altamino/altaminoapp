package com.tonyodev.fetch;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.LocalBroadcastManager;
import com.tonyodev.fetch.exception.EnqueueException;
import com.tonyodev.fetch.listener.FetchListener;
import com.tonyodev.fetch.request.Request;
import com.tonyodev.fetch.request.RequestInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes3.dex */
public final class Fetch implements FetchConst {
    private final LocalBroadcastManager broadcastManager;
    private final Context context;
    private final DatabaseHelper dbHelper;
    private static final Handler mainHandler = new Handler(Looper.getMainLooper());
    private static final ConcurrentMap<Request, Object> callsMap = new ConcurrentHashMap();
    private static final FetchCallRunnable$Callback callsCallback = new FetchCallRunnable$Callback() { // from class: com.tonyodev.fetch.Fetch.1
    };
    private final List<FetchListener> listeners = new ArrayList();
    private volatile boolean isReleased = false;
    private final BroadcastReceiver updateReceiver = new BroadcastReceiver() { // from class: com.tonyodev.fetch.Fetch.4
        private long downloadedBytes;
        private int error;
        private long fileSize;
        private long id;
        private int progress;
        private int status;

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            this.id = intent.getLongExtra(FetchService.EXTRA_ID, -1L);
            this.status = intent.getIntExtra(FetchService.EXTRA_STATUS, -1);
            this.progress = intent.getIntExtra(FetchService.EXTRA_PROGRESS, -1);
            this.downloadedBytes = intent.getLongExtra(FetchService.EXTRA_DOWNLOADED_BYTES, -1L);
            this.fileSize = intent.getLongExtra(FetchService.EXTRA_FILE_SIZE, -1L);
            this.error = intent.getIntExtra(FetchService.EXTRA_ERROR, -1);
            try {
                Iterator listenerIterator = Fetch.this.getListenerIterator();
                while (listenerIterator.hasNext()) {
                    ((FetchListener) listenerIterator.next()).onUpdate(this.id, this.status, this.progress, this.downloadedBytes, this.fileSize, this.error);
                }
            } catch (Exception e) {
                if (Fetch.this.isLoggingEnabled()) {
                    e.printStackTrace();
                }
            }
        }
    };
    private final BroadcastReceiver networkReceiver = new BroadcastReceiver() { // from class: com.tonyodev.fetch.Fetch.5
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            FetchService.processPendingRequests(context);
        }
    };

    private Fetch(Context context) {
        this.context = context.getApplicationContext();
        this.broadcastManager = LocalBroadcastManager.getInstance(this.context);
        this.dbHelper = DatabaseHelper.getInstance(this.context);
        this.dbHelper.setLoggingEnabled(isLoggingEnabled());
        this.broadcastManager.registerReceiver(this.updateReceiver, FetchService.getEventUpdateFilter());
        this.context.registerReceiver(this.networkReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        startService(this.context);
    }

    public static void startService(Context context) {
        FetchService.processPendingRequests(context);
    }

    public static Fetch getInstance(Context context) {
        return newInstance(context);
    }

    public static Fetch newInstance(Context context) {
        if (context == null) {
            throw new NullPointerException("Context cannot be null");
        }
        return new Fetch(context);
    }

    public void release() {
        if (isReleased()) {
            return;
        }
        setReleased(true);
        this.listeners.clear();
        this.broadcastManager.unregisterReceiver(this.updateReceiver);
        this.context.unregisterReceiver(this.networkReceiver);
    }

    public void addFetchListener(FetchListener fetchListener) {
        Utils.throwIfNotUsable(this);
        if (fetchListener == null) {
            throw new NullPointerException("fetchListener cannot be null");
        }
        if (this.listeners.contains(fetchListener)) {
            return;
        }
        this.listeners.add(fetchListener);
    }

    public long enqueue(Request request) {
        Utils.throwIfNotUsable(this);
        if (request == null) {
            throw new NullPointerException("Request cannot be null");
        }
        long jGenerateRequestId = Utils.generateRequestId();
        try {
            String url = request.getUrl();
            String filePath = request.getFilePath();
            int priority = request.getPriority();
            String strHeaderListToString = Utils.headerListToString(request.getHeaders(), isLoggingEnabled());
            File file = Utils.getFile(filePath);
            if (!this.dbHelper.insert(jGenerateRequestId, url, filePath, 900, strHeaderListToString, file.exists() ? file.length() : 0L, 0L, priority, -1)) {
                throw new EnqueueException("could not insert request", FetchConst.ERROR_ENQUEUE_ERROR);
            }
            startService(this.context);
            return jGenerateRequestId;
        } catch (EnqueueException e) {
            if (isLoggingEnabled()) {
                e.printStackTrace();
            }
            return -1L;
        }
    }

    public void removeAll() {
        Utils.throwIfNotUsable(this);
        Bundle bundle = new Bundle();
        bundle.putInt(FetchService.ACTION_TYPE, FetchService.ACTION_REMOVE_ALL);
        FetchService.sendToService(this.context, bundle);
    }

    public void pause(long j) {
        Utils.throwIfNotUsable(this);
        Bundle bundle = new Bundle();
        bundle.putInt(FetchService.ACTION_TYPE, FetchService.ACTION_PAUSE);
        bundle.putLong(FetchService.EXTRA_ID, j);
        FetchService.sendToService(this.context, bundle);
    }

    public void resume(long j) {
        Utils.throwIfNotUsable(this);
        Bundle bundle = new Bundle();
        bundle.putInt(FetchService.ACTION_TYPE, FetchService.ACTION_RESUME);
        bundle.putLong(FetchService.EXTRA_ID, j);
        FetchService.sendToService(this.context, bundle);
    }

    public void retry(long j) {
        Utils.throwIfNotUsable(this);
        Bundle bundle = new Bundle();
        bundle.putInt(FetchService.ACTION_TYPE, FetchService.ACTION_RETRY);
        bundle.putLong(FetchService.EXTRA_ID, j);
        FetchService.sendToService(this.context, bundle);
    }

    public synchronized RequestInfo get(long j) {
        Utils.throwIfNotUsable(this);
        return Utils.cursorToRequestInfo(this.dbHelper.get(j), true, isLoggingEnabled());
    }

    public synchronized File getDownloadedFile(long j) {
        Utils.throwIfNotUsable(this);
        RequestInfo requestInfoCursorToRequestInfo = Utils.cursorToRequestInfo(this.dbHelper.get(j), true, isLoggingEnabled());
        if (requestInfoCursorToRequestInfo != null && requestInfoCursorToRequestInfo.getStatus() == 903) {
            File file = Utils.getFile(requestInfoCursorToRequestInfo.getFilePath());
            if (file.exists()) {
                return file;
            }
            return null;
        }
        return null;
    }

    public boolean isValid() {
        return !isReleased();
    }

    boolean isReleased() {
        return this.isReleased;
    }

    private void setReleased(boolean z) {
        this.isReleased = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLoggingEnabled() {
        return FetchService.isLoggingEnabled(this.context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Iterator<FetchListener> getListenerIterator() {
        return this.listeners.iterator();
    }

    public static class Settings {
        private final Context context;
        private final List<Bundle> settings = new ArrayList();

        public Settings(Context context) {
            if (context == null) {
                throw new NullPointerException("Context cannot be null");
            }
            this.context = context;
        }

        public Settings enableLogging(boolean z) {
            Bundle bundle = new Bundle();
            bundle.putInt(FetchService.ACTION_TYPE, 320);
            bundle.putBoolean(FetchService.EXTRA_LOGGING_ID, z);
            this.settings.add(bundle);
            return this;
        }

        public Settings setConcurrentDownloadsLimit(int i) {
            Bundle bundle = new Bundle();
            bundle.putInt(FetchService.ACTION_TYPE, FetchService.ACTION_CONCURRENT_DOWNLOADS_LIMIT);
            bundle.putInt(FetchService.EXTRA_CONCURRENT_DOWNLOADS_LIMIT, i);
            this.settings.add(bundle);
            return this;
        }

        public void apply() {
            Iterator<Bundle> it = this.settings.iterator();
            while (it.hasNext()) {
                FetchService.sendToService(this.context, it.next());
            }
        }
    }
}
