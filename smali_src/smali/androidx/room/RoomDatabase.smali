.class public abstract Landroidx/room/RoomDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomDatabase$JournalMode;,
        Landroidx/room/RoomDatabase$Builder;,
        Landroidx/room/RoomDatabase$MigrationContainer;,
        Landroidx/room/RoomDatabase$Callback;,
        Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;,
        Landroidx/room/RoomDatabase$QueryCallback;,
        Landroidx/room/RoomDatabase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoomDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.kt\nandroidx/room/RoomDatabase\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1555:1\n211#2,2:1556\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.kt\nandroidx/room/RoomDatabase\n*L\n263#1:1556,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/room/RoomDatabase$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_BIND_PARAMETER_CNT:I = 0x3e7
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field


# instance fields
.field private allowMainThreadQueries:Z

.field private autoCloser:Landroidx/room/AutoCloser;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private autoMigrationSpecs:Ljava/util/Map;
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backingFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private internalOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

.field private internalQueryExecutor:Ljava/util/concurrent/Executor;

.field private internalTransactionExecutor:Ljava/util/concurrent/Executor;

.field private final invalidationTracker:Landroidx/room/InvalidationTracker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected mCallbacks:Ljava/util/List;
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field protected volatile mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final suspendingTransactionId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final typeConverters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private writeAheadLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/RoomDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/RoomDatabase$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/room/RoomDatabase;->Companion:Landroidx/room/RoomDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->g()Landroidx/room/InvalidationTracker;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/room/RoomDatabase;->invalidationTracker:Landroidx/room/InvalidationTracker;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/room/RoomDatabase;->autoMigrationSpecs:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/room/RoomDatabase;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/room/RoomDatabase;->suspendingTransactionId:Ljava/lang/ThreadLocal;

    .line 31
    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    const-string/jumbo v1, "synchronizedMap(mutableMapOf())"

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    iput-object v0, p0, Landroidx/room/RoomDatabase;->backingFieldMap:Ljava/util/Map;

    .line 48
    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 53
    .line 54
    iput-object v0, p0, Landroidx/room/RoomDatabase;->typeConverters:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public static synthetic B(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;ILjava/lang/Object;)Landroid/database/Cursor;
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_1

    .line 3
    .line 4
    and-int/lit8 p3, p3, 0x2

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomDatabase;->A(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    .line 14
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string p1, "Super calls with default arguments not supported in this target, function: query"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
.end method

.method private final E(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object p2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p2, Landroidx/room/DelegatingOpenHelper;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p2, Landroidx/room/DelegatingOpenHelper;

    .line 14
    .line 15
    .line 16
    invoke-interface {p2}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/room/RoomDatabase;->E(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    return-object p1
.end method

.method public static final synthetic a(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/RoomDatabase;->v()V

    .line 4
    return-void
.end method

.method public static final synthetic b(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/RoomDatabase;->w()V

    .line 4
    return-void
.end method

.method private final v()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->n()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->m()Landroidx/room/InvalidationTracker;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroidx/room/InvalidationTracker;->v(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->B0()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->A()V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->u()V

    .line 32
    :goto_0
    return-void
.end method

.method private final w()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->n()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->i0()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->t()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->m()Landroidx/room/InvalidationTracker;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/room/InvalidationTracker;->n()V

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public A(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .line 9
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->c()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->d()V

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->n()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->z(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->n()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->D(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    .line 39
    move-result-object p1

    .line 40
    :goto_0
    return-object p1
.end method

.method public C(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "body"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->e()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->i()V

    .line 19
    return-object p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->i()V

    .line 24
    throw p1
.end method

.method public D()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->n()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->d0()V

    .line 12
    return-void
.end method

.method public c()V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/room/RoomDatabase;->allowMainThreadQueries:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->y()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0
.end method

.method public d()V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->t()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/room/RoomDatabase;->suspendingTransactionId:Ljava/lang/ThreadLocal;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0

    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/room/RoomDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/room/RoomDatabase;->v()V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v1, Landroidx/room/RoomDatabase$beginTransaction$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0}, Landroidx/room/RoomDatabase$beginTransaction$1;-><init>(Landroidx/room/RoomDatabase;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 20
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 1
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
    .line 9
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->c()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->d()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->n()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->q0(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method protected abstract g()Landroidx/room/InvalidationTracker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected abstract h(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .param p1    # Landroidx/room/DatabaseConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public i()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/RoomDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/room/RoomDatabase;->w()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    new-instance v1, Landroidx/room/RoomDatabase$endTransaction$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0}, Landroidx/room/RoomDatabase$endTransaction$1;-><init>(Landroidx/room/RoomDatabase;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->g(Le8/l;)Ljava/lang/Object;

    .line 17
    :goto_0
    return-void
.end method

.method public j(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "autoMigrationSpecs"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final k()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->backingFieldMap:Ljava/util/Map;

    return-object v0
.end method

.method public final l()Ljava/util/concurrent/locks/Lock;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/RoomDatabase;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "readWriteLock.readLock()"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    return-object v0
.end method

.method public m()Landroidx/room/InvalidationTracker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->invalidationTracker:Landroidx/room/InvalidationTracker;

    return-object v0
.end method

.method public n()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/RoomDatabase;->internalOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "internalOpenHelper"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    return-object v0
.end method

.method public o()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "internalQueryExecutor"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    return-object v0
.end method

.method public p()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/w0;->e()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected q()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final r()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->suspendingTransactionId:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public s()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Ljava/util/concurrent/Executor;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "internalTransactionExecutor"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->n()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->z0()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public u(Landroidx/room/DatabaseConfiguration;)V
    .locals 9
    .param p1    # Landroidx/room/DatabaseConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    const-string v0, "configuration"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->h(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/room/RoomDatabase;->internalOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->p()Ljava/util/Set;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    new-instance v1, Ljava/util/BitSet;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    const/4 v3, -0x1

    .line 30
    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    check-cast v2, Ljava/lang/Class;

    .line 38
    .line 39
    iget-object v4, p1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 40
    .line 41
    .line 42
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 43
    move-result v4

    .line 44
    add-int/2addr v4, v3

    .line 45
    .line 46
    if-ltz v4, :cond_2

    .line 47
    .line 48
    :goto_1
    add-int/lit8 v5, v4, -0x1

    .line 49
    .line 50
    iget-object v6, p1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v6

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    move-result-object v6

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 62
    move-result v6

    .line 63
    .line 64
    if-eqz v6, :cond_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 68
    move v3, v4

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_0
    if-gez v5, :cond_1

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    move v4, v5

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_2
    :goto_2
    if-ltz v3, :cond_3

    .line 77
    .line 78
    iget-object v4, p0, Landroidx/room/RoomDatabase;->autoMigrationSpecs:Ljava/util/Map;

    .line 79
    .line 80
    iget-object v5, p1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 81
    .line 82
    .line 83
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    .line 87
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    const-string v0, "A required auto migration spec ("

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v0, ") is missing in the database configuration."

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    throw v0

    .line 125
    .line 126
    :cond_4
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 127
    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 130
    move-result v0

    .line 131
    add-int/2addr v0, v3

    .line 132
    .line 133
    if-ltz v0, :cond_7

    .line 134
    .line 135
    :goto_3
    add-int/lit8 v2, v0, -0x1

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    .line 139
    move-result v0

    .line 140
    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    if-gez v2, :cond_5

    .line 144
    goto :goto_4

    .line 145
    :cond_5
    move v0, v2

    .line 146
    goto :goto_3

    .line 147
    .line 148
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string v0, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    .line 156
    .line 157
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 158
    throw p1

    .line 159
    .line 160
    :cond_7
    :goto_4
    iget-object v0, p0, Landroidx/room/RoomDatabase;->autoMigrationSpecs:Ljava/util/Map;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase;->j(Ljava/util/Map;)Ljava/util/List;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    .line 171
    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    move-result v1

    .line 173
    const/4 v2, 0x0

    .line 174
    const/4 v4, 0x1

    .line 175
    .line 176
    if-eqz v1, :cond_9

    .line 177
    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    move-result-object v1

    .line 181
    .line 182
    check-cast v1, Landroidx/room/migration/Migration;

    .line 183
    .line 184
    iget-object v5, p1, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 185
    .line 186
    iget v6, v1, Landroidx/room/migration/Migration;->startVersion:I

    .line 187
    .line 188
    iget v7, v1, Landroidx/room/migration/Migration;->endVersion:I

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v6, v7}, Landroidx/room/RoomDatabase$MigrationContainer;->c(II)Z

    .line 192
    move-result v5

    .line 193
    .line 194
    if-nez v5, :cond_8

    .line 195
    .line 196
    iget-object v5, p1, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 197
    .line 198
    new-array v4, v4, [Landroidx/room/migration/Migration;

    .line 199
    .line 200
    aput-object v1, v4, v2

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v4}, Landroidx/room/RoomDatabase$MigrationContainer;->b([Landroidx/room/migration/Migration;)V

    .line 204
    goto :goto_5

    .line 205
    .line 206
    :cond_9
    const-class v0, Landroidx/room/SQLiteCopyOpenHelper;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->n()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    .line 213
    invoke-direct {p0, v0, v1}, Landroidx/room/RoomDatabase;->E(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    check-cast v0, Landroidx/room/SQLiteCopyOpenHelper;

    .line 217
    .line 218
    if-eqz v0, :cond_a

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, p1}, Landroidx/room/SQLiteCopyOpenHelper;->e(Landroidx/room/DatabaseConfiguration;)V

    .line 222
    .line 223
    :cond_a
    const-class v0, Landroidx/room/AutoClosingRoomOpenHelper;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->n()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    .line 230
    invoke-direct {p0, v0, v1}, Landroidx/room/RoomDatabase;->E(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    check-cast v0, Landroidx/room/AutoClosingRoomOpenHelper;

    .line 234
    .line 235
    if-eqz v0, :cond_b

    .line 236
    .line 237
    iget-object v1, v0, Landroidx/room/AutoClosingRoomOpenHelper;->autoCloser:Landroidx/room/AutoCloser;

    .line 238
    .line 239
    iput-object v1, p0, Landroidx/room/RoomDatabase;->autoCloser:Landroidx/room/AutoCloser;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->m()Landroidx/room/InvalidationTracker;

    .line 243
    move-result-object v1

    .line 244
    .line 245
    iget-object v0, v0, Landroidx/room/AutoClosingRoomOpenHelper;->autoCloser:Landroidx/room/AutoCloser;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v0}, Landroidx/room/InvalidationTracker;->q(Landroidx/room/AutoCloser;)V

    .line 249
    .line 250
    :cond_b
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 251
    .line 252
    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 253
    .line 254
    if-ne v0, v1, :cond_c

    .line 255
    move v2, v4

    .line 256
    .line 257
    .line 258
    :cond_c
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->n()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 259
    move-result-object v0

    .line 260
    .line 261
    .line 262
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 263
    .line 264
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    .line 265
    .line 266
    iput-object v0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 267
    .line 268
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 269
    .line 270
    iput-object v0, p0, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    .line 271
    .line 272
    new-instance v0, Landroidx/room/TransactionExecutor;

    .line 273
    .line 274
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 275
    .line 276
    .line 277
    invoke-direct {v0, v1}, Landroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 278
    .line 279
    iput-object v0, p0, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Ljava/util/concurrent/Executor;

    .line 280
    .line 281
    iget-boolean v0, p1, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    .line 282
    .line 283
    iput-boolean v0, p0, Landroidx/room/RoomDatabase;->allowMainThreadQueries:Z

    .line 284
    .line 285
    iput-boolean v2, p0, Landroidx/room/RoomDatabase;->writeAheadLoggingEnabled:Z

    .line 286
    .line 287
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

    .line 288
    .line 289
    if-eqz v0, :cond_e

    .line 290
    .line 291
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 292
    .line 293
    if-eqz v0, :cond_d

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->m()Landroidx/room/InvalidationTracker;

    .line 297
    move-result-object v0

    .line 298
    .line 299
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 300
    .line 301
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 302
    .line 303
    iget-object v4, p1, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v1, v2, v4}, Landroidx/room/InvalidationTracker;->r(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 307
    goto :goto_6

    .line 308
    .line 309
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 310
    .line 311
    const-string v0, "Required value was null."

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 315
    move-result-object v0

    .line 316
    .line 317
    .line 318
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 319
    throw p1

    .line 320
    .line 321
    .line 322
    :cond_e
    :goto_6
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->q()Ljava/util/Map;

    .line 323
    move-result-object v0

    .line 324
    .line 325
    new-instance v1, Ljava/util/BitSet;

    .line 326
    .line 327
    .line 328
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 332
    move-result-object v0

    .line 333
    .line 334
    .line 335
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 336
    move-result-object v0

    .line 337
    .line 338
    .line 339
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    move-result v2

    .line 341
    .line 342
    if-eqz v2, :cond_14

    .line 343
    .line 344
    .line 345
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    move-result-object v2

    .line 347
    .line 348
    check-cast v2, Ljava/util/Map$Entry;

    .line 349
    .line 350
    .line 351
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 352
    move-result-object v4

    .line 353
    .line 354
    check-cast v4, Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 358
    move-result-object v2

    .line 359
    .line 360
    check-cast v2, Ljava/util/List;

    .line 361
    .line 362
    .line 363
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 364
    move-result-object v2

    .line 365
    .line 366
    .line 367
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    move-result v5

    .line 369
    .line 370
    if-eqz v5, :cond_f

    .line 371
    .line 372
    .line 373
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    move-result-object v5

    .line 375
    .line 376
    check-cast v5, Ljava/lang/Class;

    .line 377
    .line 378
    iget-object v6, p1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 379
    .line 380
    .line 381
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 382
    move-result v6

    .line 383
    add-int/2addr v6, v3

    .line 384
    .line 385
    if-ltz v6, :cond_12

    .line 386
    .line 387
    :goto_8
    add-int/lit8 v7, v6, -0x1

    .line 388
    .line 389
    iget-object v8, p1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 390
    .line 391
    .line 392
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 393
    move-result-object v8

    .line 394
    .line 395
    .line 396
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    move-result-object v8

    .line 398
    .line 399
    .line 400
    invoke-virtual {v5, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 401
    move-result v8

    .line 402
    .line 403
    if-eqz v8, :cond_10

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 407
    goto :goto_a

    .line 408
    .line 409
    :cond_10
    if-gez v7, :cond_11

    .line 410
    goto :goto_9

    .line 411
    :cond_11
    move v6, v7

    .line 412
    goto :goto_8

    .line 413
    :cond_12
    :goto_9
    move v6, v3

    .line 414
    .line 415
    :goto_a
    if-ltz v6, :cond_13

    .line 416
    .line 417
    iget-object v7, p0, Landroidx/room/RoomDatabase;->typeConverters:Ljava/util/Map;

    .line 418
    .line 419
    iget-object v8, p1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 420
    .line 421
    .line 422
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 423
    move-result-object v6

    .line 424
    .line 425
    .line 426
    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    goto :goto_7

    .line 428
    .line 429
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    const-string v0, "A required type converter ("

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    const-string v0, ") for "

    .line 443
    .line 444
    .line 445
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 449
    move-result-object v0

    .line 450
    .line 451
    .line 452
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    const-string v0, " is missing in the database configuration."

    .line 455
    .line 456
    .line 457
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    move-result-object p1

    .line 462
    .line 463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 464
    .line 465
    .line 466
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 467
    move-result-object p1

    .line 468
    .line 469
    .line 470
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 471
    throw v0

    .line 472
    .line 473
    :cond_14
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 474
    .line 475
    .line 476
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 477
    move-result v0

    .line 478
    add-int/2addr v0, v3

    .line 479
    .line 480
    if-ltz v0, :cond_17

    .line 481
    .line 482
    :goto_b
    add-int/lit8 v2, v0, -0x1

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    .line 486
    move-result v3

    .line 487
    .line 488
    if-eqz v3, :cond_16

    .line 489
    .line 490
    if-gez v2, :cond_15

    .line 491
    goto :goto_c

    .line 492
    :cond_15
    move v0, v2

    .line 493
    goto :goto_b

    .line 494
    .line 495
    :cond_16
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 496
    .line 497
    .line 498
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 499
    move-result-object p1

    .line 500
    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 502
    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .line 508
    const-string v2, "Unexpected type converter "

    .line 509
    .line 510
    .line 511
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    const-string p1, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    move-result-object p1

    .line 524
    .line 525
    .line 526
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 527
    throw v0

    .line 528
    :cond_17
    :goto_c
    return-void
.end method

.method protected x(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "db"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->m()Landroidx/room/InvalidationTracker;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker;->k(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 13
    return-void
.end method

.method public final y()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final z()Z
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1
.end method
