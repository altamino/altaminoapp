package com.narvii.util.logging;

import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
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

/* loaded from: classes.dex */
public class DetailLogging {
    static final int BUFFER_SIZE = 1048576;
    static final int CHECK_INTERVAL = 30000;
    static final Runnable checkpoint = new Runnable() { // from class: com.narvii.util.logging.DetailLogging.1
        @Override // java.lang.Runnable
        public void run() throws IOException {
            if (DetailLogging.started) {
                DetailLogging.flush();
                Utils.postDelayed(this, 30000L);
            }
        }
    };
    static boolean enabled;
    static DLogger logger;
    static boolean started;

    static File reportEnabledFile() {
        return new File(NVApplication.instance().getFilesDir(), "dlog.d");
    }

    public static void setReportEnabled(boolean z) throws InterruptedException {
        if (z != enabled) {
            enabled = z;
            if (z) {
                Utils.writeToFile(reportEnabledFile(), IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            } else {
                reportEnabledFile().delete();
            }
            Utils.handler.removeCallbacks(checkpoint);
            if (!z) {
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
                Utils.handler.postDelayed(checkpoint, 30000L);
            }
        }
    }

    public static void init() {
        setReportEnabled(reportEnabledFile().length() > 0);
    }

    public static void start() {
        if (started) {
            return;
        }
        started = true;
        Utils.handler.removeCallbacks(checkpoint);
        if (enabled) {
            checkpoint.run();
        }
    }

    public static void stop() throws IOException {
        if (started) {
            flush();
            started = false;
            Utils.handler.removeCallbacks(checkpoint);
        }
    }

    static void flush() throws IOException {
        int i;
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
                        int i2 = fileInputStream.read(bArr);
                        if (i2 != -1) {
                            byteArrayOutputStream.write(bArr, 0, i2);
                        }
                    }
                } catch (Exception unused) {
                }
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (byteArray.length > 1048576) {
                int length2 = byteArray.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        break;
                    }
                    if (byteArray[i3] == 10 && (i = length2 - i3) <= 1048576) {
                        byte[] bArr2 = new byte[i];
                        System.arraycopy(byteArray, i3, bArr2, 0, i);
                        byteArray = bArr2;
                        break;
                    }
                    i3++;
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

    /* loaded from: classes3.dex */
    static class LogEntry {
        public Throwable error;
        public int level;
        public String message;
        public String tag;
        public long time;

        LogEntry() {
        }

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
            int i = this.level;
            if (i == 2) {
                sb.append('V');
            } else if (i == 3) {
                sb.append('D');
            } else if (i == 4) {
                sb.append('I');
            } else if (i == 5) {
                sb.append('W');
            } else if (i == 6) {
                sb.append('E');
            } else {
                sb.append('?');
            }
            sb.append('/');
            sb.append(this.tag);
            sb.append(':');
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
    }

    /* loaded from: classes3.dex */
    static class DLogger extends Thread implements Logger {
        boolean closed;
        final File dir;
        FileOutputStream fos;
        final File logfile;
        final ArrayBlockingQueue<LogEntry> queue = new ArrayBlockingQueue<>(32);
        final LinkedList<LogEntry> logEntryCache = new LinkedList<>();

        DLogger(File file) {
            this.dir = file;
            this.logfile = new File(file, "current.log");
        }

        public void dispose() throws InterruptedException {
            this.closed = true;
            try {
                interrupt();
                join();
            } catch (Exception unused) {
            }
        }

        public synchronized void archive() {
            synchronized (this) {
                try {
                    if (this.fos != null) {
                        this.fos.close();
                    }
                } catch (Exception unused) {
                }
                this.fos = null;
                if (this.logfile.length() > 0) {
                    this.logfile.renameTo(new File(this.dir, System.currentTimeMillis() + ".log"));
                }
            }
        }

        @Override // com.narvii.util.log.Logger
        public void log(int i, String str, String str2, Throwable th) {
            if (i < 3) {
                return;
            }
            LogEntry logEntryPollFirst = this.logEntryCache.pollFirst();
            if (logEntryPollFirst == null) {
                logEntryPollFirst = new LogEntry();
            }
            logEntryPollFirst.time = System.currentTimeMillis();
            logEntryPollFirst.level = i;
            logEntryPollFirst.tag = str;
            logEntryPollFirst.message = str2;
            logEntryPollFirst.error = th;
            this.queue.offer(logEntryPollFirst);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws InterruptedException {
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
                            if (this.fos == null) {
                                this.fos = new FileOutputStream(this.logfile, true);
                            }
                            this.fos.write(sb.toString().getBytes(Utils.UTF_8));
                        }
                        sb.setLength(0);
                        logEntryTake.reset();
                        if (this.logEntryCache.size() < 8) {
                            this.logEntryCache.addLast(logEntryTake);
                        }
                    } catch (IOException unused) {
                        synchronized (this) {
                            if (this.fos != null) {
                                this.fos.close();
                            }
                            this.fos = null;
                        }
                    }
                } catch (InterruptedException | Exception unused2) {
                }
            }
            try {
                synchronized (this) {
                    if (this.fos != null) {
                        this.fos.close();
                    }
                    this.fos = null;
                }
            } catch (Exception unused3) {
            }
        }
    }
}
