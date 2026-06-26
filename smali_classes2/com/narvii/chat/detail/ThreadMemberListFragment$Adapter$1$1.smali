.class Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1$1;
.super Ljava/lang/Object;
.source "ThreadMemberListFragment.java"

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

    .line 254
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1$1;->this$2:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;

    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0

    .line 257
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method
