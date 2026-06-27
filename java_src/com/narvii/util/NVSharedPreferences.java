package com.narvii.util;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class NVSharedPreferences implements SharedPreferences, Runnable {
    static final int FLUSH_DELAY = 400;
    static final Object REMOVE = new Tag("REMOVE");
    static final ScheduledExecutorService SCHEDULED_EXECUTOR = new ScheduledThreadPoolExecutor(1);
    SharedPreferences prefs;
    ScheduledFuture sf;
    final HashMap<String, Object> pendingWrites = new HashMap<>();
    final ArrayList<SharedPreferences.OnSharedPreferenceChangeListener> listeners = new ArrayList<>();

    public NVSharedPreferences(SharedPreferences sharedPreferences) {
        this.prefs = sharedPreferences;
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        HashMap map = new HashMap(this.prefs.getAll());
        synchronized (this.pendingWrites) {
            for (Map.Entry<String, Object> entry : this.pendingWrites.entrySet()) {
                Object value = entry.getValue();
                if (value == REMOVE) {
                    map.remove(entry.getKey());
                } else {
                    map.put(entry.getKey(), value);
                }
            }
        }
        return map;
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        Object obj = this.pendingWrites.get(str);
        if (obj != null) {
            return obj instanceof String ? (String) obj : str2;
        }
        return this.prefs.getString(str, str2);
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        Object obj = this.pendingWrites.get(str);
        if (obj != null) {
            return obj instanceof Set ? (Set) obj : set;
        }
        return this.prefs.getStringSet(str, set);
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        Object obj = this.pendingWrites.get(str);
        if (obj != null) {
            return obj instanceof Number ? ((Number) obj).intValue() : i;
        }
        return this.prefs.getInt(str, i);
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        Object obj = this.pendingWrites.get(str);
        if (obj != null) {
            return obj instanceof Number ? ((Number) obj).longValue() : j;
        }
        return this.prefs.getLong(str, j);
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        Object obj = this.pendingWrites.get(str);
        if (obj != null) {
            return obj instanceof Number ? ((Number) obj).floatValue() : f;
        }
        return this.prefs.getFloat(str, f);
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        Object obj = this.pendingWrites.get(str);
        if (obj != null) {
            return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z;
        }
        return this.prefs.getBoolean(str, z);
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        Object obj = this.pendingWrites.get(str);
        if (obj != null) {
            return obj != REMOVE;
        }
        return this.prefs.contains(str);
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return new NVEditor();
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.listeners.add(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.listeners.remove(onSharedPreferenceChangeListener);
    }

    private class NVEditor implements SharedPreferences.Editor {
        boolean clear;
        final HashMap<String, Object> map;

        private NVEditor() {
            this.map = new HashMap<>();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            HashMap<String, Object> map = this.map;
            Object obj = str2;
            if (str2 == null) {
                obj = NVSharedPreferences.REMOVE;
            }
            map.put(str, obj);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            HashMap<String, Object> map = this.map;
            Object obj = set;
            if (set == null) {
                obj = NVSharedPreferences.REMOVE;
            }
            map.put(str, obj);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i) {
            this.map.put(str, Integer.valueOf(i));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j) {
            this.map.put(str, Long.valueOf(j));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f) {
            this.map.put(str, Float.valueOf(f));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            this.map.put(str, Boolean.valueOf(z));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            this.map.put(str, NVSharedPreferences.REMOVE);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.clear = true;
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            return done(true);
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            done(false);
        }

        boolean done(boolean z) {
            boolean zFlush;
            if (z || this.clear) {
                synchronized (NVSharedPreferences.this.pendingWrites) {
                    clearSchedule();
                    if (this.clear) {
                        NVSharedPreferences.this.pendingWrites.clear();
                        zFlush = NVSharedPreferences.this.flush(true, this.map);
                    } else {
                        NVSharedPreferences.this.pendingWrites.putAll(this.map);
                        zFlush = NVSharedPreferences.this.flush(false, NVSharedPreferences.this.pendingWrites);
                        NVSharedPreferences.this.pendingWrites.clear();
                    }
                }
                if (!zFlush) {
                    return false;
                }
            } else {
                synchronized (NVSharedPreferences.this.pendingWrites) {
                    NVSharedPreferences.this.pendingWrites.putAll(this.map);
                    scheduleFlush();
                }
            }
            for (String str : this.map.keySet()) {
                Iterator<SharedPreferences.OnSharedPreferenceChangeListener> it = NVSharedPreferences.this.listeners.iterator();
                while (it.hasNext()) {
                    it.next().onSharedPreferenceChanged(NVSharedPreferences.this, str);
                }
            }
            return true;
        }

        private void clearSchedule() {
            ScheduledFuture scheduledFuture = NVSharedPreferences.this.sf;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            NVSharedPreferences.this.sf = null;
        }

        private void scheduleFlush() {
            ScheduledFuture scheduledFuture = NVSharedPreferences.this.sf;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            NVSharedPreferences nVSharedPreferences = NVSharedPreferences.this;
            nVSharedPreferences.sf = NVSharedPreferences.SCHEDULED_EXECUTOR.schedule(nVSharedPreferences, 400L, TimeUnit.MILLISECONDS);
        }
    }

    @Override // java.lang.Runnable
    public void run() throws InterruptedException {
        boolean z;
        synchronized (this.pendingWrites) {
            if (this.pendingWrites.isEmpty()) {
                z = false;
            } else if (flush(false, this.pendingWrites)) {
                this.pendingWrites.clear();
                z = false;
            } else {
                z = true;
            }
        }
        if (z) {
            try {
                Thread.sleep(200L);
            } catch (InterruptedException unused) {
            }
            synchronized (this.pendingWrites) {
                if (!this.pendingWrites.isEmpty() && !flush(false, this.pendingWrites)) {
                    Log.e("fail to sync prefs (retry)");
                }
                this.pendingWrites.clear();
            }
        }
    }

    boolean flush(boolean z, HashMap<String, Object> map) {
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        if (z) {
            editorEdit.clear();
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                editorEdit.putString(key, (String) value);
            } else if (value instanceof Integer) {
                editorEdit.putInt(key, ((Integer) value).intValue());
            } else if (value instanceof Boolean) {
                editorEdit.putBoolean(key, ((Boolean) value).booleanValue());
            } else if (value instanceof Float) {
                editorEdit.putFloat(key, ((Float) value).floatValue());
            } else if (value instanceof Long) {
                editorEdit.putLong(key, ((Long) value).longValue());
            } else if (value instanceof Set) {
                editorEdit.putStringSet(key, (Set) value);
            } else if (value == REMOVE || value == null) {
                editorEdit.remove(key);
            } else {
                Log.e("unknown value type " + value.getClass());
            }
        }
        return editorEdit.commit();
    }
}
