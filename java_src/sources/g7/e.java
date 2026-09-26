package g7;

import android.content.Context;
import com.narvii.app.NVContext;
import com.narvii.video.services.IEditorPackFactory;
import java.io.File;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    public static final String TAG = "NVEditor_Log";

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final g7.a a(@NotNull NVContext nvContext) {
            t.j(nvContext, "nvContext");
            return ((IEditorPackFactory) nvContext.getService("editorPackFactory")).getIEditorDelegate(nvContext);
        }

        @NotNull
        public final g7.a b(@NotNull Context context) {
            t.j(context, "context");
            ffmpeg.executable.a.C0378a c0378a = ffmpeg.executable.a.Companion;
            File filesDir = context.getFilesDir();
            t.i(filesDir, "getFilesDir(...)");
            return c0378a.g(filesDir);
        }
    }
}
