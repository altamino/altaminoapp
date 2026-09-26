package androidx.room.paging;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.paging.PositionalDataSource;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public abstract class LimitOffsetDataSource<T> extends PositionalDataSource<T> {
    private final String mCountQuery;
    private final RoomDatabase mDb;
    private final boolean mInTransaction;
    private final String mLimitOffsetQuery;
    private final InvalidationTracker.Observer mObserver;
    private final AtomicBoolean mRegisteredObserver;
    private final RoomSQLiteQuery mSourceQuery;

    /* JADX INFO: renamed from: androidx.room.paging.LimitOffsetDataSource$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes.dex */
    class AnonymousClass1 extends InvalidationTracker.Observer {
        final /* synthetic */ LimitOffsetDataSource this$0;

        @Override // androidx.room.InvalidationTracker.Observer
        public void c(@NonNull Set<String> set) {
            this.this$0.invalidate();
        }
    }
}
