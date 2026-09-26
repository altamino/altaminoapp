.class public final synthetic Lcom/google/android/exoplayer2/analytics/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/s$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/c$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/a2;

.field public final synthetic c:Lcom/google/android/exoplayer2/decoder/i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/y;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/y;->b:Lcom/google/android/exoplayer2/a2;

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/y;->c:Lcom/google/android/exoplayer2/decoder/i;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/y;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/y;->b:Lcom/google/android/exoplayer2/a2;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/y;->c:Lcom/google/android/exoplayer2/decoder/i;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/c;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/o1;->u0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method
