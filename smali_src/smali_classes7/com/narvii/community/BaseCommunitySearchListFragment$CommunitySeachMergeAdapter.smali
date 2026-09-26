.class public Lcom/narvii/community/BaseCommunitySearchListFragment$CommunitySeachMergeAdapter;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$CommunitySeachMergeAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method
