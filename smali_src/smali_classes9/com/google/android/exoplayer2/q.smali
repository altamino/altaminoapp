.class public final Lcom/google/android/exoplayer2/q;
.super Lcom/google/android/exoplayer2/z2;
.source "SourceFile"


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/q;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_IS_RECOVERABLE:I = 0x3ee

.field private static final FIELD_RENDERER_FORMAT:I = 0x3ec

.field private static final FIELD_RENDERER_FORMAT_SUPPORT:I = 0x3ed

.field private static final FIELD_RENDERER_INDEX:I = 0x3eb

.field private static final FIELD_RENDERER_NAME:I = 0x3ea

.field private static final FIELD_TYPE:I = 0x3e9

.field public static final TYPE_REMOTE:I = 0x3

.field public static final TYPE_RENDERER:I = 0x1

.field public static final TYPE_SOURCE:I = 0x0

.field public static final TYPE_UNEXPECTED:I = 0x2


# instance fields
.field final isRecoverable:Z

.field public final mediaPeriodId:Lcom/google/android/exoplayer2/source/z;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final rendererFormat:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final rendererFormatSupport:I

.field public final rendererIndex:I

.field public final rendererName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/p;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/p;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/q;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 8
    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;I)V
    .locals 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/q;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/exoplayer2/a2;IZ)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/exoplayer2/a2;IZ)V
    .locals 14
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/q;->k(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/a2;I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p4

    move v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v13, p9

    .line 4
    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/exoplayer2/a2;ILcom/google/android/exoplayer2/source/z;JZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/z2;-><init>(Landroid/os/Bundle;)V

    const/16 v0, 0x3e9

    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/z2;->d(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/q;->type:I

    const/16 v0, 0x3ea

    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/z2;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/q;->rendererName:Ljava/lang/String;

    const/16 v0, 0x3eb

    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/z2;->d(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/q;->rendererIndex:I

    const/16 v0, 0x3ec

    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/z2;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 10
    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/a2;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a2;

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/q;->rendererFormat:Lcom/google/android/exoplayer2/a2;

    const/16 v0, 0x3ed

    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/z2;->d(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 12
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/q;->rendererFormatSupport:I

    const/16 v0, 0x3ee

    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/z2;->d(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/q;->isRecoverable:Z

    iput-object v1, p0, Lcom/google/android/exoplayer2/q;->mediaPeriodId:Lcom/google/android/exoplayer2/source/z;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/exoplayer2/a2;ILcom/google/android/exoplayer2/source/z;JZ)V
    .locals 9
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/exoplayer2/source/z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v6, p0

    move v7, p4

    move/from16 v8, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/z2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_1

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 15
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    if-nez p2, :cond_2

    const/4 v2, 0x3

    if-ne v7, v2, :cond_3

    :cond_2
    move v0, v1

    .line 16
    :cond_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput v7, v6, Lcom/google/android/exoplayer2/q;->type:I

    move-object v0, p5

    iput-object v0, v6, Lcom/google/android/exoplayer2/q;->rendererName:Ljava/lang/String;

    move v0, p6

    iput v0, v6, Lcom/google/android/exoplayer2/q;->rendererIndex:I

    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/google/android/exoplayer2/q;->rendererFormat:Lcom/google/android/exoplayer2/a2;

    move/from16 v0, p8

    iput v0, v6, Lcom/google/android/exoplayer2/q;->rendererFormatSupport:I

    move-object/from16 v0, p9

    iput-object v0, v6, Lcom/google/android/exoplayer2/q;->mediaPeriodId:Lcom/google/android/exoplayer2/source/z;

    iput-boolean v8, v6, Lcom/google/android/exoplayer2/q;->isRecoverable:Z

    return-void
.end method

.method public static synthetic e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/q;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/q;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/q;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static g(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/a2;IZI)Lcom/google/android/exoplayer2/q;
    .locals 11
    .param p3    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v10, Lcom/google/android/exoplayer2/q;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    const/4 v0, 0x4

    .line 8
    move v8, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v8, p4

    .line 11
    :goto_0
    move-object v0, v10

    .line 12
    move-object v2, p0

    .line 13
    .line 14
    move/from16 v4, p6

    .line 15
    move-object v5, p1

    .line 16
    move v6, p2

    .line 17
    move-object v7, p3

    .line 18
    .line 19
    move/from16 v9, p5

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/q;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/exoplayer2/a2;IZ)V

    .line 23
    return-object v10
.end method

.method public static h(Ljava/io/IOException;I)Lcom/google/android/exoplayer2/q;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/q;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/exoplayer2/q;-><init>(ILjava/lang/Throwable;I)V

    .line 7
    return-object v0
.end method

.method public static i(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/q;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x3e8

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/q;->j(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/q;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static j(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/q;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/q;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/exoplayer2/q;-><init>(ILjava/lang/Throwable;I)V

    .line 7
    return-object v0
.end method

.method private static k(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/a2;I)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    const/4 p2, 0x3

    .line 7
    .line 8
    if-eq p0, p2, :cond_0

    .line 9
    .line 10
    const-string p0, "Unexpected runtime error"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const-string p0, "Remote error"

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p2, " error, index="

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p2, ", format="

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p2, ", format_supported="

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/o0;->R(I)Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_2
    const-string p0, "Source error"

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result p2

    .line 62
    .line 63
    if-nez p2, :cond_3

    .line 64
    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string p0, ": "

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    :cond_3
    return-object p0
.end method


# virtual methods
.method f(Lcom/google/android/exoplayer2/source/z;)Lcom/google/android/exoplayer2/q;
    .locals 14
    .param p1    # Lcom/google/android/exoplayer2/source/z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    new-instance v13, Lcom/google/android/exoplayer2/q;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    move-object v1, v0

    .line 12
    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    iget v3, p0, Lcom/google/android/exoplayer2/z2;->errorCode:I

    .line 20
    .line 21
    iget v4, p0, Lcom/google/android/exoplayer2/q;->type:I

    .line 22
    .line 23
    iget-object v5, p0, Lcom/google/android/exoplayer2/q;->rendererName:Ljava/lang/String;

    .line 24
    .line 25
    iget v6, p0, Lcom/google/android/exoplayer2/q;->rendererIndex:I

    .line 26
    .line 27
    iget-object v7, p0, Lcom/google/android/exoplayer2/q;->rendererFormat:Lcom/google/android/exoplayer2/a2;

    .line 28
    .line 29
    iget v8, p0, Lcom/google/android/exoplayer2/q;->rendererFormatSupport:I

    .line 30
    .line 31
    iget-wide v10, p0, Lcom/google/android/exoplayer2/z2;->timestampMs:J

    .line 32
    .line 33
    iget-boolean v12, p0, Lcom/google/android/exoplayer2/q;->isRecoverable:Z

    .line 34
    move-object v0, v13

    .line 35
    move-object v9, p1

    .line 36
    .line 37
    .line 38
    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/exoplayer2/a2;ILcom/google/android/exoplayer2/source/z;JZ)V

    .line 39
    return-object v13
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/exoplayer2/z2;->toBundle()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const/16 v1, 0x3e9

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/z2;->d(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget v2, p0, Lcom/google/android/exoplayer2/q;->type:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    const/16 v1, 0x3ea

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/google/android/exoplayer2/z2;->d(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/exoplayer2/q;->rendererName:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    const/16 v1, 0x3eb

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lcom/google/android/exoplayer2/z2;->d(I)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iget v2, p0, Lcom/google/android/exoplayer2/q;->rendererIndex:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/android/exoplayer2/q;->rendererFormat:Lcom/google/android/exoplayer2/a2;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const/16 v1, 0x3ec

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/google/android/exoplayer2/z2;->d(I)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    iget-object v2, p0, Lcom/google/android/exoplayer2/q;->rendererFormat:Lcom/google/android/exoplayer2/a2;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a2;->toBundle()Landroid/os/Bundle;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    .line 58
    :cond_0
    const/16 v1, 0x3ed

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/google/android/exoplayer2/z2;->d(I)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    iget v2, p0, Lcom/google/android/exoplayer2/q;->rendererFormatSupport:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    const/16 v1, 0x3ee

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lcom/google/android/exoplayer2/z2;->d(I)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/q;->isRecoverable:Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    return-object v0
.end method
