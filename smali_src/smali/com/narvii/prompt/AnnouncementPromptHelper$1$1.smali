.class Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/narvii/prompt/AnnouncementPromptHelper;->bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->val$o:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/Blog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/narvii/master/BottomDrawerHelper;->shouldShowAnnouncement(Lcom/narvii/model/Blog;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/16 v1, 0x1000

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/narvii/amino/PromptShowListener;->setPromptShown(I)V

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/prompt/AnnouncementPromptHelper;->a(Lcom/narvii/prompt/AnnouncementPromptHelper;)Lcom/narvii/announcement/AnnouncementCoverDialog;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/announcement/AnnouncementCoverDialog;->show()V

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :goto_1
    iget-object v1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;->this$1:Lcom/narvii/prompt/AnnouncementPromptHelper$1;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 60
    .line 61
    const-string v1, "announcement prompt fail"

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    :goto_2
    return-void
.end method
