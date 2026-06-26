.class Lcom/narvii/chat/ChatFragment$2;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment$2;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 294
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$2;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 295
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$2;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 296
    instance-of v0, p1, Lcom/narvii/app/DrawerActivity;

    if-eqz v0, :cond_0

    .line 297
    check-cast p1, Lcom/narvii/app/DrawerActivity;

    .line 298
    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->openDrawer()V

    :cond_0
    return-void
.end method
