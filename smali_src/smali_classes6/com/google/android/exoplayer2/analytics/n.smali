.class public final synthetic Lcom/google/android/exoplayer2/analytics/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/s$b;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/o1;

.field public final synthetic b:Lcom/google/android/exoplayer2/d3;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/o1;Lcom/google/android/exoplayer2/d3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/n;->a:Lcom/google/android/exoplayer2/analytics/o1;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/n;->b:Lcom/google/android/exoplayer2/d3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/n;->a:Lcom/google/android/exoplayer2/analytics/o1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/n;->b:Lcom/google/android/exoplayer2/d3;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/c;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/analytics/o1;->U0(Lcom/google/android/exoplayer2/analytics/o1;Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/util/m;)V

    return-void
.end method
