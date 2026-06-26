.class Lcom/narvii/chat/detail/ThreadDetailFragment$7;
.super Ljava/lang/Object;
.source "ThreadDetailFragment.java"

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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 0

    .line 1645
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$7;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 1648
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1649
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$7;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_0
    return-void
.end method
