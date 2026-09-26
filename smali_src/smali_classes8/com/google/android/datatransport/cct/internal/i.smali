.class final Lcom/google/android/datatransport/cct/internal/i;
.super Lcom/google/android/datatransport/cct/internal/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/internal/i$b;
    }
.end annotation


# instance fields
.field private final mobileSubtype:Lcom/google/android/datatransport/cct/internal/o$b;

.field private final networkType:Lcom/google/android/datatransport/cct/internal/o$c;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/cct/internal/o$c;Lcom/google/android/datatransport/cct/internal/o$b;)V
    .locals 0
    .param p1    # Lcom/google/android/datatransport/cct/internal/o$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/datatransport/cct/internal/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/o;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/i;->networkType:Lcom/google/android/datatransport/cct/internal/o$c;

    iput-object p2, p0, Lcom/google/android/datatransport/cct/internal/i;->mobileSubtype:Lcom/google/android/datatransport/cct/internal/o$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/datatransport/cct/internal/o$c;Lcom/google/android/datatransport/cct/internal/o$b;Lcom/google/android/datatransport/cct/internal/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/i;-><init>(Lcom/google/android/datatransport/cct/internal/o$c;Lcom/google/android/datatransport/cct/internal/o$b;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/cct/internal/o$b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/i;->mobileSubtype:Lcom/google/android/datatransport/cct/internal/o$b;

    return-object v0
.end method

.method public c()Lcom/google/android/datatransport/cct/internal/o$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/i;->networkType:Lcom/google/android/datatransport/cct/internal/o$c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/cct/internal/o;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    check-cast p1, Lcom/google/android/datatransport/cct/internal/o;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/i;->networkType:Lcom/google/android/datatransport/cct/internal/o$c;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/o;->c()Lcom/google/android/datatransport/cct/internal/o$c;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    if-nez v1, :cond_3

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/o;->c()Lcom/google/android/datatransport/cct/internal/o$c;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    :goto_0
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/i;->mobileSubtype:Lcom/google/android/datatransport/cct/internal/o$b;

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/o;->b()Lcom/google/android/datatransport/cct/internal/o$b;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    goto :goto_1

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/o;->b()Lcom/google/android/datatransport/cct/internal/o$b;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move v0, v2

    .line 56
    :goto_1
    return v0

    .line 57
    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/i;->networkType:Lcom/google/android/datatransport/cct/internal/o$c;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    :goto_0
    const v2, 0xf4243

    .line 15
    xor-int/2addr v0, v2

    .line 16
    mul-int/2addr v0, v2

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/datatransport/cct/internal/i;->mobileSubtype:Lcom/google/android/datatransport/cct/internal/o$b;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 25
    move-result v1

    .line 26
    :goto_1
    xor-int/2addr v0, v1

    .line 27
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "NetworkConnectionInfo{networkType="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/i;->networkType:Lcom/google/android/datatransport/cct/internal/o$c;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", mobileSubtype="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/i;->mobileSubtype:Lcom/google/android/datatransport/cct/internal/o$b;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "}"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
