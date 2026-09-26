.class public Lcom/bumptech/glide/i;
.super Ly0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ly0/a<",
        "Lcom/bumptech/glide/i<",
        "TTranscodeType;>;>;"
    }
.end annotation


# static fields
.field protected static final DOWNLOAD_ONLY_OPTIONS:Ly0/f;


# instance fields
.field private final context:Landroid/content/Context;

.field private errorBuilder:Lcom/bumptech/glide/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final glide:Lcom/bumptech/glide/b;

.field private final glideContext:Lcom/bumptech/glide/d;

.field private isDefaultTransitionOptionsSet:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private model:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private requestListeners:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly0/e<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private final requestManager:Lcom/bumptech/glide/j;

.field private thumbSizeMultiplier:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private thumbnailBuilder:Lcom/bumptech/glide/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transitionOptions:Lcom/bumptech/glide/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/k<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ly0/f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ly0/f;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/bumptech/glide/load/engine/j;->DATA:Lcom/bumptech/glide/load/engine/j;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ly0/a;->g(Lcom/bumptech/glide/load/engine/j;)Ly0/a;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Ly0/f;

    .line 14
    .line 15
    sget-object v1, Lcom/bumptech/glide/f;->LOW:Lcom/bumptech/glide/f;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ly0/a;->N(Lcom/bumptech/glide/f;)Ly0/a;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Ly0/f;

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ly0/a;->V(Z)Ly0/a;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Ly0/f;

    .line 29
    .line 30
    sput-object v0, Lcom/bumptech/glide/i;->DOWNLOAD_ONLY_OPTIONS:Ly0/f;

    .line 31
    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/j;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b;",
            "Lcom/bumptech/glide/j;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ly0/a;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/bumptech/glide/i;->isDefaultTransitionOptionsSet:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/i;->glide:Lcom/bumptech/glide/b;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/bumptech/glide/i;->requestManager:Lcom/bumptech/glide/j;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/bumptech/glide/i;->transcodeClass:Ljava/lang/Class;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/bumptech/glide/i;->context:Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/j;->o(Ljava/lang/Class;)Lcom/bumptech/glide/k;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    iput-object p3, p0, Lcom/bumptech/glide/i;->transitionOptions:Lcom/bumptech/glide/k;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->i()Lcom/bumptech/glide/d;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/i;->glideContext:Lcom/bumptech/glide/d;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/bumptech/glide/j;->m()Ljava/util/List;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/bumptech/glide/i;->i0(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/bumptech/glide/j;->n()Ly0/f;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->c0(Ly0/a;)Lcom/bumptech/glide/i;

    .line 41
    return-void
.end method

.method private d0(Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/a;Ljava/util/concurrent/Executor;)Ly0/c;
    .locals 11
    .param p2    # Ly0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/e<",
            "TTranscodeType;>;",
            "Ly0/e<",
            "TTranscodeType;>;",
            "Ly0/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ly0/c;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v1, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v4, 0x0

    .line 7
    .line 8
    iget-object v5, p0, Lcom/bumptech/glide/i;->transitionOptions:Lcom/bumptech/glide/k;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Ly0/a;->u()Lcom/bumptech/glide/f;

    .line 12
    move-result-object v6

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Ly0/a;->r()I

    .line 16
    move-result v7

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Ly0/a;->q()I

    .line 20
    move-result v8

    .line 21
    move-object v0, p0

    .line 22
    move-object v2, p1

    .line 23
    move-object v3, p2

    .line 24
    move-object v9, p3

    .line 25
    move-object v10, p4

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->e0(Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILy0/a;Ljava/util/concurrent/Executor;)Ly0/c;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private e0(Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILy0/a;Ljava/util/concurrent/Executor;)Ly0/c;
    .locals 23
    .param p3    # Ly0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ly0/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/e<",
            "TTranscodeType;>;",
            "Ly0/e<",
            "TTranscodeType;>;",
            "Ly0/d;",
            "Lcom/bumptech/glide/k<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/f;",
            "II",
            "Ly0/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ly0/c;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v11, p0

    .line 3
    .line 4
    iget-object v0, v11, Lcom/bumptech/glide/i;->errorBuilder:Lcom/bumptech/glide/i;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ly0/b;

    .line 9
    .line 10
    move-object/from16 v13, p1

    .line 11
    .line 12
    move-object/from16 v1, p4

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v13, v1}, Ly0/b;-><init>(Ljava/lang/Object;Ly0/d;)V

    .line 16
    move-object v4, v0

    .line 17
    move-object v15, v4

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    move-object/from16 v13, p1

    .line 21
    .line 22
    move-object/from16 v1, p4

    .line 23
    const/4 v0, 0x0

    .line 24
    move-object v15, v0

    .line 25
    move-object v4, v1

    .line 26
    .line 27
    :goto_0
    move-object/from16 v0, p0

    .line 28
    .line 29
    move-object/from16 v1, p1

    .line 30
    .line 31
    move-object/from16 v2, p2

    .line 32
    .line 33
    move-object/from16 v3, p3

    .line 34
    .line 35
    move-object/from16 v5, p5

    .line 36
    .line 37
    move-object/from16 v6, p6

    .line 38
    .line 39
    move/from16 v7, p7

    .line 40
    .line 41
    move/from16 v8, p8

    .line 42
    .line 43
    move-object/from16 v9, p9

    .line 44
    .line 45
    move-object/from16 v10, p10

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->f0(Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILy0/a;Ljava/util/concurrent/Executor;)Ly0/c;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    if-nez v15, :cond_1

    .line 52
    return-object v0

    .line 53
    .line 54
    :cond_1
    iget-object v1, v11, Lcom/bumptech/glide/i;->errorBuilder:Lcom/bumptech/glide/i;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ly0/a;->r()I

    .line 58
    move-result v1

    .line 59
    .line 60
    iget-object v2, v11, Lcom/bumptech/glide/i;->errorBuilder:Lcom/bumptech/glide/i;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ly0/a;->q()I

    .line 64
    move-result v2

    .line 65
    .line 66
    .line 67
    invoke-static/range {p7 .. p8}, Lcom/bumptech/glide/util/k;->r(II)Z

    .line 68
    move-result v3

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    iget-object v3, v11, Lcom/bumptech/glide/i;->errorBuilder:Lcom/bumptech/glide/i;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ly0/a;->I()Z

    .line 76
    move-result v3

    .line 77
    .line 78
    if-nez v3, :cond_2

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {p9 .. p9}, Ly0/a;->r()I

    .line 82
    move-result v1

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {p9 .. p9}, Ly0/a;->q()I

    .line 86
    move-result v2

    .line 87
    .line 88
    :cond_2
    move/from16 v19, v1

    .line 89
    .line 90
    move/from16 v20, v2

    .line 91
    .line 92
    iget-object v12, v11, Lcom/bumptech/glide/i;->errorBuilder:Lcom/bumptech/glide/i;

    .line 93
    .line 94
    iget-object v1, v12, Lcom/bumptech/glide/i;->transitionOptions:Lcom/bumptech/glide/k;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v12}, Ly0/a;->u()Lcom/bumptech/glide/f;

    .line 98
    move-result-object v18

    .line 99
    .line 100
    iget-object v2, v11, Lcom/bumptech/glide/i;->errorBuilder:Lcom/bumptech/glide/i;

    .line 101
    .line 102
    move-object/from16 v13, p1

    .line 103
    .line 104
    move-object/from16 v14, p2

    .line 105
    move-object v3, v15

    .line 106
    .line 107
    move-object/from16 v15, p3

    .line 108
    .line 109
    move-object/from16 v16, v3

    .line 110
    .line 111
    move-object/from16 v17, v1

    .line 112
    .line 113
    move-object/from16 v21, v2

    .line 114
    .line 115
    move-object/from16 v22, p10

    .line 116
    .line 117
    .line 118
    invoke-direct/range {v12 .. v22}, Lcom/bumptech/glide/i;->e0(Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILy0/a;Ljava/util/concurrent/Executor;)Ly0/c;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v0, v1}, Ly0/b;->o(Ly0/c;Ly0/c;)V

    .line 123
    return-object v3
.end method

.method private f0(Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILy0/a;Ljava/util/concurrent/Executor;)Ly0/c;
    .locals 18
    .param p4    # Ly0/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/e<",
            "TTranscodeType;>;",
            "Ly0/e<",
            "TTranscodeType;>;",
            "Ly0/d;",
            "Lcom/bumptech/glide/k<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/f;",
            "II",
            "Ly0/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ly0/c;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v11, p0

    .line 3
    .line 4
    move-object/from16 v12, p1

    .line 5
    .line 6
    move-object/from16 v5, p4

    .line 7
    .line 8
    move-object/from16 v13, p6

    .line 9
    .line 10
    iget-object v0, v11, Lcom/bumptech/glide/i;->thumbnailBuilder:Lcom/bumptech/glide/i;

    .line 11
    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget-boolean v1, v11, Lcom/bumptech/glide/i;->isThumbnailBuilt:Z

    .line 15
    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    iget-object v1, v0, Lcom/bumptech/glide/i;->transitionOptions:Lcom/bumptech/glide/k;

    .line 19
    .line 20
    iget-boolean v2, v0, Lcom/bumptech/glide/i;->isDefaultTransitionOptionsSet:Z

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    move-object/from16 v14, p5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v14, v1

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0}, Ly0/a;->D()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, v11, Lcom/bumptech/glide/i;->thumbnailBuilder:Lcom/bumptech/glide/i;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ly0/a;->u()Lcom/bumptech/glide/f;

    .line 38
    move-result-object v0

    .line 39
    :goto_1
    move-object v15, v0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-direct {v11, v13}, Lcom/bumptech/glide/i;->h0(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/f;

    .line 44
    move-result-object v0

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :goto_2
    iget-object v0, v11, Lcom/bumptech/glide/i;->thumbnailBuilder:Lcom/bumptech/glide/i;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ly0/a;->r()I

    .line 51
    move-result v0

    .line 52
    .line 53
    iget-object v1, v11, Lcom/bumptech/glide/i;->thumbnailBuilder:Lcom/bumptech/glide/i;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ly0/a;->q()I

    .line 57
    move-result v1

    .line 58
    .line 59
    .line 60
    invoke-static/range {p7 .. p8}, Lcom/bumptech/glide/util/k;->r(II)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    iget-object v2, v11, Lcom/bumptech/glide/i;->thumbnailBuilder:Lcom/bumptech/glide/i;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ly0/a;->I()Z

    .line 69
    move-result v2

    .line 70
    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p9 .. p9}, Ly0/a;->r()I

    .line 75
    move-result v0

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p9 .. p9}, Ly0/a;->q()I

    .line 79
    move-result v1

    .line 80
    .line 81
    :cond_2
    move/from16 v16, v0

    .line 82
    .line 83
    move/from16 v17, v1

    .line 84
    .line 85
    new-instance v10, Ly0/i;

    .line 86
    .line 87
    .line 88
    invoke-direct {v10, v12, v5}, Ly0/i;-><init>(Ljava/lang/Object;Ly0/d;)V

    .line 89
    .line 90
    move-object/from16 v0, p0

    .line 91
    .line 92
    move-object/from16 v1, p1

    .line 93
    .line 94
    move-object/from16 v2, p2

    .line 95
    .line 96
    move-object/from16 v3, p3

    .line 97
    .line 98
    move-object/from16 v4, p9

    .line 99
    move-object v5, v10

    .line 100
    .line 101
    move-object/from16 v6, p5

    .line 102
    .line 103
    move-object/from16 v7, p6

    .line 104
    .line 105
    move/from16 v8, p7

    .line 106
    .line 107
    move/from16 v9, p8

    .line 108
    move-object v13, v10

    .line 109
    .line 110
    move-object/from16 v10, p10

    .line 111
    .line 112
    .line 113
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->q0(Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/a;Ly0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILjava/util/concurrent/Executor;)Ly0/c;

    .line 114
    move-result-object v10

    .line 115
    const/4 v0, 0x1

    .line 116
    .line 117
    iput-boolean v0, v11, Lcom/bumptech/glide/i;->isThumbnailBuilt:Z

    .line 118
    .line 119
    iget-object v9, v11, Lcom/bumptech/glide/i;->thumbnailBuilder:Lcom/bumptech/glide/i;

    .line 120
    move-object v0, v9

    .line 121
    move-object v4, v13

    .line 122
    move-object v5, v14

    .line 123
    move-object v6, v15

    .line 124
    .line 125
    move/from16 v7, v16

    .line 126
    .line 127
    move/from16 v8, v17

    .line 128
    move-object v12, v10

    .line 129
    .line 130
    move-object/from16 v10, p10

    .line 131
    .line 132
    .line 133
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->e0(Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILy0/a;Ljava/util/concurrent/Executor;)Ly0/c;

    .line 134
    move-result-object v0

    .line 135
    const/4 v1, 0x0

    .line 136
    .line 137
    iput-boolean v1, v11, Lcom/bumptech/glide/i;->isThumbnailBuilt:Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {v13, v12, v0}, Ly0/i;->n(Ly0/c;Ly0/c;)V

    .line 141
    return-object v13

    .line 142
    .line 143
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    throw v0

    .line 150
    .line 151
    :cond_4
    iget-object v0, v11, Lcom/bumptech/glide/i;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 152
    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    new-instance v14, Ly0/i;

    .line 156
    .line 157
    .line 158
    invoke-direct {v14, v12, v5}, Ly0/i;-><init>(Ljava/lang/Object;Ly0/d;)V

    .line 159
    .line 160
    move-object/from16 v0, p0

    .line 161
    .line 162
    move-object/from16 v1, p1

    .line 163
    .line 164
    move-object/from16 v2, p2

    .line 165
    .line 166
    move-object/from16 v3, p3

    .line 167
    .line 168
    move-object/from16 v4, p9

    .line 169
    move-object v5, v14

    .line 170
    .line 171
    move-object/from16 v6, p5

    .line 172
    .line 173
    move-object/from16 v7, p6

    .line 174
    .line 175
    move/from16 v8, p7

    .line 176
    .line 177
    move/from16 v9, p8

    .line 178
    .line 179
    move-object/from16 v10, p10

    .line 180
    .line 181
    .line 182
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->q0(Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/a;Ly0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILjava/util/concurrent/Executor;)Ly0/c;

    .line 183
    move-result-object v15

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {p9 .. p9}, Ly0/a;->e()Ly0/a;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    iget-object v1, v11, Lcom/bumptech/glide/i;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 193
    move-result v1

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ly0/a;->U(F)Ly0/a;

    .line 197
    move-result-object v4

    .line 198
    .line 199
    .line 200
    invoke-direct {v11, v13}, Lcom/bumptech/glide/i;->h0(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/f;

    .line 201
    move-result-object v7

    .line 202
    .line 203
    move-object/from16 v0, p0

    .line 204
    .line 205
    move-object/from16 v1, p1

    .line 206
    .line 207
    .line 208
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->q0(Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/a;Ly0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILjava/util/concurrent/Executor;)Ly0/c;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    .line 212
    invoke-virtual {v14, v15, v0}, Ly0/i;->n(Ly0/c;Ly0/c;)V

    .line 213
    return-object v14

    .line 214
    .line 215
    :cond_5
    move-object/from16 v0, p0

    .line 216
    .line 217
    move-object/from16 v1, p1

    .line 218
    .line 219
    move-object/from16 v2, p2

    .line 220
    .line 221
    move-object/from16 v3, p3

    .line 222
    .line 223
    move-object/from16 v4, p9

    .line 224
    .line 225
    move-object/from16 v5, p4

    .line 226
    .line 227
    move-object/from16 v6, p5

    .line 228
    .line 229
    move-object/from16 v7, p6

    .line 230
    .line 231
    move/from16 v8, p7

    .line 232
    .line 233
    move/from16 v9, p8

    .line 234
    .line 235
    move-object/from16 v10, p10

    .line 236
    .line 237
    .line 238
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->q0(Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/a;Ly0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILjava/util/concurrent/Executor;)Ly0/c;

    .line 239
    move-result-object v0

    .line 240
    return-object v0
.end method

.method private h0(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/f;
    .locals 2
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/i$a;->$SwitchMap$com$bumptech$glide$Priority:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    .line 8
    aget p1, v0, p1

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    const/4 v0, 0x2

    .line 13
    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    const/4 v0, 0x3

    .line 16
    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    const/4 v0, 0x4

    .line 19
    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v1, "unknown priority: "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ly0/a;->u()Lcom/bumptech/glide/f;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    .line 51
    :cond_1
    :goto_0
    sget-object p1, Lcom/bumptech/glide/f;->IMMEDIATE:Lcom/bumptech/glide/f;

    .line 52
    return-object p1

    .line 53
    .line 54
    :cond_2
    sget-object p1, Lcom/bumptech/glide/f;->HIGH:Lcom/bumptech/glide/f;

    .line 55
    return-object p1

    .line 56
    .line 57
    :cond_3
    sget-object p1, Lcom/bumptech/glide/f;->NORMAL:Lcom/bumptech/glide/f;

    .line 58
    return-object p1
.end method

.method private i0(Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ly0/e<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ly0/e;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/i;->b0(Ly0/e;)Lcom/bumptech/glide/i;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private l0(Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/e;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/target/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ly0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/e<",
            "TTranscodeType;>;>(TY;",
            "Ly0/e<",
            "TTranscodeType;>;",
            "Ly0/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bumptech/glide/i;->isModelSet:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/i;->d0(Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/a;Ljava/util/concurrent/Executor;)Ly0/c;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/e;->a()Ly0/c;

    .line 15
    move-result-object p4

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, p4}, Ly0/c;->h(Ly0/c;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p3, p4}, Lcom/bumptech/glide/i;->m0(Ly0/a;Ly0/c;)Z

    .line 25
    move-result p3

    .line 26
    .line 27
    if-nez p3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-static {p4}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    check-cast p2, Ly0/c;

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Ly0/c;->isRunning()Z

    .line 37
    move-result p2

    .line 38
    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-interface {p4}, Ly0/c;->j()V

    .line 43
    :cond_0
    return-object p1

    .line 44
    .line 45
    :cond_1
    iget-object p3, p0, Lcom/bumptech/glide/i;->requestManager:Lcom/bumptech/glide/j;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p1}, Lcom/bumptech/glide/j;->l(Lcom/bumptech/glide/request/target/e;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, p2}, Lcom/bumptech/glide/request/target/e;->c(Ly0/c;)V

    .line 52
    .line 53
    iget-object p3, p0, Lcom/bumptech/glide/i;->requestManager:Lcom/bumptech/glide/j;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, p1, p2}, Lcom/bumptech/glide/j;->v(Lcom/bumptech/glide/request/target/e;Ly0/c;)V

    .line 57
    return-object p1

    .line 58
    .line 59
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p2, "You must call #load() before calling #into()"

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1
.end method

.method private m0(Ly0/a;Ly0/c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly0/a<",
            "*>;",
            "Ly0/c;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ly0/a;->C()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p2}, Ly0/c;->f()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private p0(Ljava/lang/Object;)Lcom/bumptech/glide/i;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/i;->model:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/i;->isModelSet:Z

    return-object p0
.end method

.method private q0(Ljava/lang/Object;Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/a;Ly0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILjava/util/concurrent/Executor;)Ly0/c;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/e<",
            "TTranscodeType;>;",
            "Ly0/e<",
            "TTranscodeType;>;",
            "Ly0/a<",
            "*>;",
            "Ly0/d;",
            "Lcom/bumptech/glide/k<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/f;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ly0/c;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/bumptech/glide/i;->context:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v2, v0, Lcom/bumptech/glide/i;->glideContext:Lcom/bumptech/glide/d;

    .line 7
    .line 8
    iget-object v4, v0, Lcom/bumptech/glide/i;->model:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, Lcom/bumptech/glide/i;->transcodeClass:Ljava/lang/Class;

    .line 11
    .line 12
    iget-object v12, v0, Lcom/bumptech/glide/i;->requestListeners:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/bumptech/glide/d;->e()Lcom/bumptech/glide/load/engine/k;

    .line 16
    move-result-object v14

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/k;->c()Lcom/bumptech/glide/request/transition/c;

    .line 20
    move-result-object v15

    .line 21
    .line 22
    move-object/from16 v3, p1

    .line 23
    .line 24
    move-object/from16 v6, p4

    .line 25
    .line 26
    move/from16 v7, p8

    .line 27
    .line 28
    move/from16 v8, p9

    .line 29
    .line 30
    move-object/from16 v9, p7

    .line 31
    .line 32
    move-object/from16 v10, p2

    .line 33
    .line 34
    move-object/from16 v11, p3

    .line 35
    .line 36
    move-object/from16 v13, p5

    .line 37
    .line 38
    move-object/from16 v16, p10

    .line 39
    .line 40
    .line 41
    invoke-static/range {v1 .. v16}, Ly0/h;->x(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ly0/a;IILcom/bumptech/glide/f;Lcom/bumptech/glide/request/target/e;Ly0/e;Ljava/util/List;Ly0/d;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/request/transition/c;Ljava/util/concurrent/Executor;)Ly0/h;

    .line 42
    move-result-object v1

    .line 43
    return-object v1
.end method


# virtual methods
.method public bridge synthetic b(Ly0/a;)Ly0/a;
    .locals 0
    .param p1    # Ly0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->c0(Ly0/a;)Lcom/bumptech/glide/i;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b0(Ly0/e;)Lcom/bumptech/glide/i;
    .locals 1
    .param p1    # Ly0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly0/e<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/i;->requestListeners:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bumptech/glide/i;->requestListeners:Ljava/util/List;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/i;->requestListeners:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_1
    return-object p0
.end method

.method public c0(Ly0/a;)Lcom/bumptech/glide/i;
    .locals 0
    .param p1    # Ly0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly0/a<",
            "*>;)",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ly0/a;->b(Ly0/a;)Ly0/a;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Lcom/bumptech/glide/i;

    .line 10
    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->g0()Lcom/bumptech/glide/i;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic e()Ly0/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->g0()Lcom/bumptech/glide/i;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g0()Lcom/bumptech/glide/i;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Ly0/a;->e()Ly0/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/bumptech/glide/i;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/bumptech/glide/i;->transitionOptions:Lcom/bumptech/glide/k;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/bumptech/glide/k;->b()Lcom/bumptech/glide/k;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iput-object v1, v0, Lcom/bumptech/glide/i;->transitionOptions:Lcom/bumptech/glide/k;

    .line 15
    return-object v0
.end method

.method public j0(Lcom/bumptech/glide/request/target/e;)Lcom/bumptech/glide/request/target/e;
    .locals 2
    .param p1    # Lcom/bumptech/glide/request/target/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/e<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bumptech/glide/util/e;->b()Ljava/util/concurrent/Executor;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/bumptech/glide/i;->k0(Lcom/bumptech/glide/request/target/e;Ly0/e;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/e;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method k0(Lcom/bumptech/glide/request/target/e;Ly0/e;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/e;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/target/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ly0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/e<",
            "TTranscodeType;>;>(TY;",
            "Ly0/e<",
            "TTranscodeType;>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p0, p3}, Lcom/bumptech/glide/i;->l0(Lcom/bumptech/glide/request/target/e;Ly0/e;Ly0/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/e;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n0(Ljava/lang/Object;)Lcom/bumptech/glide/i;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/bumptech/glide/i;->p0(Ljava/lang/Object;)Lcom/bumptech/glide/i;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o0(Ljava/lang/String;)Lcom/bumptech/glide/i;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/bumptech/glide/i;->p0(Ljava/lang/Object;)Lcom/bumptech/glide/i;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
