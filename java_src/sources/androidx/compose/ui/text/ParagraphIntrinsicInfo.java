package androidx.compose.ui.text;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class ParagraphIntrinsicInfo {
    private final int endIndex;

    @NotNull
    private final ParagraphIntrinsics intrinsics;
    private final int startIndex;

    public final int a() {
        return this.endIndex;
    }

    @NotNull
    public final ParagraphIntrinsics b() {
        return this.intrinsics;
    }

    public final int c() {
        return this.startIndex;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParagraphIntrinsicInfo)) {
            return false;
        }
        ParagraphIntrinsicInfo paragraphIntrinsicInfo = (ParagraphIntrinsicInfo) obj;
        return t.e(this.intrinsics, paragraphIntrinsicInfo.intrinsics) && this.startIndex == paragraphIntrinsicInfo.startIndex && this.endIndex == paragraphIntrinsicInfo.endIndex;
    }

    public int hashCode() {
        return (((this.intrinsics.hashCode() * 31) + this.startIndex) * 31) + this.endIndex;
    }

    @NotNull
    public String toString() {
        return "ParagraphIntrinsicInfo(intrinsics=" + this.intrinsics + ", startIndex=" + this.startIndex + ", endIndex=" + this.endIndex + ')';
    }

    public ParagraphIntrinsicInfo(@NotNull ParagraphIntrinsics intrinsics, int i10, int i11) {
        t.j(intrinsics, "intrinsics");
        this.intrinsics = intrinsics;
        this.startIndex = i10;
        this.endIndex = i11;
    }
}
