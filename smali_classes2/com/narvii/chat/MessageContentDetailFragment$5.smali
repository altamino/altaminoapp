.class Lcom/narvii/chat/MessageContentDetailFragment$5;
.super Ljava/lang/Object;
.source "MessageContentDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/MessageContentDetailFragment;->updateStatusView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/MessageContentDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/MessageContentDetailFragment;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$5;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 292
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$5;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/MessageContentDetailFragment;->access$200(Lcom/narvii/chat/MessageContentDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 293
    const-class p1, Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 294
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment$5;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    const-string v1, "thread"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_thread"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment$5;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
