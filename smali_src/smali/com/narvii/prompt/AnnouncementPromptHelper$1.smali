.class Lcom/narvii/prompt/AnnouncementPromptHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->val$o:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 6
    .line 7
    new-instance p2, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {p2, p0}, Lcom/narvii/prompt/AnnouncementPromptHelper$1$1;-><init>(Lcom/narvii/prompt/AnnouncementPromptHelper$1;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;)V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    .line 17
    if-ne p2, p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/prompt/AnnouncementPromptHelper$1;->this$0:Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 23
    :cond_1
    :goto_0
    return-void
.end method
