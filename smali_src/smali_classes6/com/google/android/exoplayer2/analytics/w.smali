.class public final synthetic Lcom/google/android/exoplayer2/analytics/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/s$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/c$a;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/c$a;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/w;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/w;->b:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/analytics/w;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/w;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/w;->b:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/w;->c:J

    check-cast p1, Lcom/google/android/exoplayer2/analytics/c;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/analytics/o1;->D0(Lcom/google/android/exoplayer2/analytics/c$a;IJLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method
