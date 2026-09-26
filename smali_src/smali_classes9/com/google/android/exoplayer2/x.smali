.class public final synthetic Lcom/google/android/exoplayer2/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/x;->a:Lcom/google/android/exoplayer2/analytics/a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x;->a:Lcom/google/android/exoplayer2/analytics/a;

    check-cast p1, Lcom/google/android/exoplayer2/util/d;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/s$b;->b(Lcom/google/android/exoplayer2/analytics/a;Lcom/google/android/exoplayer2/util/d;)Lcom/google/android/exoplayer2/analytics/a;

    move-result-object p1

    return-object p1
.end method
