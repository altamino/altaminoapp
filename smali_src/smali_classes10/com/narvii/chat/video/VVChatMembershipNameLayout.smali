.class public Lcom/narvii/chat/video/VVChatMembershipNameLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field forceHideBadge:Z

.field nicknameView:Lcom/narvii/widget/NicknameView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    new-instance p2, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 15
    .line 16
    const/16 p1, 0x10

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a071e

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 15
    return-void
.end method

.method public setForceHideBadge(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->forceHideBadge:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setHideInfluencerBadge(Z)V

    .line 10
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setUser(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 8
    :cond_0
    return-void
.end method
