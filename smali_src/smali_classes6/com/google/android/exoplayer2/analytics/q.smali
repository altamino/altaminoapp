.class public final synthetic Lcom/google/android/exoplayer2/analytics/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/s$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/c$a;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/c$a;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/q;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/analytics/q;->b:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/q;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/q;->b:J

    check-cast p1, Lcom/google/android/exoplayer2/analytics/c;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/o1;->X0(Lcom/google/android/exoplayer2/analytics/c$a;JLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method
