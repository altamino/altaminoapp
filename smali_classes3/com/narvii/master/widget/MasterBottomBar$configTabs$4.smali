.class final Lcom/narvii/master/widget/MasterBottomBar$configTabs$4;
.super Ljava/lang/Object;
.source "MasterBottomBar.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/widget/MasterBottomBar;->configTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/widget/MasterBottomBar;


# direct methods
.method constructor <init>(Lcom/narvii/master/widget/MasterBottomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomBar$configTabs$4;->this$0:Lcom/narvii/master/widget/MasterBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/narvii/master/widget/MasterBottomBar$configTabs$4;->this$0:Lcom/narvii/master/widget/MasterBottomBar;

    invoke-virtual {p1}, Lcom/narvii/master/widget/MasterBottomBar;->getTabSelectListener()Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;->onTabSelected(I)V

    :cond_0
    return-void
.end method
