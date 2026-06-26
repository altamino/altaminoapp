.class Lcom/narvii/chat/thread/MyChatsListFragment$1;
.super Ljava/lang/Object;
.source "MyChatsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/thread/MyChatsListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/thread/MyChatsListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$1;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$1;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/narvii/prompt/MembershipTrialPromptHelper;

    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$1;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-direct {v0, v1}, Lcom/narvii/prompt/MembershipTrialPromptHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 171
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    :cond_0
    return-void
.end method
