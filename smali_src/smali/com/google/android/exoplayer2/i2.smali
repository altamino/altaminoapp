.class public final Lcom/google/android/exoplayer2/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/i2$j;,
        Lcom/google/android/exoplayer2/i2$e;,
        Lcom/google/android/exoplayer2/i2$d;,
        Lcom/google/android/exoplayer2/i2$k;,
        Lcom/google/android/exoplayer2/i2$l;,
        Lcom/google/android/exoplayer2/i2$g;,
        Lcom/google/android/exoplayer2/i2$i;,
        Lcom/google/android/exoplayer2/i2$h;,
        Lcom/google/android/exoplayer2/i2$b;,
        Lcom/google/android/exoplayer2/i2$f;,
        Lcom/google/android/exoplayer2/i2$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/i2;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MEDIA_ID:Ljava/lang/String; = ""

.field public static final EMPTY:Lcom/google/android/exoplayer2/i2;

.field private static final FIELD_CLIPPING_PROPERTIES:I = 0x3

.field private static final FIELD_LIVE_CONFIGURATION:I = 0x1

.field private static final FIELD_MEDIA_ID:I = 0x0

.field private static final FIELD_MEDIA_METADATA:I = 0x2

.field private static final FIELD_REQUEST_METADATA:I = 0x4


# instance fields
.field public final clippingConfiguration:Lcom/google/android/exoplayer2/i2$d;

.field public final clippingProperties:Lcom/google/android/exoplayer2/i2$e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

.field public final localConfiguration:Lcom/google/android/exoplayer2/i2$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mediaId:Ljava/lang/String;

.field public final mediaMetadata:Lcom/google/android/exoplayer2/n2;

.field public final playbackProperties:Lcom/google/android/exoplayer2/i2$i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final requestMetadata:Lcom/google/android/exoplayer2/i2$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/i2$c;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2$c;->a()Lcom/google/android/exoplayer2/i2;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/i2;->EMPTY:Lcom/google/android/exoplayer2/i2;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/h2;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/android/exoplayer2/h2;-><init>()V

    .line 17
    .line 18
    sput-object v0, Lcom/google/android/exoplayer2/i2;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i2$e;Lcom/google/android/exoplayer2/i2$i;Lcom/google/android/exoplayer2/i2$g;Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/i2$j;)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/i2$i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/i2;->mediaId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    iput-object p3, p0, Lcom/google/android/exoplayer2/i2;->playbackProperties:Lcom/google/android/exoplayer2/i2$i;

    iput-object p4, p0, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    iput-object p5, p0, Lcom/google/android/exoplayer2/i2;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    iput-object p2, p0, Lcom/google/android/exoplayer2/i2;->clippingConfiguration:Lcom/google/android/exoplayer2/i2$d;

    iput-object p2, p0, Lcom/google/android/exoplayer2/i2;->clippingProperties:Lcom/google/android/exoplayer2/i2$e;

    iput-object p6, p0, Lcom/google/android/exoplayer2/i2;->requestMetadata:Lcom/google/android/exoplayer2/i2$j;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i2$e;Lcom/google/android/exoplayer2/i2$i;Lcom/google/android/exoplayer2/i2$g;Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/i2$j;Lcom/google/android/exoplayer2/i2$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/i2;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i2$e;Lcom/google/android/exoplayer2/i2$i;Lcom/google/android/exoplayer2/i2$g;Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/i2$j;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i2;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/i2;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i2;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i2;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/i2;->e(I)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/exoplayer2/i2;->e(I)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    sget-object v0, Lcom/google/android/exoplayer2/i2$g;->UNSET:Lcom/google/android/exoplayer2/i2$g;

    .line 32
    :goto_0
    move-object v5, v0

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/i2$g;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/google/android/exoplayer2/i2$g;

    .line 42
    goto :goto_0

    .line 43
    :goto_1
    const/4 v0, 0x2

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/google/android/exoplayer2/i2;->e(I)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    sget-object v0, Lcom/google/android/exoplayer2/n2;->EMPTY:Lcom/google/android/exoplayer2/n2;

    .line 56
    :goto_2
    move-object v6, v0

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/n2;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    check-cast v0, Lcom/google/android/exoplayer2/n2;

    .line 66
    goto :goto_2

    .line 67
    :goto_3
    const/4 v0, 0x3

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lcom/google/android/exoplayer2/i2;->e(I)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    sget-object v0, Lcom/google/android/exoplayer2/i2$e;->UNSET:Lcom/google/android/exoplayer2/i2$e;

    .line 80
    :goto_4
    move-object v3, v0

    .line 81
    goto :goto_5

    .line 82
    .line 83
    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/i2$d;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 84
    .line 85
    .line 86
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    check-cast v0, Lcom/google/android/exoplayer2/i2$e;

    .line 90
    goto :goto_4

    .line 91
    :goto_5
    const/4 v0, 0x4

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/google/android/exoplayer2/i2;->e(I)Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    if-nez p0, :cond_3

    .line 102
    .line 103
    sget-object p0, Lcom/google/android/exoplayer2/i2$j;->EMPTY:Lcom/google/android/exoplayer2/i2$j;

    .line 104
    :goto_6
    move-object v7, p0

    .line 105
    goto :goto_7

    .line 106
    .line 107
    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/i2$j;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    check-cast p0, Lcom/google/android/exoplayer2/i2$j;

    .line 114
    goto :goto_6

    .line 115
    .line 116
    :goto_7
    new-instance p0, Lcom/google/android/exoplayer2/i2;

    .line 117
    const/4 v4, 0x0

    .line 118
    move-object v1, p0

    .line 119
    .line 120
    .line 121
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/i2;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i2$e;Lcom/google/android/exoplayer2/i2$i;Lcom/google/android/exoplayer2/i2$g;Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/i2$j;)V

    .line 122
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lcom/google/android/exoplayer2/i2;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/i2$c;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/i2$c;->h(Ljava/lang/String;)Lcom/google/android/exoplayer2/i2$c;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i2$c;->a()Lcom/google/android/exoplayer2/i2;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static e(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x24

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/i2$c;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$c;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/i2$c;-><init>(Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/i2$a;)V

    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/i2;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/i2;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2;->mediaId:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2;->mediaId:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2;->clippingConfiguration:Lcom/google/android/exoplayer2/i2$d;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2;->clippingConfiguration:Lcom/google/android/exoplayer2/i2$d;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/i2$d;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 45
    .line 46
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 55
    .line 56
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2;->requestMetadata:Lcom/google/android/exoplayer2/i2$j;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/google/android/exoplayer2/i2;->requestMetadata:Lcom/google/android/exoplayer2/i2$j;

    .line 67
    .line 68
    .line 69
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    move-result p1

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v0, v2

    .line 75
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i2;->mediaId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i2$h;->hashCode()I

    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i2$g;->hashCode()I

    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2;->clippingConfiguration:Lcom/google/android/exoplayer2/i2$d;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i2$d;->hashCode()I

    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/n2;->hashCode()I

    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2;->requestMetadata:Lcom/google/android/exoplayer2/i2$j;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i2$j;->hashCode()I

    .line 54
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2;->e(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/i2;->mediaId:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2;->e(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/i2$g;->toBundle()Landroid/os/Bundle;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    const/4 v1, 0x2

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2;->e(I)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/google/android/exoplayer2/i2;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n2;->toBundle()Landroid/os/Bundle;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 44
    const/4 v1, 0x3

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2;->e(I)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/android/exoplayer2/i2;->clippingConfiguration:Lcom/google/android/exoplayer2/i2$d;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/i2$d;->toBundle()Landroid/os/Bundle;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    const/4 v1, 0x4

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2;->e(I)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    iget-object v2, p0, Lcom/google/android/exoplayer2/i2;->requestMetadata:Lcom/google/android/exoplayer2/i2$j;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/i2$j;->toBundle()Landroid/os/Bundle;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    return-object v0
.end method
