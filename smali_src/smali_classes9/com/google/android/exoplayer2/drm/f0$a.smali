.class public final Lcom/google/android/exoplayer2/drm/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/f0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/f0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/f0$a;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/f0;
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/f0$a;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/f0;->a()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/f0$a;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 8
    return-object p1
.end method
