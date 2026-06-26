.class Lcom/narvii/chat/detail/ThreadDetailFragment$6;
.super Ljava/lang/Object;
.source "ThreadDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;->deleteMember(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$u:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/User;)V
    .locals 0

    .line 1507
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$6;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$6;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$6;->val$u:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 1510
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$6;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 1511
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    .line 1512
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$6;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$6;->val$u:Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$1300(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/model/User;)V

    :cond_0
    return-void
.end method
