.class public final synthetic Lcom/google/android/exoplayer2/source/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/u;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/q$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/upstream/k$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/q$a;Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->a:Lcom/google/android/exoplayer2/source/q$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/p;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->a:Lcom/google/android/exoplayer2/source/q$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/q$a;->e(Lcom/google/android/exoplayer2/source/q$a;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/b0$a;

    move-result-object v0

    return-object v0
.end method
