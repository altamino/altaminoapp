.class Lcom/narvii/item/detail/ItemDetailFragment$10;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/detail/ItemDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;

.field final synthetic val$fromBottomBar:Z

.field final synthetic val$fv:I

.field final synthetic val$i:Lcom/narvii/model/Item;


# direct methods
.method constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;ZLcom/narvii/model/Item;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$fromBottomBar:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$i:Lcom/narvii/model/Item;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$fv:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->M(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/item/detail/HeaderLayout;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->M(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/item/detail/HeaderLayout;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/item/detail/HeaderLayout;->setVoting(Z)V

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->notifyDataSetChanged()V

    .line 28
    .line 29
    .line 30
    :cond_1
    const v0, 0x7f0a0201

    .line 31
    .line 32
    if-eqz p1, :cond_4

    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$fromBottomBar:Z

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2100(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2200(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$i:Lcom/narvii/model/Item;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 58
    move-result v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 62
    move-result v1

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    const/4 v1, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 v1, 0x2

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v0, v1}, Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;->onFinish(ILjava/lang/Object;)V

    .line 75
    .line 76
    :cond_3
    iget p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$fv:I

    .line 77
    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 81
    .line 82
    iget-object v0, p1, Lcom/narvii/item/detail/ItemDetailFragment;->voteIconView:Landroid/view/View;

    .line 83
    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    new-instance v0, Lcom/narvii/feed/vote/VoteAnimationHelper;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, p1}, Lcom/narvii/feed/vote/VoteAnimationHelper;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/narvii/item/detail/ItemDetailFragment;->voteIconView:Landroid/view/View;

    .line 98
    .line 99
    iget v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$fv:I

    .line 100
    const/4 v2, 0x0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/feed/vote/VoteAnimationHelper;->startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V

    .line 104
    goto :goto_1

    .line 105
    .line 106
    :cond_4
    iget-boolean p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$fromBottomBar:Z

    .line 107
    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2300(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 119
    .line 120
    .line 121
    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2400(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    invoke-interface {p1, v0, v1}, Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;->onFinish(ILjava/lang/Object;)V

    .line 130
    goto :goto_1

    .line 131
    .line 132
    :cond_5
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 133
    .line 134
    .line 135
    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2500(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    if-eqz p1, :cond_6

    .line 139
    .line 140
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2600(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    check-cast v0, Lcom/narvii/model/Item;

    .line 153
    .line 154
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 158
    move-result v2

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 162
    move-result v0

    .line 163
    .line 164
    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    check-cast v2, Lcom/narvii/model/Item;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 174
    move-result v2

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/feed/FeedContinuousViewer;->updateVoteIcon(IZI)V

    .line 178
    :cond_6
    :goto_1
    return-void
.end method
