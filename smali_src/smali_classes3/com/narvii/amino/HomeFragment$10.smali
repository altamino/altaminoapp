.class Lcom/narvii/amino/HomeFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$10;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$10;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getCurrentHeaderStatus()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$10;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$10;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$10;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/narvii/amino/HomeFragment;->C(Lcom/narvii/amino/HomeFragment;Z)V

    .line 36
    :cond_0
    return-void
.end method
