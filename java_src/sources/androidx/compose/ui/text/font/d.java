package androidx.compose.ui.text.font;

import androidx.compose.runtime.State;

/* JADX INFO: loaded from: classes10.dex */
public final /* synthetic */ class d {
    public static /* synthetic */ State a(FontFamily.Resolver resolver, FontFamily fontFamily, FontWeight fontWeight, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resolve-DPcqOEQ");
        }
        if ((i12 & 1) != 0) {
            fontFamily = null;
        }
        if ((i12 & 2) != 0) {
            fontWeight = FontWeight.Companion.d();
        }
        if ((i12 & 4) != 0) {
            i10 = FontStyle.Companion.b();
        }
        if ((i12 & 8) != 0) {
            i11 = FontSynthesis.Companion.a();
        }
        return resolver.a(fontFamily, fontWeight, i10, i11);
    }
}
