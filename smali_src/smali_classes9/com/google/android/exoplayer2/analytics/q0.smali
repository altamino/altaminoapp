.class public final synthetic Lcom/google/android/exoplayer2/analytics/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/s$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/c$a;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/exoplayer2/d3$e;

.field public final synthetic d:Lcom/google/android/exoplayer2/d3$e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/q0;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/q0;->b:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/q0;->c:Lcom/google/android/exoplayer2/d3$e;

    iput-object p4, p0, Lcom/google/android/exoplayer2/analytics/q0;->d:Lcom/google/android/exoplayer2/d3$e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/q0;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/q0;->b:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/q0;->c:Lcom/google/android/exoplayer2/d3$e;

    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/q0;->d:Lcom/google/android/exoplayer2/d3$e;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/c;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/analytics/o1;->z0(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method
