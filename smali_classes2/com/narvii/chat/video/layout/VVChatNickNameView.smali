.class public Lcom/narvii/chat/video/layout/VVChatNickNameView;
.super Lcom/narvii/widget/NicknameView;
.source "VVChatNickNameView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NicknameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideRole:Z

    .line 16
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideMembershipBadge:Z

    .line 17
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideRankingBadge:Z

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    return-void
.end method
