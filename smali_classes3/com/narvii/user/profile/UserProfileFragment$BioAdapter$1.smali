.class Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$1;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;)V
    .locals 0

    .line 2317
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2320
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    iget-object v0, p1, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-boolean v1, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v1, :cond_0

    .line 2321
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    const-string v1, "Add short bio"

    .line 2324
    invoke-virtual {v0, v1, p1}, Lcom/narvii/user/profile/UserProfileFragment;->editProfile(Ljava/lang/String;Z)V

    return-void
.end method
