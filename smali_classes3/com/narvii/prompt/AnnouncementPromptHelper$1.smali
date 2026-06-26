.class Lcom/narvii/prompt/AnnouncementPromptHelper$1;
.super Ljava/lang/Object;
.source "AnnouncementPromptHelper.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/AnnouncementPromptHelper;->onStatusChanged(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

.field final synthetic val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/AnnouncementPromptHelper;Ljava/lang/Object;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    iput-object p2, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->val$o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    new-instance p2, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;

    invoke-direct {p2, p0}, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;-><init>(Lcom/narvii/prompt/AnnouncementPromptHelper$1;)V

    invoke-virtual {p1, p2}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    invoke-virtual {p1}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    :cond_1
    :goto_0
    return-void
.end method
