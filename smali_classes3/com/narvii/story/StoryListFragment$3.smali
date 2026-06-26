.class Lcom/narvii/story/StoryListFragment$3;
.super Ljava/lang/Object;
.source "StoryListFragment.java"

# interfaces
.implements Lcom/narvii/story/StoryDownloadHelper$OnStoryDownloadClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryListFragment;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$3;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadScene()V
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$3;->this$0:Lcom/narvii/story/StoryListFragment;

    iget-object v0, v0, Lcom/narvii/story/StoryListFragment;->shareDialog:Lcom/narvii/share/ShareDialog;

    if-eqz v0, :cond_0

    .line 568
    sget-object v1, Lcom/narvii/logging/ActSemantic;->save:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "SaveArea"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "saveType"

    const-string v2, "saveScene"

    invoke-virtual {v0, v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_0
    return-void
.end method

.method public onDownloadStory()V
    .locals 3

    .line 574
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$3;->this$0:Lcom/narvii/story/StoryListFragment;

    iget-object v0, v0, Lcom/narvii/story/StoryListFragment;->shareDialog:Lcom/narvii/share/ShareDialog;

    if-eqz v0, :cond_0

    .line 575
    sget-object v1, Lcom/narvii/logging/ActSemantic;->save:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "SaveArea"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "saveType"

    const-string v2, "saveStory"

    invoke-virtual {v0, v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_0
    return-void
.end method
