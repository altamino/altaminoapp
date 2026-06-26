.class Lcom/narvii/catalog/CatalogFragment$14;
.super Ljava/lang/Object;
.source "CatalogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/CatalogFragment;->delete(Z)V
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

    .line 1772
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$14;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1775
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$14;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/catalog/CatalogFragment;->delete(Z)V

    return-void
.end method
