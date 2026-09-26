.class public final synthetic Lcom/google/android/exoplayer2/source/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/h0$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/h0;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/u;

.field public final synthetic d:Lcom/google/android/exoplayer2/source/x;

.field public final synthetic f:Ljava/io/IOException;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/e0;->a:Lcom/google/android/exoplayer2/source/h0$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/e0;->b:Lcom/google/android/exoplayer2/source/h0;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/e0;->c:Lcom/google/android/exoplayer2/source/u;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/e0;->d:Lcom/google/android/exoplayer2/source/x;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/e0;->f:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/e0;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e0;->a:Lcom/google/android/exoplayer2/source/h0$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/e0;->b:Lcom/google/android/exoplayer2/source/h0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/e0;->c:Lcom/google/android/exoplayer2/source/u;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/e0;->d:Lcom/google/android/exoplayer2/source/x;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/e0;->f:Ljava/io/IOException;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/e0;->g:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/h0$a;->a(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V

    return-void
.end method
