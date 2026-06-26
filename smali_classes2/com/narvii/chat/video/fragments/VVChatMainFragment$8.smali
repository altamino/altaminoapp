.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$8;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannelWithConfirm(Ljava/lang/String;Lcom/narvii/util/Callback;)Z
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

.field final synthetic val$confirmedCallback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$8;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$8;->val$confirmedCallback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 856
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$8;->val$confirmedCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 857
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 853
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$8;->call(Ljava/lang/Boolean;)V

    return-void
.end method
