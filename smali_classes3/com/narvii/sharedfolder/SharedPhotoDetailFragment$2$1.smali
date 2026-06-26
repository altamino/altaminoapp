.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2$1;
.super Ljava/lang/Object;
.source "SharedPhotoDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;

.field final synthetic val$voteIcon:Lcom/narvii/widget/VoteIcon;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;Lcom/narvii/widget/VoteIcon;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2$1;->val$voteIcon:Lcom/narvii/widget/VoteIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2$1;->val$voteIcon:Lcom/narvii/widget/VoteIcon;

    iput-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->voteIconView:Landroid/view/View;

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "vote"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "voteValue"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 355
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$2$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
