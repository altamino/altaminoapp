.class Lcom/narvii/user/title/EditUserTitleFragment$9;
.super Ljava/lang/Object;
.source "EditUserTitleFragment.java"

# interfaces
.implements Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/EditUserTitleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$9;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;)V"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$9;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {v0, p1}, Lcom/narvii/user/title/EditUserTitleFragment;->access$1000(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/List;)V

    .line 361
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$9;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->access$100(Lcom/narvii/user/title/EditUserTitleFragment;)V

    return-void
.end method
