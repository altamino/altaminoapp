package com.narvii.util.fileloader;

import android.os.SystemClock;
import com.narvii.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes8.dex */
public class DiskDaemonHelper {
    private File dir;
    private DiskDaemon diskDaemon;
    private String taskName;
    private final ConcurrentHashMap<File, Long> touchFiles = new ConcurrentHashMap<>();

    private class DiskDaemon extends Thread {
        static final int CLEAN = 1;
        static final int FLUSH_LATER = 2;
        static final int FLUSH_NOW = 4;
        boolean abort;
        final File dir;
        final int maxSize;
        final long minTime;
        final int type;

        public void abort() {
            this.abort = true;
            interrupt();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int i10;
            int i11;
            try {
                try {
                    if (this.abort) {
                        synchronized (DiskDaemonHelper.this.touchFiles) {
                            try {
                                if (DiskDaemonHelper.this.diskDaemon == this) {
                                    DiskDaemonHelper.this.diskDaemon = null;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        return;
                    }
                    if ((this.type & 1) != 0) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        File[] fileArrListFiles = this.dir.listFiles();
                        ArrayList<FileDesc> arrayList = new ArrayList();
                        long j6 = 0;
                        if (fileArrListFiles != null) {
                            for (File file : fileArrListFiles) {
                                if (this.abort) {
                                    synchronized (DiskDaemonHelper.this.touchFiles) {
                                        try {
                                            if (DiskDaemonHelper.this.diskDaemon == this) {
                                                DiskDaemonHelper.this.diskDaemon = null;
                                            }
                                        } catch (Throwable th2) {
                                            throw th2;
                                        }
                                    }
                                    return;
                                }
                                FileDesc fileDesc = new FileDesc(file);
                                j6 += fileDesc.size;
                                arrayList.add(fileDesc);
                            }
                        }
                        if (this.abort) {
                            synchronized (DiskDaemonHelper.this.touchFiles) {
                                try {
                                    if (DiskDaemonHelper.this.diskDaemon == this) {
                                        DiskDaemonHelper.this.diskDaemon = null;
                                    }
                                } catch (Throwable th3) {
                                    throw th3;
                                }
                            }
                            return;
                        }
                        Collections.sort(arrayList);
                        Iterator it = arrayList.iterator();
                        int i12 = 0;
                        while (this.maxSize > 0 && it.hasNext()) {
                            if (this.abort) {
                                synchronized (DiskDaemonHelper.this.touchFiles) {
                                    try {
                                        if (DiskDaemonHelper.this.diskDaemon == this) {
                                            DiskDaemonHelper.this.diskDaemon = null;
                                        }
                                    } catch (Throwable th4) {
                                        throw th4;
                                    }
                                }
                                return;
                            }
                            FileDesc fileDesc2 = (FileDesc) it.next();
                            if (j6 < this.maxSize) {
                                break;
                            }
                            if (!DiskDaemonHelper.this.touchFiles.containsKey(fileDesc2.file)) {
                                fileDesc2.file.delete();
                                it.remove();
                                j6 -= fileDesc2.size;
                                i12++;
                            }
                        }
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        for (FileDesc fileDesc3 : arrayList) {
                            if (this.abort) {
                                synchronized (DiskDaemonHelper.this.touchFiles) {
                                    try {
                                        if (DiskDaemonHelper.this.diskDaemon == this) {
                                            DiskDaemonHelper.this.diskDaemon = null;
                                        }
                                    } catch (Throwable th5) {
                                        throw th5;
                                    }
                                }
                                return;
                            }
                            if (!DiskDaemonHelper.this.touchFiles.containsKey(fileDesc3.file)) {
                                if (fileDesc3.time > jCurrentTimeMillis && !fileDesc3.file.getName().endsWith(".w")) {
                                    fileDesc3.file.setLastModified(jCurrentTimeMillis);
                                } else if (fileDesc3.time < this.minTime) {
                                    fileDesc3.file.delete();
                                    i12++;
                                }
                            }
                        }
                        Log.d(DiskDaemonHelper.this.taskName + " cache clean " + i12 + " files in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
                    }
                    if ((this.type & 2) != 0) {
                        loop3: while (true) {
                            while (true) {
                                if (i10 >= 3) {
                                    break loop3;
                                }
                                if (this.abort) {
                                    synchronized (DiskDaemonHelper.this.touchFiles) {
                                        try {
                                            if (DiskDaemonHelper.this.diskDaemon == this) {
                                                DiskDaemonHelper.this.diskDaemon = null;
                                            }
                                        } catch (Throwable th6) {
                                            throw th6;
                                        }
                                    }
                                    return;
                                }
                                if ((this.type & 2) != 0) {
                                    Thread.sleep(5000L);
                                }
                                Iterator it2 = DiskDaemonHelper.this.touchFiles.entrySet().iterator();
                                i11 = 0;
                                while (it2.hasNext()) {
                                    if (this.abort) {
                                        synchronized (DiskDaemonHelper.this.touchFiles) {
                                            try {
                                                if (DiskDaemonHelper.this.diskDaemon == this) {
                                                    DiskDaemonHelper.this.diskDaemon = null;
                                                }
                                            } catch (Throwable th7) {
                                                throw th7;
                                            }
                                        }
                                        return;
                                    }
                                    Map.Entry entry = (Map.Entry) it2.next();
                                    ((File) entry.getKey()).setLastModified(((Long) entry.getValue()).longValue());
                                    it2.remove();
                                    i11++;
                                }
                                i10 = i11 == 0 ? i10 + 1 : 0;
                            }
                            Log.v(DiskDaemonHelper.this.taskName + " touch " + i11 + " files");
                        }
                    }
                    synchronized (DiskDaemonHelper.this.touchFiles) {
                        try {
                            if (DiskDaemonHelper.this.diskDaemon == this) {
                                DiskDaemonHelper.this.diskDaemon = null;
                            }
                        } catch (Throwable th8) {
                            throw th8;
                        }
                    }
                } catch (Throwable th9) {
                    synchronized (DiskDaemonHelper.this.touchFiles) {
                        try {
                            if (DiskDaemonHelper.this.diskDaemon == this) {
                                DiskDaemonHelper.this.diskDaemon = null;
                            }
                            throw th9;
                        } catch (Throwable th10) {
                            throw th10;
                        }
                    }
                }
            } catch (InterruptedException unused) {
                synchronized (DiskDaemonHelper.this.touchFiles) {
                    try {
                        if (DiskDaemonHelper.this.diskDaemon == this) {
                            DiskDaemonHelper.this.diskDaemon = null;
                        }
                    } catch (Throwable th11) {
                        throw th11;
                    }
                }
            } catch (Exception e) {
                Log.e(DiskDaemonHelper.this.taskName + " disk daemon failure, type=" + this.type, e);
                synchronized (DiskDaemonHelper.this.touchFiles) {
                    try {
                        if (DiskDaemonHelper.this.diskDaemon == this) {
                            DiskDaemonHelper.this.diskDaemon = null;
                        }
                    } catch (Throwable th12) {
                        throw th12;
                    }
                }
            }
        }

        public DiskDaemon(int i10, int i11, long j6, File file) {
            super(DiskDaemonHelper.this.taskName);
            setPriority(1);
            this.type = i10;
            this.maxSize = i11;
            this.minTime = j6;
            this.dir = file;
        }
    }

    private static class FileDesc implements Comparable<FileDesc> {
        final File file;
        final long size;
        final long time;

        @Override // java.lang.Comparable
        public int compareTo(FileDesc fileDesc) {
            long j6 = this.time - fileDesc.time;
            if (j6 < 0) {
                return -1;
            }
            return j6 > 0 ? 1 : 0;
        }

        public FileDesc(File file) {
            this.file = file;
            this.time = file.lastModified();
            this.size = file.length();
        }
    }

    public void clear() {
        this.touchFiles.clear();
    }

    public void touch(File file) {
        this.touchFiles.put(file, Long.valueOf(System.currentTimeMillis()));
        synchronized (this.touchFiles) {
            try {
                if (this.diskDaemon == null) {
                    DiskDaemon diskDaemon = new DiskDaemon(2, 0, 0L, this.dir);
                    this.diskDaemon = diskDaemon;
                    diskDaemon.start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void trimAndFlush(int i10, long j6) {
        synchronized (this.touchFiles) {
            try {
                DiskDaemon diskDaemon = this.diskDaemon;
                if (diskDaemon != null) {
                    diskDaemon.abort();
                    this.diskDaemon = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        new DiskDaemon(5, i10, j6, this.dir).start();
    }

    public DiskDaemonHelper(File file, String str) {
        this.dir = file;
        this.taskName = str;
    }
}
