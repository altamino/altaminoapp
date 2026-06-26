.class Lcom/narvii/poll/PollAdapter$3;
.super Ljava/lang/Object;
.source "PollAdapter.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poll/PollAdapter;->addCollectionPoll(Lcom/narvii/model/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poll/PollAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/poll/PollAdapter;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter$3;->this$0:Lcom/narvii/poll/PollAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 410
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter$3;->this$0:Lcom/narvii/poll/PollAdapter;

    iget-object p1, p1, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0391

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 407
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollAdapter$3;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
