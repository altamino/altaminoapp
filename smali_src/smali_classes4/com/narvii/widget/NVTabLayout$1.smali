.class Lcom/narvii/widget/NVTabLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVTabLayout$1;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/NVTabLayout$1;->val$index:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout$1;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/widget/NVTabLayout;->clickListener:Lcom/narvii/widget/NVTabLayout$ItemClickListener;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/widget/NVTabLayout;->b(Lcom/narvii/widget/NVTabLayout;)Landroidx/viewpager/widget/ViewPager;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout$1;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/widget/NVTabLayout;->b(Lcom/narvii/widget/NVTabLayout;)Landroidx/viewpager/widget/ViewPager;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget v0, p0, Lcom/narvii/widget/NVTabLayout$1;->val$index:I

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout$1;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/widget/NVTabLayout;->clickListener:Lcom/narvii/widget/NVTabLayout$ItemClickListener;

    .line 29
    .line 30
    iget v0, p0, Lcom/narvii/widget/NVTabLayout$1;->val$index:I

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/narvii/widget/NVTabLayout$ItemClickListener;->onItemClick(I)V

    .line 34
    :cond_1
    return-void
.end method
