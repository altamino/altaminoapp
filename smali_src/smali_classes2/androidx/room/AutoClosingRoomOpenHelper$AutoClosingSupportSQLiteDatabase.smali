.class public final Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteDatabase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/AutoClosingRoomOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutoClosingSupportSQLiteDatabase"
.end annotation


# instance fields
.field private final autoCloser:Landroidx/room/AutoCloser;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/AutoCloser;)V
    .locals 1
    .param p1    # Landroidx/room/AutoCloser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "autoCloser"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 11
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->j()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/room/AutoCloser;->e()V

    .line 17
    throw v0
.end method

.method public B()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 13
    .line 14
    sget-object v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isDbLockedByCurrentThread$1;->INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isDbLockedByCurrentThread$1;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    move-result v0

    .line 25
    :goto_0
    return v0
.end method

.method public B0()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    sget-object v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isWriteAheadLoggingEnabled$1;->INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isWriteAheadLoggingEnabled$1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public C(I)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    new-instance v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public C0(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    new-instance v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setMaxSqlCacheSize$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setMaxSqlCacheSize$1;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public D(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 2
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "query"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->j()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->D(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    new-instance v0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p1, v1}, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;-><init>(Landroid/database/Cursor;Landroidx/room/AutoCloser;)V

    .line 24
    return-object v0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->e()V

    .line 31
    throw p1
.end method

.method public D0(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    new-instance v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$pageSize$2;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$pageSize$2;-><init>(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public H(Z)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    new-instance v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setForeignKeyConstraintsEnabled$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setForeignKeyConstraintsEnabled$1;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public J()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    sget-object v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$maximumSize$1;->INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$maximumSize$1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public M(Ljava/lang/String;ILandroid/content/ContentValues;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/ContentValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "table"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "values"

    .line 10
    .line 11
    .line 12
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 15
    .line 16
    new-instance v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$insert$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p1, p2, p3}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$insert$1;-><init>(Ljava/lang/String;ILandroid/content/ContentValues;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Ljava/lang/Number;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 29
    move-result-wide p1

    .line 30
    return-wide p1
.end method

.method public W(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "sql"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 9
    .line 10
    new-instance v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$execSQL$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$execSQL$1;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public X()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    sget-object v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isDatabaseIntegrityOk$1;->INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isDatabaseIntegrityOk$1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "table"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 9
    .line 10
    new-instance v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$delete$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p1, p2, p3}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$delete$1;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Number;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public c0()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    sget-object v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$pageSize$1;->INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$pageSize$1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->d()V

    .line 6
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    sget-object v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$pokeOpen$1;->INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$pokeOpen$1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public d0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d0()V

    .line 12
    .line 13
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "setTransactionSuccessful called but delegateDb is null"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    throw v0
.end method

.method public e0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "sql"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "bindArgs"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 14
    .line 15
    new-instance v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$execSQL$2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p1, p2}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$execSQL$2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public f0(J)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    new-instance v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setMaximumSize$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setMaximumSize$1;-><init>(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Number;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    sget-object v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$path$1;->INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$path$1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    return-object v0
.end method

.method public getVersion()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    sget-object v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$version$1;->INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$version$1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public i0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->i0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->e()V

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/room/AutoCloser;->e()V

    .line 33
    throw v0

    .line 34
    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v1, "End transaction called but delegateDb is null"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public j0(Ljava/util/Locale;)V
    .locals 2
    .param p1    # Ljava/util/Locale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "locale"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 8
    .line 9
    new-instance v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setLocale$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setLocale$1;-><init>(Ljava/util/Locale;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public p0(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    new-instance v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$version$2;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$version$2;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public q0(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "sql"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1, v1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;-><init>(Ljava/lang/String;Landroidx/room/AutoCloser;)V

    .line 14
    return-object v0
.end method

.method public u()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->j()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/room/AutoCloser;->e()V

    .line 17
    throw v0
.end method

.method public u0()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    sget-object v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isReadOnly$1;->INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isReadOnly$1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public v0(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/ContentValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "table"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "values"

    .line 10
    .line 11
    .line 12
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 15
    .line 16
    new-instance v7, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$update$1;

    .line 17
    move-object v1, v7

    .line 18
    move-object v2, p1

    .line 19
    move v3, p2

    .line 20
    move-object v4, p3

    .line 21
    move-object v5, p4

    .line 22
    move-object v6, p5

    .line 23
    .line 24
    .line 25
    invoke-direct/range {v1 .. v6}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$update$1;-><init>(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v7}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Ljava/lang/Number;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public w()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    sget-object v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$attachedDbs$1;->INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$attachedDbs$1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/util/List;

    .line 11
    return-object v0
.end method

.method public w0()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    sget-object v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$yieldIfContendedSafely$1;->INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$yieldIfContendedSafely$1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public x0(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "query"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->j()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->x0(Ljava/lang/String;)Landroid/database/Cursor;

    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    new-instance v0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p1, v1}, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;-><init>(Landroid/database/Cursor;Landroidx/room/AutoCloser;)V

    .line 24
    return-object v0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->e()V

    .line 31
    throw p1
.end method

.method public z(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "query"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->j()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->z(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    new-instance p2, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p1, v0}, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;-><init>(Landroid/database/Cursor;Landroidx/room/AutoCloser;)V

    .line 24
    return-object p2

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    .line 27
    iget-object p2, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroidx/room/AutoCloser;->e()V

    .line 31
    throw p1
.end method

.method public z0()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->h()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 13
    .line 14
    sget-object v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1;->INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    move-result v0

    .line 25
    :goto_0
    return v0
.end method
