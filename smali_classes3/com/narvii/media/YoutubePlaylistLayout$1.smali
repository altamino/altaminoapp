.class Lcom/narvii/media/YoutubePlaylistLayout$1;
.super Ljava/lang/Thread;
.source "YoutubePlaylistLayout.java"


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

    .line 132
    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    iput-object p2, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$YoutubePlaylistLayout$1(Lcom/narvii/util/dialog/ProgressDialog;Ljava/util/List;)V
    .locals 0

    .line 158
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 160
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->access$200(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    invoke-static {p1}, Lcom/narvii/media/YoutubePlaylistLayout;->access$200(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;->onFinishPick(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    invoke-static {v1}, Lcom/narvii/media/YoutubePlaylistLayout;->access$000(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoLength(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    invoke-static {v2}, Lcom/narvii/media/YoutubePlaylistLayout;->access$100(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 141
    iget-object v4, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->this$0:Lcom/narvii/media/YoutubePlaylistLayout;

    invoke-static {v4}, Lcom/narvii/media/YoutubePlaylistLayout;->access$000(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    new-instance v4, Lcom/narvii/model/Media;

    invoke-direct {v4}, Lcom/narvii/model/Media;-><init>()V

    const/16 v5, 0x67

    .line 143
    iput v5, v4, Lcom/narvii/model/Media;->type:I

    .line 144
    iget-object v5, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->url:Ljava/lang/String;

    iput-object v5, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 145
    iget-object v5, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->title:Ljava/lang/String;

    iput-object v5, v4, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 146
    iget-object v6, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->author:Ljava/lang/String;

    iput-object v6, v4, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    .line 147
    iput-object v5, v4, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 149
    iget-object v3, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/narvii/model/Media;->duration:J

    .line 153
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v2, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$1$pMecoe0uD-xKaMDnMqMhCh9qRVs;

    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$1$pMecoe0uD-xKaMDnMqMhCh9qRVs;-><init>(Lcom/narvii/media/YoutubePlaylistLayout$1;Lcom/narvii/util/dialog/ProgressDialog;Ljava/util/List;)V

    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
