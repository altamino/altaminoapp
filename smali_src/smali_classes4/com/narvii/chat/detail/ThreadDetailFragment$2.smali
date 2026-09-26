.class Lcom/narvii/chat/detail/ThreadDetailFragment$2;
.super Lcom/narvii/list/StaticViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$2;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$2;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$2;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 23
    .line 24
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 28
    return v0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/StaticViewAdapter;->getCount()I

    .line 32
    move-result v0

    .line 33
    return v0
.end method
