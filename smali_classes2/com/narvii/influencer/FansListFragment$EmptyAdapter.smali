.class Lcom/narvii/influencer/FansListFragment$EmptyAdapter;
.super Lcom/narvii/adapter/NVPagerStatusAdapter;
.source "FansListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/influencer/FansListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmptyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/FansListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/influencer/FansListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/narvii/influencer/FansListFragment$EmptyAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    .line 489
    invoke-direct {p0, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected emptyLayoutId()I
    .locals 1

    const v0, 0x7f0b01fe

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 498
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 499
    check-cast p1, Lcom/narvii/list/NVAdapter;

    iput-object p1, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    const/4 p1, 0x0

    .line 500
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void

    .line 502
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not NVPagedAdapter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
