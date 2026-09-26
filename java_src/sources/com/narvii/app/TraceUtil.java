package com.narvii.app;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TraceUtil {
    private static TraceClassLoader ccl;
    static Handler handler;
    static long startMs;
    static Runnable stopDelayed;

    static class TraceClassLoader extends ClassLoader {
        HashSet<String> loaded;
        ArrayList<TraceStub> names;
        final ClassLoader parent;
        long prevTime;

        List<TraceStub> done() {
            ArrayList<TraceStub> arrayList = this.names;
            this.names = null;
            return arrayList;
        }

        @Override // java.lang.ClassLoader
        public Class<?> loadClass(String str) throws ClassNotFoundException {
            return loadClass(str, false);
        }

        @Override // java.lang.ClassLoader
        protected Class<?> loadClass(String str, boolean z6) throws ClassNotFoundException {
            if (this.names == null) {
                return super.loadClass(str, z6);
            }
            if (this.loaded.contains(str)) {
                throw new ClassNotFoundException();
            }
            try {
                return super.loadClass(str, z6);
            } catch (ClassNotFoundException e) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.names.add(new TraceStub(str, jElapsedRealtime - TraceUtil.startMs, this.prevTime == 0 ? 0L : jElapsedRealtime - this.prevTime));
                this.loaded.add(str);
                this.prevTime = jElapsedRealtime;
                throw e;
            }
        }

        TraceClassLoader(ClassLoader classLoader) {
            super(classLoader);
            this.names = new ArrayList<>();
            this.loaded = new HashSet<>();
            this.parent = classLoader;
        }
    }

    private static class TraceStub {
        final String name;
        final long t1;

        /* JADX INFO: renamed from: t2, reason: collision with root package name */
        final long f1822t2;

        public String toString() {
            return this.t1 + "\t" + this.f1822t2 + "\t" + this.name;
        }

        TraceStub(String str, long j6, long j10) {
            this.name = str;
            this.t1 = j6;
            this.f1822t2 = j10;
        }
    }

    static TraceClassLoader traceClassLoader(PathClassLoader pathClassLoader) {
        new TraceStub(null, 0L, 0L);
        try {
            ClassLoader parent = pathClassLoader.getParent();
            Field declaredField = ClassLoader.class.getDeclaredField("parent");
            declaredField.setAccessible(true);
            TraceClassLoader traceClassLoader = new TraceClassLoader(parent);
            ccl = traceClassLoader;
            declaredField.set(pathClassLoader, traceClassLoader);
            return ccl;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void start() {
        startMs = SystemClock.elapsedRealtime();
    }

    public static long stop() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        Runnable runnable = new Runnable() { // from class: com.narvii.app.TraceUtil.1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int f1821c;
            long startTime;

            @Override // java.lang.Runnable
            public void run() {
                final List<TraceStub> listDone;
                if (TraceUtil.stopDelayed != this) {
                    return;
                }
                if (this.startTime == 0) {
                    this.startTime = SystemClock.elapsedRealtime();
                }
                int i10 = this.f1821c;
                if (i10 < 10) {
                    this.f1821c = i10 + 1;
                    TraceUtil.handler.postDelayed(this, 10L);
                } else if (SystemClock.elapsedRealtime() - this.startTime > 150) {
                    this.f1821c = 0;
                    this.startTime = 0L;
                    TraceUtil.handler.post(this);
                } else {
                    if (TraceUtil.ccl == null || (listDone = TraceUtil.ccl.done()) == null) {
                        return;
                    }
                    new Thread() { // from class: com.narvii.app.TraceUtil.1.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            Utils.writeToFile(new File("/sdcard/trace_ccl.txt"), StringUtils.join(listDone, "\n"));
                        }
                    }.start();
                }
            }
        };
        stopDelayed = runnable;
        handler.post(runnable);
        return jElapsedRealtime - startMs;
    }
}
