.class public Lcom/narvii/flag/FlagLogListActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/flag/FlagLogListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/flag/FlagLogListFragment;-><init>()V

    .line 6
    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
