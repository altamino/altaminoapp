.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->tryToAutoJoinCurrentChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$3;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$3;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 2
    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->C(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$3;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$3;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$3;->call(Ljava/lang/Boolean;)V

    return-void
.end method
