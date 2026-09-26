package com.narvii.theme;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.SystemClock;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.webkit.ProxyConfig;
import com.android.volley.NetworkError;
import com.android.volley.NoConnectionError;
import com.android.volley.TimeoutError;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.sessions.settings.c;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
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
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import qa.y;

/* JADX INFO: loaded from: classes3.dex */
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

    public enum ThemeObject {
        BACKGROUND,
        ICON,
        LOGO,
        TITLEBAR,
        OLDTITLEBAR
    }

    public interface ThemePackUploadListener {
        void onUploadFail(String str);

        void onUploadSuccess(String str);

        void onZIPFail();
    }

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

        public void cancelUpload() {
            cancel(true);
            if (this.request != null) {
                ((ApiService) ThemePackService.this.context.getService("api")).abort(this.request);
                this.request = null;
            }
        }

        UploadTask(ThemePackUploadSpec themePackUploadSpec, ThemePackUploadListener themePackUploadListener) {
            this.cid = themePackUploadSpec.cid;
            this.themeColor = themePackUploadSpec.themeColor;
            ThemeImage themeImage = themePackUploadSpec.background;
            if (themeImage != null) {
                this.background = themeImage.m1632clone();
            }
            ThemeImage themeImage2 = themePackUploadSpec.titleBar;
            if (themeImage2 != null) {
                this.titleBar = themeImage2.m1632clone();
            }
            ThemeImage themeImage3 = themePackUploadSpec.logo;
            if (themeImage3 != null) {
                this.logo = themeImage3.m1632clone();
            }
            this.listener = themePackUploadListener;
            this.bgRemoved = themePackUploadSpec.bgRemoved;
            this.tbRemoved = themePackUploadSpec.tbRemoved;
            this.logoRemoved = themePackUploadSpec.logoRemoved;
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
            if (file == null) {
                this.listener.onZIPFail();
                return;
            }
            ApiService apiService = (ApiService) ThemePackService.this.context.getService("api");
            ApiRequest apiRequestBuild = ApiRequest.builder().communityId(this.cid).post().path("/media/upload/target/community-theme-pack").body(file).build();
            this.request = apiRequestBuild;
            apiService.exec(apiRequestBuild, new ApiResponseListener<PhotoUploadResponse>(PhotoUploadResponse.class) { // from class: com.narvii.theme.ThemePackService.UploadTask.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, PhotoUploadResponse photoUploadResponse) throws Exception {
                    super.onFinish(apiRequest, photoUploadResponse);
                    UploadTask.this.listener.onUploadSuccess(photoUploadResponse.mediaValue);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    UploadTask.this.listener.onUploadFail(str);
                }
            });
        }
    }

    private class Worker extends Thread {
        int cid;
        private HttpURLConnection conn;
        int current;
        boolean downloadOnly;
        private OutputStream os;
        int rev;
        int total;
        String url;

        /* JADX WARN: Code duplicated, block: B:114:0x0248  */
        /* JADX WARN: Code duplicated, block: B:115:0x024a A[Catch: all -> 0x0054, Exception -> 0x024e, TRY_LEAVE, TryCatch #1 {Exception -> 0x024e, blocks: (B:112:0x0244, B:115:0x024a), top: B:183:0x0244 }] */
        /* JADX WARN: Code duplicated, block: B:117:0x0250 A[Catch: all -> 0x0054, TRY_ENTER, TryCatch #14 {all -> 0x0054, blocks: (B:5:0x0043, B:6:0x0047, B:7:0x004f, B:44:0x011e, B:50:0x0134, B:52:0x0138, B:55:0x014f, B:57:0x0168, B:59:0x016f, B:65:0x0183, B:67:0x019c, B:71:0x01aa, B:70:0x01a4, B:75:0x01c1, B:112:0x0244, B:115:0x024a, B:117:0x0250, B:120:0x0256, B:123:0x025c, B:126:0x0262, B:130:0x0269, B:134:0x0295, B:137:0x02a4, B:133:0x0280), top: B:202:0x0043 }] */
        /* JADX WARN: Code duplicated, block: B:119:0x0254  */
        /* JADX WARN: Code duplicated, block: B:120:0x0256 A[Catch: all -> 0x0054, TryCatch #14 {all -> 0x0054, blocks: (B:5:0x0043, B:6:0x0047, B:7:0x004f, B:44:0x011e, B:50:0x0134, B:52:0x0138, B:55:0x014f, B:57:0x0168, B:59:0x016f, B:65:0x0183, B:67:0x019c, B:71:0x01aa, B:70:0x01a4, B:75:0x01c1, B:112:0x0244, B:115:0x024a, B:117:0x0250, B:120:0x0256, B:123:0x025c, B:126:0x0262, B:130:0x0269, B:134:0x0295, B:137:0x02a4, B:133:0x0280), top: B:202:0x0043 }] */
        /* JADX WARN: Code duplicated, block: B:122:0x025a  */
        /* JADX WARN: Code duplicated, block: B:123:0x025c A[Catch: all -> 0x0054, TryCatch #14 {all -> 0x0054, blocks: (B:5:0x0043, B:6:0x0047, B:7:0x004f, B:44:0x011e, B:50:0x0134, B:52:0x0138, B:55:0x014f, B:57:0x0168, B:59:0x016f, B:65:0x0183, B:67:0x019c, B:71:0x01aa, B:70:0x01a4, B:75:0x01c1, B:112:0x0244, B:115:0x024a, B:117:0x0250, B:120:0x0256, B:123:0x025c, B:126:0x0262, B:130:0x0269, B:134:0x0295, B:137:0x02a4, B:133:0x0280), top: B:202:0x0043 }] */
        /* JADX WARN: Code duplicated, block: B:125:0x0260  */
        /* JADX WARN: Code duplicated, block: B:126:0x0262 A[Catch: all -> 0x0054, TryCatch #14 {all -> 0x0054, blocks: (B:5:0x0043, B:6:0x0047, B:7:0x004f, B:44:0x011e, B:50:0x0134, B:52:0x0138, B:55:0x014f, B:57:0x0168, B:59:0x016f, B:65:0x0183, B:67:0x019c, B:71:0x01aa, B:70:0x01a4, B:75:0x01c1, B:112:0x0244, B:115:0x024a, B:117:0x0250, B:120:0x0256, B:123:0x025c, B:126:0x0262, B:130:0x0269, B:134:0x0295, B:137:0x02a4, B:133:0x0280), top: B:202:0x0043 }] */
        /* JADX WARN: Code duplicated, block: B:128:0x0266  */
        /* JADX WARN: Code duplicated, block: B:129:0x0268  */
        /* JADX WARN: Code duplicated, block: B:132:0x027f  */
        /* JADX WARN: Code duplicated, block: B:133:0x0280 A[Catch: all -> 0x0054, TryCatch #14 {all -> 0x0054, blocks: (B:5:0x0043, B:6:0x0047, B:7:0x004f, B:44:0x011e, B:50:0x0134, B:52:0x0138, B:55:0x014f, B:57:0x0168, B:59:0x016f, B:65:0x0183, B:67:0x019c, B:71:0x01aa, B:70:0x01a4, B:75:0x01c1, B:112:0x0244, B:115:0x024a, B:117:0x0250, B:120:0x0256, B:123:0x025c, B:126:0x0262, B:130:0x0269, B:134:0x0295, B:137:0x02a4, B:133:0x0280), top: B:202:0x0043 }] */
        /* JADX WARN: Code duplicated, block: B:136:0x02a2  */
        /* JADX WARN: Code duplicated, block: B:150:0x033d  */
        /* JADX WARN: Code duplicated, block: B:159:0x03cf  */
        /* JADX WARN: Code duplicated, block: B:162:0x03fb A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:163:0x03fd  */
        /* JADX WARN: Code duplicated, block: B:164:0x040d  */
        /* JADX WARN: Code duplicated, block: B:16:0x0072  */
        /* JADX WARN: Code duplicated, block: B:186:0x02c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:194:0x0433 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:197:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:199:0x0130 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:205:0x0217 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:20:0x0082  */
        /* JADX WARN: Code duplicated, block: B:213:0x01e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:214:0x017f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:218:0x007e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:222:0x01c1 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:223:0x0173 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:224:0x01be A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:226:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:228:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:230:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:26:0x00b2 A[Catch: all -> 0x00bd, Exception -> 0x00d5, TRY_LEAVE, TryCatch #10 {Exception -> 0x00d5, blocks: (B:24:0x008b, B:26:0x00b2, B:31:0x00c1, B:35:0x00dd, B:38:0x00e8, B:40:0x00f8, B:42:0x010d), top: B:197:0x008b }] */
        /* JADX WARN: Code duplicated, block: B:35:0x00dd A[Catch: all -> 0x00bd, Exception -> 0x00d5, TryCatch #10 {Exception -> 0x00d5, blocks: (B:24:0x008b, B:26:0x00b2, B:31:0x00c1, B:35:0x00dd, B:38:0x00e8, B:40:0x00f8, B:42:0x010d), top: B:197:0x008b }] */
        /* JADX WARN: Code duplicated, block: B:37:0x00e7  */
        /* JADX WARN: Code duplicated, block: B:40:0x00f8 A[Catch: all -> 0x00bd, Exception -> 0x00d5, TryCatch #10 {Exception -> 0x00d5, blocks: (B:24:0x008b, B:26:0x00b2, B:31:0x00c1, B:35:0x00dd, B:38:0x00e8, B:40:0x00f8, B:42:0x010d), top: B:197:0x008b }] */
        /* JADX WARN: Code duplicated, block: B:42:0x010d A[Catch: all -> 0x00bd, Exception -> 0x00d5, TRY_LEAVE, TryCatch #10 {Exception -> 0x00d5, blocks: (B:24:0x008b, B:26:0x00b2, B:31:0x00c1, B:35:0x00dd, B:38:0x00e8, B:40:0x00f8, B:42:0x010d), top: B:197:0x008b }] */
        /* JADX WARN: Code duplicated, block: B:43:0x0118 A[Catch: all -> 0x0220, Exception -> 0x022d, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0220, blocks: (B:21:0x0083, B:43:0x0118, B:77:0x01d3), top: B:181:0x0083 }] */
        /* JADX WARN: Code duplicated, block: B:46:0x0124  */
        /* JADX WARN: Code duplicated, block: B:50:0x0134 A[Catch: all -> 0x0054, Exception -> 0x014b, TRY_ENTER, TryCatch #5 {Exception -> 0x014b, blocks: (B:44:0x011e, B:50:0x0134, B:52:0x0138, B:55:0x014f), top: B:188:0x011e }] */
        /* JADX WARN: Code duplicated, block: B:52:0x0138 A[Catch: all -> 0x0054, Exception -> 0x014b, TryCatch #5 {Exception -> 0x014b, blocks: (B:44:0x011e, B:50:0x0134, B:52:0x0138, B:55:0x014f), top: B:188:0x011e }] */
        /* JADX WARN: Code duplicated, block: B:59:0x016f A[Catch: all -> 0x0054, Exception -> 0x01b9, TRY_LEAVE, TryCatch #14 {all -> 0x0054, blocks: (B:5:0x0043, B:6:0x0047, B:7:0x004f, B:44:0x011e, B:50:0x0134, B:52:0x0138, B:55:0x014f, B:57:0x0168, B:59:0x016f, B:65:0x0183, B:67:0x019c, B:71:0x01aa, B:70:0x01a4, B:75:0x01c1, B:112:0x0244, B:115:0x024a, B:117:0x0250, B:120:0x0256, B:123:0x025c, B:126:0x0262, B:130:0x0269, B:134:0x0295, B:137:0x02a4, B:133:0x0280), top: B:202:0x0043 }] */
        /* JADX WARN: Code duplicated, block: B:65:0x0183 A[Catch: all -> 0x0054, Exception -> 0x01b9, TRY_ENTER, TryCatch #14 {all -> 0x0054, blocks: (B:5:0x0043, B:6:0x0047, B:7:0x004f, B:44:0x011e, B:50:0x0134, B:52:0x0138, B:55:0x014f, B:57:0x0168, B:59:0x016f, B:65:0x0183, B:67:0x019c, B:71:0x01aa, B:70:0x01a4, B:75:0x01c1, B:112:0x0244, B:115:0x024a, B:117:0x0250, B:120:0x0256, B:123:0x025c, B:126:0x0262, B:130:0x0269, B:134:0x0295, B:137:0x02a4, B:133:0x0280), top: B:202:0x0043 }] */
        /* JADX WARN: Code duplicated, block: B:67:0x019c A[Catch: all -> 0x0054, Exception -> 0x01b9, TryCatch #14 {all -> 0x0054, blocks: (B:5:0x0043, B:6:0x0047, B:7:0x004f, B:44:0x011e, B:50:0x0134, B:52:0x0138, B:55:0x014f, B:57:0x0168, B:59:0x016f, B:65:0x0183, B:67:0x019c, B:71:0x01aa, B:70:0x01a4, B:75:0x01c1, B:112:0x0244, B:115:0x024a, B:117:0x0250, B:120:0x0256, B:123:0x025c, B:126:0x0262, B:130:0x0269, B:134:0x0295, B:137:0x02a4, B:133:0x0280), top: B:202:0x0043 }] */
        /* JADX WARN: Code duplicated, block: B:69:0x01a2  */
        /* JADX WARN: Code duplicated, block: B:70:0x01a4 A[Catch: all -> 0x0054, Exception -> 0x01b9, TryCatch #14 {all -> 0x0054, blocks: (B:5:0x0043, B:6:0x0047, B:7:0x004f, B:44:0x011e, B:50:0x0134, B:52:0x0138, B:55:0x014f, B:57:0x0168, B:59:0x016f, B:65:0x0183, B:67:0x019c, B:71:0x01aa, B:70:0x01a4, B:75:0x01c1, B:112:0x0244, B:115:0x024a, B:117:0x0250, B:120:0x0256, B:123:0x025c, B:126:0x0262, B:130:0x0269, B:134:0x0295, B:137:0x02a4, B:133:0x0280), top: B:202:0x0043 }] */
        /* JADX WARN: Code duplicated, block: B:88:0x0206  */
        /* JADX WARN: Instruction removed from duplicated block: B:133:0x0280, please report this as an issue */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            File file;
            String host;
            String hostAddress;
            long jElapsedRealtime;
            int i10;
            Exception exc;
            int responseCode;
            String message;
            String str;
            HttpURLConnection httpURLConnection;
            int i11;
            String str2;
            HttpURLConnection httpURLConnection2;
            HttpURLConnection httpURLConnection3;
            String str3;
            InputStream inputStream;
            long length;
            String headerField;
            Matcher matcher;
            int i12;
            int i13;
            byte[] bArr;
            Intent intent;
            long j6;
            int i14;
            HttpURLConnection httpURLConnection4;
            HttpURLConnection httpURLConnection5;
            long jUptimeMillis;
            int i15;
            int i16;
            float f;
            HttpURLConnection httpURLConnection6;
            HttpURLConnection httpURLConnection7;
            String str4 = "";
            InputStream inputStream2 = null;
            this.os = null;
            this.conn = null;
            ThemePackService.this.cacheDir.mkdir();
            File writingFile = ThemePackService.this.getWritingFile(this.cid, this.rev);
            File downloadedFile = ThemePackService.this.getDownloadedFile(this.cid, this.rev);
            try {
                try {
                    Log.d("ThemePack GET", this.url);
                    URL url = new URL(this.url);
                    if (ThemePackService.this.logging != null) {
                        try {
                            try {
                                host = url.getHost();
                                try {
                                    hostAddress = InetAddress.getByName(host).getHostAddress();
                                    try {
                                        jElapsedRealtime = SystemClock.elapsedRealtime();
                                    } catch (Exception unused) {
                                        jElapsedRealtime = 0;
                                    }
                                } catch (Exception unused2) {
                                    hostAddress = null;
                                }
                            } catch (Exception unused3) {
                                host = null;
                                hostAddress = null;
                            }
                            try {
                                this.conn = ThemePackService.this.getStack().createConnection(url);
                                if (!check()) {
                                    Utils.safeClose(this.os);
                                    Utils.safeClose((InputStream) null);
                                    httpURLConnection7 = this.conn;
                                    if (httpURLConnection7 != null) {
                                        try {
                                            httpURLConnection7.disconnect();
                                            return;
                                        } catch (Exception unused4) {
                                            return;
                                        }
                                    }
                                    return;
                                }
                                file = downloadedFile;
                                try {
                                    try {
                                        length = writingFile.length();
                                        if (length > 0) {
                                            try {
                                                try {
                                                    this.conn.addRequestProperty("Range", "bytes=" + length + "-");
                                                    if (this.conn.getResponseCode() == 416) {
                                                        Log.w("gif download range not satisfiable (416)");
                                                        try {
                                                            this.conn.disconnect();
                                                        } catch (Exception unused5) {
                                                        }
                                                        this.conn = ThemePackService.this.getStack().createConnection(new URL(this.url));
                                                    } else {
                                                        headerField = this.conn.getHeaderField("Content-Range");
                                                        if (headerField == null) {
                                                            headerField = "";
                                                        }
                                                        matcher = Pattern.compile("bytes (\\d+)-(\\d+)/(\\d+)", 2).matcher(headerField);
                                                        if (matcher.matches()) {
                                                            i12 = Integer.parseInt(matcher.group(1));
                                                            i13 = Integer.parseInt(matcher.group(3));
                                                            if (i12 == length) {
                                                                this.total = i13;
                                                                this.current = i12;
                                                                this.os = new FileOutputStream(writingFile, true);
                                                            }
                                                        }
                                                    }
                                                    inputStream2 = HurlConnectionHelper.getInputStream(this.conn);
                                                    try {
                                                        if (!check()) {
                                                            Utils.safeClose(this.os);
                                                            Utils.safeClose(inputStream2);
                                                            httpURLConnection6 = this.conn;
                                                            if (httpURLConnection6 != null) {
                                                                try {
                                                                    httpURLConnection6.disconnect();
                                                                    return;
                                                                } catch (Exception unused6) {
                                                                    return;
                                                                }
                                                            }
                                                            return;
                                                        }
                                                        if (this.os == null) {
                                                            this.total = this.conn.getContentLength();
                                                            this.current = 0;
                                                            this.os = new FileOutputStream(writingFile);
                                                        }
                                                        bArr = new byte[4096];
                                                        intent = new Intent(ThemePackService.ACTION_PROGRESS_CHANGED);
                                                        intent.putExtra(CmcdConfiguration.KEY_CONTENT_ID, this.cid);
                                                        intent.putExtra("rev", this.rev);
                                                        j6 = 0;
                                                        i10 = 0;
                                                        while (true) {
                                                            try {
                                                                i14 = inputStream2.read(bArr);
                                                                if (i14 != -1) {
                                                                    this.os.close();
                                                                    inputStream = null;
                                                                    this.os = null;
                                                                    inputStream2.close();
                                                                    try {
                                                                        this.conn.disconnect();
                                                                        this.conn = null;
                                                                        try {
                                                                            ThemePackService.this.lbm.d(intent);
                                                                            if (writingFile.renameTo(file)) {
                                                                                str2 = null;
                                                                                i11 = 0;
                                                                                str = null;
                                                                            } else {
                                                                                try {
                                                                                    str = "Fail to move downloaded file";
                                                                                    Log.w("fail to move downloaded themepack " + writingFile);
                                                                                    i11 = -9;
                                                                                    str2 = "Move";
                                                                                } catch (Exception e) {
                                                                                    exc = e;
                                                                                    responseCode = 0;
                                                                                    inputStream2 = null;
                                                                                    httpURLConnection2 = this.conn;
                                                                                    if (httpURLConnection2 == null) {
                                                                                        responseCode = 0;
                                                                                    } else {
                                                                                        responseCode = httpURLConnection2.getResponseCode();
                                                                                    }
                                                                                    if (responseCode == 0) {
                                                                                        if (exc instanceof TimeoutError) {
                                                                                            responseCode = -2;
                                                                                        } else if (exc instanceof NoConnectionError) {
                                                                                            responseCode = -3;
                                                                                        } else if (exc instanceof NetworkError) {
                                                                                            responseCode = -4;
                                                                                        } else if (exc instanceof UnknownHostException) {
                                                                                            responseCode = -5;
                                                                                        } else {
                                                                                            responseCode = -1;
                                                                                        }
                                                                                    }
                                                                                    StringBuilder sb = new StringBuilder();
                                                                                    sb.append(exc.getClass().getSimpleName());
                                                                                    if (exc.getMessage() == null) {
                                                                                        str4 = ": " + exc.getMessage();
                                                                                    }
                                                                                    sb.append(str4);
                                                                                    String string = sb.toString();
                                                                                    message = exc.getMessage();
                                                                                    if (message == null) {
                                                                                        message = "Fail to download theme pack ";
                                                                                    }
                                                                                    str = message;
                                                                                    Log.w("fail to download theme pack " + this.url, exc);
                                                                                    Utils.safeClose(this.os);
                                                                                    Utils.safeClose(inputStream2);
                                                                                    httpURLConnection = this.conn;
                                                                                    if (httpURLConnection != null) {
                                                                                        try {
                                                                                            httpURLConnection.disconnect();
                                                                                        } catch (Exception unused7) {
                                                                                        }
                                                                                    }
                                                                                    i11 = responseCode;
                                                                                    str2 = string;
                                                                                }
                                                                            }
                                                                            Utils.safeClose(this.os);
                                                                            Utils.safeClose((InputStream) null);
                                                                            httpURLConnection4 = this.conn;
                                                                            if (httpURLConnection4 != null) {
                                                                                break;
                                                                            }
                                                                            try {
                                                                                httpURLConnection4.disconnect();
                                                                                break;
                                                                            } catch (Exception unused8) {
                                                                                break;
                                                                            }
                                                                        } catch (Exception e2) {
                                                                            e = e2;
                                                                            inputStream = null;
                                                                            inputStream2 = inputStream;
                                                                            exc = e;
                                                                            responseCode = 0;
                                                                        }
                                                                    } catch (Exception e6) {
                                                                        e = e6;
                                                                    } catch (Throwable th) {
                                                                        th = th;
                                                                        inputStream2 = inputStream;
                                                                        Utils.safeClose(this.os);
                                                                        Utils.safeClose(inputStream2);
                                                                        httpURLConnection3 = this.conn;
                                                                        if (httpURLConnection3 != null) {
                                                                            try {
                                                                                httpURLConnection3.disconnect();
                                                                            } catch (Exception unused9) {
                                                                            }
                                                                        }
                                                                        throw th;
                                                                    }
                                                                } else {
                                                                    if (this.conn == null) {
                                                                        Utils.safeClose(this.os);
                                                                        Utils.safeClose(inputStream2);
                                                                        httpURLConnection5 = this.conn;
                                                                        if (httpURLConnection5 != null) {
                                                                            try {
                                                                                httpURLConnection5.disconnect();
                                                                                return;
                                                                            } catch (Exception unused10) {
                                                                                return;
                                                                            }
                                                                        }
                                                                        return;
                                                                    }
                                                                    jUptimeMillis = SystemClock.uptimeMillis();
                                                                    this.os.write(bArr, 0, i14);
                                                                    i15 = this.current + i14;
                                                                    this.current = i15;
                                                                    i10 += i14;
                                                                    if (jUptimeMillis <= j6 + 20) {
                                                                        i16 = this.total;
                                                                        if (i16 <= 0) {
                                                                            f = 0.0f;
                                                                        } else {
                                                                            f = (i15 * 1.0f) / i16;
                                                                        }
                                                                        intent.putExtra("progress", f);
                                                                        ThemePackService.this.lbm.d(intent);
                                                                        j6 = jUptimeMillis;
                                                                    }
                                                                }
                                                            } catch (Exception e7) {
                                                                e = e7;
                                                            }
                                                            exc = e;
                                                            responseCode = 0;
                                                        }
                                                    } catch (Exception e10) {
                                                        exc = e10;
                                                        responseCode = 0;
                                                        i10 = 0;
                                                    }
                                                } catch (Exception e11) {
                                                    exc = e11;
                                                    responseCode = 0;
                                                    inputStream2 = null;
                                                    i10 = 0;
                                                    httpURLConnection2 = this.conn;
                                                    if (httpURLConnection2 == null) {
                                                        responseCode = 0;
                                                    } else {
                                                        responseCode = httpURLConnection2.getResponseCode();
                                                    }
                                                    if (responseCode == 0) {
                                                        if (exc instanceof TimeoutError) {
                                                            responseCode = -2;
                                                        } else if (exc instanceof NoConnectionError) {
                                                            responseCode = -3;
                                                        } else if (exc instanceof NetworkError) {
                                                            responseCode = -4;
                                                        } else if (exc instanceof UnknownHostException) {
                                                            responseCode = -5;
                                                        } else {
                                                            responseCode = -1;
                                                        }
                                                    }
                                                    StringBuilder sb2 = new StringBuilder();
                                                    sb2.append(exc.getClass().getSimpleName());
                                                    if (exc.getMessage() == null) {
                                                        str4 = ": " + exc.getMessage();
                                                    }
                                                    sb2.append(str4);
                                                    String string2 = sb2.toString();
                                                    message = exc.getMessage();
                                                    if (message == null) {
                                                        message = "Fail to download theme pack ";
                                                    }
                                                    str = message;
                                                    Log.w("fail to download theme pack " + this.url, exc);
                                                    Utils.safeClose(this.os);
                                                    Utils.safeClose(inputStream2);
                                                    httpURLConnection = this.conn;
                                                    if (httpURLConnection != null) {
                                                        httpURLConnection.disconnect();
                                                    }
                                                    i11 = responseCode;
                                                    str2 = string2;
                                                    str3 = str;
                                                    if (jElapsedRealtime == 0) {
                                                    }
                                                    if (this.downloadOnly) {
                                                        Intent intent2 = new Intent(ThemePackService.ACTION_STATUS_CHANGED);
                                                        intent2.putExtra(CmcdConfiguration.KEY_CONTENT_ID, this.cid);
                                                        intent2.putExtra("rev", this.rev);
                                                        ThemePackService.this.lbm.d(intent2);
                                                    } else {
                                                        Intent intent3 = new Intent(ThemePackService.ACTION_STATUS_CHANGED);
                                                        intent3.putExtra(CmcdConfiguration.KEY_CONTENT_ID, this.cid);
                                                        intent3.putExtra("rev", this.rev);
                                                        ThemePackService.this.lbm.d(intent3);
                                                    }
                                                    if (ThemePackService.this.runningSessions.remove(Integer.valueOf(this.cid), this)) {
                                                        if (str3 == 0) {
                                                            ThemePackService.this.errors.remove(Integer.valueOf(this.cid));
                                                        } else {
                                                            ThemePackService.this.errors.put(Integer.valueOf(this.cid), str3);
                                                        }
                                                    }
                                                    Utils.post(new Runnable() { // from class: com.narvii.theme.ThemePackService.Worker.1
                                                        @Override // java.lang.Runnable
                                                        public void run() {
                                                            if (ThemePackService.this.downloadThemeNdcIdSet.contains(Integer.valueOf(Worker.this.cid))) {
                                                                ThemePackService.this.downloadThemeNdcIdSet.remove(Integer.valueOf(Worker.this.cid));
                                                                Intent intent4 = new Intent(ThemePackService.ACTION_THEME_DOWNLOAD_FINISH);
                                                                intent4.putExtra(CmcdConfiguration.KEY_CONTENT_ID, Worker.this.cid);
                                                                ThemePackService.this.lbm.d(intent4);
                                                            }
                                                        }
                                                    });
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                inputStream2 = null;
                                                Utils.safeClose(this.os);
                                                Utils.safeClose(inputStream2);
                                                httpURLConnection3 = this.conn;
                                                if (httpURLConnection3 != null) {
                                                    httpURLConnection3.disconnect();
                                                }
                                                throw th;
                                            }
                                            try {
                                                httpURLConnection2 = this.conn;
                                                if (httpURLConnection2 == null) {
                                                    responseCode = 0;
                                                } else {
                                                    responseCode = httpURLConnection2.getResponseCode();
                                                }
                                            } catch (Exception unused11) {
                                            }
                                            if (responseCode == 0) {
                                                if (exc instanceof TimeoutError) {
                                                    responseCode = -2;
                                                } else if (exc instanceof NoConnectionError) {
                                                    responseCode = -3;
                                                } else if (exc instanceof NetworkError) {
                                                    responseCode = -4;
                                                } else if (exc instanceof UnknownHostException) {
                                                    responseCode = -5;
                                                } else {
                                                    responseCode = -1;
                                                }
                                            }
                                            StringBuilder sb3 = new StringBuilder();
                                            sb3.append(exc.getClass().getSimpleName());
                                            if (exc.getMessage() == null) {
                                                str4 = ": " + exc.getMessage();
                                            }
                                            sb3.append(str4);
                                            String string3 = sb3.toString();
                                            message = exc.getMessage();
                                            if (message == null) {
                                                message = "Fail to download theme pack ";
                                            }
                                            str = message;
                                            Log.w("fail to download theme pack " + this.url, exc);
                                            Utils.safeClose(this.os);
                                            Utils.safeClose(inputStream2);
                                            httpURLConnection = this.conn;
                                            if (httpURLConnection != null) {
                                                httpURLConnection.disconnect();
                                            }
                                            i11 = responseCode;
                                            str2 = string3;
                                        } else {
                                            inputStream2 = HurlConnectionHelper.getInputStream(this.conn);
                                            if (!check()) {
                                                Utils.safeClose(this.os);
                                                Utils.safeClose(inputStream2);
                                                httpURLConnection6 = this.conn;
                                                if (httpURLConnection6 != null) {
                                                    httpURLConnection6.disconnect();
                                                    return;
                                                }
                                                return;
                                            }
                                            if (this.os == null) {
                                                this.total = this.conn.getContentLength();
                                                this.current = 0;
                                                this.os = new FileOutputStream(writingFile);
                                            }
                                            bArr = new byte[4096];
                                            intent = new Intent(ThemePackService.ACTION_PROGRESS_CHANGED);
                                            intent.putExtra(CmcdConfiguration.KEY_CONTENT_ID, this.cid);
                                            intent.putExtra("rev", this.rev);
                                            j6 = 0;
                                            i10 = 0;
                                            while (true) {
                                                i14 = inputStream2.read(bArr);
                                                if (i14 != -1) {
                                                    this.os.close();
                                                    inputStream = null;
                                                    this.os = null;
                                                    inputStream2.close();
                                                    this.conn.disconnect();
                                                    this.conn = null;
                                                    ThemePackService.this.lbm.d(intent);
                                                    if (writingFile.renameTo(file)) {
                                                        str = "Fail to move downloaded file";
                                                        Log.w("fail to move downloaded themepack " + writingFile);
                                                        i11 = -9;
                                                        str2 = "Move";
                                                    } else {
                                                        str2 = null;
                                                        i11 = 0;
                                                        str = null;
                                                    }
                                                    Utils.safeClose(this.os);
                                                    Utils.safeClose((InputStream) null);
                                                    httpURLConnection4 = this.conn;
                                                    if (httpURLConnection4 != null) {
                                                        break;
                                                    }
                                                    httpURLConnection4.disconnect();
                                                    break;
                                                }
                                                if (this.conn == null) {
                                                    Utils.safeClose(this.os);
                                                    Utils.safeClose(inputStream2);
                                                    httpURLConnection5 = this.conn;
                                                    if (httpURLConnection5 != null) {
                                                        httpURLConnection5.disconnect();
                                                        return;
                                                    }
                                                    return;
                                                }
                                                jUptimeMillis = SystemClock.uptimeMillis();
                                                this.os.write(bArr, 0, i14);
                                                i15 = this.current + i14;
                                                this.current = i15;
                                                i10 += i14;
                                                if (jUptimeMillis <= j6 + 20) {
                                                    i16 = this.total;
                                                    if (i16 <= 0) {
                                                        f = 0.0f;
                                                    } else {
                                                        f = (i15 * 1.0f) / i16;
                                                    }
                                                    intent.putExtra("progress", f);
                                                    ThemePackService.this.lbm.d(intent);
                                                    j6 = jUptimeMillis;
                                                }
                                                exc = e;
                                                responseCode = 0;
                                            }
                                            httpURLConnection2 = this.conn;
                                            if (httpURLConnection2 == null) {
                                                responseCode = 0;
                                            } else {
                                                responseCode = httpURLConnection2.getResponseCode();
                                            }
                                            if (responseCode == 0) {
                                                if (exc instanceof TimeoutError) {
                                                    responseCode = -2;
                                                } else if (exc instanceof NoConnectionError) {
                                                    responseCode = -3;
                                                } else if (exc instanceof NetworkError) {
                                                    responseCode = -4;
                                                } else if (exc instanceof UnknownHostException) {
                                                    responseCode = -5;
                                                } else {
                                                    responseCode = -1;
                                                }
                                            }
                                            StringBuilder sb4 = new StringBuilder();
                                            sb4.append(exc.getClass().getSimpleName());
                                            if (exc.getMessage() == null) {
                                                str4 = ": " + exc.getMessage();
                                            }
                                            sb4.append(str4);
                                            String string4 = sb4.toString();
                                            message = exc.getMessage();
                                            if (message == null) {
                                                message = "Fail to download theme pack ";
                                            }
                                            str = message;
                                            Log.w("fail to download theme pack " + this.url, exc);
                                            Utils.safeClose(this.os);
                                            Utils.safeClose(inputStream2);
                                            httpURLConnection = this.conn;
                                            if (httpURLConnection != null) {
                                                httpURLConnection.disconnect();
                                            }
                                            i11 = responseCode;
                                            str2 = string4;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        inputStream = null;
                                    }
                                } catch (Exception e12) {
                                    e = e12;
                                    inputStream2 = null;
                                    i10 = 0;
                                }
                            } catch (Exception e13) {
                                e = e13;
                                file = downloadedFile;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            Utils.safeClose(this.os);
                            Utils.safeClose(inputStream2);
                            httpURLConnection3 = this.conn;
                            if (httpURLConnection3 != null) {
                                httpURLConnection3.disconnect();
                            }
                            throw th;
                        }
                    } else {
                        host = null;
                        hostAddress = null;
                        jElapsedRealtime = 0;
                        this.conn = ThemePackService.this.getStack().createConnection(url);
                        if (!check()) {
                            Utils.safeClose(this.os);
                            Utils.safeClose((InputStream) null);
                            httpURLConnection7 = this.conn;
                            if (httpURLConnection7 != null) {
                                httpURLConnection7.disconnect();
                                return;
                            }
                            return;
                        }
                        file = downloadedFile;
                        length = writingFile.length();
                        if (length > 0) {
                            this.conn.addRequestProperty("Range", "bytes=" + length + "-");
                            if (this.conn.getResponseCode() == 416) {
                                Log.w("gif download range not satisfiable (416)");
                                this.conn.disconnect();
                                this.conn = ThemePackService.this.getStack().createConnection(new URL(this.url));
                            } else {
                                headerField = this.conn.getHeaderField("Content-Range");
                                if (headerField == null) {
                                    headerField = "";
                                }
                                matcher = Pattern.compile("bytes (\\d+)-(\\d+)/(\\d+)", 2).matcher(headerField);
                                if (matcher.matches()) {
                                    i12 = Integer.parseInt(matcher.group(1));
                                    i13 = Integer.parseInt(matcher.group(3));
                                    if (i12 == length) {
                                        this.total = i13;
                                        this.current = i12;
                                        this.os = new FileOutputStream(writingFile, true);
                                    }
                                }
                            }
                            inputStream2 = HurlConnectionHelper.getInputStream(this.conn);
                            if (!check()) {
                                Utils.safeClose(this.os);
                                Utils.safeClose(inputStream2);
                                httpURLConnection6 = this.conn;
                                if (httpURLConnection6 != null) {
                                    httpURLConnection6.disconnect();
                                    return;
                                }
                                return;
                            }
                            if (this.os == null) {
                                this.total = this.conn.getContentLength();
                                this.current = 0;
                                this.os = new FileOutputStream(writingFile);
                            }
                            bArr = new byte[4096];
                            intent = new Intent(ThemePackService.ACTION_PROGRESS_CHANGED);
                            intent.putExtra(CmcdConfiguration.KEY_CONTENT_ID, this.cid);
                            intent.putExtra("rev", this.rev);
                            j6 = 0;
                            i10 = 0;
                            while (true) {
                                i14 = inputStream2.read(bArr);
                                if (i14 != -1) {
                                    this.os.close();
                                    inputStream = null;
                                    this.os = null;
                                    inputStream2.close();
                                    this.conn.disconnect();
                                    this.conn = null;
                                    ThemePackService.this.lbm.d(intent);
                                    if (writingFile.renameTo(file)) {
                                        str = "Fail to move downloaded file";
                                        Log.w("fail to move downloaded themepack " + writingFile);
                                        i11 = -9;
                                        str2 = "Move";
                                    } else {
                                        str2 = null;
                                        i11 = 0;
                                        str = null;
                                    }
                                    Utils.safeClose(this.os);
                                    Utils.safeClose((InputStream) null);
                                    httpURLConnection4 = this.conn;
                                    if (httpURLConnection4 != null) {
                                        break;
                                    }
                                    httpURLConnection4.disconnect();
                                    break;
                                }
                                if (this.conn == null) {
                                    Utils.safeClose(this.os);
                                    Utils.safeClose(inputStream2);
                                    httpURLConnection5 = this.conn;
                                    if (httpURLConnection5 != null) {
                                        httpURLConnection5.disconnect();
                                        return;
                                    }
                                    return;
                                }
                                jUptimeMillis = SystemClock.uptimeMillis();
                                this.os.write(bArr, 0, i14);
                                i15 = this.current + i14;
                                this.current = i15;
                                i10 += i14;
                                if (jUptimeMillis <= j6 + 20) {
                                    i16 = this.total;
                                    if (i16 <= 0) {
                                        f = 0.0f;
                                    } else {
                                        f = (i15 * 1.0f) / i16;
                                    }
                                    intent.putExtra("progress", f);
                                    ThemePackService.this.lbm.d(intent);
                                    j6 = jUptimeMillis;
                                }
                                exc = e;
                                responseCode = 0;
                            }
                            httpURLConnection2 = this.conn;
                            if (httpURLConnection2 == null) {
                                responseCode = 0;
                            } else {
                                responseCode = httpURLConnection2.getResponseCode();
                            }
                            if (responseCode == 0) {
                                if (exc instanceof TimeoutError) {
                                    responseCode = -2;
                                } else if (exc instanceof NoConnectionError) {
                                    responseCode = -3;
                                } else if (exc instanceof NetworkError) {
                                    responseCode = -4;
                                } else if (exc instanceof UnknownHostException) {
                                    responseCode = -5;
                                } else {
                                    responseCode = -1;
                                }
                            }
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append(exc.getClass().getSimpleName());
                            if (exc.getMessage() == null) {
                                str4 = ": " + exc.getMessage();
                            }
                            sb5.append(str4);
                            String string5 = sb5.toString();
                            message = exc.getMessage();
                            if (message == null) {
                                message = "Fail to download theme pack ";
                            }
                            str = message;
                            Log.w("fail to download theme pack " + this.url, exc);
                            Utils.safeClose(this.os);
                            Utils.safeClose(inputStream2);
                            httpURLConnection = this.conn;
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            i11 = responseCode;
                            str2 = string5;
                        } else {
                            inputStream2 = HurlConnectionHelper.getInputStream(this.conn);
                            if (!check()) {
                                Utils.safeClose(this.os);
                                Utils.safeClose(inputStream2);
                                httpURLConnection6 = this.conn;
                                if (httpURLConnection6 != null) {
                                    httpURLConnection6.disconnect();
                                    return;
                                }
                                return;
                            }
                            if (this.os == null) {
                                this.total = this.conn.getContentLength();
                                this.current = 0;
                                this.os = new FileOutputStream(writingFile);
                            }
                            bArr = new byte[4096];
                            intent = new Intent(ThemePackService.ACTION_PROGRESS_CHANGED);
                            intent.putExtra(CmcdConfiguration.KEY_CONTENT_ID, this.cid);
                            intent.putExtra("rev", this.rev);
                            j6 = 0;
                            i10 = 0;
                            while (true) {
                                i14 = inputStream2.read(bArr);
                                if (i14 != -1) {
                                    this.os.close();
                                    inputStream = null;
                                    this.os = null;
                                    inputStream2.close();
                                    this.conn.disconnect();
                                    this.conn = null;
                                    ThemePackService.this.lbm.d(intent);
                                    if (writingFile.renameTo(file)) {
                                        str = "Fail to move downloaded file";
                                        Log.w("fail to move downloaded themepack " + writingFile);
                                        i11 = -9;
                                        str2 = "Move";
                                    } else {
                                        str2 = null;
                                        i11 = 0;
                                        str = null;
                                    }
                                    Utils.safeClose(this.os);
                                    Utils.safeClose((InputStream) null);
                                    httpURLConnection4 = this.conn;
                                    if (httpURLConnection4 != null) {
                                        break;
                                    }
                                    httpURLConnection4.disconnect();
                                    break;
                                }
                                if (this.conn == null) {
                                    Utils.safeClose(this.os);
                                    Utils.safeClose(inputStream2);
                                    httpURLConnection5 = this.conn;
                                    if (httpURLConnection5 != null) {
                                        httpURLConnection5.disconnect();
                                        return;
                                    }
                                    return;
                                }
                                jUptimeMillis = SystemClock.uptimeMillis();
                                this.os.write(bArr, 0, i14);
                                i15 = this.current + i14;
                                this.current = i15;
                                i10 += i14;
                                if (jUptimeMillis <= j6 + 20) {
                                    i16 = this.total;
                                    if (i16 <= 0) {
                                        f = 0.0f;
                                    } else {
                                        f = (i15 * 1.0f) / i16;
                                    }
                                    intent.putExtra("progress", f);
                                    ThemePackService.this.lbm.d(intent);
                                    j6 = jUptimeMillis;
                                }
                                exc = e;
                                responseCode = 0;
                            }
                            httpURLConnection2 = this.conn;
                            if (httpURLConnection2 == null) {
                                responseCode = 0;
                            } else {
                                responseCode = httpURLConnection2.getResponseCode();
                            }
                            if (responseCode == 0) {
                                if (exc instanceof TimeoutError) {
                                    responseCode = -2;
                                } else if (exc instanceof NoConnectionError) {
                                    responseCode = -3;
                                } else if (exc instanceof NetworkError) {
                                    responseCode = -4;
                                } else if (exc instanceof UnknownHostException) {
                                    responseCode = -5;
                                } else {
                                    responseCode = -1;
                                }
                            }
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append(exc.getClass().getSimpleName());
                            if (exc.getMessage() == null) {
                                str4 = ": " + exc.getMessage();
                            }
                            sb6.append(str4);
                            String string6 = sb6.toString();
                            message = exc.getMessage();
                            if (message == null) {
                                message = "Fail to download theme pack ";
                            }
                            str = message;
                            Log.w("fail to download theme pack " + this.url, exc);
                            Utils.safeClose(this.os);
                            Utils.safeClose(inputStream2);
                            httpURLConnection = this.conn;
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            i11 = responseCode;
                            str2 = string6;
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Exception e14) {
                e = e14;
                file = downloadedFile;
                host = null;
                hostAddress = null;
                jElapsedRealtime = 0;
            }
            str3 = str;
            if (jElapsedRealtime == 0 && hostAddress != null && ThemePackService.this.logging != null) {
                long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                if (i11 == 0) {
                    ThemePackService.this.logging.logEvent("CdnDownload", ProxyConfig.MATCH_HTTPS, Boolean.valueOf(this.url.startsWith(ProxyConfig.MATCH_HTTPS)), "host", host, "cdnIp", hostAddress, "size", Integer.valueOf(i10), TypedValues.TransitionType.S_DURATION, Long.valueOf(jElapsedRealtime2), "fails", 0);
                } else {
                    ThemePackService.this.logging.logEvent("CdnDownload", ProxyConfig.MATCH_HTTPS, Boolean.valueOf(this.url.startsWith(ProxyConfig.MATCH_HTTPS)), ImagesContract.URL, this.url, "host", host, "cdnIp", hostAddress, "size", Integer.valueOf(i10), TypedValues.TransitionType.S_DURATION, Long.valueOf(jElapsedRealtime2), "code", Integer.valueOf(i11), AccountNotice.LEVEL_MESSAGE, str2, "fails", 1);
                }
            }
            if (this.downloadOnly || file.length() <= 0 || !ThemePackService.this.extract(this.cid, this.rev, this.url)) {
                Intent intent4 = new Intent(ThemePackService.ACTION_STATUS_CHANGED);
                intent4.putExtra(CmcdConfiguration.KEY_CONTENT_ID, this.cid);
                intent4.putExtra("rev", this.rev);
                ThemePackService.this.lbm.d(intent4);
            }
            if (ThemePackService.this.runningSessions.remove(Integer.valueOf(this.cid), this)) {
                if (str3 == 0) {
                    ThemePackService.this.errors.remove(Integer.valueOf(this.cid));
                } else {
                    ThemePackService.this.errors.put(Integer.valueOf(this.cid), str3);
                }
            }
            Utils.post(new Runnable() { // from class: com.narvii.theme.ThemePackService.Worker.1
                @Override // java.lang.Runnable
                public void run() {
                    if (ThemePackService.this.downloadThemeNdcIdSet.contains(Integer.valueOf(Worker.this.cid))) {
                        ThemePackService.this.downloadThemeNdcIdSet.remove(Integer.valueOf(Worker.this.cid));
                        Intent intent5 = new Intent(ThemePackService.ACTION_THEME_DOWNLOAD_FINISH);
                        intent5.putExtra(CmcdConfiguration.KEY_CONTENT_ID, Worker.this.cid);
                        ThemePackService.this.lbm.d(intent5);
                    }
                }
            });
        }

        Worker(int i10, int i11, String str) {
            this.cid = i10;
            this.rev = i11;
            this.url = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cancel() {
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
    }

    public Drawable getDrawable(int i10, ThemeObject themeObject, int i11, int i12) {
        return getDrawable(i10, themeObject, i11, i12, false);
    }

    public int getStatus(int i10, int i11) {
        int iIntValue;
        Worker worker = this.runningSessions.get(Integer.valueOf(i10));
        if (worker != null) {
            return (i11 == 0 || worker.rev == i11) ? 1 : 0;
        }
        Integer num = this.revs.get(Integer.valueOf(i10));
        if (num == null) {
            try {
                File revFile = getRevFile(i10);
                iIntValue = revFile.length() > 0 ? Integer.parseInt(Utils.readStringFromFile(revFile)) : 0;
            } catch (Exception unused) {
            }
            this.revs.put(Integer.valueOf(i10), Integer.valueOf(iIntValue));
        } else {
            iIntValue = num.intValue();
        }
        if (i11 == 0 && iIntValue != 0) {
            return 5;
        }
        if (i11 == 0 || iIntValue != i11) {
            return this.errors.get(Integer.valueOf(i10)) == null ? 0 : -1;
        }
        return 5;
    }

    public void removeUploadDir() {
        Utils.deleteDir(this.uploadDir);
    }

    public void require(int i10, int i11, String str) {
        require(i10, i11, str, false);
    }

    /* JADX INFO: renamed from: com.narvii.theme.ThemePackService$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$narvii$theme$ThemePackService$ThemeObject;

        static {
            int[] iArr = new int[ThemeObject.values().length];
            $SwitchMap$com$narvii$theme$ThemePackService$ThemeObject = iArr;
            try {
                iArr[ThemeObject.BACKGROUND.ordinal()] = 1;
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

    public void addToDownLoadList(int i10) {
        this.downloadThemeNdcIdSet.add(Integer.valueOf(i10));
    }

    public void cancel(int i10) {
        this.errors.remove(Integer.valueOf(i10));
        Worker workerRemove = this.runningSessions.remove(Integer.valueOf(i10));
        if (workerRemove != null) {
            workerRemove.cancel();
            Intent intent = new Intent(ACTION_STATUS_CHANGED);
            intent.putExtra(CmcdConfiguration.KEY_CONTENT_ID, i10);
            intent.putExtra("rev", workerRemove.rev);
            this.lbm.d(intent);
        }
    }

    public void cancelAll() {
        this.errors.clear();
        if (this.runningSessions.isEmpty()) {
            return;
        }
        Iterator<Worker> it = this.runningSessions.values().iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
        this.runningSessions.clear();
        this.lbm.d(new Intent(ACTION_STATUS_CHANGED));
    }

    public void cancelUpload(int i10) {
        UploadTask uploadTaskRemove = this.uploadSessions.remove(Integer.valueOf(i10));
        if (uploadTaskRemove != null) {
            uploadTaskRemove.cancelUpload();
        }
    }

    void changeThemeImage(boolean z6, ThemeImage themeImage, ArrayNode arrayNode, String str, int i10) throws Exception {
        if (arrayNode == null) {
            return;
        }
        int i11 = 0;
        if (themeImage == null) {
            ThemeImage[] themeImageList = getThemeImageList(arrayNode);
            if (themeImageList == null || !z6) {
                return;
            }
            int length = themeImageList.length;
            while (i11 < length) {
                File file = new File(getUploadDir(i10).getAbsolutePath() + c.FORWARD_SLASH_STRING + themeImageList[i11].path);
                if (file.exists()) {
                    file.delete();
                }
                i11++;
            }
            arrayNode.removeAll();
            return;
        }
        ThemeImage[] themeImageList2 = getThemeImageList(arrayNode);
        if (themeImageList2 != null) {
            int length2 = themeImageList2.length;
            while (i11 < length2) {
                File file2 = new File(getUploadDir(i10).getAbsolutePath() + c.FORWARD_SLASH_STRING + themeImageList2[i11].path);
                if (file2.exists()) {
                    file2.delete();
                }
                i11++;
            }
        }
        arrayNode.removeAll();
        String str2 = str + "/img.png";
        File file3 = new File(getUploadDir(i10).getAbsolutePath() + c.FORWARD_SLASH_STRING + str2);
        file3.getParentFile().mkdirs();
        changeToFilePath(themeImage);
        Utils.copyFile(new File(themeImage.path), file3);
        themeImage.path = str2;
        setThemeImageList(arrayNode, themeImage);
    }

    void changeToFilePath(ThemeImage themeImage) {
        File path;
        NVContext nVContext = this.context;
        if (nVContext == null || themeImage == null || (path = ((PhotoManager) nVContext.getService("photo")).getPath(themeImage.path)) == null || !path.exists()) {
            return;
        }
        themeImage.path = path.getAbsolutePath();
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

    public void clearErrors() {
        if (this.errors.size() > 0) {
            this.errors.clear();
            this.lbm.d(new Intent(ACTION_STATUS_CHANGED));
        }
    }

    File getDir(int i10) {
        return new File(this.dir, "x" + i10);
    }

    File getDownloadedFile(int i10, int i11) {
        return new File(this.cacheDir, "x" + i10 + "-r" + i11 + ".d");
    }

    public Drawable getDrawable(int i10, ThemeObject themeObject, int i11, int i12, boolean z6) {
        List<ThemeImage> list;
        ThemeInfo themeInfo = getThemeInfo(i10);
        if (themeInfo == null) {
            return null;
        }
        int i13 = AnonymousClass1.$SwitchMap$com$narvii$theme$ThemePackService$ThemeObject[themeObject.ordinal()];
        if (i13 == 1) {
            list = themeInfo.background;
        } else if (i13 == 2) {
            list = themeInfo.icon;
        } else if (i13 == 3) {
            list = themeInfo.logo;
        } else if (i13 != 4) {
            list = i13 != 5 ? null : themeInfo.oldTitlebar;
        } else {
            list = themeInfo.titlebar;
        }
        if (list != null && !list.isEmpty()) {
            ThemeImage themeImage = null;
            ThemeImage themeImage2 = null;
            for (ThemeImage themeImage3 : list) {
                float f = themeImage3.width;
                float f6 = themeImage3.height;
                float f7 = f * f6;
                if (themeImage2 == null || f7 > themeImage2.width * themeImage2.height) {
                    themeImage2 = themeImage3;
                }
                if (f >= i11 && f6 >= i12 && (themeImage == null || f7 < themeImage.width * themeImage.height)) {
                    themeImage = themeImage3;
                }
            }
            if (themeImage == null) {
                themeImage = themeImage2;
            }
            String str = "x" + i10 + "-r" + themeInfo.revision + "-" + themeImage.path;
            WeakReference<Object> weakReference = this.rawObjects.get(str);
            Object nVGifDrawable = weakReference == null ? null : weakReference.get();
            if (nVGifDrawable == null) {
                File file = new File(getDir(i10), themeImage.path);
                try {
                    nVGifDrawable = Utils.isGif(themeImage.path) ? new NVGifDrawable(file) : BitmapFactory.decodeFile(file.getAbsolutePath());
                    this.rawObjects.put(str, new WeakReference<>(nVGifDrawable));
                } catch (Exception e) {
                    Log.e("fail to read theme resource " + str, e);
                    return null;
                } catch (OutOfMemoryError e2) {
                    Log.w("OutOfMemory when read theme resource " + str);
                    OomHelper.test(e2);
                    return null;
                }
            }
            if (nVGifDrawable instanceof Bitmap) {
                if (themeObject == ThemeObject.TITLEBAR) {
                    return new ThemeBackgroundDrawable((Bitmap) nVGifDrawable, z6);
                }
                return themeObject == ThemeObject.OLDTITLEBAR ? new TitlebarDrawable((Bitmap) nVGifDrawable) : new BitmapDrawable(this.context.getContext().getResources(), (Bitmap) nVGifDrawable);
            }
            if (nVGifDrawable instanceof NVGifDrawable) {
                if (themeObject == ThemeObject.TITLEBAR) {
                    return new ThemeBackgroundGifDrawable((NVGifDrawable) nVGifDrawable, z6);
                }
                return themeObject == ThemeObject.OLDTITLEBAR ? new TitlebarGifDrawable((NVGifDrawable) nVGifDrawable) : new WrapGifDrawable((NVGifDrawable) nVGifDrawable);
            }
        }
        return null;
    }

    public String getError(int i10) {
        return this.errors.get(Integer.valueOf(i10));
    }

    public float getProgress(int i10) {
        int i11;
        Worker worker = this.runningSessions.get(Integer.valueOf(i10));
        if (worker != null && (i11 = worker.total) > 0) {
            return (worker.current * 1.0f) / i11;
        }
        return 0.0f;
    }

    File getRevFile(int i10) {
        return new File(getDir(i10), ".rev");
    }

    ProxyStack getStack() {
        if (this.stack == null) {
            this.stack = new ProxyStack(this.context);
        }
        return this.stack;
    }

    public ThemeInfo getThemeInfo(int i10) {
        ThemeInfo themeInfo = this.themes.get(Integer.valueOf(i10));
        if (themeInfo != null) {
            return themeInfo;
        }
        try {
            File file = new File(getDir(i10), "theme_info.json");
            if (file.length() > 0) {
                themeInfo = (ThemeInfo) JacksonUtils.DEFAULT_MAPPER.readValue(file, ThemeInfo.class);
            }
        } catch (Exception e) {
            Log.e("fail to open theme pack", e);
        }
        if (themeInfo != null) {
            this.themes.put(Integer.valueOf(i10), themeInfo);
        }
        return themeInfo;
    }

    public ObjectNode getThemeJsonInfo(int i10) {
        try {
            File file = new File(getDir(i10), "theme_info.json");
            if (file.length() > 0) {
                return (ObjectNode) JacksonUtils.DEFAULT_MAPPER.readTree(file);
            }
            return null;
        } catch (Exception e) {
            Log.e("fail to open theme pack", e);
            return null;
        }
    }

    File getUploadDir(int i10) {
        File file = new File(this.uploadDir.getAbsolutePath() + "/x" + i10 + "/files");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    File getUploadJsonFile(int i10) {
        File file = new File(getUploadDir(i10), "theme_info.json");
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return file;
    }

    File getWritingFile(int i10, int i11) {
        return new File(this.cacheDir, "x" + i10 + "-r" + i11 + ".w");
    }

    public void removeUploadDir(int i10) {
        Utils.deleteDir(getUploadDir(i10));
    }

    public void require(int i10, int i11, String str, boolean z6) {
        Worker worker;
        if (getStatus(i10, i11) > 0) {
            if (z6 || (worker = this.runningSessions.get(Integer.valueOf(i10))) == null) {
                return;
            }
            worker.downloadOnly = false;
            return;
        }
        cancel(i10);
        if (extract(i10, i11, str)) {
            Log.i("extract themepack " + str);
            return;
        }
        if (str != null) {
            if (str.startsWith(y.HTTP) || str.startsWith(y.HTTPS)) {
                if (this.logging == null) {
                    this.logging = (LoggingService) this.context.getService("logging");
                }
                Worker worker2 = new Worker(i10, i11, str);
                worker2.downloadOnly = z6;
                worker2.setDaemon(true);
                this.runningSessions.put(Integer.valueOf(i10), worker2);
                worker2.start();
                Intent intent = new Intent(ACTION_STATUS_CHANGED);
                intent.putExtra(CmcdConfiguration.KEY_CONTENT_ID, i10);
                intent.putExtra("rev", i11);
                this.lbm.d(intent);
            }
        }
    }

    public void trim(int i10, int i11, long j6) {
        int i12;
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
            int i13 = 0;
            for (File file : fileArrListFiles) {
                if (file.isDirectory() && file.getName().startsWith("x")) {
                    i13++;
                }
            }
            if (i13 <= i10) {
                return;
            }
            int iMin = Math.min(i11, i13 - i10);
            int i14 = 0;
            for (File file2 : fileArrListFiles) {
                if (i14 >= iMin) {
                    break;
                }
                if (file2.isDirectory()) {
                    String name = file2.getName();
                    if (name.startsWith("x") && (i12 = StringUtils.parseInt(name.substring(1), -1)) > 0 && !this.revs.contains(Integer.valueOf(i12)) && !this.themes.contains(Integer.valueOf(i12)) && !affiliationsService.contains(i12) && file2.lastModified() < System.currentTimeMillis() - j6) {
                        i14++;
                        FileUtils.deleteFile(getRevFile(i12));
                        Utils.deleteDir(file2);
                    }
                }
            }
            Log.i("themePack", "trim " + i14 + " theme pack spent " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
        } catch (Exception e) {
            Log.e("trim", e);
        }
    }

    public void upload(ThemePackUploadSpec themePackUploadSpec, ThemePackUploadListener themePackUploadListener) {
        cancelUpload(themePackUploadSpec.cid);
        UploadTask uploadTask = new UploadTask(themePackUploadSpec, themePackUploadListener);
        this.uploadSessions.put(Integer.valueOf(themePackUploadSpec.cid), uploadTask);
        uploadTask.execute(new Void[0]);
    }

    public ThemePackService(NVContext nVContext) {
        this.context = nVContext;
        File file = new File(nVContext.getContext().getCacheDir(), "themepack");
        this.dir = file;
        file.mkdir();
        File file2 = new File(this.dir, "publish");
        this.uploadDir = file2;
        file2.mkdir();
        File file3 = new File(nVContext.getContext().getCacheDir(), "themepack");
        this.cacheDir = file3;
        file3.mkdir();
        this.lbm = LocalBroadcastManager.b(nVContext.getContext());
    }

    public void clear() throws IOException {
        cancelAll();
        this.revs.clear();
        this.themes.clear();
        Utils.deleteContents(this.cacheDir);
    }

    public void deleteThemePack(int i10) {
        try {
            FileUtils.deleteFile(getRevFile(i10));
            this.revs.remove(Integer.valueOf(i10));
            this.themes.remove(Integer.valueOf(i10));
            Utils.deleteDir(getDir(i10));
        } catch (Exception e) {
            Log.e("delete", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002d A[Catch: all -> 0x0025, Exception -> 0x0029, TryCatch #4 {Exception -> 0x0029, all -> 0x0025, blocks: (B:4:0x0008, B:6:0x0010, B:11:0x002d, B:13:0x0037), top: B:53:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x0037 A[Catch: all -> 0x0025, Exception -> 0x0029, TRY_LEAVE, TryCatch #4 {Exception -> 0x0029, all -> 0x0025, blocks: (B:4:0x0008, B:6:0x0010, B:11:0x002d, B:13:0x0037), top: B:53:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:16:0x0067 A[Catch: all -> 0x0099, Exception -> 0x009f, TryCatch #5 {Exception -> 0x009f, all -> 0x0099, blocks: (B:14:0x003c, B:16:0x0067, B:18:0x0092, B:23:0x00a5, B:26:0x00b1, B:29:0x00dd, B:32:0x010b), top: B:52:0x003c }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0092 A[Catch: all -> 0x0099, Exception -> 0x009f, TryCatch #5 {Exception -> 0x009f, all -> 0x0099, blocks: (B:14:0x003c, B:16:0x0067, B:18:0x0092, B:23:0x00a5, B:26:0x00b1, B:29:0x00dd, B:32:0x010b), top: B:52:0x003c }] */
    /* JADX WARN: Code duplicated, block: B:26:0x00b1 A[Catch: all -> 0x0099, Exception -> 0x009f, TRY_ENTER, TRY_LEAVE, TryCatch #5 {Exception -> 0x009f, all -> 0x0099, blocks: (B:14:0x003c, B:16:0x0067, B:18:0x0092, B:23:0x00a5, B:26:0x00b1, B:29:0x00dd, B:32:0x010b), top: B:52:0x003c }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00dd A[Catch: all -> 0x0099, Exception -> 0x009f, TRY_ENTER, TRY_LEAVE, TryCatch #5 {Exception -> 0x009f, all -> 0x0099, blocks: (B:14:0x003c, B:16:0x0067, B:18:0x0092, B:23:0x00a5, B:26:0x00b1, B:29:0x00dd, B:32:0x010b), top: B:52:0x003c }] */
    /* JADX WARN: Code duplicated, block: B:32:0x010b A[Catch: all -> 0x0099, Exception -> 0x009f, TRY_ENTER, TRY_LEAVE, TryCatch #5 {Exception -> 0x009f, all -> 0x0099, blocks: (B:14:0x003c, B:16:0x0067, B:18:0x0092, B:23:0x00a5, B:26:0x00b1, B:29:0x00dd, B:32:0x010b), top: B:52:0x003c }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0135  */
    /* JADX WARN: Code duplicated, block: B:39:0x014b  */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x010b, please report this as an issue */
    public boolean extract(int i10, int i11, String str) throws Throwable {
        InputStream inputStreamOpen;
        Exception e;
        File dir;
        File file;
        File downloadedFile = getDownloadedFile(i10, i11);
        InputStream inputStream = null;
        String message = null;
        inputStream = null;
        if (str != null) {
            try {
                if (str.startsWith("assets://")) {
                    inputStreamOpen = this.context.getContext().getAssets().open(str.substring(9));
                } else if (downloadedFile.length() > 0) {
                    inputStreamOpen = new FileInputStream(downloadedFile);
                } else {
                    Utils.safeClose((InputStream) null);
                    downloadedFile.delete();
                    this.errors.remove(Integer.valueOf(i10));
                    return false;
                }
                try {
                    dir = getDir(i10);
                    file = new File(dir.getParentFile(), dir.getName() + ".tmp");
                    rm(file);
                    if (ZipUtils.extract(inputStreamOpen, file)) {
                        rm(dir);
                        this.revs.remove(Integer.valueOf(i10));
                        this.themes.remove(Integer.valueOf(i10));
                        if (((ThemeInfo) JacksonUtils.DEFAULT_MAPPER.readValue(new File(file, "theme_info.json"), ThemeInfo.class)).revision != i11) {
                            Log.w("theme pack revision doesn't match");
                        }
                        if (file.renameTo(dir)) {
                            Utils.writeToFile(getRevFile(i10), String.valueOf(i11));
                            Intent intent = new Intent(ACTION_STATUS_CHANGED);
                            intent.putExtra(CmcdConfiguration.KEY_CONTENT_ID, i10);
                            intent.putExtra("rev", i11);
                            this.lbm.d(intent);
                            Utils.safeClose(inputStreamOpen);
                            downloadedFile.delete();
                            this.errors.remove(Integer.valueOf(i10));
                            return true;
                        }
                        rm(file);
                        rm(dir);
                        Log.e("unable to move file");
                        Intent intent2 = new Intent(ACTION_STATUS_CHANGED);
                        intent2.putExtra(CmcdConfiguration.KEY_CONTENT_ID, i10);
                        intent2.putExtra("rev", i11);
                        this.lbm.d(intent2);
                        Utils.safeClose(inputStreamOpen);
                        downloadedFile.delete();
                        this.errors.put(Integer.valueOf(i10), "Unable to move file");
                        return false;
                    }
                    rm(file);
                    Log.e("unable to unzip file from " + str);
                    Utils.safeClose(inputStreamOpen);
                    downloadedFile.delete();
                    this.errors.put(Integer.valueOf(i10), "Unable to unzip file");
                    return false;
                } catch (Exception e2) {
                    e = e2;
                    inputStream = inputStreamOpen;
                    try {
                        message = e.getMessage();
                        if (message == null) {
                            message = "Fail to load theme pack";
                        }
                        Log.w("fail to load them pack from " + str, e);
                        Utils.safeClose(inputStream);
                        downloadedFile.delete();
                        this.errors.put(Integer.valueOf(i10), message);
                        return false;
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    InputStream inputStream2 = inputStreamOpen;
                    message = null;
                    inputStream = inputStream2;
                }
            } catch (Exception e6) {
                e = e6;
                message = e.getMessage();
                if (message == null) {
                    message = "Fail to load theme pack";
                }
                Log.w("fail to load them pack from " + str, e);
                Utils.safeClose(inputStream);
                downloadedFile.delete();
                this.errors.put(Integer.valueOf(i10), message);
                return false;
            } catch (Throwable th3) {
                th = th3;
                message = null;
            }
        } else {
            if (downloadedFile.length() > 0) {
                inputStreamOpen = new FileInputStream(downloadedFile);
                dir = getDir(i10);
                file = new File(dir.getParentFile(), dir.getName() + ".tmp");
                rm(file);
                if (ZipUtils.extract(inputStreamOpen, file)) {
                    rm(dir);
                    this.revs.remove(Integer.valueOf(i10));
                    this.themes.remove(Integer.valueOf(i10));
                    if (((ThemeInfo) JacksonUtils.DEFAULT_MAPPER.readValue(new File(file, "theme_info.json"), ThemeInfo.class)).revision != i11) {
                        Log.w("theme pack revision doesn't match");
                    }
                    if (file.renameTo(dir)) {
                        Utils.writeToFile(getRevFile(i10), String.valueOf(i11));
                        Intent intent3 = new Intent(ACTION_STATUS_CHANGED);
                        intent3.putExtra(CmcdConfiguration.KEY_CONTENT_ID, i10);
                        intent3.putExtra("rev", i11);
                        this.lbm.d(intent3);
                        Utils.safeClose(inputStreamOpen);
                        downloadedFile.delete();
                        this.errors.remove(Integer.valueOf(i10));
                        return true;
                    }
                    rm(file);
                    rm(dir);
                    Log.e("unable to move file");
                    Intent intent4 = new Intent(ACTION_STATUS_CHANGED);
                    intent4.putExtra(CmcdConfiguration.KEY_CONTENT_ID, i10);
                    intent4.putExtra("rev", i11);
                    this.lbm.d(intent4);
                    Utils.safeClose(inputStreamOpen);
                    downloadedFile.delete();
                    this.errors.put(Integer.valueOf(i10), "Unable to move file");
                    return false;
                }
                rm(file);
                Log.e("unable to unzip file from " + str);
                Utils.safeClose(inputStreamOpen);
                downloadedFile.delete();
                this.errors.put(Integer.valueOf(i10), "Unable to unzip file");
                return false;
            }
            Utils.safeClose((InputStream) null);
            downloadedFile.delete();
            this.errors.remove(Integer.valueOf(i10));
            return false;
        }
        Utils.safeClose(inputStream);
        downloadedFile.delete();
        if (message == null) {
            this.errors.remove(Integer.valueOf(i10));
        } else {
            this.errors.put(Integer.valueOf(i10), message);
        }
        throw th;
    }

    public int getThemeColor(int i10) {
        ThemeInfo themeInfo = getThemeInfo(i10);
        if (themeInfo == null) {
            return this.context.getContext().getResources().getColor(R.color.color_default);
        }
        return themeInfo.themeColor;
    }

    void rm(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                rm(file2);
            }
        }
        file.delete();
    }

    public void touchThemePack(int i10) {
        File dir = getDir(i10);
        if (dir.exists()) {
            dir.setLastModified(System.currentTimeMillis());
        }
    }

    public int getStatus(int i10) {
        return getStatus(i10, 0);
    }
}
