.class public Lcom/narvii/feed/vote/VotePopupDialog;
.super Lcom/narvii/feed/vote/MembersPopupDialog;
.source "VotePopupDialog.java"


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field feed:Lcom/narvii/model/NVObject;

.field listener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final nvContext:Lcom/narvii/app/NVContext;

.field voteFrown:Lcom/narvii/widget/VoteIcon;

.field voteHeart:Lcom/narvii/widget/VoteIcon;

.field voteSmile:Lcom/narvii/widget/VoteIcon;

.field voteSurprise:Lcom/narvii/widget/VoteIcon;

.field voteUndecided:Lcom/narvii/widget/VoteIcon;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/narvii/feed/vote/MembersPopupDialog;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Lcom/narvii/feed/vote/VotePopupDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/feed/vote/VotePopupDialog$1;-><init>(Lcom/narvii/feed/vote/VotePopupDialog;)V

    iput-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0b0256

    .line 32
    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setContentView(I)V

    const v0, 0x7f09045c

    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/VoteIcon;

    iput-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteHeart:Lcom/narvii/widget/VoteIcon;

    .line 35
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteHeart:Lcom/narvii/widget/VoteIcon;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 36
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteHeart:Lcom/narvii/widget/VoteIcon;

    iget-object v1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09045d

    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/VoteIcon;

    iput-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSmile:Lcom/narvii/widget/VoteIcon;

    .line 38
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSmile:Lcom/narvii/widget/VoteIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 39
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSmile:Lcom/narvii/widget/VoteIcon;

    iget-object v1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09045b

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/VoteIcon;

    iput-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteFrown:Lcom/narvii/widget/VoteIcon;

    .line 41
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteFrown:Lcom/narvii/widget/VoteIcon;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 42
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteFrown:Lcom/narvii/widget/VoteIcon;

    iget-object v1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09045e

    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/VoteIcon;

    iput-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSurprise:Lcom/narvii/widget/VoteIcon;

    .line 44
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSurprise:Lcom/narvii/widget/VoteIcon;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 45
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSurprise:Lcom/narvii/widget/VoteIcon;

    iget-object v1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09045f

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/VoteIcon;

    iput-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteUndecided:Lcom/narvii/widget/VoteIcon;

    .line 47
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteUndecided:Lcom/narvii/widget/VoteIcon;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 48
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteUndecided:Lcom/narvii/widget/VoteIcon;

    iget-object v1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/feed/vote/VotePopupDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method public setFeed(Lcom/narvii/model/NVObject;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Lcom/narvii/feed/vote/MembersPopupDialog;->setFeed(Lcom/narvii/model/NVObject;)V

    .line 55
    iput-object p1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->feed:Lcom/narvii/model/NVObject;

    .line 58
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/narvii/model/Blog;

    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result p1

    goto :goto_0

    .line 60
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Item;

    if-eqz v0, :cond_1

    .line 61
    check-cast p1, Lcom/narvii/model/Item;

    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result p1

    goto :goto_0

    .line 62
    :cond_1
    instance-of v0, p1, Lcom/narvii/model/SharedFile;

    if-eqz v0, :cond_7

    .line 63
    check-cast p1, Lcom/narvii/model/SharedFile;

    iget p1, p1, Lcom/narvii/model/SharedFile;->votedValue:I

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteHeart:Lcom/narvii/widget/VoteIcon;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/narvii/widget/VoteIcon;->setTransparent(Z)V

    .line 69
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSmile:Lcom/narvii/widget/VoteIcon;

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Lcom/narvii/widget/VoteIcon;->setTransparent(Z)V

    .line 70
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteFrown:Lcom/narvii/widget/VoteIcon;

    if-eqz p1, :cond_4

    const/4 v3, -0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v3}, Lcom/narvii/widget/VoteIcon;->setTransparent(Z)V

    .line 71
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSurprise:Lcom/narvii/widget/VoteIcon;

    if-eqz p1, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v0, v3}, Lcom/narvii/widget/VoteIcon;->setTransparent(Z)V

    .line 72
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteUndecided:Lcom/narvii/widget/VoteIcon;

    if-eqz p1, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setTransparent(Z)V

    :cond_7
    return-void
.end method

.method public setVoteListener(Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->listener:Lcom/narvii/util/Callback;

    return-void
.end method
