.class Lcom/narvii/flag/resolve/UserProfileFlagModeFragment$1;
.super Ljava/lang/Object;
.source "UserProfileFlagModeFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/User;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;

    iput-object p1, v0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    .line 29
    iget p1, p1, Lcom/narvii/model/User;->status:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;

    iget-object p1, p1, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment$1;->call(Lcom/narvii/model/User;)V

    return-void
.end method
