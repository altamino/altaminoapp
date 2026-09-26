.class public Lcom/narvii/quiz/QuizMilestoneAvatarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field avatar:Lcom/narvii/widget/UserAvatarLayout;

.field milestone:Lcom/narvii/widget/TintButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0d0679

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0a0973

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/quiz/QuizMilestoneAvatarView;->milestone:Lcom/narvii/widget/TintButton;

    .line 25
    .line 26
    .line 27
    const p1, 0x7f0a0f36

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/quiz/QuizMilestoneAvatarView;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 36
    return-void
.end method


# virtual methods
.method public setMileStoneColor(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneAvatarView;->milestone:Lcom/narvii/widget/TintButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 6
    return-void
.end method

.method public setUser(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneAvatarView;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 6
    return-void
.end method
