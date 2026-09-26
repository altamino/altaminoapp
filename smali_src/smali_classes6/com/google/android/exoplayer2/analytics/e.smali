.class public final synthetic Lcom/google/android/exoplayer2/analytics/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/s$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/c$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/e;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/e;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/exoplayer2/analytics/e;->c:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/analytics/e;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/e;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/e;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/e;->c:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/analytics/e;->d:J

    move-object v6, p1

    check-cast v6, Lcom/google/android/exoplayer2/analytics/c;

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/o1;->d1(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method
