.class final Lcom/narvii/chat/util/ChatHelper$leaveChat$2;
.super Ljava/lang/Object;
.source "ChatHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatHelper;->leaveChat(Ljava/lang/String;Lcom/narvii/model/ChatThread;Landroid/support/v4/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $configService:Lcom/narvii/config/ConfigService;

.field final synthetic $fragmentManager:Landroid/support/v4/app/FragmentManager;

.field final synthetic $thread:Lcom/narvii/model/ChatThread;

.field final synthetic this$0:Lcom/narvii/chat/util/ChatHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/config/ConfigService;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$2;->this$0:Lcom/narvii/chat/util/ChatHelper;

    iput-object p2, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$2;->$thread:Lcom/narvii/model/ChatThread;

    iput-object p3, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$2;->$configService:Lcom/narvii/config/ConfigService;

    iput-object p4, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$2;->$fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 572
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$2;->this$0:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/util/ChatHelper;->getCtx()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f034f

    .line 573
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f0193

    const/4 v1, 0x0

    .line 574
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 575
    new-instance v0, Lcom/narvii/chat/util/ChatHelper$leaveChat$2$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/util/ChatHelper$leaveChat$2$1;-><init>(Lcom/narvii/chat/util/ChatHelper$leaveChat$2;)V

    const-wide v1, 0xffff0a0aL

    long-to-int v2, v1

    const v1, 0x7f0f0348

    invoke-virtual {p1, v1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 580
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
