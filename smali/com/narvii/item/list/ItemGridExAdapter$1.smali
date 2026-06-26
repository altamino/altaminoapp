.class Lcom/narvii/item/list/ItemGridExAdapter$1;
.super Ljava/lang/Object;
.source "ItemGridExAdapter.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/list/ItemGridExAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/list/ItemGridExAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/item/list/ItemGridExAdapter;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter$1;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/item/list/ItemGridExAdapter$1;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter$1;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    iget-object v0, v0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter$1;->this$0:Lcom/narvii/item/list/ItemGridExAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
