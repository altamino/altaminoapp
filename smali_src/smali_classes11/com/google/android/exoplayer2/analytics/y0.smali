.class public final synthetic Lcom/google/android/exoplayer2/analytics/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/s$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/analytics/c$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/x;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/y0;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/y0;->b:Lcom/google/android/exoplayer2/source/x;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/y0;->a:Lcom/google/android/exoplayer2/analytics/c$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/y0;->b:Lcom/google/android/exoplayer2/source/x;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/c;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/o1;->c0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/analytics/c;)V

    return-void
.end method
