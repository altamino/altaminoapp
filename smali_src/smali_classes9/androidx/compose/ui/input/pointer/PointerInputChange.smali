.class public final Landroidx/compose/ui/input/pointer/PointerInputChange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation


# instance fields
.field private _historical:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/HistoricalChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private consumed:Landroidx/compose/ui/input/pointer/ConsumedData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final id:J

.field private final position:J

.field private final pressed:Z

.field private final previousPosition:J

.field private final previousPressed:Z

.field private final previousUptimeMillis:J

.field private final scrollDelta:J

.field private final type:I

.field private final uptimeMillis:J


# direct methods
.method private constructor <init>(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;I)V
    .locals 19

    .line 11
    invoke-virtual/range {p13 .. p13}, Landroidx/compose/ui/input/pointer/ConsumedData;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p13 .. p13}, Landroidx/compose/ui/input/pointer/ConsumedData;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v14, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 12
    :goto_2
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    move-result-wide v16

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move/from16 v13, p12

    move/from16 v15, p14

    .line 13
    invoke-direct/range {v1 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZIJLkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;IILkotlin/jvm/internal/k;)V
    .locals 17

    move/from16 v0, p15

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->d()I

    move-result v0

    move v15, v0

    goto :goto_0

    :cond_0
    move/from16 v15, p14

    :goto_0
    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move/from16 v13, p12

    move-object/from16 v14, p13

    .line 10
    invoke-direct/range {v1 .. v16}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;ILkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p14}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;I)V

    return-void
.end method

.method private constructor <init>(JJJZJJZZIJ)V
    .locals 3

    move-object v0, p0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    move v1, p7

    iput-boolean v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    move-wide v1, p8

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    move-wide v1, p10

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    move v1, p12

    iput-boolean v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    .line 5
    new-instance v1, Landroidx/compose/ui/input/pointer/ConsumedData;

    move/from16 v2, p13

    invoke-direct {v1, v2, v2}, Landroidx/compose/ui/input/pointer/ConsumedData;-><init>(ZZ)V

    iput-object v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    return-void
.end method

.method public synthetic constructor <init>(JJJZJJZZIJILkotlin/jvm/internal/k;)V
    .locals 20

    move/from16 v0, p17

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->d()I

    move-result v1

    move/from16 v16, v1

    goto :goto_0

    :cond_0
    move/from16 v16, p14

    :goto_0
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    move-result-wide v0

    move-wide/from16 v17, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v17, p15

    :goto_1
    const/16 v19, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move/from16 v15, p13

    .line 8
    invoke-direct/range {v2 .. v19}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZIJLkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(JJJZJJZZIJLkotlin/jvm/internal/k;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p16}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZIJ)V

    return-void
.end method

.method private constructor <init>(JJJZJJZZILjava/util/List;J)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJZZI",
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/HistoricalChange;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-wide/from16 v15, p16

    const/16 v17, 0x0

    .line 14
    invoke-direct/range {v0 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZIJLkotlin/jvm/internal/k;)V

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->_historical:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(JJJZJJZZILjava/util/List;JLkotlin/jvm/internal/k;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p17}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZILjava/util/List;J)V

    return-void
.end method

.method public static synthetic c(Landroidx/compose/ui/input/pointer/PointerInputChange;JJJZJJZILjava/util/List;JILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p17

    .line 5
    .line 6
    and-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-wide v2, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    move-wide/from16 v2, p1

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v4, v1, 0x2

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    iget-wide v4, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_1
    move-wide/from16 v4, p3

    .line 23
    .line 24
    :goto_1
    and-int/lit8 v6, v1, 0x4

    .line 25
    .line 26
    if-eqz v6, :cond_2

    .line 27
    .line 28
    iget-wide v6, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 29
    goto :goto_2

    .line 30
    .line 31
    :cond_2
    move-wide/from16 v6, p5

    .line 32
    .line 33
    :goto_2
    and-int/lit8 v8, v1, 0x8

    .line 34
    .line 35
    if-eqz v8, :cond_3

    .line 36
    .line 37
    iget-boolean v8, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 38
    goto :goto_3

    .line 39
    .line 40
    :cond_3
    move/from16 v8, p7

    .line 41
    .line 42
    :goto_3
    and-int/lit8 v9, v1, 0x10

    .line 43
    .line 44
    if-eqz v9, :cond_4

    .line 45
    .line 46
    iget-wide v9, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    .line 47
    goto :goto_4

    .line 48
    .line 49
    :cond_4
    move-wide/from16 v9, p8

    .line 50
    .line 51
    :goto_4
    and-int/lit8 v11, v1, 0x20

    .line 52
    .line 53
    if-eqz v11, :cond_5

    .line 54
    .line 55
    iget-wide v11, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    .line 56
    goto :goto_5

    .line 57
    .line 58
    :cond_5
    move-wide/from16 v11, p10

    .line 59
    .line 60
    :goto_5
    and-int/lit8 v13, v1, 0x40

    .line 61
    .line 62
    if-eqz v13, :cond_6

    .line 63
    .line 64
    iget-boolean v13, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    .line 65
    goto :goto_6

    .line 66
    .line 67
    :cond_6
    move/from16 v13, p12

    .line 68
    .line 69
    :goto_6
    and-int/lit16 v14, v1, 0x80

    .line 70
    .line 71
    if-eqz v14, :cond_7

    .line 72
    .line 73
    iget v14, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 74
    goto :goto_7

    .line 75
    .line 76
    :cond_7
    move/from16 v14, p13

    .line 77
    .line 78
    :goto_7
    and-int/lit16 v1, v1, 0x200

    .line 79
    .line 80
    move/from16 p1, v14

    .line 81
    .line 82
    if-eqz v1, :cond_8

    .line 83
    .line 84
    iget-wide v14, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    .line 85
    move-wide v15, v14

    .line 86
    goto :goto_8

    .line 87
    .line 88
    :cond_8
    move-wide/from16 v15, p15

    .line 89
    .line 90
    :goto_8
    move-object/from16 v0, p0

    .line 91
    move-wide v1, v2

    .line 92
    move-wide v3, v4

    .line 93
    move-wide v5, v6

    .line 94
    move v7, v8

    .line 95
    move-wide v8, v9

    .line 96
    move-wide v10, v11

    .line 97
    move v12, v13

    .line 98
    .line 99
    move/from16 v13, p1

    .line 100
    .line 101
    move-object/from16 v14, p14

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {v0 .. v16}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b(JJJZJJZILjava/util/List;J)Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/ConsumedData;->c(Z)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/ConsumedData;->d(Z)V

    .line 12
    return-void
.end method

.method public final b(JJJZJJZILjava/util/List;J)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 20
    .param p14    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJZI",
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/HistoricalChange;",
            ">;J)",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-wide/from16 v1, p1

    .line 3
    .line 4
    move-wide/from16 v3, p3

    .line 5
    .line 6
    move-wide/from16 v5, p5

    .line 7
    .line 8
    move/from16 v7, p7

    .line 9
    .line 10
    move-wide/from16 v8, p8

    .line 11
    .line 12
    move-wide/from16 v10, p10

    .line 13
    .line 14
    move/from16 v12, p12

    .line 15
    .line 16
    move/from16 v14, p13

    .line 17
    .line 18
    move-object/from16 v15, p14

    .line 19
    .line 20
    move-wide/from16 v16, p15

    .line 21
    .line 22
    const-string v0, "historical"

    .line 23
    .line 24
    move-object/from16 v13, p14

    .line 25
    .line 26
    .line 27
    invoke-static {v13, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    new-instance v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 30
    move-object v0, v13

    .line 31
    .line 32
    const/16 v18, 0x0

    .line 33
    .line 34
    move-object/from16 v19, v13

    .line 35
    .line 36
    move/from16 v13, v18

    .line 37
    .line 38
    const/16 v18, 0x0

    .line 39
    .line 40
    .line 41
    invoke-direct/range {v0 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZILjava/util/List;JLkotlin/jvm/internal/k;)V

    .line 42
    .line 43
    move-object/from16 v0, p0

    .line 44
    .line 45
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 46
    .line 47
    move-object/from16 v2, v19

    .line 48
    .line 49
    iput-object v1, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 50
    return-object v2
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/HistoricalChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->_historical:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    return-wide v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    return v0
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    return-wide v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    return v0
.end method

.method public final j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    return-wide v0
.end method

.method public final k()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    return v0
.end method

.method public final l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    return-wide v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/ConsumedData;->a()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/ConsumedData;->b()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "PointerInputChange(id="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/compose/ui/input/pointer/PointerId;->f(J)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, ", uptimeMillis="

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, ", position="

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->t(J)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, ", pressed="

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, ", previousUptimeMillis="

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, ", previousPosition="

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->t(J)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v1, ", previousPressed="

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, ", isConsumed="

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->m()Z

    .line 96
    move-result v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, ", type="

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    iget v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Landroidx/compose/ui/input/pointer/PointerType;->j(I)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v1, ", historical="

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->d()Ljava/util/List;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v1, ",scrollDelta="

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->t(J)Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const/16 v1, 0x29

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    return-object v0
.end method
