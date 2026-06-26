.class Lcom/narvii/user/profile/UserProfileFragment$MySwitchAdapter;
.super Lcom/narvii/list/SwitchAdapter;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySwitchAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1637
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$MySwitchAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 1638
    invoke-direct {p0, p1}, Lcom/narvii/list/SwitchAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1643
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$MySwitchAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$1200(Lcom/narvii/user/profile/UserProfileFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1646
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->getCount()I

    move-result v0

    return v0
.end method
