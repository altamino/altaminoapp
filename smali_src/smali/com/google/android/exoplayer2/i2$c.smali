.class public final Lcom/google/android/exoplayer2/i2$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private adsConfiguration:Lcom/google/android/exoplayer2/i2$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private clippingConfiguration:Lcom/google/android/exoplayer2/i2$d$a;

.field private customCacheKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private drmConfiguration:Lcom/google/android/exoplayer2/i2$f$a;

.field private liveConfiguration:Lcom/google/android/exoplayer2/i2$g$a;

.field private mediaId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaMetadata:Lcom/google/android/exoplayer2/n2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private requestMetadata:Lcom/google/android/exoplayer2/i2$j;

.field private streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private subtitleConfigurations:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/i2$l;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/i2$d$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/i2$d$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->clippingConfiguration:Lcom/google/android/exoplayer2/i2$d$a;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/i2$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/i2$f$a;-><init>(Lcom/google/android/exoplayer2/i2$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f$a;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->streamKeys:Ljava/util/List;

    .line 6
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->subtitleConfigurations:Lcom/google/common/collect/a0;

    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/i2$g$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/i2$g$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g$a;

    .line 8
    sget-object v0, Lcom/google/android/exoplayer2/i2$j;->EMPTY:Lcom/google/android/exoplayer2/i2$j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->requestMetadata:Lcom/google/android/exoplayer2/i2$j;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/i2;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i2$c;-><init>()V

    .line 10
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2;->clippingConfiguration:Lcom/google/android/exoplayer2/i2$d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2$d;->b()Lcom/google/android/exoplayer2/i2$d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->clippingConfiguration:Lcom/google/android/exoplayer2/i2$d$a;

    .line 11
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2;->mediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->mediaId:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 13
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2$g;->b()Lcom/google/android/exoplayer2/i2$g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g$a;

    .line 14
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2;->requestMetadata:Lcom/google/android/exoplayer2/i2$j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->requestMetadata:Lcom/google/android/exoplayer2/i2$j;

    .line 15
    iget-object p1, p1, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    if-eqz p1, :cond_1

    .line 16
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$h;->customCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->customCacheKey:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$h;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->mimeType:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$h;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->uri:Landroid/net/Uri;

    .line 19
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$h;->streamKeys:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->streamKeys:Ljava/util/List;

    .line 20
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$h;->subtitleConfigurations:Lcom/google/common/collect/a0;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->subtitleConfigurations:Lcom/google/common/collect/a0;

    .line 21
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$h;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->tag:Ljava/lang/Object;

    .line 22
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$h;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2$f;->b()Lcom/google/android/exoplayer2/i2$f$a;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/i2$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/i2$f$a;-><init>(Lcom/google/android/exoplayer2/i2$a;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$c;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f$a;

    .line 25
    iget-object p1, p1, Lcom/google/android/exoplayer2/i2$h;->adsConfiguration:Lcom/google/android/exoplayer2/i2$b;

    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$c;->adsConfiguration:Lcom/google/android/exoplayer2/i2$b;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/i2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/i2$c;-><init>(Lcom/google/android/exoplayer2/i2;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/i2;
    .locals 21

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/i2$c;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f$a;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2$f$a;->e(Lcom/google/android/exoplayer2/i2$f$a;)Landroid/net/Uri;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/exoplayer2/i2$c;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f$a;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2$f$a;->f(Lcom/google/android/exoplayer2/i2$f$a;)Ljava/util/UUID;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 23
    .line 24
    .line 25
    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 26
    .line 27
    iget-object v3, v0, Lcom/google/android/exoplayer2/i2$c;->uri:Landroid/net/Uri;

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    new-instance v12, Lcom/google/android/exoplayer2/i2$i;

    .line 33
    .line 34
    iget-object v4, v0, Lcom/google/android/exoplayer2/i2$c;->mimeType:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/google/android/exoplayer2/i2$c;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f$a;

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lcom/google/android/exoplayer2/i2$f$a;->f(Lcom/google/android/exoplayer2/i2$f$a;)Ljava/util/UUID;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object v1, v0, Lcom/google/android/exoplayer2/i2$c;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f$a;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i2$f$a;->i()Lcom/google/android/exoplayer2/i2$f;

    .line 48
    move-result-object v1

    .line 49
    :cond_2
    move-object v5, v1

    .line 50
    .line 51
    iget-object v6, v0, Lcom/google/android/exoplayer2/i2$c;->adsConfiguration:Lcom/google/android/exoplayer2/i2$b;

    .line 52
    .line 53
    iget-object v7, v0, Lcom/google/android/exoplayer2/i2$c;->streamKeys:Ljava/util/List;

    .line 54
    .line 55
    iget-object v8, v0, Lcom/google/android/exoplayer2/i2$c;->customCacheKey:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v9, v0, Lcom/google/android/exoplayer2/i2$c;->subtitleConfigurations:Lcom/google/common/collect/a0;

    .line 58
    .line 59
    iget-object v10, v0, Lcom/google/android/exoplayer2/i2$c;->tag:Ljava/lang/Object;

    .line 60
    const/4 v11, 0x0

    .line 61
    move-object v2, v12

    .line 62
    .line 63
    .line 64
    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/i2$i;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/i2$f;Lcom/google/android/exoplayer2/i2$b;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/a0;Ljava/lang/Object;Lcom/google/android/exoplayer2/i2$a;)V

    .line 65
    .line 66
    move-object/from16 v16, v12

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_3
    move-object/from16 v16, v1

    .line 70
    .line 71
    :goto_2
    new-instance v1, Lcom/google/android/exoplayer2/i2;

    .line 72
    .line 73
    iget-object v2, v0, Lcom/google/android/exoplayer2/i2$c;->mediaId:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    :goto_3
    move-object v14, v2

    .line 77
    goto :goto_4

    .line 78
    .line 79
    :cond_4
    const-string v2, ""

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :goto_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/i2$c;->clippingConfiguration:Lcom/google/android/exoplayer2/i2$d$a;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/i2$d$a;->g()Lcom/google/android/exoplayer2/i2$e;

    .line 86
    move-result-object v15

    .line 87
    .line 88
    iget-object v2, v0, Lcom/google/android/exoplayer2/i2$c;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g$a;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/i2$g$a;->f()Lcom/google/android/exoplayer2/i2$g;

    .line 92
    move-result-object v17

    .line 93
    .line 94
    iget-object v2, v0, Lcom/google/android/exoplayer2/i2$c;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 95
    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    :goto_5
    move-object/from16 v18, v2

    .line 99
    goto :goto_6

    .line 100
    .line 101
    :cond_5
    sget-object v2, Lcom/google/android/exoplayer2/n2;->EMPTY:Lcom/google/android/exoplayer2/n2;

    .line 102
    goto :goto_5

    .line 103
    .line 104
    :goto_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/i2$c;->requestMetadata:Lcom/google/android/exoplayer2/i2$j;

    .line 105
    .line 106
    const/16 v20, 0x0

    .line 107
    move-object v13, v1

    .line 108
    .line 109
    move-object/from16 v19, v2

    .line 110
    .line 111
    .line 112
    invoke-direct/range {v13 .. v20}, Lcom/google/android/exoplayer2/i2;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i2$e;Lcom/google/android/exoplayer2/i2$i;Lcom/google/android/exoplayer2/i2$g;Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/i2$j;Lcom/google/android/exoplayer2/i2$a;)V

    .line 113
    return-object v1
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/exoplayer2/i2$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$c;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lcom/google/android/exoplayer2/i2$g;)Lcom/google/android/exoplayer2/i2$c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i2$g;->b()Lcom/google/android/exoplayer2/i2$g$a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$c;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g$a;

    .line 7
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/android/exoplayer2/i2$c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$c;->mediaId:Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method public e(Ljava/util/List;)Lcom/google/android/exoplayer2/i2$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/i2$l;",
            ">;)",
            "Lcom/google/android/exoplayer2/i2$c;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/collect/a0;->t(Ljava/util/Collection;)Lcom/google/common/collect/a0;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$c;->subtitleConfigurations:Lcom/google/common/collect/a0;

    .line 7
    return-object p0
.end method

.method public f(Ljava/lang/Object;)Lcom/google/android/exoplayer2/i2$c;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$c;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public g(Landroid/net/Uri;)Lcom/google/android/exoplayer2/i2$c;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$c;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/google/android/exoplayer2/i2$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/i2$c;->g(Landroid/net/Uri;)Lcom/google/android/exoplayer2/i2$c;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
