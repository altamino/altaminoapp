package com.narvii.util.logging;

import android.os.Handler;
import com.narvii.app.NVApplication;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.log.Logger;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.regex.Pattern;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes8.dex */
public class DetailLogging {
    static final int BUFFER_SIZE = 1048576;
    static final int CHECK_INTERVAL = 30000;
    static final Runnable checkpoint = new Runnable() { // from class: com.narvii.util.logging.DetailLogging.1
        @Override // java.lang.Runnable
        public void run() {
            if (DetailLogging.started) {
                DetailLogging.flush();
                Utils.postDelayed(this, 30000L);
            }
        }
    };
    static boolean enabled;
    static DLogger logger;
    static boolean started;

    static class DLogger extends Thread implements Logger {
        boolean closed;
        final File dir;
        FileOutputStream fos;
        final File logfile;
        final ArrayBlockingQueue<LogEntry> queue = new ArrayBlockingQueue<>(32);
        final LinkedList<LogEntry> logEntryCache = new LinkedList<>();

        public synchronized void archive() {
            synchronized (this) {
                try {
                    FileOutputStream fileOutputStream = this.fos;
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                } catch (Exception unused) {
                }
                this.fos = null;
                if (this.logfile.length() > 0) {
                    this.logfile.renameTo(new File(this.dir, System.currentTimeMillis() + ".log"));
                }
            }
        }

        public void dispose() {
            this.closed = true;
            try {
                interrupt();
                join();
            } catch (Exception unused) {
            }
        }

        @Override // com.narvii.util.log.Logger
        public void log(int i10, String str, String str2, Throwable th) {
            if (i10 < 3) {
                return;
            }
            LogEntry logEntryPollFirst = this.logEntryCache.pollFirst();
            if (logEntryPollFirst == null) {
                logEntryPollFirst = new LogEntry();
            }
            logEntryPollFirst.time = System.currentTimeMillis();
            logEntryPollFirst.level = i10;
            logEntryPollFirst.tag = str;
            logEntryPollFirst.message = str2;
            logEntryPollFirst.error = th;
            this.queue.offer(logEntryPollFirst);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            StringBuilder sb = new StringBuilder(4096);
            Date date = new Date();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
            while (!this.closed) {
                try {
                    try {
                        LogEntry logEntryTake = this.queue.take();
                        logEntryTake.format(sb, date, simpleDateFormat);
                        sb.append('\n');
                        synchronized (this) {
                            try {
                                if (this.fos == null) {
                                    this.fos = new FileOutputStream(this.logfile, true);
                                }
                                this.fos.write(sb.toString().getBytes(Utils.UTF_8));
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        sb.setLength(0);
                        logEntryTake.reset();
                        if (this.logEntryCache.size() < 8) {
                            this.logEntryCache.addLast(logEntryTake);
                        }
                    } catch (IOException unused) {
                        synchronized (this) {
                            try {
                                FileOutputStream fileOutputStream = this.fos;
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                this.fos = null;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                } catch (InterruptedException | Exception unused2) {
                }
            }
            try {
                synchronized (this) {
                    try {
                        FileOutputStream fileOutputStream2 = this.fos;
                        if (fileOutputStream2 != null) {
                            fileOutputStream2.close();
                        }
                        this.fos = null;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            } catch (Exception unused3) {
            }
        }

        DLogger(File file) {
            this.dir = file;
            this.logfile = new File(file, "current.log");
        }
    }

    static class LogEntry {
        public Throwable error;
        public int level;
        public String message;
        public String tag;
        public long time;

        public void reset() {
            this.level = 0;
            this.tag = null;
            this.message = null;
            this.error = null;
        }

        public void format(StringBuilder sb, Date date, DateFormat dateFormat) {
            date.setTime(this.time);
            sb.append(dateFormat.format(date));
            sb.append(' ');
            int i10 = this.level;
            if (i10 == 2) {
                sb.append('V');
            } else if (i10 == 3) {
                sb.append('D');
            } else if (i10 == 4) {
                sb.append('I');
            } else if (i10 == 5) {
                sb.append('W');
            } else if (i10 != 6) {
                sb.append('?');
            } else {
                sb.append('E');
            }
            sb.append('/');
            sb.append(this.tag);
            sb.append(b.COLON);
            sb.append(' ');
            sb.append(this.message);
            if (this.error != null) {
                sb.append('\n');
                StringWriter stringWriter = new StringWriter();
                PrintWriter printWriter = new PrintWriter(stringWriter);
                this.error.printStackTrace(printWriter);
                printWriter.flush();
                printWriter.close();
                sb.append(stringWriter);
            }
        }

        LogEntry() {
        }
    }

    static void flush() {
        int i10;
        DLogger dLogger = logger;
        if (dLogger == null || !enabled) {
            return;
        }
        if (dLogger != null) {
            dLogger.archive();
        }
        Pattern patternCompile = Pattern.compile("\\d+\\.log");
        File[] fileArrListFiles = logger.dir.listFiles();
        if (fileArrListFiles != null) {
            final ArrayList arrayList = new ArrayList();
            for (File file : fileArrListFiles) {
                if (patternCompile.matcher(file.getName()).matches()) {
                    arrayList.add(file);
                }
            }
            Collections.sort(arrayList, new Comparator<File>() { // from class: com.narvii.util.logging.DetailLogging.2
                @Override // java.util.Comparator
                public int compare(File file2, File file3) {
                    return file2.getName().compareTo(file3.getName());
                }
            });
            ListIterator listIterator = arrayList.listIterator(arrayList.size());
            long length = 0;
            while (listIterator.hasPrevious()) {
                File file2 = (File) listIterator.previous();
                if (length >= 1048576) {
                    file2.delete();
                    listIterator.remove();
                } else {
                    length += file2.length();
                }
            }
            if (length == 0) {
                return;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) length);
            byte[] bArr = new byte[4096];
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                try {
                    FileInputStream fileInputStream = new FileInputStream((File) it.next());
                    while (true) {
                        int i11 = fileInputStream.read(bArr);
                        if (i11 != -1) {
                            byteArrayOutputStream.write(bArr, 0, i11);
                        }
                    }
                } catch (Exception unused) {
                }
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (byteArray.length > 1048576) {
                int length2 = byteArray.length;
                for (int i12 = 0; i12 < length2; i12++) {
                    if (byteArray[i12] == 10 && (i10 = length2 - i12) <= 1048576) {
                        byte[] bArr2 = new byte[i10];
                        System.arraycopy(byteArray, i12, bArr2, 0, i10);
                        byteArray = bArr2;
                        break;
                    }
                }
            }
            ((ApiService) NVApplication.instance().getService("api")).exec(ApiRequest.builder().post().verbose().path("/device/log").body(byteArray).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.util.logging.DetailLogging.3
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ((File) it2.next()).delete();
                    }
                }
            });
        }
    }

    static File reportEnabledFile() {
        return new File(NVApplication.instance().getFilesDir(), "dlog.d");
    }

    public static void setReportEnabled(boolean z6) {
        if (z6 != enabled) {
            enabled = z6;
            if (z6) {
                Utils.writeToFile(reportEnabledFile(), "1");
            } else {
                reportEnabledFile().delete();
            }
            Handler handler = Utils.handler;
            Runnable runnable = checkpoint;
            handler.removeCallbacks(runnable);
            if (!z6) {
                if (logger != null) {
                    Log.loggers.remove(logger);
                    DLogger dLogger = logger;
                    File file = dLogger.dir;
                    dLogger.dispose();
                    logger = null;
                    Utils.deleteDir(file);
                    return;
                }
                return;
            }
            if (logger == null) {
                File file2 = new File(NVApplication.instance().getFilesDir(), "dlog");
                file2.mkdir();
                logger = new DLogger(file2);
                Log.loggers.add(logger);
                logger.start();
            }
            if (started) {
                handler.postDelayed(runnable, 30000L);
            }
        }
    }

    public static void start() {
        if (started) {
            return;
        }
        started = true;
        Handler handler = Utils.handler;
        Runnable runnable = checkpoint;
        handler.removeCallbacks(runnable);
        if (enabled) {
            runnable.run();
        }
    }

    public static void stop() {
        if (started) {
            flush();
            started = false;
            Utils.handler.removeCallbacks(checkpoint);
        }
    }

    public static void init() {
        boolean z6;
        if (reportEnabledFile().length() > 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        setReportEnabled(z6);
    }
}
