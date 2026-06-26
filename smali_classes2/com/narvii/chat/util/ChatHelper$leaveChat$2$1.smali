.class final Lcom/narvii/chat/util/ChatHelper$leaveChat$2$1;
.super Ljava/lang/Object;
.source "ChatHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatHelper$leaveChat$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/util/ChatHelper$leaveChat$2;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/ChatHelper$leaveChat$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$2$1;->this$0:Lcom/narvii/chat/util/ChatHelper$leaveChat$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 576
    new-instance p1, Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$2$1;->this$0:Lcom/narvii/chat/util/ChatHelper$leaveChat$2;

    iget-object v0, v0, Lcom/narvii/chat/util/ChatHelper$leaveChat$2;->this$0:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/util/ChatHelper;->getNvContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 577
    iget-object v0, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$2$1;->this$0:Lcom/narvii/chat/util/ChatHelper$leaveChat$2;

    iget-object v1, v0, Lcom/narvii/chat/util/ChatHelper$leaveChat$2;->$thread:Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_0

    iget v0, v1, Lcom/narvii/model/ChatThread;->ndcId:I

    goto :goto_0

    .line 578
    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/util/ChatHelper$leaveChat$2;->$configService:Lcom/narvii/config/ConfigService;

    const-string v1, "configService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/util/ChatHelper$leaveChat$2$1;->this$0:Lcom/narvii/chat/util/ChatHelper$leaveChat$2;

    iget-object v2, v1, Lcom/narvii/chat/util/ChatHelper$leaveChat$2;->$thread:Lcom/narvii/model/ChatThread;

    iget-object v1, v1, Lcom/narvii/chat/util/ChatHelper$leaveChat$2;->$fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 577
    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->delete(ILcom/narvii/model/ChatThread;Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method
