.class Lcom/narvii/master/explorer/CommunityPageFragment$MyAdapter;
.super Lcom/narvii/master/explorer/CommunityPageAdapter;
.source "CommunityPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/explorer/CommunityPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/explorer/CommunityPageFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/explorer/CommunityPageFragment;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment$MyAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageFragment;

    .line 221
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method
