.class public final Landroidx/webkit/UserAgentMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/UserAgentMetadata$Builder;,
        Landroidx/webkit/UserAgentMetadata$BrandVersion;
    }
.end annotation


# static fields
.field public static final BITNESS_DEFAULT:I


# instance fields
.field private final mArchitecture:Ljava/lang/String;

.field private mBitness:I

.field private final mBrandVersionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/UserAgentMetadata$BrandVersion;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullVersion:Ljava/lang/String;

.field private mMobile:Z

.field private final mModel:Ljava/lang/String;

.field private final mPlatform:Ljava/lang/String;

.field private final mPlatformVersion:Ljava/lang/String;

.field private mWow64:Z


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/webkit/UserAgentMetadata$BrandVersion;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    instance-of v1, p1, Landroidx/webkit/UserAgentMetadata;

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
    check-cast p1, Landroidx/webkit/UserAgentMetadata;

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    .line 15
    .line 16
    iget-boolean v3, p1, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    .line 17
    .line 18
    if-ne v1, v3, :cond_2

    .line 19
    .line 20
    iget v1, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    .line 21
    .line 22
    iget v3, p1, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    .line 23
    .line 24
    if-ne v1, v3, :cond_2

    .line 25
    .line 26
    iget-boolean v1, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    .line 27
    .line 28
    iget-boolean v3, p1, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    .line 29
    .line 30
    if-ne v1, v3, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    .line 33
    .line 34
    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    move-result v1

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    .line 83
    .line 84
    iget-object p1, p1, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    move-result p1

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move v0, v2

    .line 93
    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    .line 8
    .line 9
    aput-object v2, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    .line 13
    .line 14
    aput-object v2, v0, v1

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    const/4 v1, 0x3

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    .line 23
    .line 24
    aput-object v2, v0, v1

    .line 25
    const/4 v1, 0x4

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    .line 28
    .line 29
    aput-object v2, v0, v1

    .line 30
    const/4 v1, 0x5

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    .line 33
    .line 34
    aput-object v2, v0, v1

    .line 35
    .line 36
    iget-boolean v1, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x6

    .line 42
    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    iget v1, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x7

    .line 51
    .line 52
    aput-object v1, v0, v2

    .line 53
    .line 54
    iget-boolean v1, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    const/16 v2, 0x8

    .line 61
    .line 62
    aput-object v1, v0, v2

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 66
    move-result v0

    .line 67
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    return v0
.end method
