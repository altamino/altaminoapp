.class public Lcom/narvii/account/settings/MasterAccountWebViewFragment;
.super Lcom/narvii/setting/AccountWebViewFragment;
.source "MasterAccountWebViewFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/narvii/setting/AccountWebViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected popupLogout()V
    .locals 3

    .line 23
    new-instance v0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;-><init>(Lcom/narvii/account/settings/MasterAccountWebViewFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
