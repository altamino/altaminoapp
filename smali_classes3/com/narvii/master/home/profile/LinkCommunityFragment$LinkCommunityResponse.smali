.class public final Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "LinkCommunityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkCommunityResponse"
.end annotation


# instance fields
.field private final linkedCommunityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private final unlinkedCommunityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 397
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLinkedCommunityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;->linkedCommunityList:Ljava/util/List;

    return-object v0
.end method

.method public final getUnlinkedCommunityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;->unlinkedCommunityList:Ljava/util/List;

    return-object v0
.end method
