package androidx.room;

import androidx.sqlite.db.SupportSQLiteStatement;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class SharedSQLiteStatement$stmt$2 extends kotlin.jvm.internal.v implements e8.a<SupportSQLiteStatement> {
    final /* synthetic */ SharedSQLiteStatement this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SharedSQLiteStatement$stmt$2(SharedSQLiteStatement sharedSQLiteStatement) {
        super(0);
        this.this$0 = sharedSQLiteStatement;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final SupportSQLiteStatement invoke() {
        return this.this$0.d();
    }
}
