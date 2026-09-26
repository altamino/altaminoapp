.class Lcom/narvii/prompt/BottomDrawerPromptHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;->this$0:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;->val$o:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;->this$0:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;->this$0:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;->val$o:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/community/MyCommunityListResponse;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/master/CommunityListResponse;->communityList:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/master/BottomDrawerViewHelper;->showSuggestCommunity(Ljava/util/List;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;->this$0:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    :goto_0
    return-void
.end method
