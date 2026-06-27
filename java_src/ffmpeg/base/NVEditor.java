package ffmpeg.base;

import android.content.Context;
import com.narvii.app.NVContext;
import com.narvii.video.services.IEditorPackFactory;
import ffmpeg.executable.FFMpegEditorDelegate;
import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NVEditor.kt */
/* loaded from: classes4.dex */
public final class NVEditor {
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "NVEditor_Log";

    /* compiled from: NVEditor.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final IEditor getNVEditor(NVContext nvContext) {
            Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
            return ((IEditorPackFactory) nvContext.getService("editorPackFactory")).getIEditorDelegate(nvContext);
        }

        public final IEditor getSoftwareNVEditor(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            FFMpegEditorDelegate.Companion companion = FFMpegEditorDelegate.Companion;
            File filesDir = context.getFilesDir();
            Intrinsics.checkExpressionValueIsNotNull(filesDir, "context.filesDir");
            return companion.getInstance(filesDir);
        }
    }
}
