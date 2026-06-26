.class Lcom/narvii/item/ItemHelper$4;
.super Ljava/lang/Object;
.source "ItemHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/ItemHelper;->submitOfficialCatalog(Lcom/narvii/model/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/ItemHelper;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/item/ItemHelper;Landroid/view/View;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/narvii/item/ItemHelper$4;->this$0:Lcom/narvii/item/ItemHelper;

    iput-object p2, p0, Lcom/narvii/item/ItemHelper$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/narvii/item/ItemHelper$4;->val$v:Landroid/view/View;

    const v1, 0x7f090b5b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
