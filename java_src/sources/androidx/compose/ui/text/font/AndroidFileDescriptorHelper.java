package androidx.compose.ui.text.font;

import android.os.ParcelFileDescriptor;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@RequiresApi
final class AndroidFileDescriptorHelper {

    @NotNull
    public static final AndroidFileDescriptorHelper INSTANCE = new AndroidFileDescriptorHelper();

    @DoNotInline
    @RequiresApi
    @NotNull
    public final android.graphics.Typeface a(@NotNull ParcelFileDescriptor fileDescriptor) {
        t.j(fileDescriptor, "fileDescriptor");
        c.a();
        android.graphics.Typeface typefaceBuild = b.a(fileDescriptor.getFileDescriptor()).build();
        t.i(typefaceBuild, "Builder(fileDescriptor.fileDescriptor).build()");
        return typefaceBuild;
    }

    private AndroidFileDescriptorHelper() {
    }
}
