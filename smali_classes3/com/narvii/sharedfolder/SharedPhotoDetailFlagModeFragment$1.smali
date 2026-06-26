.class Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment$1;
.super Ljava/lang/Object;
.source "SharedPhotoDetailFlagModeFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/SharedFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/SharedFile;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;

    iput-object p1, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;->sharedFile:Lcom/narvii/model/SharedFile;

    if-eqz p1, :cond_0

    .line 57
    iget p1, p1, Lcom/narvii/model/SharedFile;->status:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/narvii/model/SharedFile;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment$1;->call(Lcom/narvii/model/SharedFile;)V

    return-void
.end method
