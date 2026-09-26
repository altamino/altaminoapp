.class public final Landroidx/work/impl/model/WorkSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation build Landroidx/room/Entity;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/WorkSpec$IdAndState;,
        Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;,
        Landroidx/work/impl/model/WorkSpec$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkSpec.kt\nandroidx/work/impl/model/WorkSpec\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,407:1\n1549#2:408\n1620#2,3:409\n*S KotlinDebug\n*F\n+ 1 WorkSpec.kt\nandroidx/work/impl/model/WorkSpec\n*L\n400#1:408\n400#1:409,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/work/impl/model/WorkSpec$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCHEDULE_NOT_REQUESTED_YET:J = -0x1L

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WORK_INFO_MAPPER:Landroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public backoffDelayDuration:J
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public backoffPolicy:Landroidx/work/BackoffPolicy;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public constraints:Landroidx/work/Constraints;
    .annotation build Landroidx/room/Embedded;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public expedited:Z
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public flexDuration:J
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field private final generation:I
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public initialDelay:J
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public input:Landroidx/work/Data;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public inputMergerClassName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public intervalDuration:J
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public lastEnqueueTime:J
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public minimumRetentionDuration:J
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public output:Landroidx/work/Data;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private periodCount:I
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public runAttemptCount:I
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public scheduleRequestedAt:J
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public state:Landroidx/work/WorkInfo$State;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public workerClassName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/work/impl/model/WorkSpec$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/work/impl/model/WorkSpec$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/work/impl/model/WorkSpec;->Companion:Landroidx/work/impl/model/WorkSpec$Companion;

    .line 9
    .line 10
    const-string v0, "WorkSpec"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/work/Logger;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "tagWithPrefix(\"WorkSpec\")"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    sput-object v0, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Landroidx/work/impl/model/a;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/work/impl/model/a;-><init>()V

    .line 28
    .line 29
    sput-object v0, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Landroidx/arch/core/util/Function;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkInfo$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/work/Data;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/work/Data;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/work/Constraints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p15    # Landroidx/work/BackoffPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p25    # Landroidx/work/OutOfQuotaPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p13

    move-object/from16 v7, p15

    move-object/from16 v8, p25

    const-string v9, "id"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "state"

    invoke-static {p2, v9}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "workerClassName"

    invoke-static {p3, v9}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "input"

    invoke-static {p5, v9}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "output"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "constraints"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "backoffPolicy"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "outOfQuotaPolicy"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iput-object v2, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    iput-object v3, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    iput-object v4, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    iput-object v5, v0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    move-wide/from16 v1, p7

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move-wide/from16 v1, p9

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move-wide/from16 v1, p11

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iput-object v6, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    move/from16 v1, p14

    iput v1, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iput-object v7, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v1, p24

    iput-boolean v1, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    iput-object v8, v0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    move/from16 v1, p26

    iput v1, v0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    move/from16 v1, p27

    iput v1, v0, Landroidx/work/impl/model/WorkSpec;->generation:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIILkotlin/jvm/internal/k;)V
    .locals 30

    move/from16 v0, p28

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const-string v2, "EMPTY"

    if-eqz v1, :cond_2

    .line 3
    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 4
    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    move-wide v9, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-wide v11, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-wide v13, v2

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p11

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 5
    sget-object v1, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    move-object v15, v1

    goto :goto_7

    :cond_7
    move-object/from16 v15, p13

    :goto_7
    and-int/lit16 v1, v0, 0x400

    const/4 v5, 0x0

    if-eqz v1, :cond_8

    move/from16 v16, v5

    goto :goto_8

    :cond_8
    move/from16 v16, p14

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    .line 6
    sget-object v1, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    move-object/from16 v17, v1

    goto :goto_9

    :cond_9
    move-object/from16 v17, p15

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const-wide/16 v18, 0x7530

    goto :goto_a

    :cond_a
    move-wide/from16 v18, p16

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-wide/from16 v20, v2

    goto :goto_b

    :cond_b
    move-wide/from16 v20, p18

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-wide/from16 v22, v2

    goto :goto_c

    :cond_c
    move-wide/from16 v22, p20

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    const-wide/16 v1, -0x1

    move-wide/from16 v24, v1

    goto :goto_d

    :cond_d
    move-wide/from16 v24, p22

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move/from16 v26, v5

    goto :goto_e

    :cond_e
    move/from16 v26, p24

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    .line 7
    sget-object v1, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    move-object/from16 v27, v1

    goto :goto_f

    :cond_f
    move-object/from16 v27, p25

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move/from16 v28, v5

    goto :goto_10

    :cond_10
    move/from16 v28, p26

    :goto_10
    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    move/from16 v29, v5

    goto :goto_11

    :cond_11
    move/from16 v29, p27

    :goto_11
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    .line 8
    invoke-direct/range {v2 .. v29}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/work/impl/model/WorkSpec;)V
    .locals 33
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/impl/model/WorkSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "newId"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "other"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v4, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 11
    iget-object v3, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 12
    iget-object v5, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 13
    new-instance v7, Landroidx/work/Data;

    move-object v6, v7

    iget-object v8, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-direct {v7, v8}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 14
    new-instance v8, Landroidx/work/Data;

    move-object v7, v8

    iget-object v9, v0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-direct {v8, v9}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 15
    iget-wide v8, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 16
    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 17
    iget-wide v12, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 18
    new-instance v15, Landroidx/work/Constraints;

    move-object v14, v15

    move-object/from16 v31, v1

    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-direct {v15, v1}, Landroidx/work/Constraints;-><init>(Landroidx/work/Constraints;)V

    .line 19
    iget v15, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 20
    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move-object/from16 v16, v1

    move-object/from16 v32, v2

    .line 21
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-wide/from16 v17, v1

    .line 22
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    move-wide/from16 v19, v1

    .line 23
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move-wide/from16 v21, v1

    .line 24
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move-wide/from16 v23, v1

    .line 25
    iget-boolean v1, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    move/from16 v25, v1

    .line 26
    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    move-object/from16 v26, v1

    .line 27
    iget v0, v0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    move/from16 v27, v0

    const/16 v28, 0x0

    const/high16 v29, 0x80000

    const/16 v30, 0x0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    .line 28
    invoke-direct/range {v1 .. v30}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 30
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    const-string v2, "id"

    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "workerClassName_"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0xffffa

    const/16 v29, 0x0

    .line 9
    invoke-direct/range {v0 .. v29}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/impl/model/WorkSpec;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    check-cast p0, Ljava/lang/Iterable;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->a()Landroidx/work/WorkInfo;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :cond_1
    return-object v0
.end method

.method public static synthetic e(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIILjava/lang/Object;)Landroidx/work/impl/model/WorkSpec;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p28

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-wide v8, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    goto :goto_6

    :cond_6
    move-wide/from16 v8, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    goto :goto_7

    :cond_7
    move-wide/from16 v10, p9

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-wide v12, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    goto :goto_8

    :cond_8
    move-wide/from16 v12, p11

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-object v14, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget v15, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    goto :goto_a

    :cond_a
    move/from16 v15, p14

    :goto_a
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p15

    :goto_b
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x1000

    move-object/from16 p13, v14

    if-eqz v15, :cond_c

    iget-wide v14, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p16

    :goto_c
    move-wide/from16 p16, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_d

    iget-wide v14, v0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    goto :goto_d

    :cond_d
    move-wide/from16 v14, p18

    :goto_d
    move-wide/from16 p18, v14

    and-int/lit16 v14, v1, 0x4000

    if-eqz v14, :cond_e

    iget-wide v14, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    goto :goto_e

    :cond_e
    move-wide/from16 v14, p20

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-wide/from16 p20, v14

    if-eqz v16, :cond_f

    iget-wide v14, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    goto :goto_f

    :cond_f
    move-wide/from16 v14, p22

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-wide/from16 p22, v14

    if-eqz v16, :cond_10

    iget-boolean v14, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    goto :goto_10

    :cond_10
    move/from16 v14, p24

    :goto_10
    const/high16 v15, 0x20000

    and-int/2addr v15, v1

    if-eqz v15, :cond_11

    iget-object v15, v0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p25

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_12

    iget v15, v0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    goto :goto_12

    :cond_12
    move/from16 v15, p26

    :goto_12
    const/high16 v16, 0x80000

    and-int v1, v1, v16

    if-eqz v1, :cond_13

    iget v1, v0, Landroidx/work/impl/model/WorkSpec;->generation:I

    goto :goto_13

    :cond_13
    move/from16 v1, p27

    :goto_13
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move-wide/from16 p11, v12

    move/from16 p24, v14

    move/from16 p26, v15

    move/from16 p27, v1

    invoke-virtual/range {p0 .. p27}, Landroidx/work/impl/model/WorkSpec;->d(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()J
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec;->i()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 9
    .line 10
    sget-object v1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 15
    .line 16
    iget v2, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 17
    int-to-long v2, v2

    .line 18
    mul-long/2addr v0, v2

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 22
    long-to-float v0, v0

    .line 23
    .line 24
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    .line 30
    move-result v0

    .line 31
    float-to-long v0, v0

    .line 32
    .line 33
    :goto_0
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 34
    .line 35
    .line 36
    const-wide/32 v4, 0x112a880

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, v4, v5}, Lj8/m;->k(JJ)J

    .line 40
    move-result-wide v0

    .line 41
    add-long/2addr v2, v0

    .line 42
    goto :goto_2

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec;->j()Z

    .line 46
    move-result v0

    .line 47
    .line 48
    const-wide/16 v1, 0x0

    .line 49
    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 53
    .line 54
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    iget-wide v5, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 59
    add-long/2addr v3, v5

    .line 60
    .line 61
    :cond_2
    iget-wide v5, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 62
    .line 63
    iget-wide v7, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 64
    .line 65
    cmp-long v9, v5, v7

    .line 66
    .line 67
    if-eqz v9, :cond_4

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    const/4 v0, -0x1

    .line 71
    int-to-long v0, v0

    .line 72
    .line 73
    mul-long v1, v0, v5

    .line 74
    :cond_3
    add-long/2addr v3, v7

    .line 75
    .line 76
    :goto_1
    add-long v2, v3, v1

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_4
    if-nez v0, :cond_5

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    move-wide v1, v7

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_6
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 85
    .line 86
    cmp-long v0, v3, v1

    .line 87
    .line 88
    if-nez v0, :cond_7

    .line 89
    .line 90
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    move-result-wide v3

    .line 93
    .line 94
    :cond_7
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 95
    .line 96
    add-long v2, v3, v0

    .line 97
    :goto_2
    return-wide v2
.end method

.method public final d(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)Landroidx/work/impl/model/WorkSpec;
    .locals 30
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkInfo$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/work/Data;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/work/Data;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/work/Constraints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p15    # Landroidx/work/BackoffPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p25    # Landroidx/work/OutOfQuotaPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move-wide/from16 v20, p20

    move-wide/from16 v22, p22

    move/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    const-string v0, "id"

    move-object/from16 v28, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerClassName"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraints"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backoffPolicy"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "outOfQuotaPolicy"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v29, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct/range {v0 .. v27}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    return-object v29
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/work/impl/model/WorkSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/work/impl/model/WorkSpec;

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget v3, p1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    iget-boolean v3, p1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    iget v3, p1, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    iget p1, p1, Landroidx/work/impl/model/WorkSpec;->generation:I

    if-eq v1, p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    return v0
.end method

.method public final h()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    xor-int/lit8 v0, v0, 0x1

    .line 11
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v1}, Landroidx/work/Data;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-virtual {v1}, Landroidx/work/Data;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    invoke-static {v1, v2}, Li/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    invoke-static {v1, v2}, Li/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    invoke-static {v1, v2}, Li/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v1}, Landroidx/work/Constraints;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-static {v1, v2}, Li/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    invoke-static {v1, v2}, Li/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    invoke-static {v1, v2}, Li/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    invoke-static {v1, v2}, Li/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 3
    .line 4
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final j()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k(J)V
    .locals 9

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0x112a880

    .line 4
    .line 5
    cmp-long v0, p1, v0

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sget-object v1, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "Backoff delay duration exceeds maximum value"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    :cond_0
    const-wide/16 v0, 0x2710

    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-gez v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    sget-object v1, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v2, "Backoff delay duration less than minimum value"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    :cond_1
    const-wide/16 v5, 0x2710

    .line 38
    .line 39
    .line 40
    const-wide/32 v7, 0x112a880

    .line 41
    move-wide v3, p1

    .line 42
    .line 43
    .line 44
    invoke-static/range {v3 .. v8}, Lj8/m;->p(JJJ)J

    .line 45
    move-result-wide p1

    .line 46
    .line 47
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 48
    return-void
.end method

.method public final l(J)V
    .locals 5

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0xdbba0

    .line 4
    .line 5
    cmp-long v2, p1, v0

    .line 6
    .line 7
    if-gez v2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    sget-object v3, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v4, "Interval duration lesser than minimum allowed value; Changed to 900000"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p1, p2, v0, v1}, Lj8/m;->f(JJ)J

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2, v0, v1}, Lj8/m;->f(JJ)J

    .line 26
    move-result-wide p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2, v3, p1, p2}, Landroidx/work/impl/model/WorkSpec;->m(JJ)V

    .line 30
    return-void
.end method

.method public final m(JJ)V
    .locals 8

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0xdbba0

    .line 4
    .line 5
    cmp-long v2, p1, v0

    .line 6
    .line 7
    if-gez v2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    sget-object v3, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v4, "Interval duration lesser than minimum allowed value; Changed to 900000"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p1, p2, v0, v1}, Lj8/m;->f(JJ)J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 25
    .line 26
    .line 27
    const-wide/32 v0, 0x493e0

    .line 28
    .line 29
    cmp-long v0, p3, v0

    .line 30
    .line 31
    if-gez v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    sget-object v1, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "Flex duration lesser than minimum allowed value; Changed to 300000"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    :cond_1
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 45
    .line 46
    cmp-long v0, p3, v0

    .line 47
    .line 48
    if-lez v0, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    sget-object v1, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    const-string v3, "Flex duration greater than interval duration; Changed to "

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, p1}, Landroidx/work/Logger;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    const-wide/32 v4, 0x493e0

    .line 78
    .line 79
    iget-wide v6, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 80
    move-wide v2, p3

    .line 81
    .line 82
    .line 83
    invoke-static/range {v2 .. v7}, Lj8/m;->p(JJJ)J

    .line 84
    move-result-wide p1

    .line 85
    .line 86
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
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
    .line 8
    const-string/jumbo v1, "{WorkSpec: "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const/16 v1, 0x7d

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
