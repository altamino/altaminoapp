.class Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;
.super Lcom/narvii/list/StaticViewAdapter;
.source "BioDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/BioDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/BioDetailFragment;


# direct methods
.method private constructor <init>(Lcom/narvii/user/profile/BioDetailFragment;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/user/profile/BioDetailFragment;Lcom/narvii/user/profile/BioDetailFragment$1;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;-><init>(Lcom/narvii/user/profile/BioDetailFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {v0}, Lcom/narvii/user/profile/BioDetailFragment;->access$300(Lcom/narvii/user/profile/BioDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {v0}, Lcom/narvii/user/profile/BioDetailFragment;->access$600(Lcom/narvii/user/profile/BioDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-super {p0}, Lcom/narvii/list/StaticViewAdapter;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
