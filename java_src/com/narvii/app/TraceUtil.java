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

/* loaded from: classes2.dex */
public class TraceUtil {
    private static TraceClassLoader ccl;
    static Handler handler;
    static long startMs;
    static Runnable stopDelayed;

    public static void start() {
        startMs = SystemClock.elapsedRealtime();
    }

    public static long stop() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        stopDelayed = new Runnable() { // from class: com.narvii.app.TraceUtil.1
            int c;
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
                int i = this.c;
                if (i < 10) {
                    this.c = i + 1;
                    TraceUtil.handler.postDelayed(this, 10L);
                } else {
                    if (SystemClock.elapsedRealtime() - this.startTime <= 150) {
                        if (TraceUtil.ccl == null || (listDone = TraceUtil.ccl.done()) == null) {
                            return;
                        }
                        new Thread() { // from class: com.narvii.app.TraceUtil.1.1
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                Utils.writeToFile(new File("/sdcard/trace_ccl.txt"), StringUtils.join(listDone, "\n"));
                            }
                        }.start();
                        return;
                    }
                    this.c = 0;
                    this.startTime = 0L;
                    TraceUtil.handler.post(this);
                }
            }
        };
        handler.post(stopDelayed);
        return jElapsedRealtime - startMs;
    }

    static TraceClassLoader traceClassLoader(PathClassLoader pathClassLoader) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        new TraceStub(null, 0L, 0L);
        try {
            ClassLoader parent = pathClassLoader.getParent();
            Field declaredField = ClassLoader.class.getDeclaredField("parent");
            declaredField.setAccessible(true);
            ccl = new TraceClassLoader(parent);
            declaredField.set(pathClassLoader, ccl);
            return ccl;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static class TraceStub {
        final String name;
        final long t1;
        final long t2;

        TraceStub(String str, long j, long j2) {
            this.name = str;
            this.t1 = j;
            this.t2 = j2;
        }

        public String toString() {
            return this.t1 + "\t" + this.t2 + "\t" + this.name;
        }
    }

    static class TraceClassLoader extends ClassLoader {
        HashSet<String> loaded;
        ArrayList<TraceStub> names;
        final ClassLoader parent;
        long prevTime;

        TraceClassLoader(ClassLoader classLoader) {
            super(classLoader);
            this.names = new ArrayList<>();
            this.loaded = new HashSet<>();
            this.parent = classLoader;
        }

        @Override // java.lang.ClassLoader
        public Class<?> loadClass(String str) throws ClassNotFoundException {
            return loadClass(str, false);
        }

        @Override // java.lang.ClassLoader
        protected Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
            if (this.names == null) {
                return super.loadClass(str, z);
            }
            if (this.loaded.contains(str)) {
                throw new ClassNotFoundException();
            }
            try {
                return super.loadClass(str, z);
            } catch (ClassNotFoundException e) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long j = jElapsedRealtime - TraceUtil.startMs;
                long j2 = this.prevTime;
                this.names.add(new TraceStub(str, j, j2 == 0 ? 0L : jElapsedRealtime - j2));
                this.loaded.add(str);
                this.prevTime = jElapsedRealtime;
                throw e;
            }
        }

        List<TraceStub> done() {
            ArrayList<TraceStub> arrayList = this.names;
            this.names = null;
            return arrayList;
        }
    }
}
