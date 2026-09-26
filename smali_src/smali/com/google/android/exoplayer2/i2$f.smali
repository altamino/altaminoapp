.class public final Lcom/google/android/exoplayer2/i2$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/i2$f$a;
    }
.end annotation


# instance fields
.field public final forceDefaultLicenseUri:Z

.field public final forcedSessionTrackTypes:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final keySetId:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final licenseRequestHeaders:Lcom/google/common/collect/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final licenseUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final multiSession:Z

.field public final playClearContentWithoutKey:Z

.field public final requestHeaders:Lcom/google/common/collect/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final scheme:Ljava/util/UUID;

.field public final sessionForClearTypes:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final uuid:Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/i2$f$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->g(Lcom/google/android/exoplayer2/i2$f$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->e(Lcom/google/android/exoplayer2/i2$f$a;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->f(Lcom/google/android/exoplayer2/i2$f$a;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$f;->scheme:Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$f;->uuid:Ljava/util/UUID;

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->e(Lcom/google/android/exoplayer2/i2$f$a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$f;->licenseUri:Landroid/net/Uri;

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->h(Lcom/google/android/exoplayer2/i2$f$a;)Lcom/google/common/collect/b0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$f;->requestHeaders:Lcom/google/common/collect/b0;

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->h(Lcom/google/android/exoplayer2/i2$f$a;)Lcom/google/common/collect/b0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$f;->licenseRequestHeaders:Lcom/google/common/collect/b0;

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->a(Lcom/google/android/exoplayer2/i2$f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i2$f;->multiSession:Z

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->g(Lcom/google/android/exoplayer2/i2$f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i2$f;->forceDefaultLicenseUri:Z

    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->b(Lcom/google/android/exoplayer2/i2$f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i2$f;->playClearContentWithoutKey:Z

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->c(Lcom/google/android/exoplayer2/i2$f$a;)Lcom/google/common/collect/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$f;->sessionForClearTypes:Lcom/google/common/collect/a0;

    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->c(Lcom/google/android/exoplayer2/i2$f$a;)Lcom/google/common/collect/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$f;->forcedSessionTrackTypes:Lcom/google/common/collect/a0;

    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->d(Lcom/google/android/exoplayer2/i2$f$a;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->d(Lcom/google/android/exoplayer2/i2$f$a;)[B

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f$a;->d(Lcom/google/android/exoplayer2/i2$f$a;)[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$f;->keySetId:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/i2$f$a;Lcom/google/android/exoplayer2/i2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/i2$f;-><init>(Lcom/google/android/exoplayer2/i2$f$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/i2$f;)[B
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2$f;->keySetId:[B

    .line 3
    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/i2$f$a;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$f$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/i2$f$a;-><init>(Lcom/google/android/exoplayer2/i2$f;Lcom/google/android/exoplayer2/i2$a;)V

    .line 7
    return-object v0
.end method

.method public c()[B
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i2$f;->keySetId:[B

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    array-length v1, v0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
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
    instance-of v1, p1, Lcom/google/android/exoplayer2/i2$f;

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
    check-cast p1, Lcom/google/android/exoplayer2/i2$f;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$f;->scheme:Ljava/util/UUID;

    .line 15
    .line 16
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2$f;->scheme:Ljava/util/UUID;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$f;->licenseUri:Landroid/net/Uri;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2$f;->licenseUri:Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$f;->licenseRequestHeaders:Lcom/google/common/collect/b0;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2$f;->licenseRequestHeaders:Lcom/google/common/collect/b0;

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
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i2$f;->multiSession:Z

    .line 45
    .line 46
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/i2$f;->multiSession:Z

    .line 47
    .line 48
    if-ne v1, v3, :cond_2

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i2$f;->forceDefaultLicenseUri:Z

    .line 51
    .line 52
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/i2$f;->forceDefaultLicenseUri:Z

    .line 53
    .line 54
    if-ne v1, v3, :cond_2

    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i2$f;->playClearContentWithoutKey:Z

    .line 57
    .line 58
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/i2$f;->playClearContentWithoutKey:Z

    .line 59
    .line 60
    if-ne v1, v3, :cond_2

    .line 61
    .line 62
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$f;->forcedSessionTrackTypes:Lcom/google/common/collect/a0;

    .line 63
    .line 64
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2$f;->forcedSessionTrackTypes:Lcom/google/common/collect/a0;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3}, Lcom/google/common/collect/a0;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$f;->keySetId:[B

    .line 73
    .line 74
    iget-object p1, p1, Lcom/google/android/exoplayer2/i2$f;->keySetId:[B

    .line 75
    .line 76
    .line 77
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 78
    move-result p1

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v0, v2

    .line 83
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i2$f;->scheme:Ljava/util/UUID;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$f;->licenseUri:Landroid/net/Uri;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$f;->licenseRequestHeaders:Lcom/google/common/collect/b0;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/common/collect/b0;->hashCode()I

    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i2$f;->multiSession:Z

    .line 33
    add-int/2addr v0, v1

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i2$f;->forceDefaultLicenseUri:Z

    .line 38
    add-int/2addr v0, v1

    .line 39
    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i2$f;->playClearContentWithoutKey:Z

    .line 43
    add-int/2addr v0, v1

    .line 44
    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$f;->forcedSessionTrackTypes:Lcom/google/common/collect/a0;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/google/common/collect/a0;->hashCode()I

    .line 51
    move-result v1

    .line 52
    add-int/2addr v0, v1

    .line 53
    .line 54
    mul-int/lit8 v0, v0, 0x1f

    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$f;->keySetId:[B

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 60
    move-result v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    return v0
.end method
