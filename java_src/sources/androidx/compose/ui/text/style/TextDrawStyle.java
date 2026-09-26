package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.SolidColor;
import e8.a;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes4.dex */
public interface TextDrawStyle {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* JADX INFO: renamed from: androidx.compose.ui.text.style.TextDrawStyle$-CC, reason: invalid class name */
    /* JADX INFO: loaded from: classes8.dex */
    public final /* synthetic */ class CC {
        @NotNull
        public static TextDrawStyle a(TextDrawStyle textDrawStyle, @NotNull TextDrawStyle other) {
            t.j(other, "other");
            if (other.d() != null) {
                return other;
            }
            return textDrawStyle.d() != null ? textDrawStyle : other.c(new TextDrawStyle$merge$1(textDrawStyle));
        }

        @NotNull
        public static TextDrawStyle b(TextDrawStyle textDrawStyle, @NotNull a other) {
            t.j(other, "other");
            return !t.e(textDrawStyle, Unspecified.INSTANCE) ? textDrawStyle : (TextDrawStyle) other.invoke();
        }
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        public final TextDrawStyle a(@Nullable Brush brush) {
            if (brush == null) {
                return Unspecified.INSTANCE;
            }
            if (brush instanceof SolidColor) {
                return b(((SolidColor) brush).c());
            }
            if (brush instanceof ShaderBrush) {
                return new BrushStyle((ShaderBrush) brush);
            }
            throw new s();
        }

        @NotNull
        public final TextDrawStyle b(long j6) {
            return j6 != Color.Companion.f() ? new ColorStyle(j6, null) : Unspecified.INSTANCE;
        }

        private Companion() {
        }
    }

    public static final class Unspecified implements TextDrawStyle {

        @NotNull
        public static final Unspecified INSTANCE = new Unspecified();

        @Override // androidx.compose.ui.text.style.TextDrawStyle
        public /* synthetic */ TextDrawStyle b(TextDrawStyle textDrawStyle) {
            return CC.a(this, textDrawStyle);
        }

        @Override // androidx.compose.ui.text.style.TextDrawStyle
        public /* synthetic */ TextDrawStyle c(a aVar) {
            return CC.b(this, aVar);
        }

        @Override // androidx.compose.ui.text.style.TextDrawStyle
        @Nullable
        public Brush d() {
            return null;
        }

        @Override // androidx.compose.ui.text.style.TextDrawStyle
        public long a() {
            return Color.Companion.f();
        }

        private Unspecified() {
        }
    }

    long a();

    @NotNull
    TextDrawStyle b(@NotNull TextDrawStyle textDrawStyle);

    @NotNull
    TextDrawStyle c(@NotNull a<? extends TextDrawStyle> aVar);

    @Nullable
    Brush d();
}
