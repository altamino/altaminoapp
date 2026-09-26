.class final Lcom/google/android/exoplayer2/util/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final floatValue:[F

.field private intValue:I

.field private final location:I

.field public final name:Ljava/lang/String;

.field private texIdValue:I

.field private texUnitIndex:I

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/n$b;->name:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/util/n$b;->location:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/util/n$b;->type:I

    .line 10
    .line 11
    const/16 p1, 0x10

    .line 12
    .line 13
    new-array p1, p1, [F

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/n$b;->floatValue:[F

    .line 16
    return-void
.end method

.method public static a(II)Lcom/google/android/exoplayer2/util/n$b;
    .locals 15

    .line 1
    move v11, p0

    .line 2
    const/4 v0, 0x1

    .line 3
    .line 4
    new-array v1, v0, [I

    .line 5
    .line 6
    .line 7
    const v2, 0x8b87

    .line 8
    const/4 v12, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v2, v1, v12}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 12
    .line 13
    new-array v13, v0, [I

    .line 14
    .line 15
    aget v2, v1, v12

    .line 16
    .line 17
    new-array v14, v2, [B

    .line 18
    .line 19
    new-array v3, v0, [I

    .line 20
    const/4 v4, 0x0

    .line 21
    .line 22
    new-array v5, v0, [I

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v10, 0x0

    .line 26
    move v0, p0

    .line 27
    .line 28
    move/from16 v1, p1

    .line 29
    move-object v7, v13

    .line 30
    move-object v9, v14

    .line 31
    .line 32
    .line 33
    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 34
    .line 35
    new-instance v0, Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {v14}, Lcom/google/android/exoplayer2/util/n;->a([B)I

    .line 39
    move-result v1

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v14, v12, v1}, Ljava/lang/String;-><init>([BII)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/n;->c(ILjava/lang/String;)I

    .line 46
    move-result v1

    .line 47
    .line 48
    new-instance v2, Lcom/google/android/exoplayer2/util/n$b;

    .line 49
    .line 50
    aget v3, v13, v12

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/util/n$b;-><init>(Ljava/lang/String;II)V

    .line 54
    return-object v2
.end method
