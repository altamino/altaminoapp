.class Lcom/narvii/catalog/category/CategoryPickerFragment$1;
.super Ljava/lang/Object;
.source "CategoryPickerFragment.java"

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

    .line 96
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$1;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$1;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/catalog/category/CategoryPickerFragment;->addCategory(Lcom/narvii/model/ItemCategory;)V

    return-void
.end method
