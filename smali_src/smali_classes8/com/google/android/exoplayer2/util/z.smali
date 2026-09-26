.class public final synthetic Lcom/google/android/exoplayer2/util/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/util/a0;

.field public final synthetic b:Lcom/google/android/exoplayer2/util/a0$c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/a0;Lcom/google/android/exoplayer2/util/a0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/z;->a:Lcom/google/android/exoplayer2/util/a0;

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/z;->b:Lcom/google/android/exoplayer2/util/a0$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/z;->a:Lcom/google/android/exoplayer2/util/a0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/z;->b:Lcom/google/android/exoplayer2/util/a0$c;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->a(Lcom/google/android/exoplayer2/util/a0;Lcom/google/android/exoplayer2/util/a0$c;)V

    return-void
.end method
