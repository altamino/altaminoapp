package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Rect;

/* JADX INFO: loaded from: classes8.dex */
public final /* synthetic */ class a {
    public static /* synthetic */ Rect a(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, boolean z6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: localBoundingBoxOf");
        }
        if ((i10 & 2) != 0) {
            z6 = true;
        }
        return layoutCoordinates.r(layoutCoordinates2, z6);
    }
}
