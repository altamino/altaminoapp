.class public final Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$2;
.super Lcom/narvii/paging/source/SinglePageDataSource;
.source "LinkCommunityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/SinglePageDataSource<",
        "Lcom/narvii/model/Community;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-direct {p0, p2}, Lcom/narvii/paging/source/SinglePageDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public pageData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getUnlinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
