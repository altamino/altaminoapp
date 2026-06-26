.class Lcom/narvii/chat/input/ChatInputFragment$3;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 368
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$700(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$702(Lcom/narvii/chat/input/ChatInputFragment;Z)Z

    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    iget-object v1, v0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$800(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$900(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateViews()V

    .line 415
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->checkInputTypingStatus(Landroid/text/Editable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$200(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$300(Lcom/narvii/chat/input/ChatInputFragment;)I

    move-result v0

    if-lt p2, v0, :cond_7

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$300(Lcom/narvii/chat/input/ChatInputFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->access$400(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-le p2, v0, :cond_1

    goto/16 :goto_2

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$300(Lcom/narvii/chat/input/ChatInputFragment;)I

    move-result v0

    sub-int v0, p2, v0

    .line 380
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->access$300(Lcom/narvii/chat/input/ChatInputFragment;)I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->access$400(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/2addr p3, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/2addr p4, p2

    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p3, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    .line 384
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputFragment;->access$400(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/2addr p4, p2

    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    .line 386
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$400(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/2addr p3, v0

    invoke-virtual {p1, v0, p3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 388
    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->access$400(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/2addr p3, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/2addr p4, p2

    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p3, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$400(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_5

    .line 392
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1, p2}, Lcom/narvii/chat/input/ChatInputFragment;->access$202(Lcom/narvii/chat/input/ChatInputFragment;Z)Z

    .line 393
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p2}, Lcom/narvii/chat/input/ChatInputFragment;->access$600(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    .line 396
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$600(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputFragment;->access$400(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/4 p4, 0x1

    if-le p3, p4, :cond_6

    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputFragment;->access$400(Lcom/narvii/chat/input/ChatInputFragment;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_6
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p1, p3, p2}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->fetchMentionRelatedUserList(Ljava/lang/String;Z)V

    return-void

    .line 376
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$3;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$500(Lcom/narvii/chat/input/ChatInputFragment;)V

    return-void
.end method
