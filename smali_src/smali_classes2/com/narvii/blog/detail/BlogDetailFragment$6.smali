.class Lcom/narvii/blog/detail/BlogDetailFragment$6;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

.field final synthetic val$b:Lcom/narvii/model/Blog;

.field final synthetic val$fromBottomBar:Z

.field final synthetic val$fv:I


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;ZLcom/narvii/model/Blog;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$fromBottomBar:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$b:Lcom/narvii/model/Blog;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$fv:I

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
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->o(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Z)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a0201

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$fromBottomBar:Z

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3900(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4000(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$b:Lcom/narvii/model/Blog;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 50
    move-result v1

    .line 51
    .line 52
    if-nez v1, :cond_0

    .line 53
    const/4 v1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v1, 0x2

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v0, v1}, Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;->onFinish(ILjava/lang/Object;)V

    .line 63
    .line 64
    :cond_1
    iget p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$fv:I

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 69
    .line 70
    iget-object v0, p1, Lcom/narvii/blog/detail/BlogDetailFragment;->voteIconView:Landroid/view/View;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    new-instance v0, Lcom/narvii/feed/vote/VoteAnimationHelper;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, p1}, Lcom/narvii/feed/vote/VoteAnimationHelper;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/narvii/blog/detail/BlogDetailFragment;->voteIconView:Landroid/view/View;

    .line 86
    .line 87
    iget v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$fv:I

    .line 88
    const/4 v2, 0x0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/feed/vote/VoteAnimationHelper;->startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$fromBottomBar:Z

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4100(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4200(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v0, v1}, Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;->onFail(ILjava/lang/Object;)V

    .line 118
    goto :goto_1

    .line 119
    .line 120
    :cond_3
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4300(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    if-eqz p1, :cond_4

    .line 127
    .line 128
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$4400(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    check-cast v0, Lcom/narvii/model/Blog;

    .line 141
    .line 142
    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    .line 146
    move-result v2

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 150
    move-result v0

    .line 151
    .line 152
    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 156
    move-result-object v2

    .line 157
    .line 158
    check-cast v2, Lcom/narvii/model/Blog;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    .line 162
    move-result v2

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/feed/FeedContinuousViewer;->updateVoteIcon(IZI)V

    .line 166
    :cond_4
    :goto_1
    return-void
.end method
