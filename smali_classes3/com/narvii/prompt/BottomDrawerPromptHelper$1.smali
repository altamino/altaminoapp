.class Lcom/narvii/prompt/BottomDrawerPromptHelper$1;
.super Ljava/lang/Object;
.source "BottomDrawerPromptHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/BottomDrawerPromptHelper;->onStatusChanged(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/BottomDrawerPromptHelper;

.field final synthetic val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/BottomDrawerPromptHelper;Ljava/lang/Object;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;->this$0:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    iput-object p2, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;->val$o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;->this$0:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    iget-object v0, v0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-virtual {v0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;->this$0:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    iget-object v0, v0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    iget-object v1, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;->val$o:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/community/MyCommunityListResponse;

    iget-object v1, v1, Lcom/narvii/master/CommunityListResponse;->communityList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/narvii/master/BottomDrawerViewHelper;->showSuggestCommunity(Ljava/util/List;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;->this$0:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
