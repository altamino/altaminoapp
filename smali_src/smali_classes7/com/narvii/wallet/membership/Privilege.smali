.class public final Lcom/narvii/wallet/membership/Privilege;
.super Lcom/narvii/wallet/membership/NVObjectAdapter;
.source "SourceFile"


# instance fields
.field private final content:I

.field private final icon:I

.field private final title:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/membership/NVObjectAdapter;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/wallet/membership/Privilege;->icon:I

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/wallet/membership/Privilege;->title:I

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/wallet/membership/Privilege;->content:I

    .line 10
    return-void
.end method

.method public static synthetic copy$default(Lcom/narvii/wallet/membership/Privilege;IIIILjava/lang/Object;)Lcom/narvii/wallet/membership/Privilege;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/narvii/wallet/membership/Privilege;->icon:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/narvii/wallet/membership/Privilege;->title:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/narvii/wallet/membership/Privilege;->content:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/wallet/membership/Privilege;->copy(III)Lcom/narvii/wallet/membership/Privilege;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/narvii/wallet/membership/Privilege;->icon:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/narvii/wallet/membership/Privilege;->title:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/narvii/wallet/membership/Privilege;->content:I

    return v0
.end method

.method public final copy(III)Lcom/narvii/wallet/membership/Privilege;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/narvii/wallet/membership/Privilege;

    invoke-direct {v0, p1, p2, p3}, Lcom/narvii/wallet/membership/Privilege;-><init>(III)V

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
    instance-of v1, p1, Lcom/narvii/wallet/membership/Privilege;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/narvii/wallet/membership/Privilege;

    iget v1, p0, Lcom/narvii/wallet/membership/Privilege;->icon:I

    iget v3, p1, Lcom/narvii/wallet/membership/Privilege;->icon:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/narvii/wallet/membership/Privilege;->title:I

    iget v3, p1, Lcom/narvii/wallet/membership/Privilege;->title:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/narvii/wallet/membership/Privilege;->content:I

    iget p1, p1, Lcom/narvii/wallet/membership/Privilege;->content:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getContent()I
    .locals 1

    iget v0, p0, Lcom/narvii/wallet/membership/Privilege;->content:I

    return v0
.end method

.method public final getIcon()I
    .locals 1

    iget v0, p0, Lcom/narvii/wallet/membership/Privilege;->icon:I

    return v0
.end method

.method public final getTitle()I
    .locals 1

    iget v0, p0, Lcom/narvii/wallet/membership/Privilege;->title:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/narvii/wallet/membership/Privilege;->icon:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/narvii/wallet/membership/Privilege;->title:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/narvii/wallet/membership/Privilege;->content:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/narvii/wallet/membership/Privilege;->icon:I

    iget v1, p0, Lcom/narvii/wallet/membership/Privilege;->title:I

    iget v2, p0, Lcom/narvii/wallet/membership/Privilege;->content:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Privilege(icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", content="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
