package androidx.compose.ui.text.font;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
final class AndroidFileDescriptorFont extends AndroidPreloadedFont {

    @Nullable
    private final String cacheKey;

    @NotNull
    private final ParcelFileDescriptor fileDescriptor;
    private final int style;

    @NotNull
    private final android.graphics.Typeface typefaceInternal;

    @NotNull
    private final FontWeight weight;

    public /* synthetic */ AndroidFileDescriptorFont(ParcelFileDescriptor parcelFileDescriptor, FontWeight fontWeight, int i10, k kVar) {
        this(parcelFileDescriptor, fontWeight, i10);
    }

    @Override // androidx.compose.ui.text.font.Font
    @NotNull
    public FontWeight b() {
        return this.weight;
    }

    @Override // androidx.compose.ui.text.font.Font
    public int c() {
        return this.style;
    }

    @Override // androidx.compose.ui.text.font.AndroidPreloadedFont
    @Nullable
    public String e() {
        return this.cacheKey;
    }

    @Override // androidx.compose.ui.text.font.AndroidPreloadedFont
    @NotNull
    public android.graphics.Typeface f() {
        return this.typefaceInternal;
    }

    public /* synthetic */ AndroidFileDescriptorFont(ParcelFileDescriptor parcelFileDescriptor, FontWeight fontWeight, int i10, int i11, k kVar) {
        this(parcelFileDescriptor, (i11 & 2) != 0 ? FontWeight.Companion.d() : fontWeight, (i11 & 4) != 0 ? FontStyle.Companion.b() : i10, null);
    }

    @NotNull
    public String toString() {
        return "Font(fileDescriptor=" + this.fileDescriptor + ", weight=" + b() + ", style=" + ((Object) FontStyle.h(c())) + ')';
    }

    private AndroidFileDescriptorFont(ParcelFileDescriptor parcelFileDescriptor, FontWeight fontWeight, int i10) {
        this.fileDescriptor = parcelFileDescriptor;
        this.weight = fontWeight;
        this.style = i10;
        if (Build.VERSION.SDK_INT >= 26) {
            this.typefaceInternal = AndroidFileDescriptorHelper.INSTANCE.a(parcelFileDescriptor);
            return;
        }
        throw new IllegalArgumentException("Cannot create font from file descriptor for SDK < 26");
    }
}
