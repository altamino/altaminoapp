.class public Lcom/narvii/community/CommunitySegment;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


# instance fields
.field public canBeDisabled:Z

.field public pinned:Z

.field public status:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    iput p1, p0, Lcom/narvii/community/CommunitySegment;->type:I

    iput p2, p0, Lcom/narvii/community/CommunitySegment;->status:I

    return-void
.end method

.method public constructor <init>(ZIZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    iput-boolean p1, p0, Lcom/narvii/community/CommunitySegment;->pinned:Z

    iput p2, p0, Lcom/narvii/community/CommunitySegment;->type:I

    iput-boolean p3, p0, Lcom/narvii/community/CommunitySegment;->canBeDisabled:Z

    iput p4, p0, Lcom/narvii/community/CommunitySegment;->status:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

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
    instance-of v1, p1, Lcom/narvii/community/CommunitySegment;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/community/CommunitySegment;

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/narvii/community/CommunitySegment;->canBeDisabled:Z

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iget-boolean v2, p1, Lcom/narvii/community/CommunitySegment;->canBeDisabled:Z

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/narvii/community/CommunitySegment;->pinned:Z

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    iget-boolean v2, p1, Lcom/narvii/community/CommunitySegment;->pinned:Z

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget v1, p0, Lcom/narvii/community/CommunitySegment;->type:I

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    iget v2, p1, Lcom/narvii/community/CommunitySegment;->type:I

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    iget v1, p0, Lcom/narvii/community/CommunitySegment;->status:I

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    iget p1, p1, Lcom/narvii/community/CommunitySegment;->status:I

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    move-result p1

    .line 81
    .line 82
    if-eqz p1, :cond_1

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p1

    .line 90
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
