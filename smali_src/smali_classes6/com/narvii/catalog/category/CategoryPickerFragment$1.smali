.class Lcom/narvii/catalog/category/CategoryPickerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/category/CategoryPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/category/CategoryPickerFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$1;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$1;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/catalog/category/CategoryPickerFragment;->addCategory(Lcom/narvii/model/ItemCategory;)V

    .line 7
    return-void
.end method
