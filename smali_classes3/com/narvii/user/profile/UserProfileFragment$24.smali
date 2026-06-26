.class Lcom/narvii/user/profile/UserProfileFragment$24;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 3204
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$24;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 3208
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$24;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$1500(Lcom/narvii/user/profile/UserProfileFragment;)Lcom/narvii/account/visitor/RecentVisitorHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/visitor/RecentVisitorHelper;->hideToolTips()V

    :cond_0
    return-void
.end method
