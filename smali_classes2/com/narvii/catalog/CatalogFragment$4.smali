.class Lcom/narvii/catalog/CatalogFragment$4;
.super Ljava/lang/Object;
.source "CatalogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/CatalogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$4;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 393
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$4;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->catalogHelper:Lcom/narvii/catalog/CatalogHelper;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogHelper;->openSubmitFavoritePicker()V

    return-void
.end method
