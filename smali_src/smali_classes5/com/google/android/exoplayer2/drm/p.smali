.class public final synthetic Lcom/google/android/exoplayer2/drm/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/drm/v$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/drm/v;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/p;->a:Lcom/google/android/exoplayer2/drm/v$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/p;->b:Lcom/google/android/exoplayer2/drm/v;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/p;->a:Lcom/google/android/exoplayer2/drm/v$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/p;->b:Lcom/google/android/exoplayer2/drm/v;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/v$a;->a(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;)V

    return-void
.end method
