.class Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SRLiveUserRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudienceHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

.field userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;Landroid/view/View;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 378
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090c10

    .line 379
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    return-void
.end method
