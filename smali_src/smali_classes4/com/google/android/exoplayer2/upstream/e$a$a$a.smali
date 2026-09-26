.class final Lcom/google/android/exoplayer2/upstream/e$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/e$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/exoplayer2/upstream/e$a;

.field private released:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/e$a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/e$a$a$a;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/e$a$a$a;->listener:Lcom/google/android/exoplayer2/upstream/e$a;

    .line 8
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/upstream/e$a$a$a;)Lcom/google/android/exoplayer2/upstream/e$a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/e$a$a$a;->listener:Lcom/google/android/exoplayer2/upstream/e$a;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/upstream/e$a$a$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/upstream/e$a$a$a;->released:Z

    .line 3
    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/upstream/e$a$a$a;)Landroid/os/Handler;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/e$a$a$a;->handler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/e$a$a$a;->released:Z

    return-void
.end method
