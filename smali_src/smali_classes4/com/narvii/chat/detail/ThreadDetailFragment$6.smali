.class Lcom/narvii/chat/detail/ThreadDetailFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$6;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$6;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$6;->val$u:Lcom/narvii/model/User;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$6;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$6;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$6;->val$u:Lcom/narvii/model/User;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->H(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/model/User;)V

    .line 17
    :cond_0
    return-void
.end method
