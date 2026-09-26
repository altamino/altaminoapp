package ffmpeg.executable;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.narvii.editors.ffmpeg.FFmpegJni;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.util.Utils;
import com.narvii.util.image.BitmapUtils;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.model.StreamInfo;
import g7.d;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import kotlin.collections.d0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements g7.a {

    @NotNull
    public static final C0378a Companion = new C0378a(null);

    @Nullable
    private static volatile a instance;

    @NotNull
    private final File localFileDir;

    @NotNull
    private final ConcurrentHashMap<d, b> runningTasks;

    /* JADX INFO: renamed from: ffmpeg.executable.a$a, reason: collision with other inner class name */
    public static final class C0378a {
        public /* synthetic */ C0378a(k kVar) {
            this();
        }

        private C0378a() {
        }

        static /* synthetic */ u e(C0378a c0378a, d dVar, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                i10 = 0;
            }
            return c0378a.d(dVar, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String h(int i10, int i11, boolean z6, float f) {
            if (z6) {
                if (i10 >= 720) {
                    i10 = 720;
                }
                i11 = (int) (i10 / f);
                if ((i11 & 1) == 1) {
                    i11++;
                }
            } else {
                if (i11 >= 720) {
                    i11 = 720;
                }
                i10 = (int) (i11 * f);
                if ((i10 & 1) == 1) {
                    i10++;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append(i10);
            sb.append(kotlinx.serialization.json.internal.b.COLON);
            sb.append(i11);
            return sb.toString();
        }

        @NotNull
        public final String c(int i10) {
            int i11 = i10 % 1000;
            int i12 = i10 / 1000;
            int i13 = i12 % 60;
            int i14 = (i12 / 60) % 60;
            int i15 = i12 / InviteMembersFragment.SECOND_HOUR;
            u0 u0Var = u0.INSTANCE;
            String str = String.format(Locale.US, "%02d:%02d:%02d.%03d", Arrays.copyOf(new Object[]{Integer.valueOf(i15), Integer.valueOf(i14), Integer.valueOf(i13), Integer.valueOf(i11)}, 4));
            t.i(str, "format(...)");
            return str;
        }

        @NotNull
        public final a g(@NotNull File localFileDir) {
            t.j(localFileDir, "localFileDir");
            if (f() == null) {
                synchronized (a.class) {
                    try {
                        C0378a c0378a = a.Companion;
                        if (c0378a.f() == null) {
                            c0378a.i(new a(localFileDir, null));
                        }
                        l0 l0Var = l0.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            a aVarF = f();
            t.g(aVarF);
            return aVarF;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final u<String, String> d(d dVar, int i10) {
            Integer num = dVar.x().get(i10);
            t.i(num, "get(...)");
            int iIntValue = 720;
            if (num.intValue() < 720) {
                Integer num2 = dVar.x().get(i10);
                t.g(num2);
                iIntValue = num2.intValue();
            }
            Float f = dVar.t().get(i10);
            t.i(f, "get(...)");
            int iFloatValue = (int) (iIntValue / f.floatValue());
            if ((iFloatValue & 1) == 1) {
                iFloatValue++;
            }
            if (iFloatValue > 1280) {
                iIntValue = (iIntValue * 1280) / iFloatValue;
                if ((iIntValue & 1) == 1) {
                    iIntValue++;
                }
                iFloatValue = 1280;
            }
            return new u<>(String.valueOf(iIntValue), String.valueOf(iFloatValue));
        }

        @Nullable
        public final a f() {
            return a.instance;
        }

        public final void i(@Nullable a aVar) {
            a.instance = aVar;
        }
    }

    public final class b extends AsyncTask<Void, Float, Boolean> {

        @Nullable
        private g7.c callback;

        @NotNull
        private final d config;
        final /* synthetic */ a this$0;
        private long threadId;

        public b(@NotNull a aVar, @Nullable d config, g7.c cVar) {
            t.j(config, "config");
            this.this$0 = aVar;
            this.config = config;
            this.callback = cVar;
            this.threadId = -1L;
        }

        public final void c() {
            g7.c cVar = this.callback;
            if (cVar != null) {
                cVar.onCancel();
            }
            this.callback = null;
            FFmpegJni.removeProgressCallback(this.threadId);
            cancel(true);
            FFmpegJni.abort(this.threadId);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Boolean doInBackground(@NotNull Void... params) {
            t.j(params, "params");
            Log.d("CountTest", "1");
            try {
                ArrayList arrayList = new ArrayList();
                for (AVClipInfoPack aVClipInfoPack : this.config.m()) {
                    a aVar = this.this$0;
                    String inputPath = aVClipInfoPack.inputPath;
                    t.i(inputPath, "inputPath");
                    arrayList.add(aVar.fetchStreamingInfo(inputPath));
                }
                this.this$0.h(this.config, arrayList);
                this.threadId = Thread.currentThread().getId();
                if (this.callback != null && this.config.s()) {
                    FFmpegJni.addProgressCallback(this.threadId, new FFmpegJni.IFFMpegExecProgressCallback() { // from class: ffmpeg.executable.b
                        @Override // com.narvii.editors.ffmpeg.FFmpegJni.IFFMpegExecProgressCallback
                        public final void onProgress(float f) {
                            a.b.e(this.f3219a, f);
                        }
                    });
                }
                return Boolean.valueOf(FFmpegJni.run((String[]) this.this$0.g(this.config).toArray(new String[0]), this.threadId, this.config.e(), this.config.s()) == 0);
            } catch (Exception unused) {
                return Boolean.FALSE;
            } finally {
                FFmpegJni.removeProgressCallback(this.threadId);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void onCancelled(@Nullable Boolean bool) {
            g7.c cVar = this.callback;
            if (cVar != null) {
                cVar.onCancel();
            }
            FFmpegJni.removeProgressCallback(this.threadId);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(@Nullable Boolean bool) {
            g7.c cVar = this.callback;
            if (cVar != null) {
                if (t.e(bool, Boolean.TRUE)) {
                    cVar.onSuccess();
                } else {
                    cVar.onFail();
                }
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            g7.c cVar = this.callback;
            if (cVar != null) {
                cVar.onStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(final b this$0, final float f) {
            t.j(this$0, "this$0");
            Utils.post(new Runnable() { // from class: ffmpeg.executable.c
                @Override // java.lang.Runnable
                public final void run() {
                    a.b.f(this.f3220a, f);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(b this$0, float f) {
            t.j(this$0, "this$0");
            g7.c cVar = this$0.callback;
            if (cVar != null) {
                cVar.onProgress(f);
            }
        }
    }

    public static final class c implements g7.c {
        final /* synthetic */ g7.c $callback;
        final /* synthetic */ d $config;
        final /* synthetic */ a this$0;

        c(g7.c cVar, a aVar, d dVar) {
            this.$callback = cVar;
            this.this$0 = aVar;
            this.$config = dVar;
        }

        @Override // g7.c
        public void onCancel() {
            this.this$0.runningTasks.remove(this.$config);
            g7.c cVar = this.$callback;
            if (cVar != null) {
                cVar.onCancel();
            }
        }

        @Override // g7.b
        public void onFail() {
            this.this$0.runningTasks.remove(this.$config);
            g7.c cVar = this.$callback;
            if (cVar != null) {
                cVar.onFail();
            }
        }

        @Override // g7.c
        public void onProgress(float f) {
            g7.c cVar = this.$callback;
            if (cVar != null) {
                cVar.onProgress(f);
            }
        }

        @Override // g7.b
        public void onStart() {
            g7.c cVar = this.$callback;
            if (cVar != null) {
                cVar.onStart();
            }
        }

        @Override // g7.b
        public void onSuccess() {
            this.this$0.runningTasks.remove(this.$config);
            g7.c cVar = this.$callback;
            if (cVar != null) {
                cVar.onSuccess();
            }
        }
    }

    public /* synthetic */ a(File file, k kVar) {
        this(file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:109:0x0607 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:110:0x0609  */
    /* JADX WARN: Code duplicated, block: B:113:0x063c  */
    /* JADX WARN: Code duplicated, block: B:116:0x0679  */
    /* JADX WARN: Code duplicated, block: B:118:0x0685  */
    /* JADX WARN: Code duplicated, block: B:119:0x06a6  */
    /* JADX WARN: Code duplicated, block: B:122:0x06b9  */
    /* JADX WARN: Code duplicated, block: B:125:0x06c7  */
    /* JADX WARN: Code duplicated, block: B:127:0x06d3  */
    /* JADX WARN: Code duplicated, block: B:128:0x06f2  */
    /* JADX WARN: Code duplicated, block: B:132:0x070e  */
    /* JADX WARN: Code duplicated, block: B:135:0x0724  */
    /* JADX WARN: Code duplicated, block: B:139:0x0772  */
    /* JADX WARN: Code duplicated, block: B:141:0x077c  */
    /* JADX WARN: Code duplicated, block: B:144:0x0792  */
    /* JADX WARN: Code duplicated, block: B:145:0x07c6  */
    /* JADX WARN: Code duplicated, block: B:148:0x0863  */
    /* JADX WARN: Code duplicated, block: B:153:0x089a  */
    /* JADX WARN: Code duplicated, block: B:155:0x08ad  */
    /* JADX WARN: Code duplicated, block: B:157:0x08de  */
    /* JADX WARN: Code duplicated, block: B:158:0x08f6  */
    /* JADX WARN: Code duplicated, block: B:161:0x0910  */
    /* JADX WARN: Code duplicated, block: B:163:0x0940  */
    /* JADX WARN: Code duplicated, block: B:164:0x094f  */
    /* JADX WARN: Code duplicated, block: B:167:0x095d  */
    /* JADX WARN: Code duplicated, block: B:170:0x0972  */
    /* JADX WARN: Code duplicated, block: B:173:0x0980  */
    /* JADX WARN: Code duplicated, block: B:175:0x0995 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:176:0x0997  */
    /* JADX WARN: Code duplicated, block: B:179:0x09a9  */
    /* JADX WARN: Code duplicated, block: B:181:0x09b7  */
    /* JADX WARN: Code duplicated, block: B:185:0x0a0d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:187:0x0a1a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:188:0x0a1c  */
    /* JADX WARN: Code duplicated, block: B:190:0x0a21  */
    /* JADX WARN: Code duplicated, block: B:192:0x0a35  */
    /* JADX WARN: Code duplicated, block: B:194:0x0a38  */
    /* JADX WARN: Code duplicated, block: B:196:0x0a63  */
    /* JADX WARN: Code duplicated, block: B:197:0x0a88  */
    /* JADX WARN: Code duplicated, block: B:199:0x0a8c  */
    /* JADX WARN: Code duplicated, block: B:201:0x0ab4  */
    /* JADX WARN: Code duplicated, block: B:203:0x0ae1  */
    /* JADX WARN: Code duplicated, block: B:205:0x0af8  */
    /* JADX WARN: Code duplicated, block: B:207:0x0b04  */
    /* JADX WARN: Code duplicated, block: B:209:0x0b0e  */
    /* JADX WARN: Code duplicated, block: B:212:0x0b21  */
    /* JADX WARN: Code duplicated, block: B:217:0x0b4e  */
    /* JADX WARN: Code duplicated, block: B:220:0x0b6f  */
    /* JADX WARN: Code duplicated, block: B:222:0x0b7f  */
    /* JADX WARN: Code duplicated, block: B:223:0x0b9c  */
    /* JADX WARN: Code duplicated, block: B:227:0x0bf9  */
    /* JADX WARN: Code duplicated, block: B:231:0x0c54  */
    /* JADX WARN: Code duplicated, block: B:233:0x0c5a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:237:0x0c65  */
    /* JADX WARN: Code duplicated, block: B:247:0x0d83  */
    /* JADX WARN: Code duplicated, block: B:250:0x0d99  */
    /* JADX WARN: Code duplicated, block: B:252:0x0d9f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:256:0x0dbd  */
    /* JADX WARN: Code duplicated, block: B:259:0x0dd6  */
    /* JADX WARN: Code duplicated, block: B:260:0x0ddc  */
    /* JADX WARN: Code duplicated, block: B:262:0x0de2  */
    /* JADX WARN: Code duplicated, block: B:264:0x0de9  */
    /* JADX WARN: Code duplicated, block: B:268:0x0df8  */
    /* JADX WARN: Code duplicated, block: B:275:0x0e42 A[LOOP:0: B:273:0x0e3c->B:275:0x0e42, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:293:0x087c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:294:0x0745 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:300:0x090b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:303:0x097e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:307:0x09db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:309:0x0b34 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:311:0x0b1f A[SYNTHETIC] */
    public final List<String> g(d dVar) {
        int i10;
        int i11;
        int i12;
        Iterator<AVClipInfoPack> it;
        AVClipInfoPack next;
        boolean z6;
        String str;
        ArrayList arrayList;
        String str2;
        Boolean bool;
        Boolean bool2;
        StringBuilder sb;
        int size;
        int i13;
        Boolean bool3;
        int size2;
        int i14;
        int i15;
        Boolean bool4;
        int i16;
        AVClipInfoPack aVClipInfoPack;
        StringBuilder sb2;
        Iterator<AVClipInfoPack> it2;
        int i17;
        int i18;
        ArrayList arrayList2;
        String str3;
        int i19;
        String str4;
        int size3;
        int i20;
        String str5;
        int i21;
        String str6;
        StringBuilder sb3;
        int i22;
        int size4;
        int i23;
        Boolean bool5;
        int i24;
        Boolean bool6;
        AVClipInfoPack next2;
        Boolean bool7;
        Boolean bool8;
        Iterator<AVClipInfoPack> it3;
        AVClipInfoPack next3;
        StringBuilder sb4;
        Iterator it4;
        dVar = dVar;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(this.localFileDir.getAbsolutePath() + File.separator + "ffmpeg");
        String str7 = " ";
        if ((dVar.a() & 256) == 256) {
            u0 u0Var = u0.INSTANCE;
            String str8 = String.format("-f lavfi -i anullsrc -t %s -c:a aac -y %s", Arrays.copyOf(new Object[]{Companion.c(dVar.e()), dVar.y().getAbsolutePath()}, 2));
            t.i(str8, "format(...)");
            arrayList3.addAll(kotlin.text.u.C0(str8, new String[]{" "}, false, 0, 6, null));
        } else if ((dVar.a() & 512) == 512 && (dVar.k() || dVar.E())) {
            arrayList3.add("-i");
            arrayList3.add(dVar.l().inputPath);
            if (dVar.E()) {
                arrayList3.addAll(kotlin.text.u.C0("-vf vflip", new String[]{" "}, false, 0, 6, null));
            }
            if (dVar.k()) {
                arrayList3.addAll(kotlin.text.u.C0("-vf hflip", new String[]{" "}, false, 0, 6, null));
            }
            arrayList3.add("-y");
            arrayList3.add(dVar.y().getAbsolutePath());
        } else {
            String str9 = "scale=%s:%s,pad=720:1280:(ow-iw)/2:(oh-ih)/2";
            if ((dVar.a() & 16) == 16) {
                dVar.q();
                if (!dVar.H()) {
                    arrayList3.add("-ss");
                    arrayList3.add(Companion.c(dVar.D()));
                }
                arrayList3.add("-i");
                arrayList3.add(dVar.l().inputPath);
                if (!dVar.H()) {
                    arrayList3.add("-frames:v");
                    arrayList3.add(String.valueOf(dVar.A()));
                    arrayList3.add("-r");
                    arrayList3.add(String.valueOf(dVar.B()));
                }
                if (dVar.p()) {
                    if (dVar.H()) {
                        int imageRotation = BitmapUtils.readImageRotation(dVar.l().inputPath);
                        if (imageRotation == 0) {
                            u0 u0Var2 = u0.INSTANCE;
                            String str10 = String.format("-vf %sscale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2", Arrays.copyOf(new Object[]{""}, 1));
                            t.i(str10, "format(...)");
                            arrayList3.addAll(kotlin.text.u.C0(str10, new String[]{" "}, false, 0, 6, null));
                        } else {
                            StringBuilder sb5 = new StringBuilder();
                            while (imageRotation >= 90) {
                                sb5.append("transpose=1,");
                                imageRotation -= 90;
                            }
                            u0 u0Var3 = u0.INSTANCE;
                            String str11 = String.format("-vf %sscale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2", Arrays.copyOf(new Object[]{sb5.toString()}, 1));
                            t.i(str11, "format(...)");
                            arrayList3.addAll(kotlin.text.u.C0(str11, new String[]{" "}, false, 0, 6, null));
                        }
                    } else if (d.w(dVar, 0, 1, null) == 1.0f) {
                        arrayList3.addAll(kotlin.text.u.C0("-sar 1", new String[]{" "}, false, 0, 6, null));
                        arrayList3.add("-vf");
                        arrayList3.addAll(kotlin.text.u.C0("scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2", new String[]{" "}, false, 0, 6, null));
                    } else {
                        arrayList3.addAll(kotlin.text.u.C0("-sar 1", new String[]{" "}, false, 0, 6, null));
                        arrayList3.add("-vf");
                        u uVarE = C0378a.e(Companion, dVar, 0, 2, null);
                        String str12 = (String) uVarE.a();
                        String str13 = (String) uVarE.b();
                        u0 u0Var4 = u0.INSTANCE;
                        String str14 = String.format("scale=%s:%s,pad=720:1280:(ow-iw)/2:(oh-ih)/2", Arrays.copyOf(new Object[]{str12, str13}, 2));
                        t.i(str14, "format(...)");
                        arrayList3.addAll(kotlin.text.u.C0(str14, new String[]{" "}, false, 0, 6, null));
                    }
                } else if (dVar.C() != null) {
                    arrayList3.addAll(kotlin.text.u.C0("-vf scale=" + dVar.C(), new String[]{" "}, false, 0, 6, null));
                } else {
                    Boolean bool9 = dVar.I().get(0);
                    t.i(bool9, "get(...)");
                    if (bool9.booleanValue()) {
                        arrayList3.addAll(kotlin.text.u.C0("-vf scale=240:-2", new String[]{" "}, false, 0, 6, null));
                    } else {
                        arrayList3.addAll(kotlin.text.u.C0("-vf scale=-2:240", new String[]{" "}, false, 0, 6, null));
                    }
                }
                arrayList3.add("-y");
                arrayList3.add(dVar.y().getAbsolutePath());
            } else {
                String str15 = "-filter_complex";
                if ((dVar.a() & 64) == 64) {
                    arrayList3.add("-ss");
                    C0378a c0378a = Companion;
                    arrayList3.add(c0378a.c(dVar.D()));
                    arrayList3.add("-t");
                    arrayList3.add(c0378a.c(dVar.e()));
                    arrayList3.add("-i");
                    arrayList3.add(dVar.l().inputPath);
                    arrayList3.add("-filter_complex");
                    u0 u0Var5 = u0.INSTANCE;
                    String str16 = String.format("[0:a]aformat=channel_layouts=mono,compand,showwavespic=s=%sx%s:colors=#1598FF,drawbox=x=(iw-w)/2:y=(ih-h)/2:w=iw:h=1:color=#1598FF", Arrays.copyOf(new Object[]{String.valueOf(dVar.j()), String.valueOf(dVar.i())}, 2));
                    t.i(str16, "format(...)");
                    arrayList3.add(str16);
                    arrayList3.add("-frames:v");
                    arrayList3.add("1");
                    arrayList3.add("-y");
                    arrayList3.add(dVar.y().getAbsolutePath());
                } else if ((dVar.a() & 128) == 128) {
                    arrayList3.add("-i");
                    arrayList3.add(dVar.l().inputPath);
                    for (AVClipInfoPack aVClipInfoPack2 : dVar.b()) {
                        if (aVClipInfoPack2.isTrimSectionValid()) {
                            arrayList3.add("-ss");
                            C0378a c0378a2 = Companion;
                            arrayList3.add(c0378a2.c(aVClipInfoPack2.trimStartInMs));
                            arrayList3.add("-t");
                            arrayList3.add(c0378a2.c(aVClipInfoPack2.trimmedDurationInMs()));
                        }
                        arrayList3.add("-i");
                        arrayList3.add(aVClipInfoPack2.inputPath);
                    }
                    arrayList3.addAll(kotlin.text.u.C0("-c:v copy", new String[]{" "}, false, 0, 6, null));
                    if (dVar.b().isEmpty()) {
                        arrayList3.add("-an");
                    } else if (dVar.f()) {
                        arrayList3.addAll(kotlin.text.u.C0("-c:a copy", new String[]{" "}, false, 0, 6, null));
                    } else {
                        arrayList3.addAll(kotlin.text.u.C0("-c:a aac -ar 44100 -b:a 128k -ac 2", new String[]{" "}, false, 0, 6, null));
                    }
                    u0 u0Var6 = u0.INSTANCE;
                    String str17 = String.format("-map %s:v", Arrays.copyOf(new Object[]{"0"}, 1));
                    t.i(str17, "format(...)");
                    arrayList3.addAll(kotlin.text.u.C0(str17, new String[]{" "}, false, 0, 6, null));
                    int size5 = dVar.b().size();
                    int i25 = 0;
                    while (i25 < size5) {
                        u0 u0Var7 = u0.INSTANCE;
                        i25++;
                        String str18 = String.format("-map %s:a", Arrays.copyOf(new Object[]{String.valueOf(i25)}, 1));
                        t.i(str18, "format(...)");
                        arrayList3.addAll(kotlin.text.u.C0(str18, new String[]{" "}, false, 0, 6, null));
                    }
                    arrayList3.add("-y");
                    arrayList3.addAll(kotlin.text.u.C0("-movflags +faststart", new String[]{" "}, false, 0, 6, null));
                    arrayList3.add(dVar.y().getAbsolutePath());
                } else if ((dVar.a() & 1024) == 1024) {
                    arrayList3.addAll(kotlin.text.u.C0("-loop 1 -framerate 10", new String[]{" "}, false, 0, 6, null));
                    arrayList3.add("-i");
                    arrayList3.add(dVar.l().inputPath);
                    arrayList3.add("-t");
                    arrayList3.add(Companion.c(5000));
                    arrayList3.add("-vf");
                    arrayList3.addAll(kotlin.text.u.C0("scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2", new String[]{" "}, false, 0, 6, null));
                    arrayList3.addAll(kotlin.text.u.C0("-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v superfast -r:v 30000/1001 -force_fps -crf 24", new String[]{" "}, false, 0, 6, null));
                    arrayList3.add("-y");
                    arrayList3.add(dVar.y().getAbsolutePath());
                } else {
                    String str19 = "scale=";
                    if ((dVar.a() & 2048) != 2048) {
                        if ((dVar.a() & 4096) == 4096) {
                            arrayList3.addAll(kotlin.text.u.C0("-f concat -safe 0", new String[]{" "}, false, 0, 6, null));
                            arrayList3.add("-i");
                            arrayList3.add(dVar.l().inputPath);
                            arrayList3.addAll(kotlin.text.u.C0("-c copy", new String[]{" "}, false, 0, 6, null));
                            arrayList3.add(dVar.y().getAbsolutePath());
                        } else {
                            int i26 = 0;
                            for (Boolean bool10 : dVar.n()) {
                                t.g(bool10);
                                if (bool10.booleanValue()) {
                                    i26++;
                                }
                            }
                            boolean z10 = (dVar.a() & 8) == 8;
                            if ((dVar.a() & 32) == 32) {
                                if (i26 <= 0) {
                                    i10 = 1;
                                    if (!dVar.b().isEmpty()) {
                                    }
                                    i12 = i26;
                                    if (dVar.m().size() == i10) {
                                        if (z10) {
                                            arrayList3.add("-ss");
                                            C0378a c0378a3 = Companion;
                                            arrayList3.add(c0378a3.c(dVar.D()));
                                            arrayList3.add("-t");
                                            arrayList3.add(c0378a3.c(dVar.e()));
                                            arrayList3.add("-accurate_seek");
                                        }
                                        arrayList3.add("-i");
                                        arrayList3.add(dVar.l().inputPath);
                                    } else {
                                        u0 u0Var8 = u0.INSTANCE;
                                        String str20 = String.format("-f lavfi -t %s -i anullsrc", Arrays.copyOf(new Object[]{"0.1"}, 1));
                                        t.i(str20, "format(...)");
                                        arrayList3.addAll(kotlin.text.u.C0(str20, new String[]{" "}, false, 0, 6, null));
                                        it = dVar.m().iterator();
                                        while (it.hasNext()) {
                                            next = it.next();
                                            if (next.isTrimSectionValid()) {
                                                arrayList3.add("-ss");
                                                C0378a c0378a4 = Companion;
                                                arrayList3.add(c0378a4.c(next.trimStartInMs));
                                                arrayList3.add("-t");
                                                arrayList3.add(c0378a4.c(next.trimmedDurationInMs()));
                                            }
                                            arrayList3.add("-i");
                                            arrayList3.add(next.inputPath);
                                            it = it;
                                            z10 = z10;
                                        }
                                    }
                                    z6 = z10;
                                    if (i11 != 0) {
                                        for (it3 = dVar.b().iterator(); it3.hasNext(); it3 = it3) {
                                            next3 = it3.next();
                                            if (next3.isTrimSectionValid()) {
                                                arrayList3.add("-ss");
                                                C0378a c0378a5 = Companion;
                                                arrayList3.add(c0378a5.c(next3.trimStartInMs));
                                                arrayList3.add("-t");
                                                arrayList3.add(c0378a5.c(next3.trimmedDurationInMs()));
                                            }
                                            arrayList3.add("-i");
                                            arrayList3.add(next3.inputPath);
                                        }
                                    }
                                    str = "-map [%s]";
                                    if (dVar.m().size() > 1) {
                                        sb2 = new StringBuilder();
                                        it2 = dVar.m().iterator();
                                        i17 = 0;
                                        i18 = 0;
                                        while (it2.hasNext()) {
                                            i17++;
                                            it2 = it2;
                                            next2 = it2.next();
                                            i11 = i11;
                                            bool7 = dVar.o().get(i17);
                                            t.i(bool7, "get(...)");
                                            if (bool7.booleanValue()) {
                                                i18++;
                                                u0 u0Var9 = u0.INSTANCE;
                                                String str21 = str7;
                                                String str22 = String.format("[%s:v]", Arrays.copyOf(new Object[]{String.valueOf(i17)}, 1));
                                                t.i(str22, "format(...)");
                                                sb2.append(str22);
                                                String str23 = str;
                                                if (!dVar.p()) {
                                                    arrayList3 = arrayList3;
                                                    StringBuilder sb6 = new StringBuilder();
                                                    sb6.append(str19);
                                                    C0378a c0378a6 = Companion;
                                                    Integer num = dVar.x().get(i17);
                                                    t.i(num, "get(...)");
                                                    int iIntValue = num.intValue();
                                                    Integer num2 = dVar.u().get(i17);
                                                    t.i(num2, "get(...)");
                                                    int iIntValue2 = num2.intValue();
                                                    Boolean bool11 = dVar.I().get(i17);
                                                    t.i(bool11, "get(...)");
                                                    boolean zBooleanValue = bool11.booleanValue();
                                                    Float f = dVar.t().get(i17);
                                                    t.i(f, "get(...)");
                                                    sb6.append(c0378a6.h(iIntValue, iIntValue2, zBooleanValue, f.floatValue()));
                                                    sb2.append(sb6.toString());
                                                    sb2.append(",");
                                                    sb2.append("setsar=1");
                                                } else if (dVar.v(i17) == 1.0f) {
                                                    sb2.append("scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2");
                                                    sb2.append(",");
                                                    sb2.append("setsar=1");
                                                } else {
                                                    u uVarD = Companion.d(dVar, i17);
                                                    String str24 = String.format(str9, Arrays.copyOf(new Object[]{(String) uVarD.a(), (String) uVarD.b()}, 2));
                                                    t.i(str24, "format(...)");
                                                    sb2.append(str24);
                                                    sb2.append(",");
                                                    sb2.append("setsar=1");
                                                }
                                                String str25 = String.format("[v%s]", Arrays.copyOf(new Object[]{String.valueOf(i17)}, 1));
                                                t.i(str25, "format(...)");
                                                sb2.append(str25);
                                                sb2.append(";");
                                                bool8 = dVar.n().get(i17);
                                                t.i(bool8, "get(...)");
                                                if (bool8.booleanValue()) {
                                                    f(i17, next2, sb2, 0);
                                                }
                                                str7 = str21;
                                                str = str23;
                                                arrayList3 = arrayList3;
                                                str19 = str19;
                                                str9 = str9;
                                                str15 = str15;
                                            }
                                        }
                                        arrayList2 = arrayList3;
                                        str3 = str;
                                        str2 = str7;
                                        i19 = i11;
                                        str4 = str15;
                                        size3 = dVar.m().size();
                                        for (i20 = 0; i20 < size3; i20++) {
                                            bool5 = dVar.o().get(i20);
                                            t.i(bool5, "get(...)");
                                            if (bool5.booleanValue()) {
                                                u0 u0Var10 = u0.INSTANCE;
                                                i24 = i20 + 1;
                                                String str26 = String.format("[v%s]", Arrays.copyOf(new Object[]{String.valueOf(i24)}, 1));
                                                t.i(str26, "format(...)");
                                                sb2.append(str26);
                                                bool6 = dVar.n().get(i20);
                                                t.i(bool6, "get(...)");
                                                if (bool6.booleanValue()) {
                                                    String str27 = String.format("[a%s]", Arrays.copyOf(new Object[]{String.valueOf(i24)}, 1));
                                                    t.i(str27, "format(...)");
                                                    sb2.append(str27);
                                                } else {
                                                    String str28 = String.format("[%s:a]", Arrays.copyOf(new Object[]{"0"}, 1));
                                                    t.i(str28, "format(...)");
                                                    sb2.append(str28);
                                                }
                                            }
                                        }
                                        if (i18 > 0) {
                                            u0 u0Var11 = u0.INSTANCE;
                                            String str29 = String.format("concat=n=%s:v=1:a=1", Arrays.copyOf(new Object[]{String.valueOf(i18)}, 1));
                                            t.i(str29, "format(...)");
                                            sb2.append(str29);
                                            sb2.append("[vout]");
                                            sb2.append("[aout]");
                                            if (dVar.b().size() == 0) {
                                                arrayList = arrayList2;
                                                str5 = str4;
                                                arrayList.add(str5);
                                                arrayList.add(sb2.toString());
                                            } else {
                                                arrayList = arrayList2;
                                                str5 = str4;
                                            }
                                        } else {
                                            arrayList = arrayList2;
                                            str5 = str4;
                                        }
                                        if (dVar.b().size() > 0) {
                                            sb3 = new StringBuilder();
                                            i21 = 0;
                                            i22 = 0;
                                            for (AVClipInfoPack aVClipInfoPack3 : dVar.b()) {
                                                int i27 = i22 + 1;
                                                if (aVClipInfoPack3.hasAudioTrack) {
                                                    i21++;
                                                    f(i22 + dVar.m().size() + 1, aVClipInfoPack3, sb3, aVClipInfoPack3.startOffsetToMainTrackInMs);
                                                }
                                                i22 = i27;
                                            }
                                            if (i21 > 0) {
                                                if (i18 > 0) {
                                                    i21++;
                                                    sb3.append("[aout]");
                                                }
                                                size4 = dVar.b().size();
                                                for (i23 = 0; i23 < size4; i23++) {
                                                    if (dVar.b().get(i23).hasAudioTrack) {
                                                        u0 u0Var12 = u0.INSTANCE;
                                                        String str30 = String.format("[a%s]", Arrays.copyOf(new Object[]{String.valueOf(dVar.m().size() + i23 + 1)}, 1));
                                                        t.i(str30, "format(...)");
                                                        sb3.append(str30);
                                                    }
                                                }
                                                u0 u0Var13 = u0.INSTANCE;
                                                String str31 = String.format("amix=inputs=%s:duration=%s,volume=%s[%s]", Arrays.copyOf(new Object[]{String.valueOf(i21), "longest", String.valueOf(i21), "amixout"}, 4));
                                                t.i(str31, "format(...)");
                                                sb3.append(str31);
                                            }
                                            if (i18 > 0 && i21 > 0) {
                                                arrayList.add(str5);
                                                arrayList.add(sb3.toString());
                                            } else if (i18 > 0) {
                                                arrayList.add(str5);
                                                if (i21 > 0) {
                                                    sb2.append(";");
                                                    sb2.append(sb3.toString());
                                                }
                                                arrayList.add(sb2.toString());
                                            }
                                        } else {
                                            i21 = 0;
                                        }
                                        if (i18 > 0) {
                                            u0 u0Var14 = u0.INSTANCE;
                                            str6 = str3;
                                            String str32 = String.format(str6, Arrays.copyOf(new Object[]{"vout"}, 1));
                                            t.i(str32, "format(...)");
                                            arrayList.addAll(kotlin.text.u.C0(str32, new String[]{str2}, false, 0, 6, null));
                                            if (i21 == 0) {
                                                String str33 = String.format(str6, Arrays.copyOf(new Object[]{"aout"}, 1));
                                                t.i(str33, "format(...)");
                                                arrayList.addAll(kotlin.text.u.C0(str33, new String[]{str2}, false, 0, 6, null));
                                            }
                                        } else {
                                            str6 = str3;
                                        }
                                        if (i21 > 0) {
                                            u0 u0Var15 = u0.INSTANCE;
                                            String str34 = String.format(str6, Arrays.copyOf(new Object[]{"amixout"}, 1));
                                            t.i(str34, "format(...)");
                                            arrayList.addAll(kotlin.text.u.C0(str34, new String[]{str2}, false, 0, 6, null));
                                        }
                                        if (i18 > 0) {
                                            arrayList.addAll(kotlin.text.u.C0("-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v veryfast -profile:v main -level 3.1 -r:v 30000/1001 -force_fps -crf 22 -max_muxing_queue_size 1024", new String[]{str2}, false, 0, 6, null));
                                            arrayList.add("-maxrate");
                                            arrayList.add(dVar.r());
                                            arrayList.add("-bufsize");
                                            arrayList.add(dVar.F());
                                        }
                                        if (i19 != 0) {
                                            arrayList.addAll(kotlin.text.u.C0("-c:a aac -ar 44100 -b:a 128k -ac 2", new String[]{str2}, false, 0, 6, null));
                                        }
                                    } else {
                                        arrayList = arrayList3;
                                        str2 = " ";
                                        if (i11 != 0) {
                                            arrayList.add("-filter_complex");
                                            sb = new StringBuilder();
                                            if (i12 > 0) {
                                                f(0, dVar.l(), sb, 0);
                                            }
                                            size = dVar.b().size();
                                            i13 = 0;
                                            while (i13 < size) {
                                                AVClipInfoPack aVClipInfoPack4 = dVar.b().get(i13);
                                                t.i(aVClipInfoPack4, "get(...)");
                                                aVClipInfoPack = aVClipInfoPack4;
                                                i13++;
                                                if (aVClipInfoPack.hasAudioTrack) {
                                                    f(i13, aVClipInfoPack, sb, aVClipInfoPack.startOffsetToMainTrackInMs);
                                                }
                                            }
                                            bool3 = dVar.n().get(0);
                                            t.i(bool3, "get(...)");
                                            if (bool3.booleanValue()) {
                                                u0 u0Var16 = u0.INSTANCE;
                                                String str35 = String.format("[a%s]", Arrays.copyOf(new Object[]{"0"}, 1));
                                                t.i(str35, "format(...)");
                                                sb.append(str35);
                                            }
                                            size2 = dVar.b().size();
                                            i14 = 0;
                                            i15 = 0;
                                            while (i14 < size2) {
                                                i16 = i14 + 1;
                                                if (dVar.b().get(i14).hasAudioTrack) {
                                                    i15++;
                                                    u0 u0Var17 = u0.INSTANCE;
                                                    String str36 = String.format("[a%s]", Arrays.copyOf(new Object[]{String.valueOf(i16)}, 1));
                                                    t.i(str36, "format(...)");
                                                    sb.append(str36);
                                                }
                                                i14 = i16;
                                            }
                                            Boolean bool12 = dVar.n().get(0);
                                            t.i(bool12, "get(...)");
                                            int i28 = i15 + (bool12.booleanValue() ? 1 : 0);
                                            u0 u0Var18 = u0.INSTANCE;
                                            String str37 = String.format("amix=inputs=%s:duration=%s,volume=%s[%s]", Arrays.copyOf(new Object[]{String.valueOf(i28), "first", String.valueOf(i28), "out"}, 4));
                                            t.i(str37, "format(...)");
                                            sb.append(str37);
                                            arrayList.add(sb.toString());
                                            bool4 = dVar.o().get(0);
                                            t.i(bool4, "get(...)");
                                            if (bool4.booleanValue()) {
                                                String str38 = String.format("-map %s:v", Arrays.copyOf(new Object[]{"0"}, 1));
                                                t.i(str38, "format(...)");
                                                arrayList.addAll(kotlin.text.u.C0(str38, new String[]{str2}, false, 0, 6, null));
                                            }
                                            String str39 = String.format("-map [%s]", Arrays.copyOf(new Object[]{"out"}, 1));
                                            t.i(str39, "format(...)");
                                            arrayList.addAll(kotlin.text.u.C0(str39, new String[]{str2}, false, 0, 6, null));
                                        }
                                        bool = dVar.o().get(0);
                                        t.i(bool, "get(...)");
                                        if (bool.booleanValue()) {
                                            if (dVar.h() && (z6 || (dVar.a() & 2) == 2)) {
                                                if (dVar.p()) {
                                                    arrayList.addAll(kotlin.text.u.C0("-sar 1", new String[]{str2}, false, 0, 6, null));
                                                    arrayList.add("-vf");
                                                    if (d.w(dVar, 0, 1, null) == 1.0f) {
                                                        arrayList.add("scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2");
                                                    } else {
                                                        u uVarE2 = C0378a.e(Companion, dVar, 0, 2, null);
                                                        String str40 = (String) uVarE2.a();
                                                        String str41 = (String) uVarE2.b();
                                                        u0 u0Var19 = u0.INSTANCE;
                                                        String str42 = String.format("scale=%s:%s,pad=720:1280:(ow-iw)/2:(oh-ih)/2", Arrays.copyOf(new Object[]{str40, str41}, 2));
                                                        t.i(str42, "format(...)");
                                                        arrayList.add(str42);
                                                    }
                                                } else {
                                                    arrayList.addAll(kotlin.text.u.C0("-sar 1", new String[]{str2}, false, 0, 6, null));
                                                    arrayList.add("-vf");
                                                    StringBuilder sb7 = new StringBuilder();
                                                    sb7.append("scale=");
                                                    C0378a c0378a7 = Companion;
                                                    Integer num3 = dVar.x().get(0);
                                                    t.i(num3, "get(...)");
                                                    int iIntValue3 = num3.intValue();
                                                    Integer num4 = dVar.u().get(0);
                                                    t.i(num4, "get(...)");
                                                    int iIntValue4 = num4.intValue();
                                                    Boolean bool13 = dVar.I().get(0);
                                                    t.i(bool13, "get(...)");
                                                    boolean zBooleanValue2 = bool13.booleanValue();
                                                    Float f6 = dVar.t().get(0);
                                                    t.i(f6, "get(...)");
                                                    sb7.append(c0378a7.h(iIntValue3, iIntValue4, zBooleanValue2, f6.floatValue()));
                                                    arrayList.add(sb7.toString());
                                                }
                                                arrayList.addAll(kotlin.text.u.C0("-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v veryfast -profile:v main -level 3.1 -r:v 30000/1001 -force_fps -crf 22 -max_muxing_queue_size 1024", new String[]{str2}, false, 0, 6, null));
                                                arrayList.add("-maxrate");
                                                arrayList.add(dVar.r());
                                                arrayList.add("-bufsize");
                                                arrayList.add(dVar.F());
                                            } else {
                                                arrayList.addAll(kotlin.text.u.C0("-c:v copy", new String[]{str2}, false, 0, 6, null));
                                            }
                                        }
                                        bool2 = dVar.n().get(0);
                                        t.i(bool2, "get(...)");
                                        if (bool2.booleanValue()) {
                                            if (dVar.f() && (z6 || (dVar.a() & 4) == 4)) {
                                                arrayList.addAll(kotlin.text.u.C0("-c:a aac -ar 44100 -b:a 128k -ac 2", new String[]{str2}, false, 0, 6, null));
                                            } else {
                                                arrayList.addAll(kotlin.text.u.C0("-c:a copy", new String[]{str2}, false, 0, 6, null));
                                            }
                                        }
                                    }
                                    if (dVar.G()) {
                                        arrayList.add("-an");
                                    } else if (dVar.c()) {
                                        arrayList.add("-vn");
                                    }
                                    if ((z6 || dVar.m().size() > 1) && dVar.d()) {
                                        arrayList.addAll(kotlin.text.u.C0("-avoid_negative_ts 1", new String[]{str2}, false, 0, 6, null));
                                    }
                                    arrayList.add("-y");
                                    arrayList.addAll(kotlin.text.u.C0("-movflags +faststart", new String[]{str2}, false, 0, 6, null));
                                    arrayList.add(dVar.y().getAbsolutePath());
                                } else {
                                    i10 = 1;
                                }
                                i11 = i10;
                                i12 = i26;
                                if (dVar.m().size() == i10) {
                                    if (z10) {
                                        arrayList3.add("-ss");
                                        C0378a c0378a8 = Companion;
                                        arrayList3.add(c0378a8.c(dVar.D()));
                                        arrayList3.add("-t");
                                        arrayList3.add(c0378a8.c(dVar.e()));
                                        arrayList3.add("-accurate_seek");
                                    }
                                    arrayList3.add("-i");
                                    arrayList3.add(dVar.l().inputPath);
                                } else {
                                    u0 u0Var20 = u0.INSTANCE;
                                    String str210 = String.format("-f lavfi -t %s -i anullsrc", Arrays.copyOf(new Object[]{"0.1"}, 1));
                                    t.i(str210, "format(...)");
                                    arrayList3.addAll(kotlin.text.u.C0(str210, new String[]{" "}, false, 0, 6, null));
                                    it = dVar.m().iterator();
                                    while (it.hasNext()) {
                                        next = it.next();
                                        if (next.isTrimSectionValid()) {
                                            arrayList3.add("-ss");
                                            C0378a c0378a9 = Companion;
                                            arrayList3.add(c0378a9.c(next.trimStartInMs));
                                            arrayList3.add("-t");
                                            arrayList3.add(c0378a9.c(next.trimmedDurationInMs()));
                                        }
                                        arrayList3.add("-i");
                                        arrayList3.add(next.inputPath);
                                        it = it;
                                        z10 = z10;
                                    }
                                }
                                z6 = z10;
                                if (i11 != 0) {
                                    while (it3.hasNext()) {
                                        next3 = it3.next();
                                        if (next3.isTrimSectionValid()) {
                                            arrayList3.add("-ss");
                                            C0378a c0378a10 = Companion;
                                            arrayList3.add(c0378a10.c(next3.trimStartInMs));
                                            arrayList3.add("-t");
                                            arrayList3.add(c0378a10.c(next3.trimmedDurationInMs()));
                                        }
                                        arrayList3.add("-i");
                                        arrayList3.add(next3.inputPath);
                                    }
                                }
                                str = "-map [%s]";
                                if (dVar.m().size() > 1) {
                                    sb2 = new StringBuilder();
                                    it2 = dVar.m().iterator();
                                    i17 = 0;
                                    i18 = 0;
                                    while (it2.hasNext()) {
                                        i17++;
                                        it2 = it2;
                                        next2 = it2.next();
                                        i11 = i11;
                                        bool7 = dVar.o().get(i17);
                                        t.i(bool7, "get(...)");
                                        if (bool7.booleanValue()) {
                                            i18++;
                                            u0 u0Var21 = u0.INSTANCE;
                                            String str211 = str7;
                                            String str212 = String.format("[%s:v]", Arrays.copyOf(new Object[]{String.valueOf(i17)}, 1));
                                            t.i(str212, "format(...)");
                                            sb2.append(str212);
                                            String str213 = str;
                                            if (!dVar.p()) {
                                                arrayList3 = arrayList3;
                                                StringBuilder sb8 = new StringBuilder();
                                                sb8.append(str19);
                                                C0378a c0378a11 = Companion;
                                                Integer num5 = dVar.x().get(i17);
                                                t.i(num5, "get(...)");
                                                int iIntValue5 = num5.intValue();
                                                Integer num6 = dVar.u().get(i17);
                                                t.i(num6, "get(...)");
                                                int iIntValue6 = num6.intValue();
                                                Boolean bool14 = dVar.I().get(i17);
                                                t.i(bool14, "get(...)");
                                                boolean zBooleanValue3 = bool14.booleanValue();
                                                Float f7 = dVar.t().get(i17);
                                                t.i(f7, "get(...)");
                                                sb8.append(c0378a11.h(iIntValue5, iIntValue6, zBooleanValue3, f7.floatValue()));
                                                sb2.append(sb8.toString());
                                                sb2.append(",");
                                                sb2.append("setsar=1");
                                            } else if (dVar.v(i17) == 1.0f) {
                                                sb2.append("scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2");
                                                sb2.append(",");
                                                sb2.append("setsar=1");
                                            } else {
                                                u uVarD2 = Companion.d(dVar, i17);
                                                String str214 = String.format(str9, Arrays.copyOf(new Object[]{(String) uVarD2.a(), (String) uVarD2.b()}, 2));
                                                t.i(str214, "format(...)");
                                                sb2.append(str214);
                                                sb2.append(",");
                                                sb2.append("setsar=1");
                                            }
                                            String str215 = String.format("[v%s]", Arrays.copyOf(new Object[]{String.valueOf(i17)}, 1));
                                            t.i(str215, "format(...)");
                                            sb2.append(str215);
                                            sb2.append(";");
                                            bool8 = dVar.n().get(i17);
                                            t.i(bool8, "get(...)");
                                            if (bool8.booleanValue()) {
                                                f(i17, next2, sb2, 0);
                                            }
                                            str7 = str211;
                                            str = str213;
                                            arrayList3 = arrayList3;
                                            str19 = str19;
                                            str9 = str9;
                                            str15 = str15;
                                        }
                                    }
                                    arrayList2 = arrayList3;
                                    str3 = str;
                                    str2 = str7;
                                    i19 = i11;
                                    str4 = str15;
                                    size3 = dVar.m().size();
                                    while (i20 < size3) {
                                        bool5 = dVar.o().get(i20);
                                        t.i(bool5, "get(...)");
                                        if (bool5.booleanValue()) {
                                            u0 u0Var110 = u0.INSTANCE;
                                            i24 = i20 + 1;
                                            String str216 = String.format("[v%s]", Arrays.copyOf(new Object[]{String.valueOf(i24)}, 1));
                                            t.i(str216, "format(...)");
                                            sb2.append(str216);
                                            bool6 = dVar.n().get(i20);
                                            t.i(bool6, "get(...)");
                                            if (bool6.booleanValue()) {
                                                String str217 = String.format("[a%s]", Arrays.copyOf(new Object[]{String.valueOf(i24)}, 1));
                                                t.i(str217, "format(...)");
                                                sb2.append(str217);
                                            } else {
                                                String str218 = String.format("[%s:a]", Arrays.copyOf(new Object[]{"0"}, 1));
                                                t.i(str218, "format(...)");
                                                sb2.append(str218);
                                            }
                                        }
                                    }
                                    if (i18 > 0) {
                                        u0 u0Var111 = u0.INSTANCE;
                                        String str219 = String.format("concat=n=%s:v=1:a=1", Arrays.copyOf(new Object[]{String.valueOf(i18)}, 1));
                                        t.i(str219, "format(...)");
                                        sb2.append(str219);
                                        sb2.append("[vout]");
                                        sb2.append("[aout]");
                                        if (dVar.b().size() == 0) {
                                            arrayList = arrayList2;
                                            str5 = str4;
                                            arrayList.add(str5);
                                            arrayList.add(sb2.toString());
                                        } else {
                                            arrayList = arrayList2;
                                            str5 = str4;
                                        }
                                    } else {
                                        arrayList = arrayList2;
                                        str5 = str4;
                                    }
                                    if (dVar.b().size() > 0) {
                                        sb3 = new StringBuilder();
                                        i21 = 0;
                                        i22 = 0;
                                        while (r5.hasNext()) {
                                            int i29 = i22 + 1;
                                            if (aVClipInfoPack3.hasAudioTrack) {
                                                i21++;
                                                f(i22 + dVar.m().size() + 1, aVClipInfoPack3, sb3, aVClipInfoPack3.startOffsetToMainTrackInMs);
                                            }
                                            i22 = i29;
                                        }
                                        if (i21 > 0) {
                                            if (i18 > 0) {
                                                i21++;
                                                sb3.append("[aout]");
                                            }
                                            size4 = dVar.b().size();
                                            while (i23 < size4) {
                                                if (dVar.b().get(i23).hasAudioTrack) {
                                                    u0 u0Var112 = u0.INSTANCE;
                                                    String str310 = String.format("[a%s]", Arrays.copyOf(new Object[]{String.valueOf(dVar.m().size() + i23 + 1)}, 1));
                                                    t.i(str310, "format(...)");
                                                    sb3.append(str310);
                                                }
                                            }
                                            u0 u0Var113 = u0.INSTANCE;
                                            String str311 = String.format("amix=inputs=%s:duration=%s,volume=%s[%s]", Arrays.copyOf(new Object[]{String.valueOf(i21), "longest", String.valueOf(i21), "amixout"}, 4));
                                            t.i(str311, "format(...)");
                                            sb3.append(str311);
                                        }
                                        if (i18 > 0) {
                                            if (i18 > 0) {
                                                arrayList.add(str5);
                                                if (i21 > 0) {
                                                    sb2.append(";");
                                                    sb2.append(sb3.toString());
                                                }
                                                arrayList.add(sb2.toString());
                                            }
                                        } else if (i18 > 0) {
                                            arrayList.add(str5);
                                            if (i21 > 0) {
                                                sb2.append(";");
                                                sb2.append(sb3.toString());
                                            }
                                            arrayList.add(sb2.toString());
                                        }
                                    } else {
                                        i21 = 0;
                                    }
                                    if (i18 > 0) {
                                        u0 u0Var114 = u0.INSTANCE;
                                        str6 = str3;
                                        String str312 = String.format(str6, Arrays.copyOf(new Object[]{"vout"}, 1));
                                        t.i(str312, "format(...)");
                                        arrayList.addAll(kotlin.text.u.C0(str312, new String[]{str2}, false, 0, 6, null));
                                        if (i21 == 0) {
                                            String str313 = String.format(str6, Arrays.copyOf(new Object[]{"aout"}, 1));
                                            t.i(str313, "format(...)");
                                            arrayList.addAll(kotlin.text.u.C0(str313, new String[]{str2}, false, 0, 6, null));
                                        }
                                    } else {
                                        str6 = str3;
                                    }
                                    if (i21 > 0) {
                                        u0 u0Var115 = u0.INSTANCE;
                                        String str314 = String.format(str6, Arrays.copyOf(new Object[]{"amixout"}, 1));
                                        t.i(str314, "format(...)");
                                        arrayList.addAll(kotlin.text.u.C0(str314, new String[]{str2}, false, 0, 6, null));
                                    }
                                    if (i18 > 0) {
                                        arrayList.addAll(kotlin.text.u.C0("-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v veryfast -profile:v main -level 3.1 -r:v 30000/1001 -force_fps -crf 22 -max_muxing_queue_size 1024", new String[]{str2}, false, 0, 6, null));
                                        arrayList.add("-maxrate");
                                        arrayList.add(dVar.r());
                                        arrayList.add("-bufsize");
                                        arrayList.add(dVar.F());
                                    }
                                    if (i19 != 0) {
                                        arrayList.addAll(kotlin.text.u.C0("-c:a aac -ar 44100 -b:a 128k -ac 2", new String[]{str2}, false, 0, 6, null));
                                    }
                                } else {
                                    arrayList = arrayList3;
                                    str2 = " ";
                                    if (i11 != 0) {
                                        arrayList.add("-filter_complex");
                                        sb = new StringBuilder();
                                        if (i12 > 0) {
                                            f(0, dVar.l(), sb, 0);
                                        }
                                        size = dVar.b().size();
                                        i13 = 0;
                                        while (i13 < size) {
                                            AVClipInfoPack aVClipInfoPack5 = dVar.b().get(i13);
                                            t.i(aVClipInfoPack5, "get(...)");
                                            aVClipInfoPack = aVClipInfoPack5;
                                            i13++;
                                            if (aVClipInfoPack.hasAudioTrack) {
                                                f(i13, aVClipInfoPack, sb, aVClipInfoPack.startOffsetToMainTrackInMs);
                                            }
                                        }
                                        bool3 = dVar.n().get(0);
                                        t.i(bool3, "get(...)");
                                        if (bool3.booleanValue()) {
                                            u0 u0Var116 = u0.INSTANCE;
                                            String str315 = String.format("[a%s]", Arrays.copyOf(new Object[]{"0"}, 1));
                                            t.i(str315, "format(...)");
                                            sb.append(str315);
                                        }
                                        size2 = dVar.b().size();
                                        i14 = 0;
                                        i15 = 0;
                                        while (i14 < size2) {
                                            i16 = i14 + 1;
                                            if (dVar.b().get(i14).hasAudioTrack) {
                                                i15++;
                                                u0 u0Var117 = u0.INSTANCE;
                                                String str316 = String.format("[a%s]", Arrays.copyOf(new Object[]{String.valueOf(i16)}, 1));
                                                t.i(str316, "format(...)");
                                                sb.append(str316);
                                            }
                                            i14 = i16;
                                        }
                                        Boolean bool15 = dVar.n().get(0);
                                        t.i(bool15, "get(...)");
                                        int i210 = i15 + (bool15.booleanValue() ? 1 : 0);
                                        u0 u0Var118 = u0.INSTANCE;
                                        String str317 = String.format("amix=inputs=%s:duration=%s,volume=%s[%s]", Arrays.copyOf(new Object[]{String.valueOf(i210), "first", String.valueOf(i210), "out"}, 4));
                                        t.i(str317, "format(...)");
                                        sb.append(str317);
                                        arrayList.add(sb.toString());
                                        bool4 = dVar.o().get(0);
                                        t.i(bool4, "get(...)");
                                        if (bool4.booleanValue()) {
                                            String str318 = String.format("-map %s:v", Arrays.copyOf(new Object[]{"0"}, 1));
                                            t.i(str318, "format(...)");
                                            arrayList.addAll(kotlin.text.u.C0(str318, new String[]{str2}, false, 0, 6, null));
                                        }
                                        String str319 = String.format("-map [%s]", Arrays.copyOf(new Object[]{"out"}, 1));
                                        t.i(str319, "format(...)");
                                        arrayList.addAll(kotlin.text.u.C0(str319, new String[]{str2}, false, 0, 6, null));
                                    }
                                    bool = dVar.o().get(0);
                                    t.i(bool, "get(...)");
                                    if (bool.booleanValue()) {
                                        if (dVar.h()) {
                                            arrayList.addAll(kotlin.text.u.C0("-c:v copy", new String[]{str2}, false, 0, 6, null));
                                        } else {
                                            arrayList.addAll(kotlin.text.u.C0("-c:v copy", new String[]{str2}, false, 0, 6, null));
                                        }
                                    }
                                    bool2 = dVar.n().get(0);
                                    t.i(bool2, "get(...)");
                                    if (bool2.booleanValue()) {
                                        if (dVar.f()) {
                                            arrayList.addAll(kotlin.text.u.C0("-c:a copy", new String[]{str2}, false, 0, 6, null));
                                        } else {
                                            arrayList.addAll(kotlin.text.u.C0("-c:a copy", new String[]{str2}, false, 0, 6, null));
                                        }
                                    }
                                }
                                if (dVar.G()) {
                                    arrayList.add("-an");
                                } else if (dVar.c()) {
                                    arrayList.add("-vn");
                                }
                                if (z6) {
                                    arrayList.addAll(kotlin.text.u.C0("-avoid_negative_ts 1", new String[]{str2}, false, 0, 6, null));
                                } else {
                                    arrayList.addAll(kotlin.text.u.C0("-avoid_negative_ts 1", new String[]{str2}, false, 0, 6, null));
                                }
                                arrayList.add("-y");
                                arrayList.addAll(kotlin.text.u.C0("-movflags +faststart", new String[]{str2}, false, 0, 6, null));
                                arrayList.add(dVar.y().getAbsolutePath());
                            } else {
                                i10 = 1;
                            }
                            i11 = 0;
                            i12 = i26;
                            if (dVar.m().size() == i10) {
                                if (z10) {
                                    arrayList3.add("-ss");
                                    C0378a c0378a12 = Companion;
                                    arrayList3.add(c0378a12.c(dVar.D()));
                                    arrayList3.add("-t");
                                    arrayList3.add(c0378a12.c(dVar.e()));
                                    arrayList3.add("-accurate_seek");
                                }
                                arrayList3.add("-i");
                                arrayList3.add(dVar.l().inputPath);
                            } else {
                                u0 u0Var22 = u0.INSTANCE;
                                String str2110 = String.format("-f lavfi -t %s -i anullsrc", Arrays.copyOf(new Object[]{"0.1"}, 1));
                                t.i(str2110, "format(...)");
                                arrayList3.addAll(kotlin.text.u.C0(str2110, new String[]{" "}, false, 0, 6, null));
                                it = dVar.m().iterator();
                                while (it.hasNext()) {
                                    next = it.next();
                                    if (next.isTrimSectionValid()) {
                                        arrayList3.add("-ss");
                                        C0378a c0378a13 = Companion;
                                        arrayList3.add(c0378a13.c(next.trimStartInMs));
                                        arrayList3.add("-t");
                                        arrayList3.add(c0378a13.c(next.trimmedDurationInMs()));
                                    }
                                    arrayList3.add("-i");
                                    arrayList3.add(next.inputPath);
                                    it = it;
                                    z10 = z10;
                                }
                            }
                            z6 = z10;
                            if (i11 != 0) {
                                while (it3.hasNext()) {
                                    next3 = it3.next();
                                    if (next3.isTrimSectionValid()) {
                                        arrayList3.add("-ss");
                                        C0378a c0378a14 = Companion;
                                        arrayList3.add(c0378a14.c(next3.trimStartInMs));
                                        arrayList3.add("-t");
                                        arrayList3.add(c0378a14.c(next3.trimmedDurationInMs()));
                                    }
                                    arrayList3.add("-i");
                                    arrayList3.add(next3.inputPath);
                                }
                            }
                            str = "-map [%s]";
                            if (dVar.m().size() > 1) {
                                sb2 = new StringBuilder();
                                it2 = dVar.m().iterator();
                                i17 = 0;
                                i18 = 0;
                                while (it2.hasNext()) {
                                    i17++;
                                    it2 = it2;
                                    next2 = it2.next();
                                    i11 = i11;
                                    bool7 = dVar.o().get(i17);
                                    t.i(bool7, "get(...)");
                                    if (bool7.booleanValue()) {
                                        i18++;
                                        u0 u0Var23 = u0.INSTANCE;
                                        String str2111 = str7;
                                        String str2112 = String.format("[%s:v]", Arrays.copyOf(new Object[]{String.valueOf(i17)}, 1));
                                        t.i(str2112, "format(...)");
                                        sb2.append(str2112);
                                        String str2113 = str;
                                        if (!dVar.p()) {
                                            arrayList3 = arrayList3;
                                            StringBuilder sb9 = new StringBuilder();
                                            sb9.append(str19);
                                            C0378a c0378a15 = Companion;
                                            Integer num7 = dVar.x().get(i17);
                                            t.i(num7, "get(...)");
                                            int iIntValue7 = num7.intValue();
                                            Integer num8 = dVar.u().get(i17);
                                            t.i(num8, "get(...)");
                                            int iIntValue8 = num8.intValue();
                                            Boolean bool16 = dVar.I().get(i17);
                                            t.i(bool16, "get(...)");
                                            boolean zBooleanValue4 = bool16.booleanValue();
                                            Float f10 = dVar.t().get(i17);
                                            t.i(f10, "get(...)");
                                            sb9.append(c0378a15.h(iIntValue7, iIntValue8, zBooleanValue4, f10.floatValue()));
                                            sb2.append(sb9.toString());
                                            sb2.append(",");
                                            sb2.append("setsar=1");
                                        } else if (dVar.v(i17) == 1.0f) {
                                            sb2.append("scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2");
                                            sb2.append(",");
                                            sb2.append("setsar=1");
                                        } else {
                                            u uVarD3 = Companion.d(dVar, i17);
                                            String str2114 = String.format(str9, Arrays.copyOf(new Object[]{(String) uVarD3.a(), (String) uVarD3.b()}, 2));
                                            t.i(str2114, "format(...)");
                                            sb2.append(str2114);
                                            sb2.append(",");
                                            sb2.append("setsar=1");
                                        }
                                        String str2115 = String.format("[v%s]", Arrays.copyOf(new Object[]{String.valueOf(i17)}, 1));
                                        t.i(str2115, "format(...)");
                                        sb2.append(str2115);
                                        sb2.append(";");
                                        bool8 = dVar.n().get(i17);
                                        t.i(bool8, "get(...)");
                                        if (bool8.booleanValue()) {
                                            f(i17, next2, sb2, 0);
                                        }
                                        str7 = str2111;
                                        str = str2113;
                                        arrayList3 = arrayList3;
                                        str19 = str19;
                                        str9 = str9;
                                        str15 = str15;
                                    }
                                }
                                arrayList2 = arrayList3;
                                str3 = str;
                                str2 = str7;
                                i19 = i11;
                                str4 = str15;
                                size3 = dVar.m().size();
                                while (i20 < size3) {
                                    bool5 = dVar.o().get(i20);
                                    t.i(bool5, "get(...)");
                                    if (bool5.booleanValue()) {
                                        u0 u0Var119 = u0.INSTANCE;
                                        i24 = i20 + 1;
                                        String str2116 = String.format("[v%s]", Arrays.copyOf(new Object[]{String.valueOf(i24)}, 1));
                                        t.i(str2116, "format(...)");
                                        sb2.append(str2116);
                                        bool6 = dVar.n().get(i20);
                                        t.i(bool6, "get(...)");
                                        if (bool6.booleanValue()) {
                                            String str2117 = String.format("[a%s]", Arrays.copyOf(new Object[]{String.valueOf(i24)}, 1));
                                            t.i(str2117, "format(...)");
                                            sb2.append(str2117);
                                        } else {
                                            String str2118 = String.format("[%s:a]", Arrays.copyOf(new Object[]{"0"}, 1));
                                            t.i(str2118, "format(...)");
                                            sb2.append(str2118);
                                        }
                                    }
                                }
                                if (i18 > 0) {
                                    u0 u0Var1110 = u0.INSTANCE;
                                    String str2119 = String.format("concat=n=%s:v=1:a=1", Arrays.copyOf(new Object[]{String.valueOf(i18)}, 1));
                                    t.i(str2119, "format(...)");
                                    sb2.append(str2119);
                                    sb2.append("[vout]");
                                    sb2.append("[aout]");
                                    if (dVar.b().size() == 0) {
                                        arrayList = arrayList2;
                                        str5 = str4;
                                        arrayList.add(str5);
                                        arrayList.add(sb2.toString());
                                    } else {
                                        arrayList = arrayList2;
                                        str5 = str4;
                                    }
                                } else {
                                    arrayList = arrayList2;
                                    str5 = str4;
                                }
                                if (dVar.b().size() > 0) {
                                    sb3 = new StringBuilder();
                                    i21 = 0;
                                    i22 = 0;
                                    while (r5.hasNext()) {
                                        int i211 = i22 + 1;
                                        if (aVClipInfoPack3.hasAudioTrack) {
                                            i21++;
                                            f(i22 + dVar.m().size() + 1, aVClipInfoPack3, sb3, aVClipInfoPack3.startOffsetToMainTrackInMs);
                                        }
                                        i22 = i211;
                                    }
                                    if (i21 > 0) {
                                        if (i18 > 0) {
                                            i21++;
                                            sb3.append("[aout]");
                                        }
                                        size4 = dVar.b().size();
                                        while (i23 < size4) {
                                            if (dVar.b().get(i23).hasAudioTrack) {
                                                u0 u0Var1111 = u0.INSTANCE;
                                                String str3110 = String.format("[a%s]", Arrays.copyOf(new Object[]{String.valueOf(dVar.m().size() + i23 + 1)}, 1));
                                                t.i(str3110, "format(...)");
                                                sb3.append(str3110);
                                            }
                                        }
                                        u0 u0Var1112 = u0.INSTANCE;
                                        String str3111 = String.format("amix=inputs=%s:duration=%s,volume=%s[%s]", Arrays.copyOf(new Object[]{String.valueOf(i21), "longest", String.valueOf(i21), "amixout"}, 4));
                                        t.i(str3111, "format(...)");
                                        sb3.append(str3111);
                                    }
                                    if (i18 > 0) {
                                        if (i18 > 0) {
                                            arrayList.add(str5);
                                            if (i21 > 0) {
                                                sb2.append(";");
                                                sb2.append(sb3.toString());
                                            }
                                            arrayList.add(sb2.toString());
                                        }
                                    } else if (i18 > 0) {
                                        arrayList.add(str5);
                                        if (i21 > 0) {
                                            sb2.append(";");
                                            sb2.append(sb3.toString());
                                        }
                                        arrayList.add(sb2.toString());
                                    }
                                } else {
                                    i21 = 0;
                                }
                                if (i18 > 0) {
                                    u0 u0Var1113 = u0.INSTANCE;
                                    str6 = str3;
                                    String str3112 = String.format(str6, Arrays.copyOf(new Object[]{"vout"}, 1));
                                    t.i(str3112, "format(...)");
                                    arrayList.addAll(kotlin.text.u.C0(str3112, new String[]{str2}, false, 0, 6, null));
                                    if (i21 == 0) {
                                        String str3113 = String.format(str6, Arrays.copyOf(new Object[]{"aout"}, 1));
                                        t.i(str3113, "format(...)");
                                        arrayList.addAll(kotlin.text.u.C0(str3113, new String[]{str2}, false, 0, 6, null));
                                    }
                                } else {
                                    str6 = str3;
                                }
                                if (i21 > 0) {
                                    u0 u0Var1114 = u0.INSTANCE;
                                    String str3114 = String.format(str6, Arrays.copyOf(new Object[]{"amixout"}, 1));
                                    t.i(str3114, "format(...)");
                                    arrayList.addAll(kotlin.text.u.C0(str3114, new String[]{str2}, false, 0, 6, null));
                                }
                                if (i18 > 0) {
                                    arrayList.addAll(kotlin.text.u.C0("-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v veryfast -profile:v main -level 3.1 -r:v 30000/1001 -force_fps -crf 22 -max_muxing_queue_size 1024", new String[]{str2}, false, 0, 6, null));
                                    arrayList.add("-maxrate");
                                    arrayList.add(dVar.r());
                                    arrayList.add("-bufsize");
                                    arrayList.add(dVar.F());
                                }
                                if (i19 != 0) {
                                    arrayList.addAll(kotlin.text.u.C0("-c:a aac -ar 44100 -b:a 128k -ac 2", new String[]{str2}, false, 0, 6, null));
                                }
                            } else {
                                arrayList = arrayList3;
                                str2 = " ";
                                if (i11 != 0) {
                                    arrayList.add("-filter_complex");
                                    sb = new StringBuilder();
                                    if (i12 > 0) {
                                        f(0, dVar.l(), sb, 0);
                                    }
                                    size = dVar.b().size();
                                    i13 = 0;
                                    while (i13 < size) {
                                        AVClipInfoPack aVClipInfoPack6 = dVar.b().get(i13);
                                        t.i(aVClipInfoPack6, "get(...)");
                                        aVClipInfoPack = aVClipInfoPack6;
                                        i13++;
                                        if (aVClipInfoPack.hasAudioTrack) {
                                            f(i13, aVClipInfoPack, sb, aVClipInfoPack.startOffsetToMainTrackInMs);
                                        }
                                    }
                                    bool3 = dVar.n().get(0);
                                    t.i(bool3, "get(...)");
                                    if (bool3.booleanValue()) {
                                        u0 u0Var1115 = u0.INSTANCE;
                                        String str3115 = String.format("[a%s]", Arrays.copyOf(new Object[]{"0"}, 1));
                                        t.i(str3115, "format(...)");
                                        sb.append(str3115);
                                    }
                                    size2 = dVar.b().size();
                                    i14 = 0;
                                    i15 = 0;
                                    while (i14 < size2) {
                                        i16 = i14 + 1;
                                        if (dVar.b().get(i14).hasAudioTrack) {
                                            i15++;
                                            u0 u0Var1116 = u0.INSTANCE;
                                            String str3116 = String.format("[a%s]", Arrays.copyOf(new Object[]{String.valueOf(i16)}, 1));
                                            t.i(str3116, "format(...)");
                                            sb.append(str3116);
                                        }
                                        i14 = i16;
                                    }
                                    Boolean bool17 = dVar.n().get(0);
                                    t.i(bool17, "get(...)");
                                    int i212 = i15 + (bool17.booleanValue() ? 1 : 0);
                                    u0 u0Var1117 = u0.INSTANCE;
                                    String str3117 = String.format("amix=inputs=%s:duration=%s,volume=%s[%s]", Arrays.copyOf(new Object[]{String.valueOf(i212), "first", String.valueOf(i212), "out"}, 4));
                                    t.i(str3117, "format(...)");
                                    sb.append(str3117);
                                    arrayList.add(sb.toString());
                                    bool4 = dVar.o().get(0);
                                    t.i(bool4, "get(...)");
                                    if (bool4.booleanValue()) {
                                        String str3118 = String.format("-map %s:v", Arrays.copyOf(new Object[]{"0"}, 1));
                                        t.i(str3118, "format(...)");
                                        arrayList.addAll(kotlin.text.u.C0(str3118, new String[]{str2}, false, 0, 6, null));
                                    }
                                    String str3119 = String.format("-map [%s]", Arrays.copyOf(new Object[]{"out"}, 1));
                                    t.i(str3119, "format(...)");
                                    arrayList.addAll(kotlin.text.u.C0(str3119, new String[]{str2}, false, 0, 6, null));
                                }
                                bool = dVar.o().get(0);
                                t.i(bool, "get(...)");
                                if (bool.booleanValue()) {
                                    if (dVar.h()) {
                                        arrayList.addAll(kotlin.text.u.C0("-c:v copy", new String[]{str2}, false, 0, 6, null));
                                    } else {
                                        arrayList.addAll(kotlin.text.u.C0("-c:v copy", new String[]{str2}, false, 0, 6, null));
                                    }
                                }
                                bool2 = dVar.n().get(0);
                                t.i(bool2, "get(...)");
                                if (bool2.booleanValue()) {
                                    if (dVar.f()) {
                                        arrayList.addAll(kotlin.text.u.C0("-c:a copy", new String[]{str2}, false, 0, 6, null));
                                    } else {
                                        arrayList.addAll(kotlin.text.u.C0("-c:a copy", new String[]{str2}, false, 0, 6, null));
                                    }
                                }
                            }
                            if (dVar.G()) {
                                arrayList.add("-an");
                            } else if (dVar.c()) {
                                arrayList.add("-vn");
                            }
                            if (z6) {
                                arrayList.addAll(kotlin.text.u.C0("-avoid_negative_ts 1", new String[]{str2}, false, 0, 6, null));
                            } else {
                                arrayList.addAll(kotlin.text.u.C0("-avoid_negative_ts 1", new String[]{str2}, false, 0, 6, null));
                            }
                            arrayList.add("-y");
                            arrayList.addAll(kotlin.text.u.C0("-movflags +faststart", new String[]{str2}, false, 0, 6, null));
                            arrayList.add(dVar.y().getAbsolutePath());
                        }
                        sb4 = new StringBuilder();
                        it4 = arrayList.iterator();
                        while (it4.hasNext()) {
                            sb4.append((String) it4.next());
                            sb4.append(str2);
                        }
                        Log.i("ffmpeg cmdline", sb4.toString());
                        return arrayList;
                    }
                    arrayList3.add("-i");
                    arrayList3.add(dVar.l().inputPath);
                    arrayList3.add("-vf");
                    StringBuilder sb10 = new StringBuilder();
                    sb10.append("scale=");
                    Boolean bool18 = dVar.I().get(0);
                    t.i(bool18, "get(...)");
                    sb10.append(bool18.booleanValue() ? "720:-2" : "-2:720");
                    arrayList3.addAll(kotlin.text.u.C0(sb10.toString(), new String[]{" "}, false, 0, 6, null));
                    arrayList3.addAll(kotlin.text.u.C0("-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v superfast -r:v 30000/1001 -force_fps -crf 24", new String[]{" "}, false, 0, 6, null));
                    arrayList3.add("-y");
                    arrayList3.add(dVar.y().getAbsolutePath());
                }
            }
        }
        arrayList = arrayList3;
        str2 = " ";
        sb4 = new StringBuilder();
        it4 = arrayList.iterator();
        while (it4.hasNext()) {
            sb4.append((String) it4.next());
            sb4.append(str2);
        }
        Log.i("ffmpeg cmdline", sb4.toString());
        return arrayList;
    }

    private a(File file) {
        this.localFileDir = file;
        this.runningTasks = new ConcurrentHashMap<>();
    }

    private final void f(int i10, AVClipInfoPack aVClipInfoPack, StringBuilder sb, int i11) {
        u0 u0Var = u0.INSTANCE;
        String str = String.format("[%s:a]aformat=sample_fmts=fltp:sample_rates=44100:channel_layouts=stereo,volume=%s,adelay=%s|%s", Arrays.copyOf(new Object[]{String.valueOf(i10), String.valueOf(aVClipInfoPack.trackVolume), String.valueOf(i11), String.valueOf(i11)}, 4));
        t.i(str, "format(...)");
        sb.append(str);
        if (aVClipInfoPack.fadeIn) {
            sb.append(",");
            String str2 = String.format("afade=t=in:ss=%s:d=%s", Arrays.copyOf(new Object[]{String.valueOf(aVClipInfoPack.trimStartInMs / 1000), String.valueOf(Math.min(aVClipInfoPack.trimmedDurationInMs(), 4000) / 1000)}, 2));
            t.i(str2, "format(...)");
            sb.append(str2);
        }
        if (aVClipInfoPack.fadeOut && aVClipInfoPack.trimmedDurationInMs() > 4000) {
            sb.append(",");
            int iMin = Math.min(aVClipInfoPack.trimmedDurationInMs() - 4000, 4000);
            String str3 = String.format("afade=t=out:st=%s:d=%s", Arrays.copyOf(new Object[]{String.valueOf((aVClipInfoPack.trimEndInMs - iMin) / 1000), String.valueOf(iMin / 1000)}, 2));
            t.i(str3, "format(...)");
            sb.append(str3);
        }
        String str4 = String.format("[a%s]", Arrays.copyOf(new Object[]{String.valueOf(i10)}, 1));
        t.i(str4, "format(...)");
        sb.append(str4);
        sb.append(";");
    }

    @Override // g7.a
    public void abort(@NotNull d config) {
        t.j(config, "config");
        b bVarRemove = this.runningTasks.remove(config);
        if (bVarRemove != null) {
            bVarRemove.c();
        }
    }

    @Override // g7.a
    public void abortAll(boolean z6) {
        Set<Map.Entry<d, b>> setEntrySet = this.runningTasks.entrySet();
        t.i(setEntrySet, "<get-entries>(...)");
        for (Map.Entry entry : d0.Y(setEntrySet)) {
            if (z6 || !((d) entry.getKey()).z()) {
                ((b) entry.getValue()).c();
            }
        }
    }

    @Override // g7.a
    public void execute(@NotNull d config, @Nullable ExecutorService executorService, @Nullable g7.c cVar) {
        t.j(config, "config");
        b bVar = new b(this, config, new c(cVar, this, config));
        if (executorService == null) {
            bVar.execute(new Void[0]);
        } else {
            bVar.executeOnExecutor(executorService, new Void[0]);
        }
        this.runningTasks.put(config, bVar);
    }

    @Override // g7.a
    @NotNull
    public StreamInfo fetchStreamingInfo(@NotNull String input) {
        t.j(input, "input");
        StreamInfo streamInfoFetchStreamInfo = FFmpegJni.fetchStreamInfo(input);
        if (streamInfoFetchStreamInfo == null) {
            streamInfoFetchStreamInfo = new StreamInfo();
        }
        streamInfoFetchStreamInfo.hasError = streamInfoFetchStreamInfo.durationInMs <= 0;
        return streamInfoFetchStreamInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(d dVar, ArrayList<StreamInfo> arrayList) {
        boolean z6;
        boolean z10;
        int i10;
        int i11;
        boolean z11;
        boolean z12;
        Iterator<StreamInfo> it = arrayList.iterator();
        while (true) {
            z6 = false;
            if (!it.hasNext()) {
                break;
            }
            StreamInfo next = it.next();
            if (((next.rotate / 90) & 1) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                i10 = next.height;
            } else {
                i10 = next.width;
            }
            if (z10) {
                i11 = next.width;
            } else {
                i11 = next.height;
            }
            ArrayList<Boolean> arrayListI = dVar.I();
            if (!z10 ? next.height > next.width : next.width > next.height) {
                z11 = true;
            } else {
                z11 = false;
            }
            arrayListI.add(Boolean.valueOf(z11));
            ArrayList<Boolean> arrayListN = dVar.n();
            if (next.aCodecType != null && !dVar.G()) {
                z12 = true;
            } else {
                z12 = false;
            }
            arrayListN.add(Boolean.valueOf(z12));
            ArrayList<Boolean> arrayListO = dVar.o();
            if (next.vCodecType != null && !dVar.c()) {
                z6 = true;
            }
            arrayListO.add(Boolean.valueOf(z6));
            dVar.x().add(Integer.valueOf(i10));
            dVar.u().add(Integer.valueOf(i11));
            ArrayList<Float> arrayListT = dVar.t();
            float f = next.dar;
            if (f <= 0.0f) {
                f = i10 / i11;
            } else if (z10) {
                f = 1.0f / f;
            }
            arrayListT.add(Float.valueOf(f));
        }
        if (dVar.m().size() > 1) {
            dVar.L(true);
            dVar.M(true);
        } else {
            if (dVar.a() != 1) {
                return;
            }
            dVar.L(true);
            dVar.M(true);
            if (arrayList.get(0).durationInMs > 15000 || dVar.e() != arrayList.get(0).durationInMs) {
                z6 = true;
            }
            dVar.N(z6);
        }
    }

    @Override // g7.a
    public void abortAnimatedStickerConvertTask(@NotNull StickerInfoPack stickerInfoPack) {
        g7.a.C0380a.a(this, stickerInfoPack);
    }

    @Override // g7.a
    public void abortAnimatedStickerConvertTasks() {
        g7.a.C0380a.b(this);
    }

    @Override // g7.a
    @Nullable
    public File getStickerCopiedSrcFile(@NotNull StickerInfoPack stickerInfoPack) {
        return g7.a.C0380a.c(this, stickerInfoPack);
    }

    @Override // g7.a
    @Nullable
    public File getTargetStickerInstallFile(@NotNull StickerInfoPack stickerInfoPack) {
        return g7.a.C0380a.d(this, stickerInfoPack);
    }

    @Override // g7.a
    public boolean hasStickerTemplatedInstalled(@Nullable StickerInfoPack stickerInfoPack) {
        return g7.a.C0380a.e(this, stickerInfoPack);
    }

    @Override // g7.a
    public void installSticker(@NotNull Context context, @NotNull StickerInfoPack stickerInfoPack, boolean z6, @Nullable ExecutorService executorService, @Nullable g7.b bVar) {
        g7.a.C0380a.f(this, context, stickerInfoPack, z6, executorService, bVar);
    }

    @Override // g7.a
    public void onLocalStickerCacheCleared() {
        g7.a.C0380a.g(this);
    }
}
