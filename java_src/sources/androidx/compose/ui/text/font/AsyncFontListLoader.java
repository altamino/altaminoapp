package androidx.compose.ui.text.font;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import e8.l;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.f3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
public final class AsyncFontListLoader implements State<Object> {

    @NotNull
    private final AsyncTypefaceCache asyncTypefaceCache;
    private boolean cacheable;

    @NotNull
    private final List<Font> fontList;

    @NotNull
    private final l<TypefaceResult.Immutable, l0> onCompletion;

    @NotNull
    private final PlatformFontLoader platformFontLoader;

    @NotNull
    private final TypefaceRequest typefaceRequest;

    @NotNull
    private final MutableState value$delegate;

    public final boolean b() {
        return this.cacheable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AsyncFontListLoader(@NotNull List<? extends Font> fontList, @NotNull Object initialType, @NotNull TypefaceRequest typefaceRequest, @NotNull AsyncTypefaceCache asyncTypefaceCache, @NotNull l<? super TypefaceResult.Immutable, l0> onCompletion, @NotNull PlatformFontLoader platformFontLoader) {
        t.j(fontList, "fontList");
        t.j(initialType, "initialType");
        t.j(typefaceRequest, "typefaceRequest");
        t.j(asyncTypefaceCache, "asyncTypefaceCache");
        t.j(onCompletion, "onCompletion");
        t.j(platformFontLoader, "platformFontLoader");
        this.fontList = fontList;
        this.typefaceRequest = typefaceRequest;
        this.asyncTypefaceCache = asyncTypefaceCache;
        this.onCompletion = onCompletion;
        this.platformFontLoader = platformFontLoader;
        this.value$delegate = SnapshotStateKt__SnapshotStateKt.e(initialType, null, 2, null);
        this.cacheable = true;
    }

    private void setValue(Object obj) {
        this.value$delegate.setValue(obj);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x008c A[Catch: all -> 0x00ef, TryCatch #2 {all -> 0x00ef, blocks: (B:28:0x0075, B:30:0x008c, B:35:0x00bb, B:40:0x00f2), top: B:57:0x0075 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00b2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:35:0x00bb A[Catch: all -> 0x00ef, TRY_LEAVE, TryCatch #2 {all -> 0x00ef, blocks: (B:28:0x0075, B:30:0x008c, B:35:0x00bb, B:40:0x00f2), top: B:57:0x0075 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00f2 A[Catch: all -> 0x00ef, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x00ef, blocks: (B:28:0x0075, B:30:0x008c, B:35:0x00bb, B:40:0x00f2), top: B:57:0x0075 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0104 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:43:0x0105  */
    /* JADX WARN: Code duplicated, block: B:45:0x010a  */
    /* JADX WARN: Code duplicated, block: B:57:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x0105 -> B:44:0x0106). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x010a -> B:46:0x010c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object d(@org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super w7.l0> r20) {
        /*
            Method dump skipped, instruction units count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.font.AsyncFontListLoader.d(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object e(@NotNull Font font, @NotNull kotlin.coroutines.d<Object> dVar) {
        AsyncFontListLoader$loadWithTimeoutOrNull$1 asyncFontListLoader$loadWithTimeoutOrNull$1;
        if (dVar instanceof AsyncFontListLoader$loadWithTimeoutOrNull$1) {
            asyncFontListLoader$loadWithTimeoutOrNull$1 = (AsyncFontListLoader$loadWithTimeoutOrNull$1) dVar;
            int i10 = asyncFontListLoader$loadWithTimeoutOrNull$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                asyncFontListLoader$loadWithTimeoutOrNull$1.label = i10 - Integer.MIN_VALUE;
            } else {
                asyncFontListLoader$loadWithTimeoutOrNull$1 = new AsyncFontListLoader$loadWithTimeoutOrNull$1(this, dVar);
            }
        } else {
            asyncFontListLoader$loadWithTimeoutOrNull$1 = new AsyncFontListLoader$loadWithTimeoutOrNull$1(this, dVar);
        }
        Object objE = asyncFontListLoader$loadWithTimeoutOrNull$1.result;
        Object objE2 = kotlin.coroutines.intrinsics.d.e();
        int i11 = asyncFontListLoader$loadWithTimeoutOrNull$1.label;
        Object obj = null;
        try {
            if (i11 == 0) {
                w.b(objE);
                AsyncFontListLoader$loadWithTimeoutOrNull$2 asyncFontListLoader$loadWithTimeoutOrNull$2 = new AsyncFontListLoader$loadWithTimeoutOrNull$2(this, font, null);
                asyncFontListLoader$loadWithTimeoutOrNull$1.L$0 = font;
                asyncFontListLoader$loadWithTimeoutOrNull$1.label = 1;
                objE = f3.e(15000L, asyncFontListLoader$loadWithTimeoutOrNull$2, asyncFontListLoader$loadWithTimeoutOrNull$1);
                if (objE == objE2) {
                    return objE2;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                font = (Font) asyncFontListLoader$loadWithTimeoutOrNull$1.L$0;
                w.b(objE);
            }
            obj = objE;
            return obj;
        } catch (CancellationException e) {
            if (f2.m(asyncFontListLoader$loadWithTimeoutOrNull$1.getContext())) {
                return obj;
            }
            throw e;
        } catch (Exception e2) {
            kotlinx.coroutines.l0 l0Var = (kotlinx.coroutines.l0) asyncFontListLoader$loadWithTimeoutOrNull$1.getContext().get(kotlinx.coroutines.l0.Key);
            if (l0Var == null) {
                return obj;
            }
            l0Var.handleException(asyncFontListLoader$loadWithTimeoutOrNull$1.getContext(), new IllegalStateException("Unable to load font " + font, e2));
            return obj;
        }
    }

    @Override // androidx.compose.runtime.State
    @NotNull
    public Object getValue() {
        return this.value$delegate.getValue();
    }
}
