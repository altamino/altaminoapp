.class Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3$1;
.super Ljava/lang/Object;
.source "ThreadDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;)V
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3$1;->this$2:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 0

    .line 1174
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3$1;->this$2:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;->this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->inviteMembers()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1171
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
