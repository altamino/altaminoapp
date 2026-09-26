.class Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/view/LiveUserRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudienceHolder"
.end annotation


# instance fields
.field avatar:Lcom/narvii/widget/NVImageView;

.field final synthetic this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

.field userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/view/LiveUserRecyclerView;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f0a0f36

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0a0171

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->avatar:Lcom/narvii/widget/NVImageView;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 30
    const/4 p2, 0x0

    .line 31
    .line 32
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, p2}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setMembershipStrokeRatio(F)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->avatar:Lcom/narvii/widget/NVImageView;

    .line 43
    const/4 p2, 0x1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setFixStroke(Z)V

    .line 47
    return-void
.end method
