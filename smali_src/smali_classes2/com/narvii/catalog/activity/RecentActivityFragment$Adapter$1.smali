.class Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;->this$1:Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;->val$item:Lcom/narvii/model/Item;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;->this$1:Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/catalog/activity/RecentActivityFragment;->u(Lcom/narvii/catalog/activity/RecentActivityFragment;)Lcom/narvii/item/ItemHelper;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;->val$item:Lcom/narvii/model/Item;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;->this$1:Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/narvii/catalog/activity/RecentActivityFragment;->t(Lcom/narvii/catalog/activity/RecentActivityFragment;)Lcom/narvii/util/Callback;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/narvii/item/ItemHelper;->addToMyFavorites(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 26
    return-void
.end method
