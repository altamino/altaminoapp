package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class ViewGroupKt {
    @NotNull
    public static final kotlin.sequences.g<View> a(@NotNull final ViewGroup viewGroup) {
        kotlin.jvm.internal.t.j(viewGroup, "<this>");
        return new kotlin.sequences.g<View>() { // from class: androidx.core.view.ViewGroupKt$children$1
            @Override // kotlin.sequences.g
            @NotNull
            public Iterator<View> iterator() {
                return ViewGroupKt.c(viewGroup);
            }
        };
    }

    @NotNull
    public static final kotlin.sequences.g<View> b(@NotNull ViewGroup viewGroup) {
        kotlin.jvm.internal.t.j(viewGroup, "<this>");
        return kotlin.sequences.k.b(new ViewGroupKt$descendants$1(viewGroup, null));
    }

    @NotNull
    public static final Iterator<View> c(@NotNull ViewGroup viewGroup) {
        kotlin.jvm.internal.t.j(viewGroup, "<this>");
        return new ViewGroupKt$iterator$1(viewGroup);
    }
}
