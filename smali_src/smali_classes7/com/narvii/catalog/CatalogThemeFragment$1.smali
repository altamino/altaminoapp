.class Lcom/narvii/catalog/CatalogThemeFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogThemeFragment$1;->this$0:Lcom/narvii/catalog/CatalogThemeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/catalog/CatalogThemeFragment$1;->this$0:Lcom/narvii/catalog/CatalogThemeFragment;

    .line 3
    .line 4
    const-string v0, "account"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string v0, "disableCatalogGuideline"

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/catalog/CatalogThemeFragment$1;->this$0:Lcom/narvii/catalog/CatalogThemeFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogThemeFragment;->dismissGuideline()V

    .line 34
    return-void
.end method
