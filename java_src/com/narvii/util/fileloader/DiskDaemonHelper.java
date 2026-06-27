package com.narvii.util.fileloader;

import android.os.SystemClock;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public class DiskDaemonHelper {
    private File dir;
    private DiskDaemon diskDaemon;
    private String taskName;
    private final ConcurrentHashMap<File, Long> touchFiles = new ConcurrentHashMap<>();

    public DiskDaemonHelper(File file, String str) {
        this.dir = file;
        this.taskName = str;
    }

    public void touch(File file) {
        this.touchFiles.put(file, Long.valueOf(System.currentTimeMillis()));
        synchronized (this.touchFiles) {
            if (this.diskDaemon == null) {
                this.diskDaemon = new DiskDaemon(2, 0, 0L, this.dir);
                this.diskDaemon.start();
            }
        }
    }

    public void trimAndFlush(int i, long j) {
        synchronized (this.touchFiles) {
            if (this.diskDaemon != null) {
                this.diskDaemon.abort();
                this.diskDaemon = null;
            }
        }
        new DiskDaemon(5, i, j, this.dir).start();
    }

    public void clear() {
        this.touchFiles.clear();
    }

    private class DiskDaemon extends Thread {
        static final int CLEAN = 1;
        static final int FLUSH_LATER = 2;
        static final int FLUSH_NOW = 4;
        boolean abort;
        final File dir;
        final int maxSize;
        final long minTime;
        final int type;

        public DiskDaemon(int i, int i2, long j, File file) {
            super(DiskDaemonHelper.this.taskName);
            setPriority(1);
            this.type = i;
            this.maxSize = i2;
            this.minTime = j;
            this.dir = file;
        }

        public void abort() {
            this.abort = true;
            interrupt();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int i;
            int i2;
            try {
                try {
                    if (this.abort) {
                        synchronized (DiskDaemonHelper.this.touchFiles) {
                            if (DiskDaemonHelper.this.diskDaemon == this) {
                                DiskDaemonHelper.this.diskDaemon = null;
                            }
                        }
                        return;
                    }
                    if ((this.type & 1) != 0) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        File[] fileArrListFiles = this.dir.listFiles();
                        long j = 0;
                        ArrayList arrayList = new ArrayList();
                        if (fileArrListFiles != null) {
                            long j2 = 0;
                            for (File file : fileArrListFiles) {
                                if (this.abort) {
                                    synchronized (DiskDaemonHelper.this.touchFiles) {
                                        if (DiskDaemonHelper.this.diskDaemon == this) {
                                            DiskDaemonHelper.this.diskDaemon = null;
                                        }
                                    }
                                    return;
                                } else {
                                    FileDesc fileDesc = new FileDesc(file);
                                    j2 += fileDesc.size;
                                    arrayList.add(fileDesc);
                                }
                            }
                            j = j2;
                        }
                        if (this.abort) {
                            synchronized (DiskDaemonHelper.this.touchFiles) {
                                if (DiskDaemonHelper.this.diskDaemon == this) {
                                    DiskDaemonHelper.this.diskDaemon = null;
                                }
                            }
                            return;
                        }
                        Collections.sort(arrayList);
                        Iterator it = arrayList.iterator();
                        int i3 = 0;
                        while (this.maxSize > 0 && it.hasNext()) {
                            if (this.abort) {
                                synchronized (DiskDaemonHelper.this.touchFiles) {
                                    if (DiskDaemonHelper.this.diskDaemon == this) {
                                        DiskDaemonHelper.this.diskDaemon = null;
                                    }
                                }
                                return;
                            }
                            FileDesc fileDesc2 = (FileDesc) it.next();
                            if (j < this.maxSize) {
                                break;
                            }
                            if (!DiskDaemonHelper.this.touchFiles.containsKey(fileDesc2.file)) {
                                fileDesc2.file.delete();
                                it.remove();
                                j -= fileDesc2.size;
                                i3++;
                            }
                        }
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            FileDesc fileDesc3 = (FileDesc) it2.next();
                            if (this.abort) {
                                synchronized (DiskDaemonHelper.this.touchFiles) {
                                    if (DiskDaemonHelper.this.diskDaemon == this) {
                                        DiskDaemonHelper.this.diskDaemon = null;
                                    }
                                }
                                return;
                            } else if (!DiskDaemonHelper.this.touchFiles.containsKey(fileDesc3.file)) {
                                if (fileDesc3.time > jCurrentTimeMillis && !fileDesc3.file.getName().endsWith(".w")) {
                                    fileDesc3.file.setLastModified(jCurrentTimeMillis);
                                } else if (fileDesc3.time < this.minTime) {
                                    fileDesc3.file.delete();
                                    i3++;
                                }
                            }
                        }
                        Log.d(DiskDaemonHelper.this.taskName + " cache clean " + i3 + " files in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
                    }
                    if ((this.type & 2) != 0) {
                        loop3: while (true) {
                            while (i < 3) {
                                if (this.abort) {
                                    synchronized (DiskDaemonHelper.this.touchFiles) {
                                        if (DiskDaemonHelper.this.diskDaemon == this) {
                                            DiskDaemonHelper.this.diskDaemon = null;
                                        }
                                    }
                                    return;
                                }
                                if ((this.type & 2) != 0) {
                                    Thread.sleep(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
                                }
                                Iterator it3 = DiskDaemonHelper.this.touchFiles.entrySet().iterator();
                                i2 = 0;
                                while (it3.hasNext()) {
                                    if (this.abort) {
                                        synchronized (DiskDaemonHelper.this.touchFiles) {
                                            if (DiskDaemonHelper.this.diskDaemon == this) {
                                                DiskDaemonHelper.this.diskDaemon = null;
                                            }
                                        }
                                        return;
                                    } else {
                                        Map.Entry entry = (Map.Entry) it3.next();
                                        ((File) entry.getKey()).setLastModified(((Long) entry.getValue()).longValue());
                                        it3.remove();
                                        i2++;
                                    }
                                }
                                i = i2 == 0 ? i + 1 : 0;
                            }
                            Log.v(DiskDaemonHelper.this.taskName + " touch " + i2 + " files");
                        }
                    }
                    synchronized (DiskDaemonHelper.this.touchFiles) {
                        if (DiskDaemonHelper.this.diskDaemon == this) {
                            DiskDaemonHelper.this.diskDaemon = null;
                        }
                    }
                } catch (InterruptedException unused) {
                    synchronized (DiskDaemonHelper.this.touchFiles) {
                        if (DiskDaemonHelper.this.diskDaemon == this) {
                            DiskDaemonHelper.this.diskDaemon = null;
                        }
                    }
                } catch (Exception e) {
                    Log.e(DiskDaemonHelper.this.taskName + " disk daemon failure, type=" + this.type, e);
                    synchronized (DiskDaemonHelper.this.touchFiles) {
                        if (DiskDaemonHelper.this.diskDaemon == this) {
                            DiskDaemonHelper.this.diskDaemon = null;
                        }
                    }
                }
            } catch (Throwable th) {
                synchronized (DiskDaemonHelper.this.touchFiles) {
                    if (DiskDaemonHelper.this.diskDaemon == this) {
                        DiskDaemonHelper.this.diskDaemon = null;
                    }
                    throw th;
                }
            }
        }
    }

    private static class FileDesc implements Comparable<FileDesc> {
        final File file;
        final long size;
        final long time;

        public FileDesc(File file) {
            this.file = file;
            this.time = file.lastModified();
            this.size = file.length();
        }

        @Override // java.lang.Comparable
        public int compareTo(FileDesc fileDesc) {
            long j = this.time - fileDesc.time;
            if (j < 0) {
                return -1;
            }
            return j > 0 ? 1 : 0;
        }
    }
}
