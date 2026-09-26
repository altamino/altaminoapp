.class final Lcom/google/android/datatransport/cct/internal/c$b;
.super Lcom/google/android/datatransport/cct/internal/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private applicationBuild:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private device:Ljava/lang/String;

.field private fingerprint:Ljava/lang/String;

.field private hardware:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private mccMnc:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private osBuild:Ljava/lang/String;

.field private product:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/a$a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/datatransport/cct/internal/a;
    .locals 15

    .line 1
    .line 2
    new-instance v14, Lcom/google/android/datatransport/cct/internal/c;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/c$b;->sdkVersion:Ljava/lang/Integer;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/datatransport/cct/internal/c$b;->model:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/c$b;->hardware:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/google/android/datatransport/cct/internal/c$b;->device:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v5, p0, Lcom/google/android/datatransport/cct/internal/c$b;->product:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v6, p0, Lcom/google/android/datatransport/cct/internal/c$b;->osBuild:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v7, p0, Lcom/google/android/datatransport/cct/internal/c$b;->manufacturer:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v8, p0, Lcom/google/android/datatransport/cct/internal/c$b;->fingerprint:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v9, p0, Lcom/google/android/datatransport/cct/internal/c$b;->locale:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v10, p0, Lcom/google/android/datatransport/cct/internal/c$b;->country:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v11, p0, Lcom/google/android/datatransport/cct/internal/c$b;->mccMnc:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v12, p0, Lcom/google/android/datatransport/cct/internal/c$b;->applicationBuild:Ljava/lang/String;

    .line 27
    const/4 v13, 0x0

    .line 28
    move-object v0, v14

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v0 .. v13}, Lcom/google/android/datatransport/cct/internal/c;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/datatransport/cct/internal/c$a;)V

    .line 32
    return-object v14
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/a$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/c$b;->applicationBuild:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/a$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/c$b;->country:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/a$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/c$b;->device:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/a$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/c$b;->fingerprint:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/a$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/c$b;->hardware:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/a$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/c$b;->locale:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/a$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/c$b;->manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/a$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/c$b;->mccMnc:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/a$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/c$b;->model:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/a$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/c$b;->osBuild:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/a$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/c$b;->product:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/internal/a$a;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/c$b;->sdkVersion:Ljava/lang/Integer;

    return-object p0
.end method
