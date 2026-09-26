.class public final synthetic Lcom/google/android/exoplayer2/audio/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/t$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/a2;

.field public final synthetic c:Lcom/google/android/exoplayer2/decoder/i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/t$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/k;->a:Lcom/google/android/exoplayer2/audio/t$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/k;->b:Lcom/google/android/exoplayer2/a2;

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/k;->c:Lcom/google/android/exoplayer2/decoder/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->a:Lcom/google/android/exoplayer2/audio/t$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/k;->b:Lcom/google/android/exoplayer2/a2;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/k;->c:Lcom/google/android/exoplayer2/decoder/i;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/t$a;->e(Lcom/google/android/exoplayer2/audio/t$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V

    return-void
.end method
