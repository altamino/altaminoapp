.class public Lcom/narvii/user/list/GeneralUserListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "GeneralUserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/list/GeneralUserListFragment$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/user/list/GeneralUserListFragment$Adapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 36
    new-instance p1, Lcom/narvii/user/list/GeneralUserListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/user/list/GeneralUserListFragment$Adapter;-><init>(Lcom/narvii/user/list/GeneralUserListFragment;)V

    iput-object p1, p0, Lcom/narvii/user/list/GeneralUserListFragment;->adapter:Lcom/narvii/user/list/GeneralUserListFragment$Adapter;

    return-object p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "title"

    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
