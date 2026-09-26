.class public final Lcom/google/android/exoplayer2/upstream/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final baseDataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

.field private final context:Landroid/content/Context;

.field private transferListener:Lcom/google/android/exoplayer2/upstream/m0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/t$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/t$b;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/s$a;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/s$a;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/s$a;->baseDataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/s;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/s;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/s$a;->context:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/s$a;->baseDataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 7
    .line 8
    .line 9
    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/k$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/k;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/s;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/k;)V

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/s$a;->transferListener:Lcom/google/android/exoplayer2/upstream/m0;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/s;->b(Lcom/google/android/exoplayer2/upstream/m0;)V

    .line 21
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/k;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/s$a;->a()Lcom/google/android/exoplayer2/upstream/s;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
