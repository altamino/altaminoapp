package androidx.core.text.util;

import android.text.Spannable;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Comparator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class LinkifyCompat {
    private static final String[] EMPTY_STRING = new String[0];
    private static final Comparator<LinkSpec> COMPARATOR = new Comparator() { // from class: androidx.core.text.util.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return LinkifyCompat.b((LinkifyCompat.LinkSpec) obj, (LinkifyCompat.LinkSpec) obj2);
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface LinkifyMask {
    }

    @RequiresApi
    static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static void a(TextView textView, Pattern pattern, String str, String[] strArr, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
            Linkify.addLinks(textView, pattern, str, strArr, matchFilter, transformFilter);
        }

        @DoNotInline
        static boolean b(Spannable spannable, Pattern pattern, String str, String[] strArr, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
            return Linkify.addLinks(spannable, pattern, str, strArr, matchFilter, transformFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class LinkSpec {
        int end;
        URLSpan frameworkAddedSpan;
        int start;
        String url;

        LinkSpec() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(LinkSpec linkSpec, LinkSpec linkSpec2) {
        int i10 = linkSpec.start;
        int i11 = linkSpec2.start;
        if (i10 < i11) {
            return -1;
        }
        if (i10 > i11) {
            return 1;
        }
        return Integer.compare(linkSpec2.end, linkSpec.end);
    }

    private LinkifyCompat() {
    }
}
