.class public final Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$2;
.super Lcom/narvii/paging/source/SinglePageDataSource;
.source "SourceFile"


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
.method constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/paging/source/SinglePageDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getUnlinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
