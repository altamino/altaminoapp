.class public Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/d;
.implements Ll2/b;
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/c;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$c;,
        Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;,
        Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$d;
    }
.end annotation


# static fields
.field private static final LOCK_RETRY_BACK_OFF_MILLIS:I = 0x32

.field private static final LOG_TAG:Ljava/lang/String; = "SQLiteEventStore"

.field static final MAX_RETRIES:I = 0x10

.field private static final PROTOBUF_ENCODING:Lf2/b;


# instance fields
.field private final config:Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

.field private final monotonicClock:Lm2/a;

.field private final packageName:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/t0;

.field private final wallClock:Lm2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "proto"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lf2/b;->b(Ljava/lang/String;)Lf2/b;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->PROTOBUF_ENCODING:Lf2/b;

    .line 9
    return-void
.end method

.method constructor <init>(Lm2/a;Lm2/a;Lcom/google/android/datatransport/runtime/scheduling/persistence/e;Lcom/google/android/datatransport/runtime/scheduling/persistence/t0;Lv7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm2/a;",
            "Lm2/a;",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/e;",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/t0;",
            "Lv7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/t0;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->wallClock:Lm2/a;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->monotonicClock:Lm2/a;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->packageName:Lv7/a;

    .line 14
    return-void
.end method

.method static A1(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b<",
            "Landroid/database/Cursor;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 8
    return-object p1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 13
    throw p1
.end method

.method public static synthetic E0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->U0(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->d1(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G0(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->o1(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private H0(I)Lh2/c$b;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lh2/c$b;->REASON_UNKNOWN:Lh2/c$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lh2/c$b;->getNumber()I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    sget-object v1, Lh2/c$b;->MESSAGE_TOO_OLD:Lh2/c$b;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lh2/c$b;->getNumber()I

    .line 15
    move-result v2

    .line 16
    .line 17
    if-ne p1, v2, :cond_1

    .line 18
    return-object v1

    .line 19
    .line 20
    :cond_1
    sget-object v1, Lh2/c$b;->CACHE_FULL:Lh2/c$b;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lh2/c$b;->getNumber()I

    .line 24
    move-result v2

    .line 25
    .line 26
    if-ne p1, v2, :cond_2

    .line 27
    return-object v1

    .line 28
    .line 29
    :cond_2
    sget-object v1, Lh2/c$b;->PAYLOAD_TOO_BIG:Lh2/c$b;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lh2/c$b;->getNumber()I

    .line 33
    move-result v2

    .line 34
    .line 35
    if-ne p1, v2, :cond_3

    .line 36
    return-object v1

    .line 37
    .line 38
    :cond_3
    sget-object v1, Lh2/c$b;->MAX_RETRIES_REACHED:Lh2/c$b;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lh2/c$b;->getNumber()I

    .line 42
    move-result v2

    .line 43
    .line 44
    if-ne p1, v2, :cond_4

    .line 45
    return-object v1

    .line 46
    .line 47
    :cond_4
    sget-object v1, Lh2/c$b;->INVALID_PAYLOD:Lh2/c$b;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lh2/c$b;->getNumber()I

    .line 51
    move-result v2

    .line 52
    .line 53
    if-ne p1, v2, :cond_5

    .line 54
    return-object v1

    .line 55
    .line 56
    :cond_5
    sget-object v1, Lh2/c$b;->SERVER_ERROR:Lh2/c$b;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lh2/c$b;->getNumber()I

    .line 60
    move-result v2

    .line 61
    .line 62
    if-ne p1, v2, :cond_6

    .line 63
    return-object v1

    .line 64
    .line 65
    :cond_6
    const-string v1, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    const-string v2, "SQLiteEventStore"

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v1, p1}, Li2/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-object v0
.end method

.method private I0(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/g0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/g0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6
    .line 7
    new-instance p1, Lcom/google/android/datatransport/runtime/scheduling/persistence/h0;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/h0;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->x1(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$d;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 14
    return-void
.end method

.method private J0(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/p;)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->P0(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/p;)Ljava/lang/Long;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 10
    move-result-wide p1

    .line 11
    return-wide p1

    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/p;->b()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "backend_name"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/p;->d()Lf2/d;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ln2/a;->a(Lf2/d;)I

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    const-string v2, "priority"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    .line 44
    const-string v1, "next_request_ms"

    .line 45
    const/4 v2, 0x0

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/p;->c()[B

    .line 56
    move-result-object v1

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/p;->c()[B

    .line 62
    move-result-object p2

    .line 63
    .line 64
    .line 65
    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    const-string v1, "extras"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    :cond_1
    const-string p2, "transport_contexts"

    .line 74
    const/4 v1, 0x0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 78
    move-result-wide p1

    .line 79
    return-wide p1
.end method

.method public static synthetic L(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Ljava/lang/String;Ljava/util/Map;Lh2/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lh2/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->h1(Ljava/lang/String;Ljava/util/Map;Lh2/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lh2/a;

    move-result-object p0

    return-object p0
.end method

.method private M0()Lh2/b;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lh2/b;->b()Lh2/b$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lh2/e;->c()Lh2/e$a;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->K0()J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lh2/e$a;->b(J)Lh2/e$a;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    sget-object v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->DEFAULT:Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->f()J

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Lh2/e$a;->c(J)Lh2/e$a;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lh2/e$a;->a()Lh2/e;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lh2/b$a;->b(Lh2/e;)Lh2/b$a;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lh2/b$a;->a()Lh2/b;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method private N0()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->L0()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "PRAGMA page_count"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public static synthetic O(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Ljava/util/List;Lcom/google/android/datatransport/runtime/p;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->i1(Ljava/util/List;Lcom/google/android/datatransport/runtime/p;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private O0()Lh2/f;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->wallClock:Lm2/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lm2/a;->a()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/c0;-><init>(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->Q0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lh2/f;

    .line 18
    return-object v0
.end method

.method private P0(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/p;)Ljava/lang/Long;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "backend_name = ? and priority = ?"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/p;->b()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/p;->d()Lf2/d;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Ln2/a;->a(Lf2/d;)I

    .line 21
    move-result v3

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/p;->c()[B

    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    const-string v2, " and extras = ?"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/p;->c()[B

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-static {p2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_0
    const-string p2, " and extras is null"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    :goto_0
    const-string v5, "transport_contexts"

    .line 68
    .line 69
    const-string p2, "_id"

    .line 70
    .line 71
    .line 72
    filled-new-array {p2}, [Ljava/lang/String;

    .line 73
    move-result-object v6

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v7

    .line 78
    .line 79
    new-array p2, v3, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    move-result-object p2

    .line 84
    move-object v8, p2

    .line 85
    .line 86
    check-cast v8, [Ljava/lang/String;

    .line 87
    const/4 v9, 0x0

    .line 88
    const/4 v10, 0x0

    .line 89
    const/4 v11, 0x0

    .line 90
    move-object v4, p1

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    new-instance p2, Lcom/google/android/datatransport/runtime/scheduling/persistence/s;

    .line 97
    .line 98
    .line 99
    invoke-direct {p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/s;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-static {p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->A1(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    check-cast p1, Ljava/lang/Long;

    .line 106
    return-object p1
.end method

.method public static synthetic Q(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->r1(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private R0()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->N0()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->c0()J

    .line 8
    move-result-wide v2

    .line 9
    mul-long/2addr v0, v2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->f()J

    .line 15
    move-result-wide v2

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-ltz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method private S0(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/k;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$c;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/k;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/k;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k;->c()J

    .line 20
    move-result-wide v2

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k;->b()Lcom/google/android/datatransport/runtime/i;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/i;->l()Lcom/google/android/datatransport/runtime/i$a;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k;->c()J

    .line 43
    move-result-wide v3

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    check-cast v3, Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v4

    .line 62
    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    check-cast v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$c;

    .line 70
    .line 71
    iget-object v5, v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$c;->key:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v4, v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$c;->value:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v5, v4}, Lcom/google/android/datatransport/runtime/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/i$a;

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k;->c()J

    .line 81
    move-result-wide v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k;->d()Lcom/google/android/datatransport/runtime/p;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/i$a;->d()Lcom/google/android/datatransport/runtime/i;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v4, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k;->a(JLcom/google/android/datatransport/runtime/p;Lcom/google/android/datatransport/runtime/i;)Lcom/google/android/datatransport/runtime/scheduling/persistence/k;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    return-object p1
.end method

.method private synthetic T0(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    int-to-long v2, v0

    .line 18
    .line 19
    sget-object v0, Lh2/c$b;->MESSAGE_TOO_OLD:Lh2/c$b;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->i(JLh2/c$b;Ljava/lang/String;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public static synthetic U(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->b1(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic U0(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    filled-new-array {p1}, [Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string p2, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/r;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/r;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->A1(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 23
    .line 24
    const-string p2, "events"

    .line 25
    .line 26
    const-string v0, "timestamp_ms < ?"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method private static synthetic V0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method private static synthetic W0(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ll2/a;

    .line 3
    .line 4
    const-string v1, "Timed out while trying to acquire the lock."

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Ll2/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    throw v0
.end method

.method private static synthetic X0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ll2/a;

    .line 3
    .line 4
    const-string v1, "Timed out while trying to open db."

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Ll2/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    throw v0
.end method

.method private static synthetic Y0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    .line 18
    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private static synthetic Z0(JLandroid/database/Cursor;)Lh2/f;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lh2/f;->c()Lh2/f$a;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0, v1}, Lh2/f$a;->c(J)Lh2/f$a;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p0, p1}, Lh2/f$a;->b(J)Lh2/f$a;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lh2/f$a;->a()Lh2/f;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private static synthetic a1(JLandroid/database/sqlite/SQLiteDatabase;)Lh2/f;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/d0;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/d0;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-static {p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->A1(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    check-cast p0, Lh2/f;

    .line 21
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->X0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->n1(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b1(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private c0()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->L0()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "PRAGMA page_size"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method private synthetic c1(Lcom/google/android/datatransport/runtime/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->P0(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/p;)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->L0()Landroid/database/sqlite/SQLiteDatabase;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    filled-new-array {p1}, [Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    new-instance p2, Lcom/google/android/datatransport/runtime/scheduling/persistence/z;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/z;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->A1(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Ljava/lang/Boolean;

    .line 39
    return-object p1
.end method

.method private static synthetic d1(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/k0;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k0;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->A1(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    check-cast p0, Ljava/util/List;

    .line 21
    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->W0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e1(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/datatransport/runtime/p;->a()Lcom/google/android/datatransport/runtime/p$a;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/p$a;->b(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/p$a;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Ln2/a;->b(I)Lf2/d;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/p$a;->d(Lf2/d;)Lcom/google/android/datatransport/runtime/p$a;

    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x3

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->u1(Ljava/lang/String;)[B

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/p$a;->c([B)Lcom/google/android/datatransport/runtime/p$a;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/p$a;->a()Lcom/google/android/datatransport/runtime/p;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-object v0
.end method

.method public static synthetic f(JLandroid/database/Cursor;)Lh2/f;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->Z0(JLandroid/database/Cursor;)Lh2/f;

    move-result-object p0

    return-object p0
.end method

.method private synthetic f1(Lcom/google/android/datatransport/runtime/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->d()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->s1(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/p;I)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lf2/d;->values()[Lf2/d;

    .line 14
    move-result-object v1

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 19
    .line 20
    aget-object v4, v1, v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->d()Lf2/d;

    .line 24
    move-result-object v5

    .line 25
    .line 26
    if-ne v4, v5, :cond_0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    iget-object v5, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->d()I

    .line 33
    move-result v5

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    move-result v6

    .line 38
    sub-int/2addr v5, v6

    .line 39
    .line 40
    if-gtz v5, :cond_1

    .line 41
    goto :goto_2

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p1, v4}, Lcom/google/android/datatransport/runtime/p;->f(Lf2/d;)Lcom/google/android/datatransport/runtime/p;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p2, v4, v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->s1(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/p;I)Ljava/util/List;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    .line 54
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_2
    invoke-direct {p0, p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->t1(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->S0(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public static synthetic g(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Lcom/google/android/datatransport/runtime/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->f1(Lcom/google/android/datatransport/runtime/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Lcom/google/android/datatransport/runtime/i;Lcom/google/android/datatransport/runtime/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->k1(Lcom/google/android/datatransport/runtime/i;Lcom/google/android/datatransport/runtime/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic g1(Ljava/util/Map;Lh2/a$a;Landroid/database/Cursor;)Lh2/a;
    .locals 5

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->H0(I)Lh2/c$b;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x2

    .line 22
    .line 23
    .line 24
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 25
    move-result-wide v2

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 29
    move-result v4

    .line 30
    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    new-instance v4, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Ljava/util/List;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lh2/c;->c()Lh2/c$a;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v1}, Lh2/c$a;->c(Lh2/c$b;)Lh2/c$a;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Lh2/c$a;->b(J)Lh2/c$a;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lh2/c$a;->a()Lh2/c;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->v1(Lh2/a$a;Ljava/util/Map;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->O0()Lh2/f;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Lh2/a$a;->e(Lh2/f;)Lh2/a$a;

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->M0()Lh2/b;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lh2/a$a;->d(Lh2/b;)Lh2/a$a;

    .line 83
    .line 84
    iget-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->packageName:Lv7/a;

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Lv7/a;->get()Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    check-cast p1, Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p1}, Lh2/a$a;->c(Ljava/lang/String;)Lh2/a$a;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lh2/a$a;->b()Lh2/a;

    .line 97
    move-result-object p1

    .line 98
    return-object p1
.end method

.method private synthetic h1(Ljava/lang/String;Ljava/util/Map;Lh2/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lh2/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    new-instance p4, Lcom/google/android/datatransport/runtime/scheduling/persistence/b0;

    .line 10
    .line 11
    .line 12
    invoke-direct {p4, p0, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/b0;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Ljava/util/Map;Lh2/a$a;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->A1(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lh2/a;

    .line 19
    return-object p1
.end method

.method private synthetic i1(Ljava/util/List;Lcom/google/android/datatransport/runtime/p;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 11
    move-result-wide v1

    .line 12
    const/4 v3, 0x7

    .line 13
    .line 14
    .line 15
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x1

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    move v0, v4

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {}, Lcom/google/android/datatransport/runtime/i;->a()Lcom/google/android/datatransport/runtime/i$a;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4}, Lcom/google/android/datatransport/runtime/i$a;->j(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/i$a;

    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x2

    .line 34
    .line 35
    .line 36
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 37
    move-result-wide v4

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4, v5}, Lcom/google/android/datatransport/runtime/i$a;->i(J)Lcom/google/android/datatransport/runtime/i$a;

    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x3

    .line 43
    .line 44
    .line 45
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 46
    move-result-wide v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4, v5}, Lcom/google/android/datatransport/runtime/i$a;->k(J)Lcom/google/android/datatransport/runtime/i$a;

    .line 50
    move-result-object v3

    .line 51
    const/4 v4, 0x4

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    new-instance v0, Lcom/google/android/datatransport/runtime/h;

    .line 56
    .line 57
    .line 58
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-static {v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->y1(Ljava/lang/String;)Lf2/b;

    .line 63
    move-result-object v4

    .line 64
    const/4 v5, 0x5

    .line 65
    .line 66
    .line 67
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    .line 68
    move-result-object v5

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v4, v5}, Lcom/google/android/datatransport/runtime/h;-><init>(Lf2/b;[B)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v0}, Lcom/google/android/datatransport/runtime/i$a;->h(Lcom/google/android/datatransport/runtime/h;)Lcom/google/android/datatransport/runtime/i$a;

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_1
    new-instance v0, Lcom/google/android/datatransport/runtime/h;

    .line 78
    .line 79
    .line 80
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    .line 84
    invoke-static {v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->y1(Ljava/lang/String;)Lf2/b;

    .line 85
    move-result-object v4

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->w1(J)[B

    .line 89
    move-result-object v5

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, v4, v5}, Lcom/google/android/datatransport/runtime/h;-><init>(Lf2/b;[B)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v0}, Lcom/google/android/datatransport/runtime/i$a;->h(Lcom/google/android/datatransport/runtime/h;)Lcom/google/android/datatransport/runtime/i$a;

    .line 96
    :goto_1
    const/4 v0, 0x6

    .line 97
    .line 98
    .line 99
    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 100
    move-result v4

    .line 101
    .line 102
    if-nez v4, :cond_2

    .line 103
    .line 104
    .line 105
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 106
    move-result v0

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v0}, Lcom/google/android/datatransport/runtime/i$a;->g(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/i$a;

    .line 114
    .line 115
    .line 116
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/i$a;->d()Lcom/google/android/datatransport/runtime/i;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v2, p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k;->a(JLcom/google/android/datatransport/runtime/p;Lcom/google/android/datatransport/runtime/i;)Lcom/google/android/datatransport/runtime/scheduling/persistence/k;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    const/4 p1, 0x0

    .line 127
    return-object p1
.end method

.method public static synthetic j(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->V0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic j1(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 5

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Ljava/util/Set;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashSet;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    :cond_0
    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$c;

    .line 39
    const/4 v3, 0x1

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x2

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$a;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-object v1
.end method

.method public static synthetic k(JLcom/google/android/datatransport/runtime/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->q1(JLcom/google/android/datatransport/runtime/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->j1(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic k1(Lcom/google/android/datatransport/runtime/i;Lcom/google/android/datatransport/runtime/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->R0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object p2, Lh2/c$b;->CACHE_FULL:Lh2/c$b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/i;->j()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    const-wide/16 v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->i(JLh2/c$b;Ljava/lang/String;)V

    .line 18
    .line 19
    const-wide/16 p1, -0x1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->J0(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/p;)J

    .line 28
    move-result-wide v0

    .line 29
    .line 30
    iget-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->e()I

    .line 34
    move-result p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/i;->e()Lcom/google/android/datatransport/runtime/h;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/h;->a()[B

    .line 42
    move-result-object v2

    .line 43
    array-length v3, v2

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x1

    .line 46
    .line 47
    if-gt v3, p2, :cond_1

    .line 48
    move v3, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v3, v4

    .line 51
    .line 52
    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    .line 53
    .line 54
    .line 55
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 56
    .line 57
    const-string v7, "context_id"

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    .line 66
    const-string v0, "transport_name"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/i;->j()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/i;->f()J

    .line 77
    move-result-wide v0

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    const-string v1, "timestamp_ms"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/i;->k()J

    .line 90
    move-result-wide v0

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    const-string v1, "uptime_ms"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/i;->e()Lcom/google/android/datatransport/runtime/h;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/h;->b()Lf2/b;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lf2/b;->a()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    const-string v1, "payload_encoding"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    const-string v0, "code"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/i;->d()Ljava/lang/Integer;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    .line 127
    const-string v0, "num_attempts"

    .line 128
    .line 129
    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    .line 136
    const-string v0, "inline"

    .line 137
    .line 138
    .line 139
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 144
    .line 145
    if-eqz v3, :cond_2

    .line 146
    move-object v0, v2

    .line 147
    goto :goto_1

    .line 148
    .line 149
    :cond_2
    new-array v0, v4, [B

    .line 150
    .line 151
    :goto_1
    const-string v1, "payload"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 155
    .line 156
    const-string v0, "events"

    .line 157
    const/4 v1, 0x0

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 161
    move-result-wide v6

    .line 162
    .line 163
    const-string v0, "event_id"

    .line 164
    .line 165
    if-nez v3, :cond_3

    .line 166
    array-length v3, v2

    .line 167
    int-to-double v3, v3

    .line 168
    int-to-double v8, p2

    .line 169
    div-double/2addr v3, v8

    .line 170
    .line 171
    .line 172
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 173
    move-result-wide v3

    .line 174
    double-to-int v3, v3

    .line 175
    .line 176
    :goto_2
    if-gt v5, v3, :cond_3

    .line 177
    .line 178
    add-int/lit8 v4, v5, -0x1

    .line 179
    mul-int/2addr v4, p2

    .line 180
    .line 181
    mul-int v8, v5, p2

    .line 182
    array-length v9, v2

    .line 183
    .line 184
    .line 185
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 186
    move-result v8

    .line 187
    .line 188
    .line 189
    invoke-static {v2, v4, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 190
    move-result-object v4

    .line 191
    .line 192
    new-instance v8, Landroid/content/ContentValues;

    .line 193
    .line 194
    .line 195
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    move-result-object v9

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    .line 204
    const-string v9, "sequence_num"

    .line 205
    .line 206
    .line 207
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object v10

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    .line 213
    const-string v9, "bytes"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 217
    .line 218
    const-string v4, "event_payloads"

    .line 219
    .line 220
    .line 221
    invoke-virtual {p3, v4, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 222
    .line 223
    add-int/lit8 v5, v5, 0x1

    .line 224
    goto :goto_2

    .line 225
    .line 226
    .line 227
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/i;->i()Ljava/util/Map;

    .line 228
    move-result-object p1

    .line 229
    .line 230
    .line 231
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 232
    move-result-object p1

    .line 233
    .line 234
    .line 235
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 236
    move-result-object p1

    .line 237
    .line 238
    .line 239
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    move-result p2

    .line 241
    .line 242
    if-eqz p2, :cond_4

    .line 243
    .line 244
    .line 245
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    move-result-object p2

    .line 247
    .line 248
    check-cast p2, Ljava/util/Map$Entry;

    .line 249
    .line 250
    new-instance v2, Landroid/content/ContentValues;

    .line 251
    .line 252
    .line 253
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 257
    move-result-object v3

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 264
    move-result-object v3

    .line 265
    .line 266
    check-cast v3, Ljava/lang/String;

    .line 267
    .line 268
    const-string v4, "name"

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 275
    move-result-object p2

    .line 276
    .line 277
    check-cast p2, Ljava/lang/String;

    .line 278
    .line 279
    const-string v3, "value"

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    const-string p2, "event_metadata"

    .line 285
    .line 286
    .line 287
    invoke-virtual {p3, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 288
    goto :goto_3

    .line 289
    .line 290
    .line 291
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 292
    move-result-object p1

    .line 293
    return-object p1
.end method

.method public static synthetic l(Landroid/database/Cursor;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->l1(Landroid/database/Cursor;)[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic l1(Landroid/database/Cursor;)[B
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 11
    move-result v3

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    array-length v3, v3

    .line 22
    add-int/2addr v2, v3

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-array p0, v2, [B

    .line 26
    move v2, v1

    .line 27
    move v3, v2

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    move-result v4

    .line 32
    .line 33
    if-ge v2, v4, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    check-cast v4, [B

    .line 40
    array-length v5, v4

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    array-length v4, v4

    .line 45
    add-int/2addr v3, v4

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    return-object p0
.end method

.method public static synthetic m(Landroid/database/Cursor;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->e1(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic m1(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    int-to-long v2, v0

    .line 18
    .line 19
    sget-object v0, Lh2/c$b;->MAX_RETRIES_REACHED:Lh2/c$b;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->i(JLh2/c$b;Ljava/lang/String;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public static synthetic n(Ljava/lang/String;Lh2/c$b;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->p1(Ljava/lang/String;Lh2/c$b;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic n1(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->A1(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 21
    .line 22
    const-string p2, "DELETE FROM events WHERE num_attempts >= 16"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 30
    return-object p1
.end method

.method public static synthetic o(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->T0(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic o1(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 4
    move-result p0

    .line 5
    .line 6
    if-lez p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static synthetic p(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Lcom/google/android/datatransport/runtime/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->c1(Lcom/google/android/datatransport/runtime/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic p1(Ljava/lang/String;Lh2/c$b;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lh2/c$b;->getNumber()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/v;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/v;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->A1(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    new-instance v0, Landroid/content/ContentValues;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .line 43
    const-string v2, "log_source"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lh2/c$b;->getNumber()I

    .line 50
    move-result p0

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    const-string p1, "reason"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    .line 61
    const-string p0, "events_dropped_count"

    .line 62
    .line 63
    .line 64
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    .line 70
    const-string p0, "log_event_dropped"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p4, p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    const-string v2, "UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + "

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string p2, " WHERE log_source = ? AND reason = ?"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p2

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lh2/c$b;->getNumber()I

    .line 100
    move-result p1

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    filled-new-array {p0, p1}, [Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p4, p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :goto_0
    return-object v1
.end method

.method public static synthetic q(JLandroid/database/sqlite/SQLiteDatabase;)Lh2/f;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->a1(JLandroid/database/sqlite/SQLiteDatabase;)Lh2/f;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic q1(JLcom/google/android/datatransport/runtime/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    .line 7
    const-string v1, "next_request_ms"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/p;->b()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/p;->d()Lf2/d;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Ln2/a;->a(Lf2/d;)I

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    filled-new-array {p0, p1}, [Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    const-string p1, "transport_contexts"

    .line 37
    .line 38
    const-string v1, "backend_name = ? and priority = ?"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p1, v0, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 42
    move-result p0

    .line 43
    const/4 v1, 0x1

    .line 44
    const/4 v2, 0x0

    .line 45
    .line 46
    if-ge p0, v1, :cond_0

    .line 47
    .line 48
    const-string p0, "backend_name"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/p;->b()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/p;->d()Lf2/d;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Ln2/a;->a(Lf2/d;)I

    .line 63
    move-result p0

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    const-string p2, "priority"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 76
    :cond_0
    return-object v2
.end method

.method public static synthetic r(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->Y0(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic r1(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    const-string v0, "DELETE FROM log_event_dropped"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v1, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->wallClock:Lm2/a;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Lm2/a;->a()J

    .line 25
    move-result-wide v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 40
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method private s1(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/p;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/datatransport/runtime/p;",
            "I)",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/k;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->P0(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/p;)Ljava/lang/Long;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    const-string v3, "events"

    .line 15
    .line 16
    const-string v4, "_id"

    .line 17
    .line 18
    const-string v5, "transport_name"

    .line 19
    .line 20
    const-string v6, "timestamp_ms"

    .line 21
    .line 22
    const-string v7, "uptime_ms"

    .line 23
    .line 24
    const-string v8, "payload_encoding"

    .line 25
    .line 26
    const-string v9, "payload"

    .line 27
    .line 28
    const-string v10, "code"

    .line 29
    .line 30
    const-string v11, "inline"

    .line 31
    .line 32
    .line 33
    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    const-string v5, "context_id = ?"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    filled-new-array {v1}, [Ljava/lang/String;

    .line 44
    move-result-object v6

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    .line 49
    .line 50
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    move-result-object v10

    .line 52
    move-object v2, p1

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    new-instance p3, Lcom/google/android/datatransport/runtime/scheduling/persistence/y;

    .line 59
    .line 60
    .line 61
    invoke-direct {p3, p0, v0, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/y;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Ljava/util/List;Lcom/google/android/datatransport/runtime/p;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->A1(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 65
    return-object v0
.end method

.method public static synthetic t0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Ljava/util/Map;Lh2/a$a;Landroid/database/Cursor;)Lh2/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->g1(Ljava/util/Map;Lh2/a$a;Landroid/database/Cursor;)Lh2/a;

    move-result-object p0

    return-object p0
.end method

.method private t1(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/k;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$c;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "event_id IN ("

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    move-result v3

    .line 18
    .line 19
    if-ge v2, v3, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/k;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k;->c()J

    .line 29
    move-result-wide v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 36
    move-result v3

    .line 37
    .line 38
    add-int/lit8 v3, v3, -0x1

    .line 39
    .line 40
    if-ge v2, v3, :cond_0

    .line 41
    .line 42
    const/16 v3, 0x2c

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    const/16 p2, 0x29

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "event_metadata"

    .line 56
    .line 57
    const-string p2, "name"

    .line 58
    .line 59
    const-string v2, "value"

    .line 60
    .line 61
    const-string v4, "event_id"

    .line 62
    .line 63
    .line 64
    filled-new-array {v4, p2, v2}, [Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    move-object v2, p1

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    new-instance p2, Lcom/google/android/datatransport/runtime/scheduling/persistence/t;

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/t;-><init>(Ljava/util/Map;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->A1(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 87
    return-object v0
.end method

.method private static u1(Ljava/lang/String;)[B
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private v1(Lh2/a$a;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh2/a$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lh2/c;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lh2/d;->c()Lh2/d$a;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lh2/d$a;->c(Ljava/lang/String;)Lh2/d$a;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lh2/d$a;->b(Ljava/util/List;)Lh2/d$a;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lh2/d$a;->a()Lh2/d;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lh2/a$a;->a(Lh2/d;)Lh2/a$a;

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method private w1(J)[B
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->L0()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "event_payloads"

    .line 7
    .line 8
    const-string v2, "bytes"

    .line 9
    .line 10
    .line 11
    filled-new-array {v2}, [Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    const-string v3, "event_id = ?"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    filled-new-array {p1}, [Ljava/lang/String;

    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    .line 26
    const-string v7, "sequence_num"

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    new-instance p2, Lcom/google/android/datatransport/runtime/scheduling/persistence/a0;

    .line 33
    .line 34
    .line 35
    invoke-direct {p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/a0;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->A1(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, [B

    .line 42
    return-object p1
.end method

.method private x1(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$d;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$d<",
            "TT;>;",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b<",
            "Ljava/lang/Throwable;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->monotonicClock:Lm2/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lm2/a;->a()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$d;->a()Ljava/lang/Object;

    .line 10
    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception v2

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->monotonicClock:Lm2/a;

    .line 15
    .line 16
    .line 17
    invoke-interface {v3}, Lm2/a;->a()J

    .line 18
    move-result-wide v3

    .line 19
    .line 20
    iget-object v5, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->b()I

    .line 24
    move-result v5

    .line 25
    int-to-long v5, v5

    .line 26
    add-long/2addr v5, v0

    .line 27
    .line 28
    cmp-long v3, v3, v5

    .line 29
    .line 30
    if-ltz v3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    .line 37
    :cond_0
    const-wide/16 v2, 0x32

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 41
    goto :goto_0
.end method

.method public static synthetic y0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->m1(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static y1(Ljava/lang/String;)Lf2/b;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->PROTOBUF_ENCODING:Lf2/b;

    .line 5
    return-object p0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Lf2/b;->b(Ljava/lang/String;)Lf2/b;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static z1(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/k;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "("

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/k;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k;->c()J

    .line 27
    move-result-wide v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const/16 v1, 0x2c

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    const/16 p0, 0x29

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method


# virtual methods
.method public A0(Lcom/google/android/datatransport/runtime/p;Lcom/google/android/datatransport/runtime/i;)Lcom/google/android/datatransport/runtime/scheduling/persistence/k;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->d()Lf2/d;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    aput-object v1, v0, v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/i;->j()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    aput-object v1, v0, v2

    .line 18
    const/4 v1, 0x2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->b()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    aput-object v2, v0, v1

    .line 25
    .line 26
    const-string v1, "SQLiteEventStore"

    .line 27
    .line 28
    const-string v2, "Storing event with priority=%s, name=%s for destination %s"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2, v0}, Li2/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/i0;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/i0;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Lcom/google/android/datatransport/runtime/i;Lcom/google/android/datatransport/runtime/p;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->Q0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    const-wide/16 v2, 0x1

    .line 49
    .line 50
    cmp-long v2, v0, v2

    .line 51
    .line 52
    if-gez v2, :cond_0

    .line 53
    const/4 p1, 0x0

    .line 54
    return-object p1

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k;->a(JLcom/google/android/datatransport/runtime/p;Lcom/google/android/datatransport/runtime/i;)Lcom/google/android/datatransport/runtime/scheduling/persistence/k;

    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method K0()J
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->N0()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->c0()J

    .line 8
    move-result-wide v2

    .line 9
    mul-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method L0()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/t0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/w;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/w;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/t0;)V

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->x1(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$d;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    return-object v0
.end method

.method Q0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->L0()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 23
    throw p1
.end method

.method public V(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v1, "DELETE FROM events WHERE _id in "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->z1(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->L0()Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 44
    return-void
.end method

.method public a(Ll2/b$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll2/b$a<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->L0()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->I0(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-interface {p1}, Ll2/b$a;->execute()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 23
    throw p1
.end method

.method public a0()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/p;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/l;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/l;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->Q0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/t0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/o;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/o;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->Q0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 9
    return-void
.end method

.method public h()Lh2/a;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lh2/a;->e()Lh2/a$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/u;

    .line 12
    .line 13
    const-string v3, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/u;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Ljava/lang/String;Ljava/util/Map;Lh2/a$a;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->Q0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lh2/a;

    .line 23
    return-object v0
.end method

.method public i(JLh2/c$b;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p4, p3, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m;-><init>(Ljava/lang/String;Lh2/c$b;J)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->Q0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 9
    return-void
.end method

.method public l0(Lcom/google/android/datatransport/runtime/p;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->L0()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->b()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->d()Lf2/d;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ln2/a;->a(Lf2/d;)I

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    filled-new-array {v1, p1}, [Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string v1, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/f0;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/f0;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->A1(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 45
    move-result-wide v0

    .line 46
    return-wide v0
.end method

.method public m0(Lcom/google/android/datatransport/runtime/p;)Z
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/l0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/l0;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Lcom/google/android/datatransport/runtime/p;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->Q0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public n0(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v1, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->z1(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/q;

    .line 35
    .line 36
    const-string v1, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/q;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->Q0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public r0(Lcom/google/android/datatransport/runtime/p;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/p;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/k;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/p;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/p;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;Lcom/google/android/datatransport/runtime/p;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->Q0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Iterable;

    .line 12
    return-object p1
.end method

.method public v()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->wallClock:Lm2/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lm2/a;->a()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->c()J

    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v0, v2

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/j0;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/j0;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->Q0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public y(Lcom/google/android/datatransport/runtime/p;J)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/n;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p2, p3, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/n;-><init>(JLcom/google/android/datatransport/runtime/p;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/m0;->Q0(Lcom/google/android/datatransport/runtime/scheduling/persistence/m0$b;)Ljava/lang/Object;

    .line 9
    return-void
.end method
