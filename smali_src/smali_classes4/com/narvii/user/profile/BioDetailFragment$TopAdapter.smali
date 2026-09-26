.class Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;
.super Lcom/narvii/list/StaticViewAdapter;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 2
    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/user/profile/BioDetailFragment;Lcom/narvii/user/profile/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;-><init>(Lcom/narvii/user/profile/BioDetailFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/user/profile/BioDetailFragment;->v(Lcom/narvii/user/profile/BioDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/user/profile/BioDetailFragment;->access$300(Lcom/narvii/user/profile/BioDetailFragment;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lcom/narvii/list/StaticViewAdapter;->getCount()I

    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method
