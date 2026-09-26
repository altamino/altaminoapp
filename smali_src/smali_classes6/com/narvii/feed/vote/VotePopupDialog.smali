.class public Lcom/narvii/feed/vote/VotePopupDialog;
.super Lcom/narvii/feed/vote/MembersPopupDialog;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/feed/vote/MembersPopupDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/feed/vote/VotePopupDialog$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/feed/vote/VotePopupDialog$1;-><init>(Lcom/narvii/feed/vote/VotePopupDialog;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0d0280

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setContentView(I)V

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a0593

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/widget/VoteIcon;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteHeart:Lcom/narvii/widget/VoteIcon;

    .line 28
    const/4 v1, 0x4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteHeart:Lcom/narvii/widget/VoteIcon;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a0594

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Lcom/narvii/widget/VoteIcon;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSmile:Lcom/narvii/widget/VoteIcon;

    .line 50
    const/4 v1, 0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSmile:Lcom/narvii/widget/VoteIcon;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0a0592

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Lcom/narvii/widget/VoteIcon;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteFrown:Lcom/narvii/widget/VoteIcon;

    .line 72
    const/4 v1, -0x1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteFrown:Lcom/narvii/widget/VoteIcon;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    const v0, 0x7f0a0595

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    check-cast v0, Lcom/narvii/widget/VoteIcon;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSurprise:Lcom/narvii/widget/VoteIcon;

    .line 94
    const/4 v1, 0x2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 98
    .line 99
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSurprise:Lcom/narvii/widget/VoteIcon;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    const v0, 0x7f0a0596

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    check-cast v0, Lcom/narvii/widget/VoteIcon;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteUndecided:Lcom/narvii/widget/VoteIcon;

    .line 116
    const/4 v1, 0x3

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 120
    .line 121
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteUndecided:Lcom/narvii/widget/VoteIcon;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    iput-object p1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 133
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/feed/vote/VotePopupDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method public setFeed(Lcom/narvii/model/NVObject;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/feed/vote/MembersPopupDialog;->setFeed(Lcom/narvii/model/NVObject;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->feed:Lcom/narvii/model/NVObject;

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/model/Blog;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Item;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/model/Item;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 38
    move-result p1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    instance-of v0, p1, Lcom/narvii/model/SharedFile;

    .line 42
    .line 43
    if-eqz v0, :cond_7

    .line 44
    .line 45
    check-cast p1, Lcom/narvii/model/SharedFile;

    .line 46
    .line 47
    iget p1, p1, Lcom/narvii/model/SharedFile;->votedValue:I

    .line 48
    .line 49
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteHeart:Lcom/narvii/widget/VoteIcon;

    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v2, 0x1

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    const/4 v3, 0x4

    .line 55
    .line 56
    if-eq p1, v3, :cond_2

    .line 57
    move v3, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v3, v1

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v0, v3}, Lcom/narvii/widget/VoteIcon;->setTransparent(Z)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSmile:Lcom/narvii/widget/VoteIcon;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    if-eq p1, v2, :cond_3

    .line 69
    move v3, v2

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move v3, v1

    .line 72
    .line 73
    .line 74
    :goto_2
    invoke-virtual {v0, v3}, Lcom/narvii/widget/VoteIcon;->setTransparent(Z)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteFrown:Lcom/narvii/widget/VoteIcon;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    const/4 v3, -0x1

    .line 80
    .line 81
    if-eq p1, v3, :cond_4

    .line 82
    move v3, v2

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move v3, v1

    .line 85
    .line 86
    .line 87
    :goto_3
    invoke-virtual {v0, v3}, Lcom/narvii/widget/VoteIcon;->setTransparent(Z)V

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteSurprise:Lcom/narvii/widget/VoteIcon;

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    const/4 v3, 0x2

    .line 93
    .line 94
    if-eq p1, v3, :cond_5

    .line 95
    move v3, v2

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    move v3, v1

    .line 98
    .line 99
    .line 100
    :goto_4
    invoke-virtual {v0, v3}, Lcom/narvii/widget/VoteIcon;->setTransparent(Z)V

    .line 101
    .line 102
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog;->voteUndecided:Lcom/narvii/widget/VoteIcon;

    .line 103
    .line 104
    if-eqz p1, :cond_6

    .line 105
    const/4 v3, 0x3

    .line 106
    .line 107
    if-eq p1, v3, :cond_6

    .line 108
    move v1, v2

    .line 109
    .line 110
    .line 111
    :cond_6
    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setTransparent(Z)V

    .line 112
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

    iput-object p1, p0, Lcom/narvii/feed/vote/VotePopupDialog;->listener:Lcom/narvii/util/Callback;

    return-void
.end method
