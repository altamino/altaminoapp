.class Lcom/narvii/master/CommunitySearchListFragment$2;
.super Lcom/narvii/master/search/trending/SectionHeaderAdapter;
.source "CommunitySearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunitySearchListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunitySearchListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$2;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-direct {p0, p2, p3}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 200
    invoke-super {p0}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->getCount()I

    move-result v0

    return v0
.end method
