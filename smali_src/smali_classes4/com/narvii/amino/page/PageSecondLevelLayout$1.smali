.class Lcom/narvii/amino/page/PageSecondLevelLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/page/PageSecondLevelLayout;->setPageItems(Lcom/narvii/app/NVContext;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/page/PageSecondLevelLayout;

.field final synthetic val$pageItem:Lcom/narvii/modulization/page/Page;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/amino/page/PageSecondLevelLayout;ILcom/narvii/modulization/page/Page;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout$1;->this$0:Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout$1;->val$position:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/amino/page/PageSecondLevelLayout$1;->val$pageItem:Lcom/narvii/modulization/page/Page;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout$1;->this$0:Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/amino/page/PageSecondLevelLayout;->clickListener:Lcom/narvii/amino/page/PageItemClickListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout$1;->val$position:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout$1;->val$pageItem:Lcom/narvii/modulization/page/Page;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0, v1}, Lcom/narvii/amino/page/PageItemClickListener;->onItemClicked(ILcom/narvii/modulization/page/Page;)V

    .line 14
    :cond_0
    return-void
.end method
