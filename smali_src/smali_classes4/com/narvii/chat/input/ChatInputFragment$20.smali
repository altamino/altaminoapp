.class Lcom/narvii/chat/input/ChatInputFragment$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$20;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

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
.method public onCustomOptionSelected(Lcom/narvii/media/MediaPickerFragment$Option;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    const-class p1, Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$20;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    const-string v0, "key_thread"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$20;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p1}, Lcom/narvii/chat/input/ChatInputFragment$20;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 27
    return-void
.end method
