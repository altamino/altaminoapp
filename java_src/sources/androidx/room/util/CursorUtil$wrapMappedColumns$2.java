package androidx.room.util;

import android.database.CursorWrapper;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class CursorUtil$wrapMappedColumns$2 extends CursorWrapper {
    final /* synthetic */ String[] $columnNames;
    final /* synthetic */ int[] $mapping;

    @Override // android.database.CursorWrapper, android.database.Cursor
    public int getColumnIndex(@NotNull String columnName) {
        t.j(columnName, "columnName");
        String[] strArr = this.$columnNames;
        int[] iArr = this.$mapping;
        int length = strArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = i11 + 1;
            if (kotlin.text.t.w(strArr[i10], columnName, true)) {
                return iArr[i11];
            }
            i10++;
            i11 = i12;
        }
        return super.getColumnIndex(columnName);
    }
}
