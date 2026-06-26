.class final Lcom/narvii/chat/util/MyChatListDelegate$updateList$1;
.super Ljava/lang/Object;
.source "MyChatListDelegate.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/MyChatListDelegate;-><init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/util/MyChatListDelegate;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/MyChatListDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate$updateList$1;->this$0:Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate$updateList$1;->this$0:Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-virtual {v0}, Lcom/narvii/chat/util/MyChatListDelegate;->getAdapter()Lcom/narvii/list/NVAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
