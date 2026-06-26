.class public final Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "NewVisitorsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/visitor/NewVisitorsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommunityWrapperListResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewVisitorsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewVisitorsFragment.kt\ncom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse\n*L\n1#1,191:1\n*E\n"
.end annotation


# instance fields
.field private communities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private sum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCommunities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;->communities:Ljava/util/List;

    return-object v0
.end method

.method public final getSum()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;->sum:I

    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;->communities:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final setCommunities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;",
            ">;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;->communities:Ljava/util/List;

    return-void
.end method

.method public final setSum(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;->sum:I

    return-void
.end method
