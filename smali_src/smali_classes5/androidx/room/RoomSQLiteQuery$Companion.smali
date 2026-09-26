.class public final Landroidx/room/RoomSQLiteQuery$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomSQLiteQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomSQLiteQuery$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;
    .locals 3
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
    sget-object v0, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    .line 9
    monitor-enter v0

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Landroidx/room/RoomSQLiteQuery;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->i(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo p1, "sqliteQuery"

    .line 39
    .line 40
    .line 41
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    .line 43
    return-object v1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    :try_start_1
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit v0

    .line 49
    .line 50
    new-instance v0, Landroidx/room/RoomSQLiteQuery;

    .line 51
    const/4 v1, 0x0

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p2, v1}, Landroidx/room/RoomSQLiteQuery;-><init>(ILkotlin/jvm/internal/k;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->i(Ljava/lang/String;I)V

    .line 58
    return-object v0

    .line 59
    :goto_0
    monitor-exit v0

    .line 60
    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    const/16 v2, 0xf

    .line 9
    .line 10
    if-le v1, v2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    .line 14
    move-result v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, -0xa

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    const-string/jumbo v2, "queryPool.descendingKeySet().iterator()"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .line 33
    .line 34
    if-lez v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 41
    move v1, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method
