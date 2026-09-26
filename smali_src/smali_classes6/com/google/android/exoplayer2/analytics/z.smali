.class public final synthetic Lcom/google/android/exoplayer2/analytics/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/s$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/c$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/i2;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/i2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/z;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/z;->b:Lcom/google/android/exoplayer2/i2;

    iput p3, p0, Lcom/google/android/exoplayer2/analytics/z;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/z;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/z;->b:Lcom/google/android/exoplayer2/i2;

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/z;->c:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/c;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/o1;->m0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/i2;ILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method
