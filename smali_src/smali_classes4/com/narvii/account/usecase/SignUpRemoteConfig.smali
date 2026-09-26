.class public final Lcom/narvii/account/usecase/SignUpRemoteConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isEmailSignupAvailable:Z

.field private final isPhoneSignupAvailable:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isEmailSignupAvailable:Z

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isPhoneSignupAvailable:Z

    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lcom/narvii/account/usecase/SignUpRemoteConfig;ZZILjava/lang/Object;)Lcom/narvii/account/usecase/SignUpRemoteConfig;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isEmailSignupAvailable:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isPhoneSignupAvailable:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/usecase/SignUpRemoteConfig;->copy(ZZ)Lcom/narvii/account/usecase/SignUpRemoteConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isEmailSignupAvailable:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isPhoneSignupAvailable:Z

    return v0
.end method

.method public final copy(ZZ)Lcom/narvii/account/usecase/SignUpRemoteConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/narvii/account/usecase/SignUpRemoteConfig;

    invoke-direct {v0, p1, p2}, Lcom/narvii/account/usecase/SignUpRemoteConfig;-><init>(ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/narvii/account/usecase/SignUpRemoteConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/narvii/account/usecase/SignUpRemoteConfig;

    iget-boolean v1, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isEmailSignupAvailable:Z

    iget-boolean v3, p1, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isEmailSignupAvailable:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isPhoneSignupAvailable:Z

    iget-boolean p1, p1, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isPhoneSignupAvailable:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isEmailSignupAvailable:Z

    invoke-static {v0}, Landroidx/compose/foundation/c;->a(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isPhoneSignupAvailable:Z

    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isEmailSignupAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isEmailSignupAvailable:Z

    return v0
.end method

.method public final isPhoneSignupAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isPhoneSignupAvailable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isEmailSignupAvailable:Z

    iget-boolean v1, p0, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isPhoneSignupAvailable:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SignUpRemoteConfig(isEmailSignupAvailable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPhoneSignupAvailable="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
