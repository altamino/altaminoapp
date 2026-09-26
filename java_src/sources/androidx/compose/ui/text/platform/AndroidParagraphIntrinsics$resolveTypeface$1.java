package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import e8.r;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class AndroidParagraphIntrinsics$resolveTypeface$1 extends v implements r<FontFamily, FontWeight, FontStyle, FontSynthesis, Typeface> {
    final /* synthetic */ AndroidParagraphIntrinsics this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidParagraphIntrinsics$resolveTypeface$1(AndroidParagraphIntrinsics androidParagraphIntrinsics) {
        super(4);
        this.this$0 = androidParagraphIntrinsics;
    }

    @NotNull
    public final Typeface a(@Nullable FontFamily fontFamily, @NotNull FontWeight fontWeight, int i10, int i11) {
        t.j(fontWeight, "fontWeight");
        TypefaceDirtyTracker typefaceDirtyTracker = new TypefaceDirtyTracker(this.this$0.f().a(fontFamily, fontWeight, i10, i11));
        this.this$0.resolvedTypefaces.add(typefaceDirtyTracker);
        return typefaceDirtyTracker.a();
    }

    @Override // e8.r
    public /* bridge */ /* synthetic */ Typeface invoke(FontFamily fontFamily, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis) {
        return a(fontFamily, fontWeight, fontStyle.i(), fontSynthesis.m());
    }
}
