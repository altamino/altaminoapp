package androidx.core.graphics.drawable;

import android.graphics.Outline;
import android.graphics.Rect;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi
class RoundedBitmapDrawable21 extends RoundedBitmapDrawable {
    @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
    void b(int i10, int i11, int i12, Rect rect, Rect rect2) {
        Gravity.apply(i10, i11, i12, rect, rect2, 0);
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(@NonNull Outline outline) {
        e();
        outline.setRoundRect(this.mDstRect, a());
    }
}
