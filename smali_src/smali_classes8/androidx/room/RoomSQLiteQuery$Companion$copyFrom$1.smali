.class public final Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteProgram;


# instance fields
.field private final synthetic $$delegate_0:Landroidx/room/RoomSQLiteQuery;


# virtual methods
.method public I(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/room/RoomSQLiteQuery;->I(IJ)V

    return-void
.end method

.method public K(I[B)V
    .locals 1
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->K(I[B)V

    return-void
.end method

.method public P(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery;->P(I)V

    return-void
.end method

.method public Y(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/room/RoomSQLiteQuery;->Y(ID)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->close()V

    return-void
.end method

.method public s(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->s(ILjava/lang/String;)V

    return-void
.end method
