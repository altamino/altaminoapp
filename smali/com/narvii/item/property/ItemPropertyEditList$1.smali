.class Lcom/narvii/item/property/ItemPropertyEditList$1;
.super Ljava/lang/Object;
.source "ItemPropertyEditList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/property/ItemPropertyEditList;->addNewProperty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/property/ItemPropertyEditList;

.field final synthetic val$view:Lcom/narvii/item/property/ItemPropertyEditor;


# direct methods
.method constructor <init>(Lcom/narvii/item/property/ItemPropertyEditList;Lcom/narvii/item/property/ItemPropertyEditor;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditList$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditList;

    iput-object p2, p0, Lcom/narvii/item/property/ItemPropertyEditList$1;->val$view:Lcom/narvii/item/property/ItemPropertyEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditList$1;->val$view:Lcom/narvii/item/property/ItemPropertyEditor;

    iget-object v0, v0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 108
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditList$1;->val$view:Lcom/narvii/item/property/ItemPropertyEditor;

    iget-object v0, v0, Lcom/narvii/item/property/ItemPropertyEditor;->title:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
