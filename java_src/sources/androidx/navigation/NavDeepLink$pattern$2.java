package androidx.navigation;

import java.util.regex.Pattern;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class NavDeepLink$pattern$2 extends v implements e8.a<Pattern> {
    final /* synthetic */ NavDeepLink this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NavDeepLink$pattern$2(NavDeepLink navDeepLink) {
        super(0);
        this.this$0 = navDeepLink;
    }

    @Override // e8.a
    @Nullable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Pattern invoke() {
        String str = this.this$0.patternFinalRegex;
        if (str != null) {
            return Pattern.compile(str, 2);
        }
        return null;
    }
}
