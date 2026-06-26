.class Lcom/narvii/widget/NVTabLayout$1;
.super Ljava/lang/Object;
.source "NVTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVTabLayout;->addSubView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVTabLayout;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVTabLayout;I)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/narvii/widget/NVTabLayout$1;->this$0:Lcom/narvii/widget/NVTabLayout;

    iput p2, p0, Lcom/narvii/widget/NVTabLayout$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 126
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout$1;->this$0:Lcom/narvii/widget/NVTabLayout;

    iget-object v0, p1, Lcom/narvii/widget/NVTabLayout;->clickListener:Lcom/narvii/widget/NVTabLayout$ItemClickListener;

    if-eqz v0, :cond_1

    .line 127
    invoke-static {p1}, Lcom/narvii/widget/NVTabLayout;->access$000(Lcom/narvii/widget/NVTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout$1;->this$0:Lcom/narvii/widget/NVTabLayout;

    invoke-static {p1}, Lcom/narvii/widget/NVTabLayout;->access$000(Lcom/narvii/widget/NVTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget v0, p0, Lcom/narvii/widget/NVTabLayout$1;->val$index:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout$1;->this$0:Lcom/narvii/widget/NVTabLayout;

    iget-object p1, p1, Lcom/narvii/widget/NVTabLayout;->clickListener:Lcom/narvii/widget/NVTabLayout$ItemClickListener;

    iget v0, p0, Lcom/narvii/widget/NVTabLayout$1;->val$index:I

    invoke-interface {p1, v0}, Lcom/narvii/widget/NVTabLayout$ItemClickListener;->onItemClick(I)V

    :cond_1
    return-void
.end method
