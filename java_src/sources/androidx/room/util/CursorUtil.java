package androidx.room.util;

import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Build;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.EnvironmentCompat;
import java.io.IOException;
import kotlin.collections.p;
import kotlin.io.c;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public final class CursorUtil {
    @NotNull
    public static final Cursor a(@NotNull Cursor c7) throws IOException {
        t.j(c7, "c");
        try {
            MatrixCursor matrixCursor = new MatrixCursor(c7.getColumnNames(), c7.getCount());
            while (c7.moveToNext()) {
                Object[] objArr = new Object[c7.getColumnCount()];
                int columnCount = c7.getColumnCount();
                for (int i10 = 0; i10 < columnCount; i10++) {
                    int type = c7.getType(i10);
                    if (type == 0) {
                        objArr[i10] = null;
                    } else if (type == 1) {
                        objArr[i10] = Long.valueOf(c7.getLong(i10));
                    } else if (type == 2) {
                        objArr[i10] = Double.valueOf(c7.getDouble(i10));
                    } else if (type == 3) {
                        objArr[i10] = c7.getString(i10);
                    } else {
                        if (type != 4) {
                            throw new IllegalStateException();
                        }
                        objArr[i10] = c7.getBlob(i10);
                    }
                }
                matrixCursor.addRow(objArr);
            }
            c.a(c7, null);
            return matrixCursor;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(c7, th);
                throw th2;
            }
        }
    }

    private static final int b(Cursor cursor, String str) {
        if (Build.VERSION.SDK_INT > 25 || str.length() == 0) {
            return -1;
        }
        String[] columnNames = cursor.getColumnNames();
        t.i(columnNames, "columnNames");
        return c(columnNames, str);
    }

    @VisibleForTesting
    public static final int c(@NotNull String[] columnNames, @NotNull String name) {
        t.j(columnNames, "columnNames");
        t.j(name, "name");
        String str = '.' + name;
        String str2 = '.' + name + '`';
        int length = columnNames.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            String str3 = columnNames[i10];
            int i12 = i11 + 1;
            if (str3.length() >= name.length() + 2) {
                if (kotlin.text.t.v(str3, str, false, 2, null)) {
                    return i11;
                }
                if (str3.charAt(0) == '`' && kotlin.text.t.v(str3, str2, false, 2, null)) {
                    return i11;
                }
            }
            i10++;
            i11 = i12;
        }
        return -1;
    }

    public static final int d(@NotNull Cursor c7, @NotNull String name) {
        t.j(c7, "c");
        t.j(name, "name");
        int columnIndex = c7.getColumnIndex(name);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        int columnIndex2 = c7.getColumnIndex('`' + name + '`');
        return columnIndex2 >= 0 ? columnIndex2 : b(c7, name);
    }

    public static final int e(@NotNull Cursor c7, @NotNull String name) {
        String strF0;
        t.j(c7, "c");
        t.j(name, "name");
        int iD = d(c7, name);
        if (iD >= 0) {
            return iD;
        }
        try {
            String[] columnNames = c7.getColumnNames();
            t.i(columnNames, "c.columnNames");
            strF0 = p.f0(columnNames, null, null, null, 0, null, null, 63, null);
        } catch (Exception e) {
            Log.d("RoomCursorUtil", "Cannot collect column names for debug purposes", e);
            strF0 = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        throw new IllegalArgumentException("column '" + name + "' does not exist. Available columns: " + strF0);
    }
}
