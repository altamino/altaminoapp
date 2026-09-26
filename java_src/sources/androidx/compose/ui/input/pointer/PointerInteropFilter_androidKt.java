package androidx.compose.ui.input.pointer;

import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class PointerInteropFilter_androidKt {
    @ExperimentalComposeUiApi
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull AndroidViewHolder view) {
        t.j(modifier, "<this>");
        t.j(view, "view");
        PointerInteropFilter pointerInteropFilter = new PointerInteropFilter();
        pointerInteropFilter.d(new PointerInteropFilter_androidKt$pointerInteropFilter$3(view));
        RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent = new RequestDisallowInterceptTouchEvent();
        pointerInteropFilter.f(requestDisallowInterceptTouchEvent);
        view.setOnRequestDisallowInterceptTouchEvent$ui_release(requestDisallowInterceptTouchEvent);
        return modifier.B(pointerInteropFilter);
    }
}
