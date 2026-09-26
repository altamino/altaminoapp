.class public final Lcom/google/android/exoplayer2/mediacodec/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final codecInfo:Lcom/google/android/exoplayer2/mediacodec/n;

.field public final crypto:Landroid/media/MediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final flags:I

.field public final format:Lcom/google/android/exoplayer2/a2;

.field public final mediaFormat:Landroid/media/MediaFormat;

.field public final surface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/mediacodec/n;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/a2;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0
    .param p4    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/l$a;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/n;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/l$a;->mediaFormat:Landroid/media/MediaFormat;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/l$a;->format:Lcom/google/android/exoplayer2/a2;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/exoplayer2/mediacodec/l$a;->surface:Landroid/view/Surface;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/android/exoplayer2/mediacodec/l$a;->crypto:Landroid/media/MediaCrypto;

    .line 14
    .line 15
    iput p6, p0, Lcom/google/android/exoplayer2/mediacodec/l$a;->flags:I

    .line 16
    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/mediacodec/n;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/a2;Landroid/media/MediaCrypto;)Lcom/google/android/exoplayer2/mediacodec/l$a;
    .locals 8
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v7, Lcom/google/android/exoplayer2/mediacodec/l$a;

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    move-object v0, v7

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v5, p3

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/l$a;-><init>(Lcom/google/android/exoplayer2/mediacodec/n;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/a2;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 13
    return-object v7
.end method

.method public static b(Lcom/google/android/exoplayer2/mediacodec/n;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/a2;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/exoplayer2/mediacodec/l$a;
    .locals 8
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v7, Lcom/google/android/exoplayer2/mediacodec/l$a;

    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/l$a;-><init>(Lcom/google/android/exoplayer2/mediacodec/n;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/a2;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 13
    return-object v7
.end method
