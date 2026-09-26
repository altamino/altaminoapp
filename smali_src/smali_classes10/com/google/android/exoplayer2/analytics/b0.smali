.class public final synthetic Lcom/google/android/exoplayer2/analytics/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/s$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/c$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/c$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/b0;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/b0;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/b0;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/b0;->b:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/c;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/o1;->b0(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method
