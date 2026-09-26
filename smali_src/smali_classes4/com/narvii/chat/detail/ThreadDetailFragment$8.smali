.class Lcom/narvii/chat/detail/ThreadDetailFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/ChatThread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$8;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/ChatThread;)V
    .locals 0

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$8;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 2
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$8;->call(Lcom/narvii/model/ChatThread;)V

    return-void
.end method
