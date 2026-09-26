.class public final synthetic Lcom/google/android/exoplayer2/analytics/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/s$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/c$a;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/c$a;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/l1;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/analytics/l1;->b:J

    iput p4, p0, Lcom/google/android/exoplayer2/analytics/l1;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/l1;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/l1;->b:J

    iget v3, p0, Lcom/google/android/exoplayer2/analytics/l1;->c:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/c;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/analytics/o1;->d0(Lcom/google/android/exoplayer2/analytics/c$a;JILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method
