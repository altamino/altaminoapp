package androidx.core.widget;

import android.widget.ListView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes6.dex */
public final class ListViewCompat {

    @RequiresApi
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static boolean a(ListView listView, int i10) {
            return listView.canScrollList(i10);
        }

        @DoNotInline
        static void b(ListView listView, int i10) {
            listView.scrollListBy(i10);
        }
    }

    private ListViewCompat() {
    }

    public static boolean a(@NonNull ListView listView, int i10) {
        return Api19Impl.a(listView, i10);
    }

    public static void b(@NonNull ListView listView, int i10) {
        Api19Impl.b(listView, i10);
    }
}
