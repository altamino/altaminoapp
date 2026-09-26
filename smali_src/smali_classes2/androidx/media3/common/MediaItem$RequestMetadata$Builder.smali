.class public final Landroidx/media3/common/MediaItem$RequestMetadata$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem$RequestMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private extras:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private searchQuery:Ljava/lang/String;
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

.method static synthetic a(Landroidx/media3/common/MediaItem$RequestMetadata$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->mediaUri:Landroid/net/Uri;

    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/common/MediaItem$RequestMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->searchQuery:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic c(Landroidx/media3/common/MediaItem$RequestMetadata$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->extras:Landroid/os/Bundle;

    .line 3
    return-object p0
.end method


# virtual methods
.method public d()Landroidx/media3/common/MediaItem$RequestMetadata;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/MediaItem$RequestMetadata;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaItem$RequestMetadata;-><init>(Landroidx/media3/common/MediaItem$RequestMetadata$Builder;Landroidx/media3/common/MediaItem$1;)V

    .line 7
    return-object v0
.end method

.method public e(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public f(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->mediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->searchQuery:Ljava/lang/String;

    return-object p0
.end method
