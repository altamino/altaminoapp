.class public final Landroidx/media3/common/text/CueGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/text/CueGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field private static final FIELD_CUES:Ljava/lang/String;

.field private static final FIELD_PRESENTATION_TIME_US:Ljava/lang/String;


# instance fields
.field public final cues:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public final presentationTimeUs:J
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/text/CueGroup;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    .line 12
    .line 13
    sput-object v0, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sput-object v0, Landroidx/media3/common/text/CueGroup;->FIELD_CUES:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    sput-object v0, Landroidx/media3/common/text/CueGroup;->FIELD_PRESENTATION_TIME_US:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Landroidx/media3/common/text/b;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Landroidx/media3/common/text/b;-><init>()V

    .line 33
    .line 34
    sput-object v0, Landroidx/media3/common/text/CueGroup;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;J)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/common/collect/a0;->t(Ljava/util/Collection;)Lcom/google/common/collect/a0;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/a0;

    .line 10
    .line 11
    iput-wide p2, p0, Landroidx/media3/common/text/CueGroup;->presentationTimeUs:J

    .line 12
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Landroidx/media3/common/text/CueGroup;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/common/text/CueGroup;->c(Landroid/os/Bundle;)Landroidx/media3/common/text/CueGroup;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/List;)Lcom/google/common/collect/a0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)",
            "Lcom/google/common/collect/a0<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/a0$a;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    move-result v2

    .line 10
    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    check-cast v2, Landroidx/media3/common/text/Cue;

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Landroidx/media3/common/text/Cue;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 32
    .line 33
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private static final c(Landroid/os/Bundle;)Landroidx/media3/common/text/CueGroup;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/common/text/CueGroup;->FIELD_CUES:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    sget-object v1, Landroidx/media3/common/text/Cue;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0}, Landroidx/media3/common/util/BundleableUtil;->d(Landroidx/media3/common/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/a0;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    :goto_0
    sget-object v1, Landroidx/media3/common/text/CueGroup;->FIELD_PRESENTATION_TIME_US:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 25
    move-result-wide v1

    .line 26
    .line 27
    new-instance p0, Landroidx/media3/common/text/CueGroup;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    .line 31
    return-object p0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    sget-object v1, Landroidx/media3/common/text/CueGroup;->FIELD_CUES:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/a0;

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Landroidx/media3/common/text/CueGroup;->b(Ljava/util/List;)Lcom/google/common/collect/a0;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Landroidx/media3/common/util/BundleableUtil;->i(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 21
    .line 22
    sget-object v1, Landroidx/media3/common/text/CueGroup;->FIELD_PRESENTATION_TIME_US:Ljava/lang/String;

    .line 23
    .line 24
    iget-wide v2, p0, Landroidx/media3/common/text/CueGroup;->presentationTimeUs:J

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 28
    return-object v0
.end method
