.class Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;
.super Ljava/lang/Object;
.source "AnnouncementPromptHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/AnnouncementPromptHelper$1;->onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/AnnouncementPromptHelper$1;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    iget-object v0, v0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    iget-object v0, v0, Lcom/narvii/prompt/AnnouncementPromptHelper;->bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

    iget-object v1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    iget-object v1, v1, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->val$o:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/Blog;

    invoke-virtual {v0, v1}, Lcom/narvii/master/BottomDrawerHelper;->shouldShowAnnouncement(Lcom/narvii/model/Blog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    iget-object v0, v0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    iget-object v0, v0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    iget-object v0, v0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    iget-object v0, v0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    const/16 v1, 0x1000

    invoke-interface {v0, v1}, Lcom/narvii/amino/PromptShowListener;->setPromptShown(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    iget-object v0, v0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    invoke-static {v0}, Lcom/narvii/prompt/AnnouncementPromptHelper;->access$000(Lcom/narvii/prompt/AnnouncementPromptHelper;)Lcom/narvii/announcement/AnnouncementCoverDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/announcement/AnnouncementCoverDialog;->show()V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    iget-object v0, v0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    iget-object v1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    iget-object v1, v1, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    invoke-virtual {v1}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    const-string v1, "announcement prompt fail"

    .line 66
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
