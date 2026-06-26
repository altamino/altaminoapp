.class final Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;
.super Ljava/lang/Object;
.source "ChatGuestListFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->inviteUser(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "it"

    .line 244
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getAdapter()Lcom/narvii/list/NVAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 246
    new-instance p1, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1$1;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;)V

    const v0, 0x2bf20

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 251
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f079f

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
