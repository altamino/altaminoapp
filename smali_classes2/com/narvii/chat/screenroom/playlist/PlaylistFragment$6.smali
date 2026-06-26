.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

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

    .line 292
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 295
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$700(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Ljava/util/List;

    move-result-object p1

    .line 296
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_3

    .line 298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/PlayListItem;

    .line 299
    iget v2, v2, Lcom/narvii/model/PlayListItem;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Local Music"

    .line 304
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "Youtube"

    .line 307
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, "Local Video"

    .line 301
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    const-string v2, "StartButton"

    invoke-static {v1, v2}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    .line 314
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "videoCount"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v2, ","

    .line 315
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "videoType"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 317
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$900(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$800(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->savePlaylist(ILjava/util/List;)V

    .line 318
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1000(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 319
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1000(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;->onVideoPickFinished()V

    :cond_4
    return-void
.end method
