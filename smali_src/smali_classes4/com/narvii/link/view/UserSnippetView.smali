.class public Lcom/narvii/link/view/UserSnippetView;
.super Lcom/narvii/link/view/NVLinkSnippetView;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/link/view/NVLinkSnippetView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0d047b

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const p1, 0x7f0a0f36

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/link/view/UserSnippetView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 21
    .line 22
    .line 23
    const p1, 0x7f0a09f9

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/widget/NicknameView;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/link/view/UserSnippetView;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 32
    return-void
.end method


# virtual methods
.method public isAllLoaded()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/widget/UserAvatarLayout;->isAllLoaded()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/link/view/UserSnippetView;->setObject(Lcom/narvii/model/User;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/User;)V
    .locals 6

    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v1, p0, Lcom/narvii/link/view/NVLinkSnippetView;->nvContext:Lcom/narvii/app/NVContext;

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 3
    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const v1, -0x141110

    .line 4
    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUnsubcribeColor(I)V

    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->nicknameView:Lcom/narvii/widget/NicknameView;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NicknameView;->setHideInfluencerBadge(Z)V

    iget-object v0, p0, Lcom/narvii/link/view/NVLinkSnippetView;->otherCommunity:Lcom/narvii/model/Community;

    const/4 v2, 0x1

    const-string v3, "ranking"

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v0, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v4, "module"

    const-string v5, "enabled"

    filled-new-array {v4, v3, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 7
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NicknameView;->setHideRankingBadge(Z)V

    :cond_0
    iget-object v0, p0, Lcom/narvii/link/view/NVLinkSnippetView;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ranking/RankingService;

    iget-object v3, p0, Lcom/narvii/link/view/UserSnippetView;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 9
    invoke-virtual {v3, v0}, Lcom/narvii/widget/NicknameView;->setRankingService(Lcom/narvii/util/ranking/RankingService;)V

    :cond_1
    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 10
    invoke-virtual {v0}, Lcom/narvii/widget/NicknameView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 12
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    iget-object p1, p0, Lcom/narvii/link/view/UserSnippetView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 14
    new-instance v0, Lcom/narvii/link/view/UserSnippetView$1;

    invoke-direct {v0, p0}, Lcom/narvii/link/view/UserSnippetView$1;-><init>(Lcom/narvii/link/view/UserSnippetView;)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setLoadFinishListener(Lcom/narvii/link/LoadFinishListener;)V

    return-void
.end method
