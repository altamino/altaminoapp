.class Lcom/narvii/amino/page/PageTopLevelLayout$1;
.super Ljava/lang/Object;
.source "PageTopLevelLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/page/PageTopLevelLayout;->setPageItems(Lcom/narvii/app/NVContext;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/page/PageTopLevelLayout;

.field final synthetic val$pageItem:Lcom/narvii/modulization/page/Page;

.field final synthetic val$postion:I


# direct methods
.method constructor <init>(Lcom/narvii/amino/page/PageTopLevelLayout;ILcom/narvii/modulization/page/Page;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/amino/page/PageTopLevelLayout$1;->this$0:Lcom/narvii/amino/page/PageTopLevelLayout;

    iput p2, p0, Lcom/narvii/amino/page/PageTopLevelLayout$1;->val$postion:I

    iput-object p3, p0, Lcom/narvii/amino/page/PageTopLevelLayout$1;->val$pageItem:Lcom/narvii/modulization/page/Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/narvii/amino/page/PageTopLevelLayout$1;->this$0:Lcom/narvii/amino/page/PageTopLevelLayout;

    iget-object p1, p1, Lcom/narvii/amino/page/PageTopLevelLayout;->clickListener:Lcom/narvii/amino/page/PageItemClickListener;

    if-eqz p1, :cond_0

    .line 107
    iget v0, p0, Lcom/narvii/amino/page/PageTopLevelLayout$1;->val$postion:I

    iget-object v1, p0, Lcom/narvii/amino/page/PageTopLevelLayout$1;->val$pageItem:Lcom/narvii/modulization/page/Page;

    invoke-interface {p1, v0, v1}, Lcom/narvii/amino/page/PageItemClickListener;->onItemClicked(ILcom/narvii/modulization/page/Page;)V

    :cond_0
    return-void
.end method
