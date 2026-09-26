.class Lcom/narvii/media/YoutubePlaylistLayout$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/YoutubePlaylistLayout;->pick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/YoutubePlaylistLayout;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/media/YoutubePlaylistLayout;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/narvii/media/YoutubePlaylistLayout$1;Lcom/narvii/util/dialog/ProgressDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/YoutubePlaylistLayout$1;->lambda$run$0(Lcom/narvii/util/dialog/ProgressDialog;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/narvii/util/dialog/ProgressDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->f(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->f(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2}, Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;->onFinishPick(Ljava/util/List;)V

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/narvii/media/YoutubePlaylistLayout;->g(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoLength(Ljava/util/Collection;)Ljava/util/Map;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lcom/narvii/media/YoutubePlaylistLayout;->e(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v3

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    check-cast v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    .line 48
    .line 49
    .line 50
    invoke-static {v4}, Lcom/narvii/media/YoutubePlaylistLayout;->g(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    iget-object v5, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 57
    move-result v4

    .line 58
    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    new-instance v4, Lcom/narvii/model/Media;

    .line 62
    .line 63
    .line 64
    invoke-direct {v4}, Lcom/narvii/model/Media;-><init>()V

    .line 65
    .line 66
    const/16 v5, 0x67

    .line 67
    .line 68
    iput v5, v4, Lcom/narvii/model/Media;->type:I

    .line 69
    .line 70
    iget-object v5, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->url:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v5, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v5, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->title:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v5, v4, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v6, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->author:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v6, v4, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v5, v4, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v3, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    check-cast v3, Ljava/lang/Long;

    .line 91
    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 96
    move-result-wide v5

    .line 97
    .line 98
    iput-wide v5, v4, Lcom/narvii/model/Media;->duration:J

    .line 99
    .line 100
    .line 101
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_2
    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 105
    .line 106
    new-instance v2, Lcom/narvii/media/k;

    .line 107
    .line 108
    .line 109
    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/media/k;-><init>(Lcom/narvii/media/YoutubePlaylistLayout$1;Lcom/narvii/util/dialog/ProgressDialog;Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method
