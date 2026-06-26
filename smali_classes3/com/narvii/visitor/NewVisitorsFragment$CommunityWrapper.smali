.class public final Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;
.super Lcom/narvii/model/NVObject;
.source "NewVisitorsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/visitor/NewVisitorsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommunityWrapper"
.end annotation


# instance fields
.field private community:Lcom/narvii/model/Community;

.field private count:I

.field private userProfile:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCommunity()Lcom/narvii/model/Community;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->community:Lcom/narvii/model/Community;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->count:I

    return v0
.end method

.method public final getUserProfile()Lcom/narvii/model/User;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->userProfile:Lcom/narvii/model/User;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->community:Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/Community;->id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final isGlobal()Z
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->ndcId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->userProfile:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/model/User;->isGlobal:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final ndcId()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->community:Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->userProfile:Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/narvii/model/User;->ndcId:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final setCommunity(Lcom/narvii/model/Community;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->community:Lcom/narvii/model/Community;

    return-void
.end method

.method public final setCount(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->count:I

    return-void
.end method

.method public final setUserProfile(Lcom/narvii/model/User;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->userProfile:Lcom/narvii/model/User;

    return-void
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->userProfile:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
