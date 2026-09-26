package androidx.compose.foundation.gestures;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.util.ws.WsMessage;
import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.gestures.DragLogic", f = "Draggable.kt", l = {WsMessage.LIVE_LAYER_USER_JOINED_EVENT, TypedValues.CycleType.TYPE_ALPHA}, m = "processDragStop")
final class DragLogic$processDragStop$1 extends d {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DragLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DragLogic$processDragStop$1(DragLogic dragLogic, kotlin.coroutines.d<? super DragLogic$processDragStop$1> dVar) {
        super(dVar);
        this.this$0 = dragLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.c(null, null, this);
    }
}
