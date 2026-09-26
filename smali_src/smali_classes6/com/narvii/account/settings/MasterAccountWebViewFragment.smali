.class public Lcom/narvii/account/settings/MasterAccountWebViewFragment;
.super Lcom/narvii/setting/AccountWebViewFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/setting/AccountWebViewFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected popupLogout()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;-><init>(Lcom/narvii/account/settings/MasterAccountWebViewFragment;)V

    .line 6
    .line 7
    const-wide/16 v1, 0x1f4

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 11
    return-void
.end method
