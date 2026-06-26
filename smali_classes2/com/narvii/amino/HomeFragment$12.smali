.class Lcom/narvii/amino/HomeFragment$12;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 1305
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$12;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1308
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$12;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    if-eqz v0, :cond_0

    .line 1309
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getCurrentHeaderStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$12;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 1310
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$12;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 1311
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$12;->this$0:Lcom/narvii/amino/HomeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/amino/HomeFragment;->access$900(Lcom/narvii/amino/HomeFragment;Z)V

    :cond_0
    return-void
.end method
