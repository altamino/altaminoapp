.class Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;
.super Ljava/lang/Object;
.source "RecentActivityFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;

.field final synthetic val$item:Lcom/narvii/model/Item;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;Lcom/narvii/model/Item;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;->this$1:Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;->val$item:Lcom/narvii/model/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 242
    iget-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;->this$1:Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    invoke-static {p1}, Lcom/narvii/catalog/activity/RecentActivityFragment;->access$200(Lcom/narvii/catalog/activity/RecentActivityFragment;)Lcom/narvii/item/ItemHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;->val$item:Lcom/narvii/model/Item;

    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;->this$1:Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    invoke-static {v1}, Lcom/narvii/catalog/activity/RecentActivityFragment;->access$100(Lcom/narvii/catalog/activity/RecentActivityFragment;)Lcom/narvii/util/Callback;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/item/ItemHelper;->addToMyFavorites(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method
