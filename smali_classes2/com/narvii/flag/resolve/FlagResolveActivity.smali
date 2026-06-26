.class public Lcom/narvii/flag/resolve/FlagResolveActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "FlagResolveActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 12
    new-instance v0, Lcom/narvii/flag/resolve/FlagResolveFragment;

    invoke-direct {v0}, Lcom/narvii/flag/resolve/FlagResolveFragment;-><init>()V

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
