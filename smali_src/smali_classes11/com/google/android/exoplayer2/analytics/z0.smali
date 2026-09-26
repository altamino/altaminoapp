.class public final synthetic Lcom/google/android/exoplayer2/analytics/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/s$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/c$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/u;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/x;

.field public final synthetic d:Ljava/io/IOException;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/z0;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/z0;->b:Lcom/google/android/exoplayer2/source/u;

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/z0;->c:Lcom/google/android/exoplayer2/source/x;

    iput-object p4, p0, Lcom/google/android/exoplayer2/analytics/z0;->d:Ljava/io/IOException;

    iput-boolean p5, p0, Lcom/google/android/exoplayer2/analytics/z0;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/z0;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/z0;->b:Lcom/google/android/exoplayer2/source/u;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/z0;->c:Lcom/google/android/exoplayer2/source/x;

    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/z0;->d:Ljava/io/IOException;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/analytics/z0;->e:Z

    move-object v5, p1

    check-cast v5, Lcom/google/android/exoplayer2/analytics/c;

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/o1;->A0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;ZLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method
