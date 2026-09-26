.class Lcom/narvii/item/property/ItemPropertyEditPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/property/ItemPropertyEditPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/property/ItemPropertyEditPanel;


# direct methods
.method constructor <init>(Lcom/narvii/item/property/ItemPropertyEditPanel;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditPanel;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel$1;->this$0:Lcom/narvii/item/property/ItemPropertyEditPanel;

    .line 2
    invoke-static {v0}, Lcom/narvii/item/property/ItemPropertyEditPanel;->a(Lcom/narvii/item/property/ItemPropertyEditPanel;)Lcom/narvii/item/property/ItemPropertyEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/item/property/ItemPropertyEditor;->setRating(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/item/property/ItemPropertyEditPanel$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
