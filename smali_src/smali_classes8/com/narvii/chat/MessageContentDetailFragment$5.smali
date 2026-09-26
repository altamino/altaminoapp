.class Lcom/narvii/chat/MessageContentDetailFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$5;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$5;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/MessageContentDetailFragment;->v(Lcom/narvii/chat/MessageContentDetailFragment;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-class p1, Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment$5;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    .line 17
    .line 18
    const-string v1, "thread"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "key_thread"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment$5;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/narvii/chat/MessageContentDetailFragment$5;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 33
    :cond_0
    return-void
.end method
