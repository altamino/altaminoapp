.class public final Lcom/google/android/exoplayer2/i2$f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i2$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private forceDefaultLicenseUri:Z

.field private forcedSessionTrackTypes:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private keySetId:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private licenseRequestHeaders:Lcom/google/common/collect/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private licenseUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private multiSession:Z

.field private playClearContentWithoutKey:Z

.field private scheme:Ljava/util/UUID;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Lcom/google/common/collect/b0;->m()Lcom/google/common/collect/b0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$f$a;->licenseRequestHeaders:Lcom/google/common/collect/b0;

    .line 8
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$f$a;->forcedSessionTrackTypes:Lcom/google/common/collect/a0;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/i2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i2$f$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/i2$f;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$f;->scheme:Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$f$a;->scheme:Ljava/util/UUID;

    .line 11
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$f;->licenseUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$f$a;->licenseUri:Landroid/net/Uri;

    .line 12
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$f;->licenseRequestHeaders:Lcom/google/common/collect/b0;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$f$a;->licenseRequestHeaders:Lcom/google/common/collect/b0;

    .line 13
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/i2$f;->multiSession:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i2$f$a;->multiSession:Z

    .line 14
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/i2$f;->playClearContentWithoutKey:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i2$f$a;->playClearContentWithoutKey:Z

    .line 15
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/i2$f;->forceDefaultLicenseUri:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i2$f$a;->forceDefaultLicenseUri:Z

    .line 16
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$f;->forcedSessionTrackTypes:Lcom/google/common/collect/a0;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i2$f$a;->forcedSessionTrackTypes:Lcom/google/common/collect/a0;

    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$f;->a(Lcom/google/android/exoplayer2/i2$f;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$f$a;->keySetId:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/i2$f;Lcom/google/android/exoplayer2/i2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/i2$f$a;-><init>(Lcom/google/android/exoplayer2/i2$f;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$f$a;->scheme:Ljava/util/UUID;

    .line 4
    invoke-static {}, Lcom/google/common/collect/b0;->m()Lcom/google/common/collect/b0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$f$a;->licenseRequestHeaders:Lcom/google/common/collect/b0;

    .line 5
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$f$a;->forcedSessionTrackTypes:Lcom/google/common/collect/a0;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/i2$f$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/i2$f$a;->multiSession:Z

    .line 3
    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/i2$f$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/i2$f$a;->playClearContentWithoutKey:Z

    .line 3
    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/i2$f$a;)Lcom/google/common/collect/a0;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2$f$a;->forcedSessionTrackTypes:Lcom/google/common/collect/a0;

    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/i2$f$a;)[B
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2$f$a;->keySetId:[B

    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/i2$f$a;)Landroid/net/Uri;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2$f$a;->licenseUri:Landroid/net/Uri;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/i2$f$a;)Ljava/util/UUID;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2$f$a;->scheme:Ljava/util/UUID;

    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/i2$f$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/i2$f$a;->forceDefaultLicenseUri:Z

    .line 3
    return p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/i2$f$a;)Lcom/google/common/collect/b0;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2$f$a;->licenseRequestHeaders:Lcom/google/common/collect/b0;

    .line 3
    return-object p0
.end method


# virtual methods
.method public i()Lcom/google/android/exoplayer2/i2$f;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$f;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/i2$f;-><init>(Lcom/google/android/exoplayer2/i2$f$a;Lcom/google/android/exoplayer2/i2$a;)V

    .line 7
    return-object v0
.end method
