package com.narvii.theme;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.support.v4.content.LocalBroadcastManager;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.lib.R;
import com.narvii.model.api.ApiResponse;
import com.narvii.photos.PhotoManager;
import com.narvii.photos.PhotoUploadResponse;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.ZipUtils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.drawables.gif.NVGifDrawable;
import com.narvii.util.drawables.gif.WrapGifDrawable;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.http.ProxyStack;
import com.narvii.util.logging.LoggingService;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class ThemePackService {
    public static final String ACTION_PROGRESS_CHANGED = "com.narvii.action.THEME_PACK_PROGRESS";
    public static final String ACTION_STATUS_CHANGED = "com.narvii.action.THEME_PACK_CHANGED";
    public static final String ACTION_THEME_DOWNLOAD_FINISH = "com.narvii.action.THEME_DOWNLOAD_SUCCESS";
    public static final int STATUS_DOWNLOADING = 1;
    public static final int STATUS_FAIL = -1;
    public static final int STATUS_IDLE = 0;
    public static final int STATUS_READY = 5;
    private File cacheDir;
    private NVContext context;
    private File dir;
    private final LocalBroadcastManager lbm;
    LoggingService logging;
    private ProxyStack stack;
    private File uploadDir;
    private final ConcurrentHashMap<Integer, Worker> runningSessions = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<Integer, UploadTask> uploadSessions = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<Integer, String> errors = new ConcurrentHashMap<>();
    private final Hashtable<Integer, Integer> revs = new Hashtable<>();
    private final Hashtable<Integer, ThemeInfo> themes = new Hashtable<>();
    private final HashMap<String, WeakReference<Object>> rawObjects = new HashMap<>();
    private Set<Integer> downloadThemeNdcIdSet = new HashSet();

    /* loaded from: classes3.dex */
    public enum ThemeObject {
        BACKGROUND,
        ICON,
        LOGO,
        TITLEBAR,
        OLDTITLEBAR
    }

    /* loaded from: classes3.dex */
    public interface ThemePackUploadListener {
        void onUploadFail(String str);

        void onUploadSuccess(String str);

        void onZIPFail();
    }

    public ThemePackService(NVContext nVContext) {
        this.context = nVContext;
        this.dir = new File(nVContext.getContext().getCacheDir(), "themepack");
        this.dir.mkdir();
        this.uploadDir = new File(this.dir, "publish");
        this.uploadDir.mkdir();
        this.cacheDir = new File(nVContext.getContext().getCacheDir(), "themepack");
        this.cacheDir.mkdir();
        this.lbm = LocalBroadcastManager.getInstance(nVContext.getContext());
    }

    public Drawable getDrawable(int i, ThemeObject themeObject, int i2, int i3) {
        return getDrawable(i, themeObject, i2, i3, false);
    }

    public Drawable getDrawable(int i, ThemeObject themeObject, int i2, int i3, boolean z) {
        List<ThemeImage> list;
        Object objDecodeFile;
        ThemeInfo themeInfo = getThemeInfo(i);
        if (themeInfo == null) {
            return null;
        }
        int i4 = AnonymousClass1.$SwitchMap$com$narvii$theme$ThemePackService$ThemeObject[themeObject.ordinal()];
        if (i4 == 1) {
            list = themeInfo.background;
        } else if (i4 == 2) {
            list = themeInfo.icon;
        } else if (i4 == 3) {
            list = themeInfo.logo;
        } else if (i4 == 4) {
            list = themeInfo.titlebar;
        } else {
            list = i4 != 5 ? null : themeInfo.oldTitlebar;
        }
        if (list != null && !list.isEmpty()) {
            ThemeImage themeImage = null;
            ThemeImage themeImage2 = null;
            for (ThemeImage themeImage3 : list) {
                float f = themeImage3.width * themeImage3.height;
                if (themeImage2 == null || f > themeImage2.width * themeImage2.height) {
                    themeImage2 = themeImage3;
                }
                if (themeImage3.width >= i2 && themeImage3.height >= i3 && (themeImage == null || f < themeImage.width * themeImage.height)) {
                    themeImage = themeImage3;
                }
            }
            if (themeImage == null) {
                themeImage = themeImage2;
            }
            String str = "x" + i + "-r" + themeInfo.revision + "-" + themeImage.path;
            WeakReference<Object> weakReference = this.rawObjects.get(str);
            Object obj = weakReference == null ? null : weakReference.get();
            if (obj == null) {
                File file = new File(getDir(i), themeImage.path);
                try {
                    if (Utils.isGif(themeImage.path)) {
                        objDecodeFile = new NVGifDrawable(file);
                    } else {
                        objDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath());
                    }
                    obj = objDecodeFile;
                    this.rawObjects.put(str, new WeakReference<>(obj));
                } catch (Exception e) {
                    Log.e("fail to read theme resource " + str, e);
                    return null;
                } catch (OutOfMemoryError e2) {
                    Log.w("OutOfMemory when read theme resource " + str);
                    OomHelper.test(e2);
                    return null;
                }
            }
            if (obj instanceof Bitmap) {
                if (themeObject == ThemeObject.TITLEBAR) {
                    return new ThemeBackgroundDrawable((Bitmap) obj, z);
                }
                if (themeObject == ThemeObject.OLDTITLEBAR) {
                    return new TitlebarDrawable((Bitmap) obj);
                }
                return new BitmapDrawable(this.context.getContext().getResources(), (Bitmap) obj);
            }
            if (obj instanceof NVGifDrawable) {
                if (themeObject == ThemeObject.TITLEBAR) {
                    return new ThemeBackgroundGifDrawable((NVGifDrawable) obj, z);
                }
                if (themeObject == ThemeObject.OLDTITLEBAR) {
                    return new TitlebarGifDrawable((NVGifDrawable) obj);
                }
                return new WrapGifDrawable((NVGifDrawable) obj);
            }
        }
        return null;
    }

    /* renamed from: com.narvii.theme.ThemePackService$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$narvii$theme$ThemePackService$ThemeObject = new int[ThemeObject.values().length];

        static {
            try {
                $SwitchMap$com$narvii$theme$ThemePackService$ThemeObject[ThemeObject.BACKGROUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$narvii$theme$ThemePackService$ThemeObject[ThemeObject.ICON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$narvii$theme$ThemePackService$ThemeObject[ThemeObject.LOGO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$narvii$theme$ThemePackService$ThemeObject[ThemeObject.TITLEBAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$narvii$theme$ThemePackService$ThemeObject[ThemeObject.OLDTITLEBAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public void touchThemePack(int i) {
        File dir = getDir(i);
        if (dir.exists()) {
            dir.setLastModified(System.currentTimeMillis());
        }
    }

    public int getThemeColor(int i) {
        ThemeInfo themeInfo = getThemeInfo(i);
        return themeInfo == null ? this.context.getContext().getResources().getColor(R.color.color_default) : themeInfo.themeColor;
    }

    File getDir(int i) {
        return new File(this.dir, "x" + i);
    }

    File getRevFile(int i) {
        return new File(getDir(i), ".rev");
    }

    File getWritingFile(int i, int i2) {
        return new File(this.cacheDir, "x" + i + "-r" + i2 + ".w");
    }

    File getDownloadedFile(int i, int i2) {
        return new File(this.cacheDir, "x" + i + "-r" + i2 + ".d");
    }

    ProxyStack getStack() {
        if (this.stack == null) {
            this.stack = new ProxyStack(this.context);
        }
        return this.stack;
    }

    public int getStatus(int i, int i2) {
        int iIntValue;
        File revFile;
        Worker worker = this.runningSessions.get(Integer.valueOf(i));
        if (worker != null) {
            return (i2 == 0 || worker.rev == i2) ? 1 : 0;
        }
        Integer num = this.revs.get(Integer.valueOf(i));
        if (num == null) {
            try {
                revFile = getRevFile(i);
            } catch (Exception unused) {
            }
            iIntValue = revFile.length() > 0 ? Integer.parseInt(Utils.readStringFromFile(revFile)) : 0;
            this.revs.put(Integer.valueOf(i), Integer.valueOf(iIntValue));
        } else {
            iIntValue = num.intValue();
        }
        if (i2 == 0 && iIntValue != 0) {
            return 5;
        }
        if (i2 == 0 || iIntValue != i2) {
            return this.errors.get(Integer.valueOf(i)) == null ? 0 : -1;
        }
        return 5;
    }

    public int getStatus(int i) {
        return getStatus(i, 0);
    }

    public String getError(int i) {
        return this.errors.get(Integer.valueOf(i));
    }

    public float getProgress(int i) {
        int i2;
        Worker worker = this.runningSessions.get(Integer.valueOf(i));
        if (worker != null && (i2 = worker.total) > 0) {
            return (worker.current * 1.0f) / i2;
        }
        return 0.0f;
    }

    public ThemeInfo getThemeInfo(int i) {
        ThemeInfo themeInfo = this.themes.get(Integer.valueOf(i));
        if (themeInfo != null) {
            return themeInfo;
        }
        try {
            File file = new File(getDir(i), "theme_info.json");
            if (file.length() > 0) {
                themeInfo = (ThemeInfo) JacksonUtils.DEFAULT_MAPPER.readValue(file, ThemeInfo.class);
            }
        } catch (Exception e) {
            Log.e("fail to open theme pack", e);
        }
        if (themeInfo != null) {
            this.themes.put(Integer.valueOf(i), themeInfo);
        }
        return themeInfo;
    }

    public ObjectNode getThemeJsonInfo(int i) {
        try {
            File file = new File(getDir(i), "theme_info.json");
            if (file.length() > 0) {
                return (ObjectNode) JacksonUtils.DEFAULT_MAPPER.readTree(file);
            }
            return null;
        } catch (Exception e) {
            Log.e("fail to open theme pack", e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0025 A[Catch: all -> 0x0138, Exception -> 0x013b, TryCatch #4 {Exception -> 0x013b, all -> 0x0138, blocks: (B:4:0x0008, B:6:0x0010, B:7:0x0025, B:9:0x002f), top: B:56:0x0008 }] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean extract(int r12, int r13, java.lang.String r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.theme.ThemePackService.extract(int, int, java.lang.String):boolean");
    }

    public void require(int i, int i2, String str) throws IOException {
        require(i, i2, str, false);
    }

    public void require(int i, int i2, String str, boolean z) throws IOException {
        Worker worker;
        if (getStatus(i, i2) > 0) {
            if (z || (worker = this.runningSessions.get(Integer.valueOf(i))) == null) {
                return;
            }
            worker.downloadOnly = false;
            return;
        }
        cancel(i);
        if (extract(i, i2, str)) {
            Log.i("extract themepack " + str);
            return;
        }
        if (str != null) {
            if (str.startsWith("http://") || str.startsWith("https://")) {
                if (this.logging == null) {
                    this.logging = (LoggingService) this.context.getService("logging");
                }
                Worker worker2 = new Worker(i, i2, str);
                worker2.downloadOnly = z;
                worker2.setDaemon(true);
                this.runningSessions.put(Integer.valueOf(i), worker2);
                worker2.start();
                Intent intent = new Intent(ACTION_STATUS_CHANGED);
                intent.putExtra("cid", i);
                intent.putExtra("rev", i2);
                this.lbm.sendBroadcast(intent);
            }
        }
    }

    public void cancel(int i) throws IOException {
        this.errors.remove(Integer.valueOf(i));
        Worker workerRemove = this.runningSessions.remove(Integer.valueOf(i));
        if (workerRemove != null) {
            workerRemove.cancel();
            Intent intent = new Intent(ACTION_STATUS_CHANGED);
            intent.putExtra("cid", i);
            intent.putExtra("rev", workerRemove.rev);
            this.lbm.sendBroadcast(intent);
        }
    }

    public void cancelUpload(int i) {
        UploadTask uploadTaskRemove = this.uploadSessions.remove(Integer.valueOf(i));
        if (uploadTaskRemove != null) {
            uploadTaskRemove.cancelUpload();
        }
    }

    public void cancelAll() throws IOException {
        this.errors.clear();
        if (this.runningSessions.isEmpty()) {
            return;
        }
        Iterator<Worker> it = this.runningSessions.values().iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
        this.runningSessions.clear();
        this.lbm.sendBroadcast(new Intent(ACTION_STATUS_CHANGED));
    }

    public void trim(int i, int i2, long j) {
        int i3;
        if (NVApplication.CLIENT_TYPE != 100) {
            return;
        }
        AccountService accountService = (AccountService) this.context.getService("account");
        AffiliationsService affiliationsService = (AffiliationsService) this.context.getService("affiliations");
        if (accountService == null || affiliationsService == null || !accountService.hasAccount() || affiliationsService.getTimeStamp() == null) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            File[] fileArrListFiles = this.cacheDir.listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            int i4 = 0;
            for (File file : fileArrListFiles) {
                if (file.isDirectory() && file.getName().startsWith("x")) {
                    i4++;
                }
            }
            if (i4 <= i) {
                return;
            }
            int iMin = Math.min(i2, i4 - i);
            int i5 = 0;
            for (File file2 : fileArrListFiles) {
                if (i5 >= iMin) {
                    break;
                }
                if (file2.isDirectory()) {
                    String name = file2.getName();
                    if (name.startsWith("x") && (i3 = StringUtils.parseInt(name.substring(1), -1)) > 0 && !this.revs.contains(Integer.valueOf(i3)) && !this.themes.contains(Integer.valueOf(i3)) && !affiliationsService.contains(i3) && file2.lastModified() < System.currentTimeMillis() - j) {
                        i5++;
                        FileUtils.deleteFile(getRevFile(i3));
                        Utils.deleteDir(file2);
                    }
                }
            }
            Log.i("themePack", "trim " + i5 + " theme pack spent " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
        } catch (Exception e) {
            Log.e("trim", e);
        }
    }

    public void deleteThemePack(int i) {
        try {
            FileUtils.deleteFile(getRevFile(i));
            this.revs.remove(Integer.valueOf(i));
            this.themes.remove(Integer.valueOf(i));
            Utils.deleteDir(getDir(i));
        } catch (Exception e) {
            Log.e("delete", e);
        }
    }

    public void clearErrors() {
        if (this.errors.size() > 0) {
            this.errors.clear();
            this.lbm.sendBroadcast(new Intent(ACTION_STATUS_CHANGED));
        }
    }

    public void cleanCache() {
        File[] fileArrListFiles = this.cacheDir.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - 172800000;
        for (File file : fileArrListFiles) {
            if (file.isFile() && ((file.getName().endsWith(".d") || file.getName().endsWith(".w")) && file.lastModified() < jCurrentTimeMillis)) {
                rm(file);
            }
        }
    }

    public void clear() throws IOException {
        cancelAll();
        this.revs.clear();
        this.themes.clear();
        Utils.deleteContents(this.cacheDir);
    }

    void rm(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                rm(file2);
            }
        }
        file.delete();
    }

    /* loaded from: classes3.dex */
    private class Worker extends Thread {
        int cid;
        private HttpURLConnection conn;
        int current;
        boolean downloadOnly;
        private OutputStream os;
        int rev;
        int total;
        String url;

        Worker(int i, int i2, String str) {
            this.cid = i;
            this.rev = i2;
            this.url = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cancel() throws IOException {
            HttpURLConnection httpURLConnection = this.conn;
            if (httpURLConnection != null) {
                try {
                    httpURLConnection.disconnect();
                } catch (Exception unused) {
                }
                this.conn = null;
            }
            OutputStream outputStream = this.os;
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Exception unused2) {
                }
                this.os = null;
            }
        }

        private boolean check() {
            return this.conn != null && ThemePackService.this.runningSessions.get(Integer.valueOf(this.cid)) == this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:100:0x0222, code lost:
        
            r5 = r20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x01b1, code lost:
        
            r28.os.close();
            r28.os = null;
            r5.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x01bc, code lost:
        
            r28.conn.disconnect();
            r28.conn = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x01c4, code lost:
        
            r28.this$0.lbm.sendBroadcast(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x01d1, code lost:
        
            if (r0.renameTo(r7) != false) goto L81;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x01d3, code lost:
        
            r5 = "Fail to move downloaded file";
            com.narvii.util.Log.w("fail to move downloaded themepack " + r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x01e9, code lost:
        
            r8 = -9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x01eb, code lost:
        
            r0 = "Move";
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x01f1, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x01f2, code lost:
        
            r5 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x01f4, code lost:
        
            r0 = null;
            r5 = null;
            r8 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x01f7, code lost:
        
            com.narvii.util.Utils.safeClose(r28.os);
            com.narvii.util.Utils.safeClose((java.io.InputStream) null);
            r4 = r28.conn;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0203, code lost:
        
            if (r4 == null) goto L145;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0205, code lost:
        
            r4.disconnect();
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x020a, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x020b, code lost:
        
            r20 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x020e, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x020f, code lost:
        
            r20 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x0212, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x0213, code lost:
        
            r20 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x0216, code lost:
        
            r5 = r20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x021b, code lost:
        
            r8 = 0;
         */
        /* JADX WARN: Removed duplicated region for block: B:113:0x024a  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x024c A[Catch: all -> 0x0253, Exception -> 0x0256, TRY_LEAVE, TryCatch #9 {Exception -> 0x0256, blocks: (B:111:0x0246, B:114:0x024c), top: B:203:0x0246 }] */
        /* JADX WARN: Removed duplicated region for block: B:120:0x0259 A[Catch: all -> 0x0253, TRY_ENTER, TryCatch #17 {all -> 0x0253, blocks: (B:5:0x0043, B:6:0x0047, B:7:0x004f, B:41:0x0116, B:47:0x012c, B:49:0x0130, B:50:0x0142, B:52:0x015a, B:54:0x0161, B:60:0x0175, B:62:0x018d, B:66:0x01a1, B:65:0x0195, B:68:0x01b1, B:111:0x0246, B:120:0x0259, B:123:0x0260, B:126:0x0267, B:129:0x026e, B:133:0x0276, B:137:0x02a2, B:140:0x02b1, B:136:0x028d, B:114:0x024c), top: B:199:0x0043 }] */
        /* JADX WARN: Removed duplicated region for block: B:135:0x028c  */
        /* JADX WARN: Removed duplicated region for block: B:136:0x028d A[Catch: all -> 0x0253, TryCatch #17 {all -> 0x0253, blocks: (B:5:0x0043, B:6:0x0047, B:7:0x004f, B:41:0x0116, B:47:0x012c, B:49:0x0130, B:50:0x0142, B:52:0x015a, B:54:0x0161, B:60:0x0175, B:62:0x018d, B:66:0x01a1, B:65:0x0195, B:68:0x01b1, B:111:0x0246, B:120:0x0259, B:123:0x0260, B:126:0x0267, B:129:0x026e, B:133:0x0276, B:137:0x02a2, B:140:0x02b1, B:136:0x028d, B:114:0x024c), top: B:199:0x0043 }] */
        /* JADX WARN: Removed duplicated region for block: B:139:0x02af  */
        /* JADX WARN: Removed duplicated region for block: B:147:0x02de A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:14:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:154:0x03c0  */
        /* JADX WARN: Removed duplicated region for block: B:157:0x03c6  */
        /* JADX WARN: Removed duplicated region for block: B:162:0x03df  */
        /* JADX WARN: Removed duplicated region for block: B:165:0x040b  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:201:0x02d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:221:0x0443 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x012c A[Catch: Exception -> 0x021d, all -> 0x0253, TRY_ENTER, TryCatch #15 {Exception -> 0x021d, blocks: (B:41:0x0116, B:47:0x012c, B:49:0x0130, B:50:0x0142), top: B:210:0x0116 }] */
        /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 1097
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.theme.ThemePackService.Worker.run():void");
        }
    }

    File getUploadDir(int i) {
        File file = new File(this.uploadDir.getAbsolutePath() + "/x" + i + "/files");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public void removeUploadDir() {
        Utils.deleteDir(this.uploadDir);
    }

    public void removeUploadDir(int i) {
        Utils.deleteDir(getUploadDir(i));
    }

    File getUploadJsonFile(int i) throws IOException {
        File file = new File(getUploadDir(i), "theme_info.json");
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return file;
    }

    void changeThemeImage(boolean z, ThemeImage themeImage, ArrayNode arrayNode, String str, int i) throws Exception {
        if (arrayNode == null) {
            return;
        }
        int i2 = 0;
        if (themeImage != null) {
            ThemeImage[] themeImageList = getThemeImageList(arrayNode);
            if (themeImageList != null) {
                int length = themeImageList.length;
                while (i2 < length) {
                    File file = new File(getUploadDir(i).getAbsolutePath() + "/" + themeImageList[i2].path);
                    if (file.exists()) {
                        file.delete();
                    }
                    i2++;
                }
            }
            arrayNode.removeAll();
            String str2 = str + "/img.png";
            File file2 = new File(getUploadDir(i).getAbsolutePath() + "/" + str2);
            file2.getParentFile().mkdirs();
            changeToFilePath(themeImage);
            Utils.copyFile(new File(themeImage.path), file2);
            themeImage.path = str2;
            setThemeImageList(arrayNode, themeImage);
            return;
        }
        ThemeImage[] themeImageList2 = getThemeImageList(arrayNode);
        if (themeImageList2 == null || !z) {
            return;
        }
        int length2 = themeImageList2.length;
        while (i2 < length2) {
            File file3 = new File(getUploadDir(i).getAbsolutePath() + "/" + themeImageList2[i2].path);
            if (file3.exists()) {
                file3.delete();
            }
            i2++;
        }
        arrayNode.removeAll();
    }

    public static ThemeImage[] getThemeImageList(ArrayNode arrayNode) {
        try {
            return (ThemeImage[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(arrayNode, ThemeImage[].class);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void setThemeImageList(ArrayNode arrayNode, ThemeImage themeImage) {
        if (arrayNode == null) {
            return;
        }
        arrayNode.add(JacksonUtils.DEFAULT_MAPPER.valueToTree(themeImage));
    }

    void changeToFilePath(ThemeImage themeImage) {
        File path;
        NVContext nVContext = this.context;
        if (nVContext == null || themeImage == null || (path = ((PhotoManager) nVContext.getService("photo")).getPath(themeImage.path)) == null || !path.exists()) {
            return;
        }
        themeImage.path = path.getAbsolutePath();
    }

    public void upload(ThemePackUploadSpec themePackUploadSpec, ThemePackUploadListener themePackUploadListener) {
        cancelUpload(themePackUploadSpec.cid);
        UploadTask uploadTask = new UploadTask(themePackUploadSpec, themePackUploadListener);
        this.uploadSessions.put(Integer.valueOf(themePackUploadSpec.cid), uploadTask);
        uploadTask.execute(new Void[0]);
    }

    public void addToDownLoadList(int i) {
        this.downloadThemeNdcIdSet.add(Integer.valueOf(i));
    }

    /* loaded from: classes3.dex */
    private class UploadTask extends AsyncTask<Void, Void, File> {
        ThemeImage background;
        boolean bgRemoved;
        int cid;
        ThemePackUploadListener listener;
        ThemeImage logo;
        boolean logoRemoved;
        ApiRequest request;
        boolean tbRemoved;
        int themeColor;
        ThemeImage titleBar;

        UploadTask(ThemePackUploadSpec themePackUploadSpec, ThemePackUploadListener themePackUploadListener) {
            this.cid = themePackUploadSpec.cid;
            this.themeColor = themePackUploadSpec.themeColor;
            ThemeImage themeImage = themePackUploadSpec.background;
            if (themeImage != null) {
                this.background = themeImage.m56clone();
            }
            ThemeImage themeImage2 = themePackUploadSpec.titleBar;
            if (themeImage2 != null) {
                this.titleBar = themeImage2.m56clone();
            }
            ThemeImage themeImage3 = themePackUploadSpec.logo;
            if (themeImage3 != null) {
                this.logo = themeImage3.m56clone();
            }
            this.listener = themePackUploadListener;
            this.bgRemoved = themePackUploadSpec.bgRemoved;
            this.tbRemoved = themePackUploadSpec.tbRemoved;
            this.logoRemoved = themePackUploadSpec.logoRemoved;
        }

        public void cancelUpload() {
            cancel(true);
            if (this.request != null) {
                ((ApiService) ThemePackService.this.context.getService("api")).abort(this.request);
                this.request = null;
            }
        }

        private ArrayNode getArrayNode(ObjectNode objectNode, String str) {
            if (objectNode == null) {
                return null;
            }
            JsonNode jsonNodeCreateArrayNode = objectNode.get(str);
            if (jsonNodeCreateArrayNode == null) {
                jsonNodeCreateArrayNode = JacksonUtils.createArrayNode();
                objectNode.put(str, jsonNodeCreateArrayNode);
            }
            if (jsonNodeCreateArrayNode instanceof ArrayNode) {
                return (ArrayNode) jsonNodeCreateArrayNode;
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public File doInBackground(Void... voidArr) throws Throwable {
            try {
                ThemePackService.this.removeUploadDir(this.cid);
                File uploadDir = ThemePackService.this.getUploadDir(this.cid);
                uploadDir.getParentFile().mkdirs();
                Utils.copyFolder(ThemePackService.this.getDir(this.cid), uploadDir);
                ObjectNode themeJsonInfo = ThemePackService.this.getThemeJsonInfo(this.cid);
                themeJsonInfo.put("theme-color", StringUtils.formatColor(this.themeColor));
                ThemePackService.this.changeThemeImage(this.bgRemoved, this.background, getArrayNode(themeJsonInfo, ThemeInfo.BACKGROUND_IMAGE), "images/background", this.cid);
                ThemePackService.this.changeThemeImage(this.tbRemoved, this.titleBar, getArrayNode(themeJsonInfo, ThemeInfo.TITLEBAR_BACKGROUND_IMAGE), "images/titlebarBackground", this.cid);
                ThemePackService.this.changeThemeImage(this.logoRemoved, this.logo, getArrayNode(themeJsonInfo, ThemeInfo.LOGO_IMAGE), "images/logo", this.cid);
                if (this.tbRemoved) {
                    ThemePackService.this.changeThemeImage(true, null, getArrayNode(themeJsonInfo, ThemeInfo.TITLEBAR_IMAGE), "images/titlebar", this.cid);
                }
                String string = themeJsonInfo.toString();
                Utils.writeToFile(ThemePackService.this.getUploadJsonFile(this.cid), string);
                Log.d("themeInfo", string);
                File file = new File(ThemePackService.this.getUploadDir(this.cid).getParentFile(), "publish.zip");
                if (!file.exists()) {
                    file.createNewFile();
                }
                ZipUtils.compressedFile(ThemePackService.this.getUploadDir(this.cid), file);
                return file;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(File file) {
            if (file != null) {
                ApiService apiService = (ApiService) ThemePackService.this.context.getService("api");
                this.request = ApiRequest.builder().communityId(this.cid).post().path("/media/upload/target/community-theme-pack").body(file).build();
                apiService.exec(this.request, new ApiResponseListener<PhotoUploadResponse>(PhotoUploadResponse.class) { // from class: com.narvii.theme.ThemePackService.UploadTask.1
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, PhotoUploadResponse photoUploadResponse) throws Exception {
                        super.onFinish(apiRequest, (ApiRequest) photoUploadResponse);
                        UploadTask.this.listener.onUploadSuccess(photoUploadResponse.mediaValue);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i, list, str, apiResponse, th);
                        UploadTask.this.listener.onUploadFail(str);
                    }
                });
                return;
            }
            this.listener.onZIPFail();
        }
    }
}
