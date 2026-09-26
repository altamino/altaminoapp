.class Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->onClicked(ILcom/narvii/model/NVObject;)V
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
.field final synthetic this$2:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1$1;->this$2:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    return-void
.end method
