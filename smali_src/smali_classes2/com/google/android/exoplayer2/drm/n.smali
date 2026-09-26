.class public interface abstract Lcom/google/android/exoplayer2/drm/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/n$a;
    }
.end annotation


# static fields
.field public static final STATE_ERROR:I = 0x1

.field public static final STATE_OPENED:I = 0x3

.field public static final STATE_OPENED_WITH_KEYS:I = 0x4

.field public static final STATE_OPENING:I = 0x2

.field public static final STATE_RELEASED:I


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Lcom/google/android/exoplayer2/decoder/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c()Ljava/util/UUID;
.end method

.method public abstract d(Ljava/lang/String;)Z
.end method

.method public abstract e(Lcom/google/android/exoplayer2/drm/v$a;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract f(Lcom/google/android/exoplayer2/drm/v$a;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getError()Lcom/google/android/exoplayer2/drm/n$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract queryKeyStatus()Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
