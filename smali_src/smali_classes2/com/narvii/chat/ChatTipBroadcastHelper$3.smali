.class Lcom/narvii/chat/ChatTipBroadcastHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatTipBroadcastHelper;->showTip(Lcom/narvii/tipping/model/TipLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatTipBroadcastHelper;Lcom/narvii/model/User;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$3;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$3;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$3;->val$user:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$3;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->onClickTipBroadcast(Lcom/narvii/model/User;)V

    .line 10
    :cond_0
    return-void
.end method
