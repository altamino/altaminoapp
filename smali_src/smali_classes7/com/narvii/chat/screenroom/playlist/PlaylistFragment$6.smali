.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->I(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Lcom/narvii/model/PlayListItem;

    .line 30
    .line 31
    iget v2, v2, Lcom/narvii/model/PlayListItem;->type:I

    .line 32
    const/4 v3, 0x1

    .line 33
    .line 34
    if-eq v2, v3, :cond_2

    .line 35
    const/4 v3, 0x2

    .line 36
    .line 37
    if-eq v2, v3, :cond_1

    .line 38
    const/4 v3, 0x3

    .line 39
    .line 40
    if-eq v2, v3, :cond_0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    const-string v2, "Local Music"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    const-string v2, "Youtube"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_2
    const-string v2, "Local Video"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 62
    .line 63
    const-string v2, "StartButton"

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 71
    move-result v2

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    const-string v3, "videoCount"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    const-string v2, ","

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    const-string v2, "videoType"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->A(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->B(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)I

    .line 108
    move-result v1

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->savePlaylist(ILjava/util/List;)V

    .line 112
    .line 113
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->E(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    if-eqz p1, :cond_4

    .line 120
    .line 121
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->E(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;->onVideoPickFinished()V

    .line 129
    :cond_4
    return-void
.end method
