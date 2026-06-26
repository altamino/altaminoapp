.class Lcom/narvii/item/list/ItemGridExAdapter$2;
.super Ljava/lang/Object;
.source "ItemGridExAdapter.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/list/ItemGridExAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
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
.field final synthetic this$0:Lcom/narvii/item/list/ItemGridExAdapter;

.field final synthetic val$item:Ljava/lang/Object;

.field final synthetic val$voteIcon:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/item/list/ItemGridExAdapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter$2;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    iput-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter$2;->val$voteIcon:Landroid/view/View;

    iput-object p3, p0, Lcom/narvii/item/list/ItemGridExAdapter$2;->val$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter$2;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter$2;->val$voteIcon:Landroid/view/View;

    iput-object v1, v0, Lcom/narvii/item/list/ItemGridExAdapter;->voteIconView:Landroid/view/View;

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "vote"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter$2;->val$item:Ljava/lang/Object;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "item"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string/jumbo v1, "voteValue"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter$2;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/item/list/ItemGridExAdapter$2;->call(Ljava/lang/Integer;)V

    return-void
.end method
