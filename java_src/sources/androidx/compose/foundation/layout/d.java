package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;

/* JADX INFO: loaded from: classes9.dex */
public final /* synthetic */ class d {
    public static /* synthetic */ Modifier a(RowScope rowScope, Modifier modifier, float f, boolean z6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: weight");
        }
        if ((i10 & 2) != 0) {
            z6 = true;
        }
        return rowScope.a(modifier, f, z6);
    }
}
