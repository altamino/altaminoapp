package androidx.compose.ui.platform;

import androidx.compose.ui.graphics.RenderEffect;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class DeviceRenderNodeData {
    private float alpha;
    private int ambientShadowColor;
    private final int bottom;
    private float cameraDistance;
    private boolean clipToBounds;
    private boolean clipToOutline;
    private float elevation;
    private final int height;
    private final int left;
    private float pivotX;
    private float pivotY;

    @Nullable
    private RenderEffect renderEffect;
    private final int right;
    private float rotationX;
    private float rotationY;
    private float rotationZ;
    private float scaleX;
    private float scaleY;
    private int spotShadowColor;
    private final int top;
    private float translationX;
    private float translationY;
    private final long uniqueId;
    private final int width;

    public DeviceRenderNodeData(long j6, int i10, int i11, int i12, int i13, int i14, int i15, float f, float f6, float f7, float f10, float f11, int i16, int i17, float f12, float f13, float f14, float f15, float f16, float f17, boolean z6, boolean z10, float f18, @Nullable RenderEffect renderEffect) {
        this.uniqueId = j6;
        this.left = i10;
        this.top = i11;
        this.right = i12;
        this.bottom = i13;
        this.width = i14;
        this.height = i15;
        this.scaleX = f;
        this.scaleY = f6;
        this.translationX = f7;
        this.translationY = f10;
        this.elevation = f11;
        this.ambientShadowColor = i16;
        this.spotShadowColor = i17;
        this.rotationZ = f12;
        this.rotationX = f13;
        this.rotationY = f14;
        this.cameraDistance = f15;
        this.pivotX = f16;
        this.pivotY = f17;
        this.clipToOutline = z6;
        this.clipToBounds = z10;
        this.alpha = f18;
        this.renderEffect = renderEffect;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceRenderNodeData)) {
            return false;
        }
        DeviceRenderNodeData deviceRenderNodeData = (DeviceRenderNodeData) obj;
        return this.uniqueId == deviceRenderNodeData.uniqueId && this.left == deviceRenderNodeData.left && this.top == deviceRenderNodeData.top && this.right == deviceRenderNodeData.right && this.bottom == deviceRenderNodeData.bottom && this.width == deviceRenderNodeData.width && this.height == deviceRenderNodeData.height && kotlin.jvm.internal.t.e(Float.valueOf(this.scaleX), Float.valueOf(deviceRenderNodeData.scaleX)) && kotlin.jvm.internal.t.e(Float.valueOf(this.scaleY), Float.valueOf(deviceRenderNodeData.scaleY)) && kotlin.jvm.internal.t.e(Float.valueOf(this.translationX), Float.valueOf(deviceRenderNodeData.translationX)) && kotlin.jvm.internal.t.e(Float.valueOf(this.translationY), Float.valueOf(deviceRenderNodeData.translationY)) && kotlin.jvm.internal.t.e(Float.valueOf(this.elevation), Float.valueOf(deviceRenderNodeData.elevation)) && this.ambientShadowColor == deviceRenderNodeData.ambientShadowColor && this.spotShadowColor == deviceRenderNodeData.spotShadowColor && kotlin.jvm.internal.t.e(Float.valueOf(this.rotationZ), Float.valueOf(deviceRenderNodeData.rotationZ)) && kotlin.jvm.internal.t.e(Float.valueOf(this.rotationX), Float.valueOf(deviceRenderNodeData.rotationX)) && kotlin.jvm.internal.t.e(Float.valueOf(this.rotationY), Float.valueOf(deviceRenderNodeData.rotationY)) && kotlin.jvm.internal.t.e(Float.valueOf(this.cameraDistance), Float.valueOf(deviceRenderNodeData.cameraDistance)) && kotlin.jvm.internal.t.e(Float.valueOf(this.pivotX), Float.valueOf(deviceRenderNodeData.pivotX)) && kotlin.jvm.internal.t.e(Float.valueOf(this.pivotY), Float.valueOf(deviceRenderNodeData.pivotY)) && this.clipToOutline == deviceRenderNodeData.clipToOutline && this.clipToBounds == deviceRenderNodeData.clipToBounds && kotlin.jvm.internal.t.e(Float.valueOf(this.alpha), Float.valueOf(deviceRenderNodeData.alpha)) && kotlin.jvm.internal.t.e(this.renderEffect, deviceRenderNodeData.renderEffect);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41, types: [int] */
    /* JADX WARN: Type inference failed for: r0v43, types: [int] */
    /* JADX WARN: Type inference failed for: r1v31, types: [int] */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iA = ((((((((((((((((((((((((((((((((((((((i.a.a(this.uniqueId) * 31) + this.left) * 31) + this.top) * 31) + this.right) * 31) + this.bottom) * 31) + this.width) * 31) + this.height) * 31) + Float.floatToIntBits(this.scaleX)) * 31) + Float.floatToIntBits(this.scaleY)) * 31) + Float.floatToIntBits(this.translationX)) * 31) + Float.floatToIntBits(this.translationY)) * 31) + Float.floatToIntBits(this.elevation)) * 31) + this.ambientShadowColor) * 31) + this.spotShadowColor) * 31) + Float.floatToIntBits(this.rotationZ)) * 31) + Float.floatToIntBits(this.rotationX)) * 31) + Float.floatToIntBits(this.rotationY)) * 31) + Float.floatToIntBits(this.cameraDistance)) * 31) + Float.floatToIntBits(this.pivotX)) * 31) + Float.floatToIntBits(this.pivotY)) * 31;
        boolean z6 = this.clipToOutline;
        ?? r1 = z6;
        if (z6) {
            r1 = 1;
        }
        int i10 = (iA + r1) * 31;
        boolean z10 = this.clipToBounds;
        int iFloatToIntBits = (((i10 + (z10 ? 1 : z10)) * 31) + Float.floatToIntBits(this.alpha)) * 31;
        RenderEffect renderEffect = this.renderEffect;
        return iFloatToIntBits + (renderEffect == null ? 0 : renderEffect.hashCode());
    }

    @NotNull
    public String toString() {
        return "DeviceRenderNodeData(uniqueId=" + this.uniqueId + ", left=" + this.left + ", top=" + this.top + ", right=" + this.right + ", bottom=" + this.bottom + ", width=" + this.width + ", height=" + this.height + ", scaleX=" + this.scaleX + ", scaleY=" + this.scaleY + ", translationX=" + this.translationX + ", translationY=" + this.translationY + ", elevation=" + this.elevation + ", ambientShadowColor=" + this.ambientShadowColor + ", spotShadowColor=" + this.spotShadowColor + ", rotationZ=" + this.rotationZ + ", rotationX=" + this.rotationX + ", rotationY=" + this.rotationY + ", cameraDistance=" + this.cameraDistance + ", pivotX=" + this.pivotX + ", pivotY=" + this.pivotY + ", clipToOutline=" + this.clipToOutline + ", clipToBounds=" + this.clipToBounds + ", alpha=" + this.alpha + ", renderEffect=" + this.renderEffect + ')';
    }
}
