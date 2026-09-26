.class public final synthetic Lcom/google/android/exoplayer2/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/r2;

.field public final synthetic b:Lcom/google/common/collect/a0$a;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/b0$b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/r2;Lcom/google/common/collect/a0$a;Lcom/google/android/exoplayer2/source/b0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/q2;->a:Lcom/google/android/exoplayer2/r2;

    iput-object p2, p0, Lcom/google/android/exoplayer2/q2;->b:Lcom/google/common/collect/a0$a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/q2;->c:Lcom/google/android/exoplayer2/source/b0$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/q2;->a:Lcom/google/android/exoplayer2/r2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/q2;->b:Lcom/google/common/collect/a0$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/q2;->c:Lcom/google/android/exoplayer2/source/b0$b;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/r2;->a(Lcom/google/android/exoplayer2/r2;Lcom/google/common/collect/a0$a;Lcom/google/android/exoplayer2/source/b0$b;)V

    return-void
.end method
