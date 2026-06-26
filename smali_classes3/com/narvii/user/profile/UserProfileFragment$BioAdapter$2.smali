.class Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;
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

    .line 2328
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;->this$1:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 2331
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;->this$1:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_1

    .line 2332
    iget-object v0, p1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2335
    :cond_0
    const-class v0, Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2336
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;->this$1:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    iget-object v1, v1, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2337
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;->this$1:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    iget-object v1, v1, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-boolean v1, v1, Lcom/narvii/detail/DetailFragment;->preview:Z

    const-string v2, "preview"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2338
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "prefetch"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v1, "Profile"

    .line 2339
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2340
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;->this$1:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
