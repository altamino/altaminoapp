package androidx.compose.ui.text;

import e8.a;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class MultiParagraphIntrinsics$maxIntrinsicWidth$2 extends v implements a<Float> {
    final /* synthetic */ MultiParagraphIntrinsics this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MultiParagraphIntrinsics$maxIntrinsicWidth$2(MultiParagraphIntrinsics multiParagraphIntrinsics) {
        super(0);
        this.this$0 = multiParagraphIntrinsics;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Float invoke() {
        ParagraphIntrinsicInfo paragraphIntrinsicInfo;
        ParagraphIntrinsics paragraphIntrinsicsB;
        List<ParagraphIntrinsicInfo> listF = this.this$0.f();
        if (listF.isEmpty()) {
            paragraphIntrinsicInfo = null;
        } else {
            ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = listF.get(0);
            float fC = paragraphIntrinsicInfo2.b().c();
            int iO = kotlin.collections.v.o(listF);
            int i10 = 1;
            if (1 <= iO) {
                while (true) {
                    ParagraphIntrinsicInfo paragraphIntrinsicInfo3 = listF.get(i10);
                    float fC2 = paragraphIntrinsicInfo3.b().c();
                    if (Float.compare(fC, fC2) < 0) {
                        paragraphIntrinsicInfo2 = paragraphIntrinsicInfo3;
                        fC = fC2;
                    }
                    if (i10 == iO) {
                        break;
                    }
                    i10++;
                }
            }
            paragraphIntrinsicInfo = paragraphIntrinsicInfo2;
        }
        ParagraphIntrinsicInfo paragraphIntrinsicInfo4 = paragraphIntrinsicInfo;
        return Float.valueOf((paragraphIntrinsicInfo4 == null || (paragraphIntrinsicsB = paragraphIntrinsicInfo4.b()) == null) ? 0.0f : paragraphIntrinsicsB.c());
    }
}
