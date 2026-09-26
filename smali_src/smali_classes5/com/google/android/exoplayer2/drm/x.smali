.class public interface abstract Lcom/google/android/exoplayer2/drm/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/x$b;
    }
.end annotation


# static fields
.field public static final DRM_UNSUPPORTED:Lcom/google/android/exoplayer2/drm/x;

.field public static final DUMMY:Lcom/google/android/exoplayer2/drm/x;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/drm/x$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/x$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/drm/x;->DRM_UNSUPPORTED:Lcom/google/android/exoplayer2/drm/x;

    .line 8
    .line 9
    sput-object v0, Lcom/google/android/exoplayer2/drm/x;->DUMMY:Lcom/google/android/exoplayer2/drm/x;

    .line 10
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/drm/n;
    .param p1    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract b(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/drm/x$b;
    .param p1    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract c(Lcom/google/android/exoplayer2/a2;)I
.end method

.method public abstract d(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/t1;)V
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method
