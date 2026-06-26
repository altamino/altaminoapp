.class final Lcom/narvii/chat/util/ChatHelper$transOrganizer$1;
.super Ljava/lang/Object;
.source "ChatHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatHelper;->transOrganizer(Lcom/narvii/model/ChatThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $curNdcId:I

.field final synthetic $targetNdcId:Ljava/lang/Integer;

.field final synthetic $thread:Lcom/narvii/model/ChatThread;

.field final synthetic this$0:Lcom/narvii/chat/util/ChatHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;ILjava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/util/ChatHelper$transOrganizer$1;->this$0:Lcom/narvii/chat/util/ChatHelper;

    iput-object p2, p0, Lcom/narvii/chat/util/ChatHelper$transOrganizer$1;->$thread:Lcom/narvii/model/ChatThread;

    iput p3, p0, Lcom/narvii/chat/util/ChatHelper$transOrganizer$1;->$curNdcId:I

    iput-object p4, p0, Lcom/narvii/chat/util/ChatHelper$transOrganizer$1;->$targetNdcId:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 611
    const-class p1, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 612
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper$transOrganizer$1;->$thread:Lcom/narvii/model/ChatThread;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    iget v0, p0, Lcom/narvii/chat/util/ChatHelper$transOrganizer$1;->$curNdcId:I

    iget-object v1, p0, Lcom/narvii/chat/util/ChatHelper$transOrganizer$1;->$targetNdcId:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 614
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper$transOrganizer$1;->$targetNdcId:Ljava/lang/Integer;

    const-string v1, "__communityId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper$transOrganizer$1;->this$0:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/util/ChatHelper;->getCtx()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
