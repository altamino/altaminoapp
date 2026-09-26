package androidx.compose.ui.text.font;

import e8.p;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.ui.text.font.AsyncFontListLoader$loadWithTimeoutOrNull$2", f = "FontListFontFamilyTypefaceAdapter.kt", l = {305}, m = "invokeSuspend")
final class AsyncFontListLoader$loadWithTimeoutOrNull$2 extends l implements p<o0, kotlin.coroutines.d<? super Object>, Object> {
    final /* synthetic */ Font $this_loadWithTimeoutOrNull;
    int label;
    final /* synthetic */ AsyncFontListLoader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AsyncFontListLoader$loadWithTimeoutOrNull$2(AsyncFontListLoader asyncFontListLoader, Font font, kotlin.coroutines.d<? super AsyncFontListLoader$loadWithTimeoutOrNull$2> dVar) {
        super(2, dVar);
        this.this$0 = asyncFontListLoader;
        this.$this_loadWithTimeoutOrNull = font;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new AsyncFontListLoader$loadWithTimeoutOrNull$2(this.this$0, this.$this_loadWithTimeoutOrNull, dVar);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Object invoke(o0 o0Var, kotlin.coroutines.d<? super Object> dVar) {
        return invoke2(o0Var, (kotlin.coroutines.d<Object>) dVar);
    }

    @Nullable
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<Object> dVar) {
        return ((AsyncFontListLoader$loadWithTimeoutOrNull$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            PlatformFontLoader platformFontLoader = this.this$0.platformFontLoader;
            Font font = this.$this_loadWithTimeoutOrNull;
            this.label = 1;
            obj = platformFontLoader.b(font, this);
            if (obj == objE) {
                return objE;
            }
        }
        return obj;
    }
}
