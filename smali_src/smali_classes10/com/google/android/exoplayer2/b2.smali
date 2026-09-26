.class public final Lcom/google/android/exoplayer2/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public drmSession:Lcom/google/android/exoplayer2/drm/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public format:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->drmSession:Lcom/google/android/exoplayer2/drm/n;

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->format:Lcom/google/android/exoplayer2/a2;

    return-void
.end method
