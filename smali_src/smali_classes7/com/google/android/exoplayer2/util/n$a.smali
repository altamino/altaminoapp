.class final Lcom/google/android/exoplayer2/util/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private buffer:Ljava/nio/Buffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final index:I

.field private final location:I

.field public final name:Ljava/lang/String;

.field private size:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/n$a;->name:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/util/n$a;->index:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/util/n$a;->location:I

    .line 10
    return-void
.end method

.method public static a(II)Lcom/google/android/exoplayer2/util/n$a;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    .line 6
    const v2, 0x8b8a

    .line 7
    const/4 v11, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v2, v1, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 11
    .line 12
    aget v2, v1, v11

    .line 13
    .line 14
    new-array v12, v2, [B

    .line 15
    .line 16
    new-array v3, v0, [I

    .line 17
    const/4 v4, 0x0

    .line 18
    .line 19
    new-array v5, v0, [I

    .line 20
    const/4 v6, 0x0

    .line 21
    .line 22
    new-array v7, v0, [I

    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v10, 0x0

    .line 25
    move v0, p0

    .line 26
    move v1, p1

    .line 27
    move-object v9, v12

    .line 28
    .line 29
    .line 30
    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 31
    .line 32
    new-instance v0, Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/n;->a([B)I

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v12, v11, v1}, Ljava/lang/String;-><init>([BII)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/n;->b(ILjava/lang/String;)I

    .line 43
    move-result v1

    .line 44
    .line 45
    new-instance v2, Lcom/google/android/exoplayer2/util/n$a;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/exoplayer2/util/n$a;-><init>(Ljava/lang/String;II)V

    .line 49
    return-object v2
.end method
