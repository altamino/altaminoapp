.class public final Lcom/narvii/master/launch/InstallType$Upgrade;
.super Lcom/narvii/master/launch/InstallType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/launch/InstallType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Upgrade"
.end annotation


# instance fields
.field private final newVersion:I

.field private final oldVersion:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/master/launch/InstallType;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->oldVersion:I

    .line 7
    .line 8
    iput p2, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->newVersion:I

    .line 9
    return-void
.end method

.method public static synthetic copy$default(Lcom/narvii/master/launch/InstallType$Upgrade;IIILjava/lang/Object;)Lcom/narvii/master/launch/InstallType$Upgrade;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->oldVersion:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->newVersion:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/launch/InstallType$Upgrade;->copy(II)Lcom/narvii/master/launch/InstallType$Upgrade;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->oldVersion:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->newVersion:I

    return v0
.end method

.method public final copy(II)Lcom/narvii/master/launch/InstallType$Upgrade;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/narvii/master/launch/InstallType$Upgrade;

    invoke-direct {v0, p1, p2}, Lcom/narvii/master/launch/InstallType$Upgrade;-><init>(II)V

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
    instance-of v1, p1, Lcom/narvii/master/launch/InstallType$Upgrade;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/narvii/master/launch/InstallType$Upgrade;

    iget v1, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->oldVersion:I

    iget v3, p1, Lcom/narvii/master/launch/InstallType$Upgrade;->oldVersion:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->newVersion:I

    iget p1, p1, Lcom/narvii/master/launch/InstallType$Upgrade;->newVersion:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getNewVersion()I
    .locals 1

    iget v0, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->newVersion:I

    return v0
.end method

.method public final getOldVersion()I
    .locals 1

    iget v0, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->oldVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->oldVersion:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->newVersion:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->oldVersion:I

    iget v1, p0, Lcom/narvii/master/launch/InstallType$Upgrade;->newVersion:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrade(oldVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", newVersion="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
