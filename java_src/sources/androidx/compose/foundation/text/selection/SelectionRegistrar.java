package androidx.compose.foundation.text.selection;

import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface SelectionRegistrar {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final long InvalidSelectableId = 0;

    void a(@NotNull LayoutCoordinates layoutCoordinates, long j6, @NotNull SelectionAdjustment selectionAdjustment);

    void b(long j6);

    void c(@NotNull Selectable selectable);

    void d();

    long e();

    @NotNull
    Map<Long, Selection> f();

    boolean g(@NotNull LayoutCoordinates layoutCoordinates, long j6, long j10, boolean z6, @NotNull SelectionAdjustment selectionAdjustment);

    void h(long j6);

    void i(long j6);

    @NotNull
    Selectable j(@NotNull Selectable selectable);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final long InvalidSelectableId = 0;

        private Companion() {
        }
    }
}
