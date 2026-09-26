package androidx.compose.ui.text.font;

import androidx.compose.runtime.Immutable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.util.ws.WsMessage;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
public final class FontWeight implements Comparable<FontWeight> {

    @NotNull
    private static final FontWeight Black;

    @NotNull
    private static final FontWeight Bold;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final FontWeight ExtraBold;

    @NotNull
    private static final FontWeight ExtraLight;

    @NotNull
    private static final FontWeight Light;

    @NotNull
    private static final FontWeight Medium;

    @NotNull
    private static final FontWeight Normal;

    @NotNull
    private static final FontWeight SemiBold;

    @NotNull
    private static final FontWeight Thin;

    @NotNull
    private static final FontWeight W100;

    @NotNull
    private static final FontWeight W200;

    @NotNull
    private static final FontWeight W300;

    @NotNull
    private static final FontWeight W400;

    @NotNull
    private static final FontWeight W500;

    @NotNull
    private static final FontWeight W600;

    @NotNull
    private static final FontWeight W700;

    @NotNull
    private static final FontWeight W800;

    @NotNull
    private static final FontWeight W900;

    @NotNull
    private static final List<FontWeight> values;
    private final int weight;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final FontWeight a() {
            return FontWeight.Bold;
        }

        @NotNull
        public final FontWeight b() {
            return FontWeight.Light;
        }

        @NotNull
        public final FontWeight c() {
            return FontWeight.Medium;
        }

        @NotNull
        public final FontWeight d() {
            return FontWeight.Normal;
        }

        @NotNull
        public final FontWeight e() {
            return FontWeight.W400;
        }

        @NotNull
        public final FontWeight f() {
            return FontWeight.W500;
        }

        @NotNull
        public final FontWeight g() {
            return FontWeight.W600;
        }

        @NotNull
        public final FontWeight h() {
            return FontWeight.W700;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FontWeight) && this.weight == ((FontWeight) obj).weight;
    }

    public int hashCode() {
        return this.weight;
    }

    public final int k() {
        return this.weight;
    }

    static {
        FontWeight fontWeight = new FontWeight(100);
        W100 = fontWeight;
        FontWeight fontWeight2 = new FontWeight(200);
        W200 = fontWeight2;
        FontWeight fontWeight3 = new FontWeight(300);
        W300 = fontWeight3;
        FontWeight fontWeight4 = new FontWeight(WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
        W400 = fontWeight4;
        FontWeight fontWeight5 = new FontWeight(500);
        W500 = fontWeight5;
        FontWeight fontWeight6 = new FontWeight(600);
        W600 = fontWeight6;
        FontWeight fontWeight7 = new FontWeight(700);
        W700 = fontWeight7;
        FontWeight fontWeight8 = new FontWeight(800);
        W800 = fontWeight8;
        FontWeight fontWeight9 = new FontWeight(TypedValues.Custom.TYPE_INT);
        W900 = fontWeight9;
        Thin = fontWeight;
        ExtraLight = fontWeight2;
        Light = fontWeight3;
        Normal = fontWeight4;
        Medium = fontWeight5;
        SemiBold = fontWeight6;
        Bold = fontWeight7;
        ExtraBold = fontWeight8;
        Black = fontWeight9;
        values = v.p(fontWeight, fontWeight2, fontWeight3, fontWeight4, fontWeight5, fontWeight6, fontWeight7, fontWeight8, fontWeight9);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NotNull FontWeight other) {
        t.j(other, "other");
        return t.l(this.weight, other.weight);
    }

    @NotNull
    public String toString() {
        return "FontWeight(weight=" + this.weight + ')';
    }

    public FontWeight(int i10) {
        this.weight = i10;
        if (1 <= i10 && i10 < 1001) {
            return;
        }
        throw new IllegalArgumentException(("Font weight can be in range [1, 1000]. Current value: " + i10).toString());
    }
}
