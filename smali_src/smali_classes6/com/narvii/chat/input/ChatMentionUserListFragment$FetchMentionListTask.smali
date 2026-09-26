.class public final Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/ChatMentionUserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FetchMentionListTask"
.end annotation


# instance fields
.field private keyword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/input/ChatMentionUserListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->keyword:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-string v2, "adapter"

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurPageSize$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v4, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v4}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getPageSizeLimit$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)I

    .line 20
    move-result v4

    .line 21
    .line 22
    if-ge v0, v4, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const/4 v4, 0x1

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->keyword:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v5, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {v5}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 42
    .line 43
    .line 44
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 45
    const/4 v6, 0x2

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v5, v1, v6, v3}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-ne v0, v4, :cond_2

    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->keyword:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$setCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;Ljava/lang/String;)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getAdapter$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 70
    move-object v0, v3

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {v0, v4}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->setLocalFilterRequired(Z)V

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 77
    .line 78
    iget-object v4, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->keyword:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v4}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$setCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;Ljava/lang/String;)V

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getAdapter$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 93
    move-object v0, v3

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->getUserList()Ljava/util/ArrayList;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    .line 102
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getAdapter$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    if-nez v0, :cond_4

    .line 109
    .line 110
    .line 111
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 112
    move-object v0, v3

    .line 113
    .line 114
    .line 115
    :cond_4
    invoke-virtual {v0, v1, v3}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 116
    .line 117
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getAdapter$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    if-nez v0, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 127
    goto :goto_1

    .line 128
    :cond_5
    move-object v3, v0

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-virtual {v3}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->notifyDataSetChanged()V

    .line 132
    return-void
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->keyword:Ljava/lang/String;

    return-void
.end method
