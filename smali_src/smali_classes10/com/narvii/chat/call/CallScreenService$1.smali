.class Lcom/narvii/chat/call/CallScreenService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/call/CallScreenService;->dispatchCallStatusChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/call/CallStatusChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/call/CallScreenService;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/call/CallScreenService;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/call/CallScreenService$1;->this$0:Lcom/narvii/chat/call/CallScreenService;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/call/CallScreenService$1;->val$status:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/call/CallStatusChangeListener;)V
    .locals 1

    iget v0, p0, Lcom/narvii/chat/call/CallScreenService$1;->val$status:I

    .line 2
    invoke-interface {p1, v0}, Lcom/narvii/chat/call/CallStatusChangeListener;->onCallStatusChanged(I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/call/CallStatusChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/call/CallScreenService$1;->call(Lcom/narvii/chat/call/CallStatusChangeListener;)V

    return-void
.end method
