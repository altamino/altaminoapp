package androidx.room.util;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.annotation.RestrictTo;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;
import kotlin.collections.u;
import kotlin.io.c;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public final class DBUtil {
    public static final void a(@NotNull SupportSQLiteDatabase db) throws IOException {
        t.j(db, "db");
        List listC = u.c();
        Cursor cursorX0 = db.x0("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (cursorX0.moveToNext()) {
            try {
                listC.add(cursorX0.getString(0));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    c.a(cursorX0, th);
                    throw th2;
                }
            }
        }
        l0 l0Var = l0.INSTANCE;
        c.a(cursorX0, null);
        for (String triggerName : u.a(listC)) {
            t.i(triggerName, "triggerName");
            if (kotlin.text.t.K(triggerName, "room_fts_content_sync_", false, 2, null)) {
                db.W("DROP TRIGGER IF EXISTS " + triggerName);
            }
        }
    }

    @NotNull
    public static final Cursor b(@NotNull RoomDatabase db, @NotNull SupportSQLiteQuery sqLiteQuery, boolean z6, @Nullable CancellationSignal cancellationSignal) {
        t.j(db, "db");
        t.j(sqLiteQuery, "sqLiteQuery");
        Cursor cursorA = db.A(sqLiteQuery, cancellationSignal);
        if (!z6 || !(cursorA instanceof AbstractWindowedCursor)) {
            return cursorA;
        }
        AbstractWindowedCursor abstractWindowedCursor = (AbstractWindowedCursor) cursorA;
        int count = abstractWindowedCursor.getCount();
        return (abstractWindowedCursor.hasWindow() ? abstractWindowedCursor.getWindow().getNumRows() : count) < count ? CursorUtil.a(cursorA) : cursorA;
    }

    public static final int c(@NotNull File databaseFile) throws IOException {
        t.j(databaseFile, "databaseFile");
        FileChannel channel = new FileInputStream(databaseFile).getChannel();
        try {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(byteBufferAllocate) != 4) {
                throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
            }
            byteBufferAllocate.rewind();
            int i10 = byteBufferAllocate.getInt();
            c.a(channel, null);
            return i10;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(channel, th);
                throw th2;
            }
        }
    }
}
