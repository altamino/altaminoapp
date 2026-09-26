.class final Lv2/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final framesSize:I

.field private final isUnsynchronized:Z

.field private final majorVersion:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lv2/b$b;->majorVersion:I

    .line 6
    .line 7
    iput-boolean p2, p0, Lv2/b$b;->isUnsynchronized:Z

    .line 8
    .line 9
    iput p3, p0, Lv2/b$b;->framesSize:I

    .line 10
    return-void
.end method

.method static synthetic a(Lv2/b$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lv2/b$b;->majorVersion:I

    .line 3
    return p0
.end method

.method static synthetic b(Lv2/b$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lv2/b$b;->framesSize:I

    .line 3
    return p0
.end method

.method static synthetic c(Lv2/b$b;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lv2/b$b;->isUnsynchronized:Z

    .line 3
    return p0
.end method
