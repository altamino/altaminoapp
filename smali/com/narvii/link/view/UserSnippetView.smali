.class public Lcom/narvii/link/view/UserSnippetView;
.super Lcom/narvii/link/view/NVLinkSnippetView;
.source "UserSnippetView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/link/view/NVLinkSnippetView<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field private nicknameView:Lcom/narvii/widget/NicknameView;

.field private userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/link/view/NVLinkSnippetView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0446

    .line 22
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090c10

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/link/view/UserSnippetView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f090764

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/link/view/UserSnippetView;->nicknameView:Lcom/narvii/widget/NicknameView;

    return-void
.end method


# virtual methods
.method public isAllLoaded()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/widget/UserAvatarLayout;->isAllLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/link/view/UserSnippetView;->setObject(Lcom/narvii/model/User;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/User;)V
    .locals 7

    .line 34
    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v1, p0, Lcom/narvii/link/view/NVLinkSnippetView;->nvContext:Lcom/narvii/app/NVContext;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    .line 35
    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    .line 36
    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const v1, -0x141110

    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUnsubcribeColor(I)V

    .line 37
    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->nicknameView:Lcom/narvii/widget/NicknameView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NicknameView;->setHideInfluencerBadge(Z)V

    .line 38
    iget-object v0, p0, Lcom/narvii/link/view/NVLinkSnippetView;->otherCommunity:Lcom/narvii/model/Community;

    const-string/jumbo v2, "ranking"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, v0, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "module"

    aput-object v5, v4, v1

    aput-object v2, v4, v3

    const/4 v5, 0x2

    const-string v6, "enabled"

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->nicknameView:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NicknameView;->setHideRankingBadge(Z)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/narvii/link/view/NVLinkSnippetView;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ranking/RankingService;

    .line 47
    iget-object v2, p0, Lcom/narvii/link/view/UserSnippetView;->nicknameView:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v2, v0}, Lcom/narvii/widget/NicknameView;->setRankingService(Lcom/narvii/util/ranking/RankingService;)V

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->nicknameView:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v0}, Lcom/narvii/widget/NicknameView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->nicknameView:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 55
    iget-object p1, p0, Lcom/narvii/link/view/UserSnippetView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    new-instance v0, Lcom/narvii/link/view/UserSnippetView$1;

    invoke-direct {v0, p0}, Lcom/narvii/link/view/UserSnippetView$1;-><init>(Lcom/narvii/link/view/UserSnippetView;)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setLoadFinishListener(Lcom/narvii/link/LoadFinishListener;)V

    return-void
.end method
