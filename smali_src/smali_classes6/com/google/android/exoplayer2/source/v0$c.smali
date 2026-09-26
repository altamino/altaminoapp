.class final Lcom/google/android/exoplayer2/source/v0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final drmSessionReference:Lcom/google/android/exoplayer2/drm/x$b;

.field public final format:Lcom/google/android/exoplayer2/a2;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/drm/x$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v0$c;->format:Lcom/google/android/exoplayer2/a2;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/v0$c;->drmSessionReference:Lcom/google/android/exoplayer2/drm/x$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/drm/x$b;Lcom/google/android/exoplayer2/source/v0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/v0$c;-><init>(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/drm/x$b;)V

    return-void
.end method
