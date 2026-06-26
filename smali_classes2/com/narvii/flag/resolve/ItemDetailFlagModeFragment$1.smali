.class Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment$1;
.super Ljava/lang/Object;
.source "ItemDetailFlagModeFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/Item;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment;

    iput-object p1, v0, Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment;->item:Lcom/narvii/model/Item;

    if-eqz p1, :cond_0

    .line 35
    iget p1, p1, Lcom/narvii/model/Feed;->status:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment;

    iget-object p1, p1, Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/narvii/model/Item;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment$1;->call(Lcom/narvii/model/Item;)V

    return-void
.end method
