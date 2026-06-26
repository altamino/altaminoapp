.class public Lcom/narvii/community/BaseCommunitySearchListFragment$CommunitySeachMergeAdapter;
.super Lcom/narvii/list/MergeAdapter;
.source "BaseCommunitySearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/BaseCommunitySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CommunitySeachMergeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/community/BaseCommunitySearchListFragment;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$CommunitySeachMergeAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 274
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 284
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 279
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    move-result v0

    return v0
.end method
