.class Lcom/narvii/chat/video/fragments/LiveCallFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/LiveCallFragment;->showRetryPrivateCallDialog()V
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
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->joinLiveChannel()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onCancelPrivateCall(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/LiveCallFragment$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
