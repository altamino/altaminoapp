.class public final synthetic Lcom/google/android/exoplayer2/analytics/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/s$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/c$a;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/c$a;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/v;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/v;->b:Z

    iput p3, p0, Lcom/google/android/exoplayer2/analytics/v;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/v;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/v;->b:Z

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/v;->c:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/c;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/o1;->P0(Lcom/google/android/exoplayer2/analytics/c$a;ZILcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method
