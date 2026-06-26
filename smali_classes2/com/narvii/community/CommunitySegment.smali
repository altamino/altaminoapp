.class public Lcom/narvii/community/CommunitySegment;
.super Lcom/narvii/model/NVObject;
.source "CommunitySegment.java"


# instance fields
.field public canBeDisabled:Z

.field public pinned:Z

.field public status:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 25
    iput p1, p0, Lcom/narvii/community/CommunitySegment;->type:I

    .line 26
    iput p2, p0, Lcom/narvii/community/CommunitySegment;->status:I

    return-void
.end method

.method public constructor <init>(ZIZI)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/narvii/community/CommunitySegment;->pinned:Z

    .line 19
    iput p2, p0, Lcom/narvii/community/CommunitySegment;->type:I

    .line 20
    iput-boolean p3, p0, Lcom/narvii/community/CommunitySegment;->canBeDisabled:Z

    .line 21
    iput p4, p0, Lcom/narvii/community/CommunitySegment;->status:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 63
    :cond_0
    instance-of v1, p1, Lcom/narvii/community/CommunitySegment;

    if-eqz v1, :cond_2

    .line 64
    check-cast p1, Lcom/narvii/community/CommunitySegment;

    .line 65
    iget-boolean v1, p0, Lcom/narvii/community/CommunitySegment;->canBeDisabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/narvii/community/CommunitySegment;->canBeDisabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/narvii/community/CommunitySegment;->pinned:Z

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/narvii/community/CommunitySegment;->pinned:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/narvii/community/CommunitySegment;->type:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/narvii/community/CommunitySegment;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/narvii/community/CommunitySegment;->status:I

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p1, Lcom/narvii/community/CommunitySegment;->status:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 70
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x65

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
