.class Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;->this$1:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;->this$1:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/model/User;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    const-class v0, Lcom/narvii/user/profile/BioDetailFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;->this$1:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "id"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;->this$1:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 43
    .line 44
    iget-boolean v1, v1, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 45
    .line 46
    const-string v2, "preview"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    .line 51
    const-string v1, "prefetch"

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    const-string p1, "Source"

    .line 61
    .line 62
    const-string v1, "Profile"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;->this$1:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 71
    :cond_1
    :goto_0
    return-void
.end method
