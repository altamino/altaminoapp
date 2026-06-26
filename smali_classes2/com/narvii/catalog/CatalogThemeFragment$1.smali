.class Lcom/narvii/catalog/CatalogThemeFragment$1;
.super Ljava/lang/Object;
.source "CatalogThemeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/CatalogThemeFragment;->showGuideline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogThemeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CatalogThemeFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/narvii/catalog/CatalogThemeFragment$1;->this$0:Lcom/narvii/catalog/CatalogThemeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    iget-object p1, p0, Lcom/narvii/catalog/CatalogThemeFragment$1;->this$0:Lcom/narvii/catalog/CatalogThemeFragment;

    const-string v0, "account"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 74
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "disableCatalogGuideline"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    iget-object p1, p0, Lcom/narvii/catalog/CatalogThemeFragment$1;->this$0:Lcom/narvii/catalog/CatalogThemeFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogThemeFragment;->dismissGuideline()V

    return-void
.end method
