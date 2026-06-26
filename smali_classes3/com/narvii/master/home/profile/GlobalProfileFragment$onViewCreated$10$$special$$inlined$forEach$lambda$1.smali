.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10$$special$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10$$special$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10$$special$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10;

    iget-object v0, v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getAppbarLayout()Lcom/narvii/nested/NVAppBarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/narvii/nested/NVAppBarLayout;->setExpanded(ZZ)V

    :cond_0
    return-void
.end method
